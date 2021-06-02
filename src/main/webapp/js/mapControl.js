var mapControl;

mapControl = (function () {
    var api;

    function loadApiScript(callback, flag) {
        api = mapControl.daumApi;
        if (flag !== false) {
            api.loadApiScript(callback);
        } else {
            callback();
        }
    }

    return {
        /**
         * @param {Object} data
         * @param {string} data.id
         * @param {string} data.type - view | edit
         * @param {string} data.skinURI
         * @param {string} data.nocache_css
         * @param {Object} data.params
         * @param {string} data.params.recIdx
         * @param {string} data.params.companyName
         * @param {string} data.params.address
         * @param {string} data.params.addressDetails
         * @param {string} data.params.latitude
         * @param {string} data.params.longitude
         * @param {callback} data.markerEvent
         * @param {callback} data.success
         * @param {callback} data.error
         */
        mapViewer: function (data) {
            if (!mapControl.util.incidentMapApiCheck()) {
                return;
            }

            loadApiScript(function () {
                jQuery('head').append('<link href="/css/sri_mapapi.css?v=' + data.nocache_css + '" rel="stylesheet" type="text/css">');
                api.createMap(data);
            });
        },

        /**
         * @returns {latitude, longitude}}
         */
        getPosition: function () {
            return api.getPosition();
        },

        /**
         * @param {callback} callback
         */
        searchArea: function (callback) {
            loadApiScript(function () {
                mapControl.address.popup(callback);
            }, false);
        },

        /**
         * @param {object} data
         * @param {string} data.address
         * @param {callback} data.success
         * @param {callback} data.error
         */
        setMarkerByAddress: function (data) {
            api.setMarkerByAddress(data);
        },

        /**
         * @param {string} address
         * @param {callback} callback
         */
        getLatLngByAddress: function (address, callback) {
            if (api.exceedLimitCount('geocoder')) {
                api.setLatLngBySgisApi(address, callback);
                return;
            }

            loadApiScript(function () {
                api.getLatLngByAddress(address, callback);
            });
        },

        getLatLngByRestApi: function (address, callback) {
            mapControl.daumApi.getLatLngByRestApi(address, callback);
        },

        /**
         * @param {callback} callback
         */
        getSubway: function (callback) {
            if (api.exceedLimitCount('')) {
                return;
            }

            loadApiScript(function () {
                api.getSubway(callback);
            });
        },

        getSubwayByRestApi: function (position, callback) {
            mapControl.daumApi.getSubwayByRestApi(position, callback);
        },

        /**
         * @param {object} option
         * @param {object} option.id
         * @param {boolean} option.isAdmin
         */
        renderAddressForm: function (option) {
            if (!option.id) {
                return;
            }

            mapControl.util.renderAddressForm(option.id, option);
        }
    };
})();

mapControl.daumApi = (function ($) {
    var API_KEY = 'c2eaeed1cab86e43d8dad410e6206818',
        REST_KEY = 'a48c346f49496ed25298423c4c9da5f0',
        hasFlash = false,
        map, $mapEl, $container, mapViewEl, roadViewEl, viewpoint,
        roadView, marker, infowindow, placePosition, companyName,
        daum, geocoder, places, callApiArr = [];

    try {
        hasFlash = (
            (typeof navigator.plugins !== "undefined" && typeof navigator.plugins["Shockwave Flash"] === "object") ||
            (window.ActiveXObject && (new ActiveXObject("ShockwaveFlash.ShockwaveFlash")) !== false) //jshint ignore:line
        );
    } catch (e) {
    }

    function mapInit(data) {
        companyName = data.params.companyName;
        $container = $mapEl.find('#mapContainer');

        setPlacePosition(data);
        setMapview();
        setRoadview();
        setMarker();
        setInfowindow();
        registerEvent(data);
    }

    function setPlacePosition(data) {
        placePosition = new daum.maps.LatLng(data.params.latitude, data.params.longitude);
    }

    function setMapview() {
        mapViewEl = document.getElementById('mapView');

        map = new daum.maps.Map(mapViewEl, {
            center: placePosition,
            level: 3
        });

        // 줌 컨트롤
        map.addControl(new daum.maps.ZoomControl(), daum.maps.ControlPosition.RIGHT);
        map.setZoomable(false); //마우스스크롤
    }

    function setRoadview(position) {
        var roadviewClient;

        if (!hasFlash) {
            removeBtnRoadview();
        } else {
            position = position || placePosition;

            if (!roadView) { //중복 생성 방지
                roadViewEl = document.getElementById('roadView');
                roadView = new daum.maps.Roadview(roadViewEl);
            }

            if (viewpoint) { // 로드뷰 시점 조절
                roadView.setViewpoint(viewpoint);
            } else {
                viewpoint = roadView.getViewpoint();
            }

            roadviewClient = new daum.maps.RoadviewClient();
            roadviewClient.getNearestPanoId(position, 100, function (panoId) {
                try {
                    roadView.setPanoId(panoId, position);
                    if (!panoId) {
                        removeBtnRoadview();
                    }
                } catch(e) {
                    setRoadview();
                }
            });
        }
    }

    function removeBtnRoadview() {
        $mapEl.find('.btn_roadview').remove();
    }

    function setMarker() {
        var markerImageOptions, markerImage;

        markerImageOptions = {
            spriteSize: new daum.maps.Size(39, 36), // 이미지 전체 크기
            offset: new daum.maps.Point(13, 36)// 마커 좌표에 일치시킬 이미지 안 좌표
        };

        markerImage = new daum.maps.MarkerImage(
            'https://www.saraminimage.co.kr/ui/mapapi/ico_map_marker.png',
            new daum.maps.Size(39, 36),
            markerImageOptions
        );

        marker = new daum.maps.Marker({
            position: placePosition,
            image: markerImage
        });
        marker.setMap(map);
    }

    function setInfowindow() {
        var infowindowEl, width;

        infowindow = new daum.maps.InfoWindow({
            position: placePosition,
            content: '<div class="marker_info"><b>' + companyName + '</b><span></span></div>'
        });
        infowindow.open(map, marker);

        // 커스텀 디자인 조절
        infowindowEl = $mapEl.find('.marker_info');
        width = infowindowEl.outerWidth(true);
        if (width < 168) {
            infowindowEl.css('margin-left', (168 - width) / 2 + 'px');
        }

        // 디폴트 디자인 제거
        infowindowEl.parent().prev('div').remove();
        infowindowEl.parent().parent().css({'background': '', 'border': '', 'width': '168px', 'margin-left': '-9px'});
    }

    function registerEvent(data) {
        $mapEl
            .on('click', '.btn_map_switch button', function () {
                var $this = $(this),
                    $mapViewEl = $(mapViewEl);

                $this.addClass('on').siblings().removeClass('on');
                $mapViewEl.show();

                if ($this.data('type') === 'roadview') {
                    $mapViewEl.hide();
                } else if ($this.data('type') === 'skyview') {
                    map.setMapTypeId(daum.maps.MapTypeId.HYBRID);
                } else {
                    map.setMapTypeId(daum.maps.MapTypeId.ROADMAP);
                }
            })
            .on('click', '.route', function () {
                var position = marker.getPosition();
                window.open('http://map.daum.net/link/to/' + encodeURI(companyName) + ',' + position.getLat() + ',' + position.getLng(), '_blank');
            })
            .on('click', '.big_map', function () {
                var position = marker.getPosition();
                window.open('http://map.daum.net/link/map/' + encodeURI(companyName) + ',' + position.getLat() + ',' + position.getLng(), '_blank');
            })
            .on('click', '.reset', function () {
                setPosition();
                setRoadview();
                if (!$mapEl.find('.btn_roadview').hasClass('on')) {
                    mapReLayout();
                }
            })
        ;

        if (data.type === 'edit') {
            marker.setDraggable(true);
            daum.maps.event.addListener(marker, 'dragstart', function () {
                infowindow.close();
            });
            daum.maps.event.addListener(marker, 'dragend', function () {
                setInfowindow();
                setRoadview(marker.getPosition());
                if (data.markerEvent) {
                    data.markerEvent();
                }
            });
        }
    }

    function setPosition(position) {
        position = position || placePosition;
        marker.setPosition(position);
        infowindow.setPosition(position);
        setCenter(position);
    }

    function mapReLayout() {
        map.relayout();
        infowindow.close();
        setInfowindow();
        setRoadview();
        setCenter(placePosition);
    }

    function setCenter(position) {
        map.setCenter(new daum.maps.LatLng(position.getLat() + 0.00015, position.getLng()));
    }

    function notLatLngProccess(data) {
        var address = $.trim(data.params.address + ' ' + data.params.addressDetails).replace(/[\(\[][^\)\]]*[\)\]]/g, '');

        if (address === '' || data.params.overseas == 'overseas') { // 주소가 없는 경우, 해외지역인 경우 좌표 변환 안함
            errorCallbackIfEmptyLatLng(data);
            return;
        }

        loadGeocoderIfUndefined();
        setMapRestApiCountAjax('geocoder');

        geocoder.addressSearch(getAddressForSearch(address), function (result, status) {
            if (status === daum.maps.services.Status.OK) {
                data.params.latitude = result[0].y;
                data.params.longitude = result[0].x;
                mapControl.daumApi.createMap(data);
            } else {
                errorCallbackIfEmptyLatLng(data);
            }

            if (data.params.recIdx) {
                mapControl.util.saveLatLngByRecruit(data.params.recIdx, data.params.latitude, data.params.longitude);
            }
        });
    }

    function errorCallbackIfEmptyLatLng(data) {
        $mapEl.load(data.skinURI, function () {
            if (!data.type || data.type === 'view') {
                $mapEl.remove();
            } else {
                mapInit(data);
            }

            if (data.error) {
                data.error();
            }
        });
    }

    function getAddressForSearch(address) {
        return address.replace(/(\(.*?\)|,)/g, '');
    }

    function loadGeocoderIfUndefined() {
        if (!!geocoder) {
            return;
        }

        geocoder = new daum.maps.services.Geocoder();
        setMapApiCountAjax('geocoder');
    }

    function loadPlacesIfUndefined() {
        if (!!places) {
            return;
        }

        places = new daum.maps.services.Places(map);
        setMapApiCountAjax('places');
    }

    function setMapApiCountAjax(type) {
        var maxCount = 3;

        if (callApiArr.indexOf(type) !== -1 || callApiArr.length >= maxCount) {
            return;
        }

        callApiArr.push(type);
        $.ajax({
            url: '/zf_user/jobs/api/set-map-api-count',
            data: {count: 1},
            type: 'post'
        });
    }

    function setLocalApiCountAjax(type) {
        var referrer = document.location.pathname || '';
        $.ajax({
            url: '/zf_user/jobs/api/set-local-api-count',
            data: {local_type: type, referrer: referrer},
            type: 'post'
        });
    }

    function setMapRestApiCountAjax(type) {
        var referrer = document.location.pathname || '';
        $.ajax({
            url: '/zf_user/jobs/api/set-map-rest-api-count',
            data: {api_type: type, referrer: referrer},
            type: 'post'
        });
    }

    function isLimitLocalApi(local_type) {
        var isLimitLocalApi = false;
        $.ajax({
            url: '/zf_user/jobs/api/is-limit-local-api',
            type: 'post',
            data: {local_type: local_type},
            async: false
        }).done(function (res) {
            isLimitLocalApi = res.isLimitLocalApi;
        });

        return isLimitLocalApi;
    }

    function getLatLngBySgisApi(address, callback) {
        var getLatLng = function (addr, func) {
            var result = [];
            if (!!window.sgisMapApi) {
                result = window.sgisMapApi.getLatLngByRestApi(addr);
            }
            if (func) {
                func(result);
            }
        };

        if (!!window.sgisMapApi) {
            getLatLng(address, callback);
            return;
        }

        $.ajax({
            url: '/js/map/SgisMapApi.js',
            dataType: 'script',
            async: false
        }).done(function () {
            getLatLng(address, callback);
        });
    }

    return {
        loadApiScript: function (callback) {
            if (daum && daum.maps) {
                callback();
                return;
            }

            // api limit 카운트 체크
            if (isLimitLocalApi('')) {
                return;
            }

            $.getScript('//dapi.kakao.com/v2/maps/sdk.js?appkey=' + API_KEY + '&libraries=services&autoload=false').done(function () {
                daum = window.daum;
                daum.maps.load(function () {
                    setMapApiCountAjax('init');
                    setMapRestApiCountAjax('map');
                    callback();
                });
            });
        },

        createMap: function (data) {
            $mapEl = $('#' + data.id);
            data.params.latitude = isNaN(Number(data.params.latitude)) ? '' : data.params.latitude;
            data.params.longitude = isNaN(Number(data.params.longitude)) ? '' : data.params.longitude;

            if (!data.params.latitude || !data.params.longitude) {
                notLatLngProccess(data);
                return;
            }

            $mapEl.load(data.skinURI, function () {
                mapInit(data);
                if (data.success) {
                    data.success();
                }
                if (data.type === 'edit') {
                    $mapEl.find('#noticeEdit').show();
                    $mapEl.find('#noticeView').hide();
                }
                $mapEl.show();

                setTimeout(function () {
                    mapReLayout();
                }, 500);
            });
        },

        setMarkerByAddress: function (data) {
            loadGeocoderIfUndefined();
            setMapRestApiCountAjax('geocoder');

            geocoder.addressSearch(getAddressForSearch(data.address), function (result, status) {
                if (status === daum.maps.services.Status.OK) {
                    placePosition = new daum.maps.LatLng(result[0].y, result[0].x);
                    setPosition();

                    if (data.success) {
                        data.success();
                    }

                    $mapEl.find('.btn_mapview').click();
                    mapReLayout();
                } else if(data.error) {
                    data.error();
                }
            });
        },

        getPosition: function () {
            var position, latitude = '', longitude = '';

            if (marker) {
                position = marker.getPosition();
                latitude = position.getLat();
                longitude = position.getLng();
            }

            return {
                latitude: latitude,
                longitude: longitude
            };
        },

        getLatLngByAddress: function (address, callback) {
            if (isLimitLocalApi('geocoder')) {
                getLatLngBySgisApi(address, function (result) {
                    if (!!result) {
                        callback(result[0].y, result[0].x);
                    } else {
                        callback('', '');
                    }
                });
                return;
            }

            try {
                loadGeocoderIfUndefined();
                setMapRestApiCountAjax('geocoder');

                geocoder.addressSearch(getAddressForSearch(address), function (result, status) {
                    if (status === daum.maps.services.Status.OK) {
                        callback(result[0].y, result[0].x);
                    } else {
                        callback('', '');
                    }
                });
            }
            catch (exception) {
                callback('', '');
            }
        },

        getLatLngByRestApi: function (address, callback) {
            if (isLimitLocalApi('geocoder')) {
                getLatLngBySgisApi(address, callback);
                return;
            }

            try {
                setLocalApiCountAjax('geocoder');
                $.ajax({
                    url: 'https://dapi.kakao.com/v2/local/search/address.json',
                    headers: {'Authorization': 'KakaoAK ' + REST_KEY},
                    type: 'GET',
                    data: {'query': getAddressForSearch(address)},
                    async: false,
                    success : function(result) {
                        var documents = (!!result.documents && result.documents.length > 0) ? result.documents : [];
                        if (callback) {
                            callback(documents);
                        }
                    },
                    error : function() {
                        callback([]);
                    }
                });
            }
            catch (exception) {
                callback([]);
            }
        },

        getSubwayByRestApi: function (position, callback) {
            if (isLimitLocalApi('subway')) {
                callback([]);
                return;
            }

            try {
                setLocalApiCountAjax('subway');
                $.ajax({
                    url: 'https://dapi.kakao.com/v2/local/search/category.json',
                    headers: {'Authorization': 'KakaoAK ' + REST_KEY},
                    type: 'GET',
                    data: {
                        category_group_code: 'SW8',
                        x: position.lng,
                        y: position.lat,
                        radius: 1000,
                        sort: 'distance'
                    },
                    success: function (result) {
                        var documents = (!!result.documents && result.documents.length > 0) ? result.documents : [];
                        callback(documents);
                    },
                    error: function () {
                        callback([]);
                    }
                });
            } catch (e) {
                callback([]);
            }
        },

        getSubway: function (callback) {
            var mapPosition = map.getCenter();
            loadPlacesIfUndefined();
            setMapRestApiCountAjax('subway');

            map.setCenter(marker.getPosition()); //정확한 거리 측정을 위한 세팅
            places.categorySearch('SW8', callback, {
                location: marker.getPosition(),
                radius: 1000, // 미터
                useMapBounds: false,
                sort: daum.maps.services.SortBy.DISTANCE
            });

            map.setCenter(mapPosition); // 기존 중심좌표로 되돌림
        },

        exceedLimitCount: function (localType) {
            return isLimitLocalApi(localType);
        },

        setLatLngBySgisApi: function (address, callback) {
            getLatLngBySgisApi(address, function (result) {
                if (!!result) {
                    callback(result[0].y, result[0].x);
                } else {
                    callback('', '');
                }
            });
        }
    };
})(jQuery);

mapControl.address = (function ($) {
    var daum = window.daum,
        maximumTry = 3,
        tryCount = 0,
        readyGeoApi = false,
        tempCallback = null,
        checkedAllowFirstApi = null,
        needNoticeFailedFristApi = true,
        needNoticeFailedSecondApi = true;

    function daumPostApi(callback) {
        var uri = '//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js';
        if (!daum || !daum.postcode) {
            $.ajax({
                url: uri,
                dataType: "script",
                timeout: 750 * tryCount, // cross domain error handling option
                cache : true,
                success: function () {
                    daum = window.daum;
                    if (mapControl.util.isIE10Under() && !daum.postcode) { // ie9 error
                        errorAddressApi('daum', callback);
                        return;
                    }
                    daumPostApi(callback);
                },
                error: function () {
                    errorAddressApi('daum', callback);
                }
            });
            return;
        }

        resetTryCountIfFirstApi('daum');
        daum.postcode.load(function () {
            new daum.Postcode({
                animation: true,
                shorthand: true,
                hideMapBtn: true,
                hideEngBtn: true,
                oncomplete: function (result) {
                    var buildingName = (result.buildingName ? ' ' + result.buildingName : ''),
                        jibun = {}, road = {}, tempArr;

                    // 지번주소
                    jibun.address = result.sido + (result.sigungu ? ' ' + result.sigungu : '') +
                        (result.bname1 ? ' ' + result.bname1 : result.bname2 ? ' ' + result.bname2 : '');
                    jibun.addressDetails = (result.jibunAddress || result.autoJibunAddress).replace(jibun.address + ' ', '');
                    jibun.address = getShortAddress(jibun.address);

                    // 도로명주소
                    if ((result.roadAddress).indexOf('사서함') !== -1) {
                        road.address = result.roadAddress.slice(0, result.roadAddress.indexOf('사서함') + 3);
                    } else {
                        tempArr = result.roadAddress.split(' ');
                        road.address = tempArr.slice(0, $.inArray(result.roadname, tempArr) + 1).join(' ');
                    }
                    road.addressDetails = result.roadAddress.replace(road.address + ' ', '');
                    road.address = getShortAddress(road.address);
                    road.extra = [];

                    if (result.bname !== '' && /[동|로|가]$/g.test(result.bname)) {
                        road.extra.push(result.bname);
                    }

                    if (buildingName !== '' && result.apartment === 'Y') {
                        road.extra.push(buildingName);
                        buildingName = '';
                    }

                    callback({
                        zipcode: result.userSelectedType === 'J' ? (result.postcode || result.zonecode) : result.zonecode,
                        address: result.userSelectedType === 'J' ? jibun.address : road.address,
                        addressDetails: (result.userSelectedType === 'J' ? jibun.addressDetails : road.addressDetails) + buildingName,
                        sido: result.sido,
                        sigungu: result.sigungu,
                        userSelectedType: result.userSelectedType,
                        oldAddress: {
                            zipcode: result.postcode,
                            address: jibun.address,
                            addressDetails: jibun.addressDetails + buildingName
                        },
                        newAddress: {
                            zipcode: result.zonecode,
                            address: road.address,
                            addressDetails: road.addressDetails + buildingName,
                            extra: road.extra.length > 0 ? '(' + road.extra.join(',') + ')' : ''
                        }
                    });
                }
            }).open({
                popupName: 'postCodeSearch'
            });
        });

        return true;
    }

    function governmentApi(callback) {
        var key = 'U01TX0FVVEgyMDE5MTIwMjE1NTU0MDEwOTI1Njg=',
            returnUrl = window.location.protocol + '//' + window.location.host + '/zf_user/address/popup-result',
            url = '//www.juso.go.kr/addrlink/addrLinkUrl.do?confmKey=' + encodeURI(key) + '&returnUrl=' + encodeURI(returnUrl) + '&resultType=4';

        if (readyGeoApi) {
            showGeoApi(url, callback);
            return;
        }

        $.ajax({
            url: url,
            type: "get",
            dataType:'script',
            timeout: 1000, // cross domain error handling option
            success: function () {
                showGeoApi(url, callback);
                readyGeoApi = true;
            },
            error: function () {
                errorAddressApi('geo', callback);
            }
        });
    }

    function showGeoApi(url, callback) {
        window.open(url, 'governmentApi', 'width=570,height=420, scrollbars=yes, resizable=no');
        tempCallback = callback;
        resetTryCountIfFirstApi('geo');
    }

    function firstPostApi(callback) {
        if (needChangePostApi()) {
            governmentApi(callback);
            return;
        }
        daumPostApi(callback);
    }

    function secondPostApi(callback) {
        if (needChangePostApi()) {
            daumPostApi(callback);
            return;
        }
        governmentApi(callback);
    }

    function resetTryCountIfFirstApi(apiType) {
        if (apiType === 'geo' && needChangePostApi()) {
            tryCount = 0;
        } else if (apiType === 'daum' && !needChangePostApi()) {
            tryCount = 0;
        }
    }

    function needChangePostApi() {
        return mapControl.util.getCookie('address_api') === 'geo' || $('._incident_search_change').length !== 0;
    }

    function needCoerceIncidentPostApi() {
        return $('._incident_search_coerce').length !== 0;
    }

    function errorAddressApi(apiType, callback) {
        if ((apiType === 'daum' && !needChangePostApi()) || (apiType === 'geo' && needChangePostApi())) {
            registerLoadedSecondApi();
            mapControl.address.popup(callback);
            return;
        }

        if (!mapControl.util.incidentAddressCheck()) {
            return;
        }

        registerFailedSecondApi();
        alert('우편번호 서비스에 장애가 발생하였습니다.');
    }

    function getShortAddress(address) {
        return address.replace(/(특별|광역|자치)+[시|도]/, '').replace(/([충전경])+(?:[청라상])?([남북])+도/, '$1$2');
    }

    function checkAllowFirstApi() {
        if (checkedAllowFirstApi !== null) {
            return checkedAllowFirstApi;
        }

        $.ajax({
            url: '/zf_user/address/check-allow-first-api',
            type: 'get',
            dataType: 'json',
            async: false
        }).done(function (ret) {
            checkedAllowFirstApi = ret.status === 'allow';
        });

        return checkedAllowFirstApi;
    }

    function registerLoadedSecondApi() {
        if (!needNoticeFailedFristApi) {
            return;
        }

        $.ajax({
            url: '/zf_user/address/loaded-second-api',
            type: 'post'
        }).done(function () {
            needNoticeFailedFristApi = false;
        });
    }

    function registerFailedSecondApi() {
        if (!needNoticeFailedSecondApi) {
            return;
        }

        $.ajax({
            url: '/zf_user/address/failed-second-api',
            type: 'post'
        }).done(function () {
            needNoticeFailedSecondApi = false;
        });
    }

    return {
        popup: function (callback) {
            if (needCoerceIncidentPostApi()) {
                errorAddressApi('coerce');
                return;
            }

            try {
                if (checkAllowFirstApi() && tryCount++ < maximumTry) {
                    firstPostApi(callback);
                    return;
                }
                secondPostApi(callback);
            } catch (e) {
                if (e.name === 'TypeError') {
                    return;
                }

                mapControl.address.popup(callback);
            }
        },

        governmentApiResult: function (address) {
            var road = {}, jibun = {};
            var buildingName = (address.bdNm ? ' ' + address.bdNm : '');

            road.extra = [];
            if (address.emdNm !== '' && /[동|로|가]$/g.test(address.emdNm)) {
                road.extra.push(address.emdNm);
            }

            if (buildingName !== '' && address.bdKdcd == '1') {
                road.extra.push(buildingName);
                buildingName = '';
            }

            jibun.address = address.siNm + (!!address.sggNm ? ' ' + address.sggNm : '') + (address.emdNm ? ' ' + address.emdNm : '');
            jibun.addressDetails = address.jibunAddr.replace(jibun.address + ' ', '');
            jibun.address = getShortAddress(jibun.address);

            road.address = getShortAddress(address.siNm) + ' ' + address.sggNm + ' ' + address.rn;
            road.addressDetails = address.buldMnnm + (address.buldSlno != 0 ? '-' + address.buldSlno : '') + buildingName+ ' ' + address.addrDetail;

            tempCallback({
                zipcode: address.zipNo,
                address: road.address,
                addressDetails: road.addressDetails,
                sido: getShortAddress(address.siNm),
                sigungu: address.sggNm,
                userSelectedType: 'R',
                oldAddress: {
                    zipcode: '',
                    address: jibun.address || '',
                    addressDetails: jibun.addressDetails || ''
                },
                newAddress: {
                    zipcode: address.zipNo,
                    address: road.address,
                    addressDetails: road.addressDetails,
                    extra: road.extra.length > 0 ? '(' + road.extra.join(',') + ')' : ''
                }
            });

            tempCallback = null;
        }
    };
})(jQuery);

mapControl.address.util = (function () {
    function addressSettingTemplete() {
        return ['<style>' +
        '#address_change_wrap{color:#fff; text-align:center; padding: 25px 0 25px 0;width:100%;min-width: 650px !ie7;overflow: auto;font-size: 20px; background: rgba(93, 127, 199, 0.75); position:fixed; top:0; z-index:10000;}' +
        '#address_change_wrap button{width: 140px;border: 1px solid #000;line-height: 33px;background: #fff;font-size: 18px;cursor: pointer;}' +
        '</style> ',
            '<button onclick="mapControl.address.util.setCookieForAddress(\'daum\')">다음 API</button> ',
            '<button onclick="mapControl.address.util.setCookieForAddress(\'geo\')">행정안전부 API</button> ',
            '<button onclick="mapControl.address.util.setCookieForAddress(\'reset\')">초기화</button> ',
            '<button onclick="document.getElementById(\'address_change_wrap\').style.display = \'none\'">닫기</button> ',
            '<span style="float: right;margin: 10px 50px 0 0;">우편번호 서비스 설정</span> '
        ].join('');
    }

    return {
        addressApiSetting: function() {
            var wrapper = document.getElementById('address_change_wrap');

            if (wrapper) {
                wrapper.style.display = 'block';
                return;
            }

            wrapper = document.createElement('div');
            wrapper.setAttribute('id','address_change_wrap');
            wrapper.innerHTML = addressSettingTemplete();
            document.body.appendChild(wrapper);
        },

        setCookieForAddress: function (mode) {
            var domain = window.location.hostname.replace(/[A-Za-z]*\./, '.'),
                alertMessages = {
                    daum: '다음 API 설정',
                    geo: '행정안전부 API 설정',
                    reset: '초기화'
                };

            if (mode === 'daum' || mode === 'geo') {
                document.cookie='address_api=' + mode + ';path=/;domain=' + domain + ';expires=0;';
            } else if (mode === 'reset') {
                document.cookie='address_api=;path=/;domain=' + domain + ';expires=Wed 01 Jan 1970';
            }

            alert(alertMessages[mode]);
            document.getElementById('address_change_wrap').style.display = 'none';
        }
    };
})();

mapControl.util = (function ($) {
    function registerAddressEvent(id, option) {
        var $address = $('#' + id.address),
            $addressDetails = $('#' + id.addressDetails),
            $oversea = $('#' + id.oversea),
            $zipcode = $('#' + id.zipcode),
            $btnZipcode = $('#' + id.btnZipcode),
            $btnOversea = $('#' + id.btnOversea),
            $mapview = id.mapview ? $('#' + id.mapview) : null,
            $latitude = id.latitude ? $('#' + id.latitude) : null,
            $longitude = id.longitude ? $('#' + id.longitude) : null,
            address = '', addressDetails = '', zipcode = '', overseaDetails = '';

        $address.addClass('_searchArea');
        $zipcode.addClass('_searchArea');
        $btnZipcode.addClass('_searchArea');

        $('._searchArea').on('click', function () {
            mapControl.searchArea(function (res) {
                $zipcode.val(res.zipcode);
                $address.val(res.address);
                $addressDetails.val(res.addressDetails);

                if ($latitude && $longitude) {
                    mapControl.getLatLngByAddress(res.address + ' ' + res.addressDetails, function (lat, lng) {
                        $latitude.val(lat);
                        $longitude.val(lng);
                    });
                }

                if (!!option.callback && !!option.callback.searchArea) {
                    option.callback.searchArea();
                }
            });
        });

        $btnOversea.on('change', function () {
            if ($(this).prop('checked')) {
                address = $address.val();
                addressDetails = $addressDetails.val();
                zipcode = $zipcode.val();

                if ($oversea.val() !== '') {
                    $address.val($oversea.find('option:selected').text());
                    $zipcode.val($oversea.val());
                } else {
                    $address.val('');
                    $zipcode.val('');
                    if ($latitude && $longitude) {
                        $latitude.val('');
                        $longitude.val('');
                    }
                }
                $addressDetails.val(overseaDetails);

                $('._searchArea').hide();
                $oversea.show();
                if ($mapview) {
                    $mapview.hide();
                }
            } else {
                overseaDetails = $addressDetails.val();
                $address.val(address);
                $addressDetails.val(addressDetails);
                $zipcode.val(zipcode);

                $('._searchArea').show();
                $oversea.hide();
                if ($mapview) {
                    $mapview.show();
                }
            }
        });

        $oversea.on('change', function () {
            var $this = $(this);

            if ($this.val() === '') {
                $address.val('');
                $zipcode.val('');
            } else {
                $address.val($this.find('option:selected').text());
                $zipcode.val($this.val());
            }
        });
    }

    function setValueByAddressForm(id) {
        var $zipcode = $('#' + id.zipcode),
            $address = $('#' + id.address),
            $addressDetails = $('#' +id.addressDetails),
            $oversea = $('#' + id.oversea),
            $btnOversea = $('#' + id.btnOversea),
            temp;

        if ($zipcode.val() && $address.val() && isOverseaByPost($oversea, $zipcode.val())) {
            $oversea.val($zipcode.val());
            temp = $addressDetails.val();
            $zipcode.val('');
            $address.val('');
            $addressDetails.val('');
            $btnOversea.click();
            $addressDetails.val(temp);
        }
    }

    function isOverseaByPost($overseaEl, zipcode) {
        var $optionEl = $overseaEl.find('option'),
            flag = false;

        $optionEl.each(function (index) {
            if ($optionEl[index].value === zipcode) {
                flag = true;
            }
        });

        return flag;
    }

    function registerNewAddressEvent(id, option) {
        var $newZipcode = $('#' + id.newZipcode),
            $oldAddress = $('#' + id.oldAddress),
            $oldAddressDetails = $('#' + id.oldAddressDetails),
            $oldZipcode = $('#' + id.oldZipcode),
            $newAddress = $('#' + id.newAddress),
            $newAddressDetails = $('#' + id.newAddressDetails),
            $newAddressExtra = $('#' + id.newAddressExtra),
            $oversea = $('#' + id.oversea),
            $btnZipcode = $('#' + id.btnZipcode),
            $btnOversea = $('#' + id.btnOversea),
            $latitude = id.latitude ? $('#' + id.latitude) : null,
            $longitude = id.longitude ? $('#' + id.longitude) : null,
            $userSelectedType = $('#' + id.userSelectedType),
            $sido = $('#' + id.sido),
            $sigungu = $('#' + id.sigungu),
            searchAddr, temp = [];

        $oldZipcode.addClass('_searchArea _oldAddress');
        $oldAddress.addClass('_searchArea _oldAddress');
        $oldAddressDetails.addClass('_oldAddress');
        $newZipcode.addClass('_searchArea _newAddress');
        $newAddress.addClass('_searchArea _newAddress');
        $newAddressDetails.addClass('_newAddress');
        $btnZipcode.addClass('_searchArea');

        if ($latitude && $longitude) {
            $latitude.addClass('_areaPosition');
            $longitude.addClass('_areaPosition');
        }

        $('._searchArea').on('click', function () {
            mapControl.searchArea(function (res) {
                $oldZipcode.val(res.oldAddress.zipcode);
                $oldAddress.val(res.oldAddress.address);
                $oldAddressDetails.val(res.oldAddress.addressDetails);
                $newZipcode.val(res.newAddress.zipcode);
                $newAddress.val(res.newAddress.address);
                $newAddressDetails.val(res.newAddress.addressDetails);
                $newAddressExtra.val(res.newAddress.extra);
                $userSelectedType.val(res.userSelectedType);

                if ($sido && $sigungu) {
                    $sido.val(res.sido);
                    $sigungu.val(res.sigungu);
                }

                if ($latitude && $longitude) {
                    searchAddr = res.newAddress.address ? res.newAddress.address + ' ' + res.newAddress.addressDetails :
                        res.oldAddress.address + ' ' + res.oldAddress.addressDetails;
                    mapControl.getLatLngByAddress(searchAddr, function (lat, lng) {
                        $latitude.val(lat);
                        $longitude.val(lng);
                    });
                }

                renderInputArea('domestic', id, !!option.isAdmin);

                if (!!option.callback && !!option.callback.searchArea) {
                    option.callback.searchArea();
                }
            });
        });

        $btnOversea.on('change', function () {
            if ($(this).prop('checked')) {
                temp.oldAddress = $oldAddress.val();
                temp.oldAddressDetails = $oldAddressDetails.val();
                temp.oldZipcode = $oldZipcode.val();
                temp.newAddress = $newAddress.val();
                temp.newAddressDetails = $newAddressDetails.val();
                temp.newAddressExtra = $newAddressExtra.val();
                temp.newZipcode = $newZipcode.val();
                temp.sido = $sido.val();
                temp.sigungu = $sigungu.val();
                temp.userSelectedType = $userSelectedType.val();

                if ($oversea.val() !== '') {
                    $oldAddress.val($oversea.find('option:selected').text());
                    $oldZipcode.val($oversea.val());
                } else {
                    $oldAddress.val('');
                    $oldZipcode.val('');
                }
                $newAddress.val('');
                $newAddressDetails.val('');
                $newAddressExtra.val('');
                $newZipcode.val('');
                $sido.val('');
                $sigungu.val('');

                if ($latitude && $longitude) {
                    temp.latitude = $latitude.val();
                    temp.longitude = $longitude.val();
                    $latitude.val('');
                    $longitude.val('');
                }

                $userSelectedType.val('J');
                $oldAddressDetails.val(temp.overseaDetails);

                renderInputArea('overseas', id, option.isAdmin);
            } else {
                temp.overseaDetails = $oldAddressDetails.val();
                $oldAddress.val(temp.oldAddress);
                $oldAddressDetails.val(temp.oldAddressDetails);
                $oldZipcode.val(temp.oldZipcode);
                $newAddress.val(temp.newAddress);
                $newAddressDetails.val(temp.newAddressDetails);
                $newAddressExtra.val(temp.newAddressExtra);
                $newZipcode.val(temp.newZipcode);
                $sido.val(temp.sido);
                $sigungu.val(temp.sigungu);

                $userSelectedType.val(temp.userSelectedType);
                if ($latitude && $longitude) {
                    $latitude.val(temp.latitude);
                    $longitude.val(temp.longitude);
                }

                renderInputArea('domestic', id, option.isAdmin);
            }
        });

        $oversea.on('change', function () {
            var $this = $(this);

            if ($this.val() === '') {
                $oldAddress.val('');
                $oldZipcode.val('');
            } else {
                $oldAddress.val($this.find('option:selected').text());
                $oldZipcode.val($this.val());
            }
        });
    }

    function setValueByNewAddressForm(id, option) {
        var $oldZipcode = $('#' + id.oldZipcode),
            $oldAddress = $('#' + id.oldAddress),
            $oldAddressDetails = $('#' +id.oldAddressDetails),
            $oversea = $('#' + id.oversea),
            $btnOversea = $('#' + id.btnOversea),
            temp;

        if ($oldZipcode.val() && $oldAddress.val() && isOverseaByPost($oversea, $oldZipcode.val())) {
            $oversea.val($oldZipcode.val());
            temp = $oldAddressDetails.val();
            $oldZipcode.val('');
            $oldAddress.val('');
            $oldAddressDetails.val('');
            $btnOversea.click();
            $oldAddressDetails.val(temp);
        } else {
            renderInputArea('domestic', id, !!option.isAdmin);
        }
    }

    function renderInputArea(type, id, isAdmin) {
        var $oldAddressDetails = $('#' + id.oldAddressDetails),
            $oversea = $('#' + id.oversea),
            $btnZipcode = $('#' + id.btnZipcode),
            $mapview = id.mapview ? $('#' + id.mapview) : null,
            $userSelectedType = $('#' + id.userSelectedType);

        if (type === 'overseas') {
            $userSelectedType.hide();
            $btnZipcode.hide();
            $('._oldAddress').hide();
            $('._newAddress').hide();
            $('._areaPosition').hide();
            $oversea.show();
            $oldAddressDetails.show();
            if ($mapview) {
                $mapview.hide();
            }
        } else {
            $btnZipcode.show();
            if (isAdmin) {
                $userSelectedType.show();
                $('._areaPosition').show();
                $('._newAddress').show();
                $('._oldAddress').show();
            } else {
                $userSelectedType.hide();
                $('._areaPosition').hide();
                if ($userSelectedType.val() === 'R') {
                    $('._newAddress').show();
                    $('._oldAddress').hide();
                } else {
                    $('._newAddress').hide();
                    $('._oldAddress').show();
                }
            }
            $oversea.hide();
            if ($mapview) {
                $mapview.show();
            }
        }
    }

    function hasAllAddressId(id) {
        var idArr = ['oldZipcode', 'oldAddress', 'oldAddressDetails', 'newZipcode', 'newAddress', 'newAddressDetails', 'newAddressExtra', 'userSelectedType', 'sido', 'sigungu'],
            idKeys = Object.keys(id),
            flag = true;

        $.each(idArr, function (idx, val) {
            if (idKeys.indexOf(val) === -1) {
                flag = false;
            }
        });

        return flag;
    }

    function renderOverseaSelectOption(id, data) {
        var template = '<option value="{{post}}">{{name}}</option>',
            list = [], html = [],
            length;

        list.push({
            post: '',
            name: '국가 선택'
        });
        Object.keys(data).sort(function (a, b) {
            return data[a] > data[b] ? 1 : -1;
        }).map(function (code) {
            list.push({
                post: code.slice(0, 3) + '-' + code.slice(3, 6),
                name: data[code]
            });
        });

        length = list.length;
        for (var seq = 0; seq < length; seq++) {
            html.push(
                template.replace(/\{\{post}}/g, list[seq].post)
                    .replace(/\{\{name}}/g, list[seq].name)
            );

        }
        $('#' + id).html(html.join(''));
    }

    return {
        getPostCodeOverseaArea: function (callback) {
            $.ajax({
                url: '/zf_user/popup/get-post-code-oversea-area',
                type: 'get',
                dataType: 'json'
            }).done(function (ret) {
                callback(ret);
            });
        },

        saveLatLngByRecruit: function (recIdx, lat, lng) {
            $.ajax({
                url: '/zf_user/popup/save-lat-lng-by-recruit',
                type: 'post',
                dataType: 'json',
                data: {
                    rec_idx: recIdx,
                    lat: lat,
                    lng: lng
                }
            });
        },

        renderAddressForm: function (id, option) {
            mapControl.util.getPostCodeOverseaArea(function (ret) {
                renderOverseaSelectOption(id.oversea, ret);

                if (!hasAllAddressId(id)) { //기존 방식인가
                    registerAddressEvent(id, option);
                    setValueByAddressForm(id);
                } else {
                    registerNewAddressEvent(id, option);
                    setValueByNewAddressForm(id, option);
                }
            });
        },

        incidentAddressCheck: function () {
            var $el = $('._incident_search'),
                $incident = $el.length > 0 ? $el : $('._incident_search_coerce');

            if ($incident.length < 1) {
                return true;
            }

            $incident.show();
            $(':focus').blur();
            return false;
        },

        incidentMapApiCheck: function () {
            var $incident = $('._incident_check');
            if ($incident.length < 1) {
                return true;
            }

            if (!$incident.is(':visible')) {
                $incident.hide();
                $incident.removeClass('_incident_display');
                return true;
            }

            $incident.show();
            $(':focus').blur();
            return false;
        },

        /**
         * ie10미만 인지 확인
         */
        isIE10Under: function() {
            if (!!navigator.userAgent) {
                if (navigator.userAgent.toLocaleLowerCase().indexOf("msie") !== -1) {
                    return true;
                }
            }
            return false;
        },

        getCookie : function(name) {
            var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
            return value? value[2] : '';
        }
    };
})(jQuery);