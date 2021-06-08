<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko"><head>
<meta charset="utf-8">
<title>일하라</title>    <meta http-equiv="Content-Language" content="ko-KR">
<meta name="apple-itunes-app" content="app-id=739013038">
<meta name="Description" content="1000대기업 공채 및 핵심자료, 대기업/중소기업 채용, 기업정보, 연봉정보 제공">
<meta name="viewport" content="width=1280">
<meta http-equiv="X-UA-Compatible" content="IE=Edge;"><script type="text/javascript" async="" src="https://www.google-analytics.com/plugins/ua/ec.js"></script><script type="text/javascript" src="https://bam-cell.nr-data.net/1/03a1f7dfe5?a=443261373&amp;v=1209.f04e2b9&amp;to=YFJaMkNTDBIFAUJfWVkYeQVFWw0PSwZTUFdCW0xJWFwGBBxNX1hSUk8%3D&amp;rst=1247&amp;ck=1&amp;ref=https://www.saramin.co.kr/zf_user/&amp;ap=584&amp;be=714&amp;fe=1226&amp;dc=1043&amp;af=err,xhr,stn,ins&amp;perf=%7B%22timing%22:%7B%22of%22:1623141127781,%22n%22:0,%22u%22:673,%22ue%22:673,%22f%22:2,%22dn%22:6,%22dne%22:6,%22c%22:6,%22s%22:7,%22ce%22:23,%22rq%22:23,%22rp%22:648,%22rpe%22:654,%22dl%22:684,%22di%22:1043,%22ds%22:1043,%22de%22:1054,%22dc%22:1226,%22l%22:1226,%22le%22:1227%7D,%22navigation%22:%7B%22ty%22:2%7D%7D&amp;fp=816&amp;fcp=816&amp;at=TBVZRAtJHxw%3D&amp;jsonp=NREUM.setToken"></script><script src="https://js-agent.newrelic.com/nr-1209.min.js"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-GR2XRGQ0FK&amp;l=dataLayer&amp;cx=c"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/gtm/js?id=GTM-KN35GK2&amp;cid=2011382857.1623061246"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/plugins/ua/linkid.js"></script><script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-MK2GBBH"></script><script async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"VgMEUFRbDRAEUFJQAQAEUVc=",licenseKey:"03a1f7dfe5",applicationID:"443261373"};window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var i=e[n]={exports:{}};t[n][0].call(i.exports,function(e){var i=t[n][1][e];return r(i||e)},i,i.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<n.length;i++)r(n[i]);return r}({1:[function(t,e,n){function r(t){try{s.console&&console.log(t)}catch(e){}}var i,o=t("ee"),a=t(25),s={};try{i=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(s.console=!0,i.indexOf("dev")!==-1&&(s.dev=!0),i.indexOf("nr_dev")!==-1&&(s.nrDev=!0))}catch(c){}s.nrDev&&o.on("internal-error",function(t){r(t.stack)}),s.dev&&o.on("fn-err",function(t,e,n){r(n.stack)}),s.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(s,function(t,e){return t}).join(", ")))},{}],2:[function(t,e,n){function r(t,e,n,r,s){try{p?p-=1:i(s||new UncaughtException(t,e,n),!0)}catch(f){try{o("ierr",[f,c.now(),!0])}catch(d){}}return"function"==typeof u&&u.apply(this,a(arguments))}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}function i(t,e){var n=e?null:c.now();o("err",[t,n])}var o=t("handle"),a=t(26),s=t("ee"),c=t("loader"),f=t("gos"),u=window.onerror,d=!1,l="nr@seenError";if(!c.disabled){var p=0;c.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(h){"stack"in h&&(t(9),t(8),"addEventListener"in window&&t(5),c.xhrWrappable&&t(10),d=!0)}s.on("fn-start",function(t,e,n){d&&(p+=1)}),s.on("fn-err",function(t,e,n){d&&!n[l]&&(f(n,l,function(){return!0}),this.thrown=!0,i(n))}),s.on("fn-end",function(){d&&!this.thrown&&p>0&&(p-=1)}),s.on("internal-error",function(t){o("ierr",[t,c.now(),!0])})}},{}],3:[function(t,e,n){var r=t("loader");r.disabled||(r.features.ins=!0)},{}],4:[function(t,e,n){function r(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var i=t("ee"),o=t("handle"),a=t(9),s=t(8),c="learResourceTimings",f="addEventListener",u="resourcetimingbufferfull",d="bstResource",l="resource",p="-start",h="-end",m="fn"+p,w="fn"+h,v="bstTimer",g="pushState",y=t("loader");if(!y.disabled){y.features.stn=!0,t(7),"addEventListener"in window&&t(5);var x=NREUM.o.EV;i.on(m,function(t,e){var n=t[0];n instanceof x&&(this.bstStart=y.now())}),i.on(w,function(t,e){var n=t[0];n instanceof x&&o("bst",[n,e,this.bstStart,y.now()])}),a.on(m,function(t,e,n){this.bstStart=y.now(),this.bstType=n}),a.on(w,function(t,e){o(v,[e,this.bstStart,y.now(),this.bstType])}),s.on(m,function(){this.bstStart=y.now()}),s.on(w,function(t,e){o(v,[e,this.bstStart,y.now(),"requestAnimationFrame"])}),i.on(g+p,function(t){this.time=y.now(),this.startPath=location.pathname+location.hash}),i.on(g+h,function(t){o("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),f in window.performance&&(window.performance["c"+c]?window.performance[f](u,function(t){o(d,[window.performance.getEntriesByType(l)]),window.performance["c"+c]()},!1):window.performance[f]("webkit"+u,function(t){o(d,[window.performance.getEntriesByType(l)]),window.performance["webkitC"+c]()},!1)),document[f]("scroll",r,{passive:!0}),document[f]("keypress",r,!1),document[f]("click",r,!1)}}},{}],5:[function(t,e,n){function r(t){for(var e=t;e&&!e.hasOwnProperty(u);)e=Object.getPrototypeOf(e);e&&i(e)}function i(t){s.inPlace(t,[u,d],"-",o)}function o(t,e){return t[1]}var a=t("ee").get("events"),s=t("wrap-function")(a,!0),c=t("gos"),f=XMLHttpRequest,u="addEventListener",d="removeEventListener";e.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(f.prototype)):f.prototype.hasOwnProperty(u)&&(i(window),i(f.prototype)),a.on(u+"-start",function(t,e){var n=t[1],r=c(n,"nr@wrapped",function(){function t(){if("function"==typeof n.handleEvent)return n.handleEvent.apply(n,arguments)}var e={object:t,"function":n}[typeof n];return e?s(e,"fn-",null,e.name||"anonymous"):n});this.wrapped=t[1]=r}),a.on(d+"-start",function(t){t[1]=this.wrapped||t[1]})},{}],6:[function(t,e,n){function r(t,e,n){var r=t[e];"function"==typeof r&&(t[e]=function(){var t=o(arguments),e={};i.emit(n+"before-start",[t],e);var a;e[m]&&e[m].dt&&(a=e[m].dt);var s=r.apply(this,t);return i.emit(n+"start",[t,a],s),s.then(function(t){return i.emit(n+"end",[null,t],s),t},function(t){throw i.emit(n+"end",[t],s),t})})}var i=t("ee").get("fetch"),o=t(26),a=t(25);e.exports=i;var s=window,c="fetch-",f=c+"body-",u=["arrayBuffer","blob","json","text","formData"],d=s.Request,l=s.Response,p=s.fetch,h="prototype",m="nr@context";d&&l&&p&&(a(u,function(t,e){r(d[h],e,f),r(l[h],e,f)}),r(s,"fetch",c),i.on(c+"end",function(t,e){var n=this;if(e){var r=e.headers.get("content-length");null!==r&&(n.rxSize=r),i.emit(c+"done",[null,e],n)}else i.emit(c+"done",[t],n)}))},{}],7:[function(t,e,n){var r=t("ee").get("history"),i=t("wrap-function")(r);e.exports=r;var o=window.history&&window.history.constructor&&window.history.constructor.prototype,a=window.history;o&&o.pushState&&o.replaceState&&(a=o),i.inPlace(a,["pushState","replaceState"],"-")},{}],8:[function(t,e,n){var r=t("ee").get("raf"),i=t("wrap-function")(r),o="equestAnimationFrame";e.exports=r,i.inPlace(window,["r"+o,"mozR"+o,"webkitR"+o,"msR"+o],"raf-"),r.on("raf-start",function(t){t[0]=i(t[0],"fn-")})},{}],9:[function(t,e,n){function r(t,e,n){t[0]=a(t[0],"fn-",null,n)}function i(t,e,n){this.method=n,this.timerDuration=isNaN(t[1])?0:+t[1],t[0]=a(t[0],"fn-",this,n)}var o=t("ee").get("timer"),a=t("wrap-function")(o),s="setTimeout",c="setInterval",f="clearTimeout",u="-start",d="-";e.exports=o,a.inPlace(window,[s,"setImmediate"],s+d),a.inPlace(window,[c],c+d),a.inPlace(window,[f,"clearImmediate"],f+d),o.on(c+u,r),o.on(s+u,i)},{}],10:[function(t,e,n){function r(t,e){d.inPlace(e,["onreadystatechange"],"fn-",s)}function i(){var t=this,e=u.context(t);t.readyState>3&&!e.resolved&&(e.resolved=!0,u.emit("xhr-resolved",[],t)),d.inPlace(t,g,"fn-",s)}function o(t){y.push(t),h&&(b?b.then(a):w?w(a):(E=-E,R.data=E))}function a(){for(var t=0;t<y.length;t++)r([],y[t]);y.length&&(y=[])}function s(t,e){return e}function c(t,e){for(var n in t)e[n]=t[n];return e}t(5);var f=t("ee"),u=f.get("xhr"),d=t("wrap-function")(u),l=NREUM.o,p=l.XHR,h=l.MO,m=l.PR,w=l.SI,v="readystatechange",g=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],y=[];e.exports=u;var x=window.XMLHttpRequest=function(t){var e=new p(t);try{u.emit("new-xhr",[e],e),e.addEventListener(v,i,!1)}catch(n){try{u.emit("internal-error",[n])}catch(r){}}return e};if(c(p,x),x.prototype=p.prototype,d.inPlace(x.prototype,["open","send"],"-xhr-",s),u.on("send-xhr-start",function(t,e){r(t,e),o(e)}),u.on("open-xhr-start",r),h){var b=m&&m.resolve();if(!w&&!m){var E=1,R=document.createTextNode(E);new h(a).observe(R,{characterData:!0})}}else f.on("fn-end",function(t){t[0]&&t[0].type===v||a()})},{}],11:[function(t,e,n){function r(t){if(!s(t))return null;var e=window.NREUM;if(!e.loader_config)return null;var n=(e.loader_config.accountID||"").toString()||null,r=(e.loader_config.agentID||"").toString()||null,f=(e.loader_config.trustKey||"").toString()||null;if(!n||!r)return null;var h=p.generateSpanId(),m=p.generateTraceId(),w=Date.now(),v={spanId:h,traceId:m,timestamp:w};return(t.sameOrigin||c(t)&&l())&&(v.traceContextParentHeader=i(h,m),v.traceContextStateHeader=o(h,w,n,r,f)),(t.sameOrigin&&!u()||!t.sameOrigin&&c(t)&&d())&&(v.newrelicHeader=a(h,m,w,n,r,f)),v}function i(t,e){return"00-"+e+"-"+t+"-01"}function o(t,e,n,r,i){var o=0,a="",s=1,c="",f="";return i+"@nr="+o+"-"+s+"-"+n+"-"+r+"-"+t+"-"+a+"-"+c+"-"+f+"-"+e}function a(t,e,n,r,i,o){var a="btoa"in window&&"function"==typeof window.btoa;if(!a)return null;var s={v:[0,1],d:{ty:"Browser",ac:r,ap:i,id:t,tr:e,ti:n}};return o&&r!==o&&(s.d.tk=o),btoa(JSON.stringify(s))}function s(t){return f()&&c(t)}function c(t){var e=!1,n={};if("init"in NREUM&&"distributed_tracing"in NREUM.init&&(n=NREUM.init.distributed_tracing),t.sameOrigin)e=!0;else if(n.allowed_origins instanceof Array)for(var r=0;r<n.allowed_origins.length;r++){var i=h(n.allowed_origins[r]);if(t.hostname===i.hostname&&t.protocol===i.protocol&&t.port===i.port){e=!0;break}}return e}function f(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.enabled}function u(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.exclude_newrelic_header}function d(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&NREUM.init.distributed_tracing.cors_use_newrelic_header!==!1}function l(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.cors_use_tracecontext_headers}var p=t(22),h=t(13);e.exports={generateTracePayload:r,shouldGenerateTrace:s}},{}],12:[function(t,e,n){function r(t){var e=this.params,n=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<l;r++)t.removeEventListener(d[r],this.listener,!1);e.aborted||(n.duration=a.now()-this.startTime,this.loadCaptureCalled||4!==t.readyState?null==e.status&&(e.status=0):o(this,t),n.cbTime=this.cbTime,u.emit("xhr-done",[t],t),s("xhr",[e,n,this.startTime]))}}function i(t,e){var n=c(e),r=t.params;r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.parsedOrigin=c(e),t.sameOrigin=t.parsedOrigin.sameOrigin}function o(t,e){t.params.status=e.status;var n=w(e,t.lastSize);if(n&&(t.metrics.rxSize=n),t.sameOrigin){var r=e.getResponseHeader("X-NewRelic-App-Data");r&&(t.params.cat=r.split(", ").pop())}t.loadCaptureCalled=!0}var a=t("loader");if(a.xhrWrappable&&!a.disabled){var s=t("handle"),c=t(13),f=t(11).generateTracePayload,u=t("ee"),d=["load","error","abort","timeout"],l=d.length,p=t("id"),h=t(18),m=t(17),w=t(14),v=window.XMLHttpRequest;a.features.xhr=!0,t(10),t(6),u.on("new-xhr",function(t){var e=this;e.totalCbs=0,e.called=0,e.cbTime=0,e.end=r,e.ended=!1,e.xhrGuids={},e.lastSize=null,e.loadCaptureCalled=!1,e.params=this.params||{},e.metrics=this.metrics||{},t.addEventListener("load",function(n){o(e,t)},!1),h&&(h>34||h<10)||window.opera||t.addEventListener("progress",function(t){e.lastSize=t.loaded},!1)}),u.on("open-xhr-start",function(t){this.params={method:t[0]},i(this,t[1]),this.metrics={}}),u.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid);var n=f(this.parsedOrigin);if(n){var r=!1;n.newrelicHeader&&(e.setRequestHeader("newrelic",n.newrelicHeader),r=!0),n.traceContextParentHeader&&(e.setRequestHeader("traceparent",n.traceContextParentHeader),n.traceContextStateHeader&&e.setRequestHeader("tracestate",n.traceContextStateHeader),r=!0),r&&(this.dt=n)}}),u.on("send-xhr-start",function(t,e){var n=this.metrics,r=t[0],i=this;if(n&&r){var o=m(r);o&&(n.txSize=o)}this.startTime=a.now(),this.listener=function(t){try{"abort"!==t.type||i.loadCaptureCalled||(i.params.aborted=!0),("load"!==t.type||i.called===i.totalCbs&&(i.onloadCalled||"function"!=typeof e.onload))&&i.end(e)}catch(n){try{u.emit("internal-error",[n])}catch(r){}}};for(var s=0;s<l;s++)e.addEventListener(d[s],this.listener,!1)}),u.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),u.on("xhr-load-added",function(t,e){var n=""+p(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),u.on("xhr-load-removed",function(t,e){var n=""+p(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),u.on("addEventListener-end",function(t,e){e instanceof v&&"load"===t[0]&&u.emit("xhr-load-added",[t[1],t[2]],e)}),u.on("removeEventListener-end",function(t,e){e instanceof v&&"load"===t[0]&&u.emit("xhr-load-removed",[t[1],t[2]],e)}),u.on("fn-start",function(t,e,n){e instanceof v&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=a.now()))}),u.on("fn-end",function(t,e){this.xhrCbStart&&u.emit("xhr-cb-time",[a.now()-this.xhrCbStart,this.onload,e],e)}),u.on("fetch-before-start",function(t){function e(t,e){var n=!1;return e.newrelicHeader&&(t.set("newrelic",e.newrelicHeader),n=!0),e.traceContextParentHeader&&(t.set("traceparent",e.traceContextParentHeader),e.traceContextStateHeader&&t.set("tracestate",e.traceContextStateHeader),n=!0),n}var n,r=t[1]||{};"string"==typeof t[0]?n=t[0]:t[0]&&t[0].url?n=t[0].url:window.URL&&t[0]&&t[0]instanceof URL&&(n=t[0].href),n&&(this.parsedOrigin=c(n),this.sameOrigin=this.parsedOrigin.sameOrigin);var i=f(this.parsedOrigin);if(i&&(i.newrelicHeader||i.traceContextParentHeader))if("string"==typeof t[0]||window.URL&&t[0]&&t[0]instanceof URL){var o={};for(var a in r)o[a]=r[a];o.headers=new Headers(r.headers||{}),e(o.headers,i)&&(this.dt=i),t.length>1?t[1]=o:t.push(o)}else t[0]&&t[0].headers&&e(t[0].headers,i)&&(this.dt=i)})}},{}],13:[function(t,e,n){var r={};e.exports=function(t){if(t in r)return r[t];var e=document.createElement("a"),n=window.location,i={};e.href=t,i.port=e.port;var o=e.href.split("://");!i.port&&o[1]&&(i.port=o[1].split("/")[0].split("@").pop().split(":")[1]),i.port&&"0"!==i.port||(i.port="https"===o[0]?"443":"80"),i.hostname=e.hostname||n.hostname,i.pathname=e.pathname,i.protocol=o[0],"/"!==i.pathname.charAt(0)&&(i.pathname="/"+i.pathname);var a=!e.protocol||":"===e.protocol||e.protocol===n.protocol,s=e.hostname===document.domain&&e.port===n.port;return i.sameOrigin=a&&(!e.hostname||s),"/"===i.pathname&&(r[t]=i),i}},{}],14:[function(t,e,n){function r(t,e){var n=t.responseType;return"json"===n&&null!==e?e:"arraybuffer"===n||"blob"===n||"json"===n?i(t.response):"text"===n||""===n||void 0===n?i(t.responseText):void 0}var i=t(17);e.exports=r},{}],15:[function(t,e,n){function r(){}function i(t,e,n){return function(){return o(t,[f.now()].concat(s(arguments)),e?null:this,n),e?void 0:this}}var o=t("handle"),a=t(25),s=t(26),c=t("ee").get("tracer"),f=t("loader"),u=NREUM;"undefined"==typeof window.newrelic&&(newrelic=u);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",p=l+"ixn-";a(d,function(t,e){u[e]=i(l+e,!0,"api")}),u.addPageAction=i(l+"addPageAction",!0),u.setCurrentRouteName=i(l+"routeName",!0),e.exports=newrelic,u.interaction=function(){return(new r).get()};var h=r.prototype={createTracer:function(t,e){var n={},r=this,i="function"==typeof e;return o(p+"tracer",[f.now(),t,n],r),function(){if(c.emit((i?"":"no-")+"fn-start",[f.now(),r,i],n),i)try{return e.apply(this,arguments)}catch(t){throw c.emit("fn-err",[arguments,this,t],n),t}finally{c.emit("fn-end",[f.now()],n)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,e){h[e]=i(p+e)}),newrelic.noticeError=function(t,e){"string"==typeof t&&(t=new Error(t)),o("err",[t,f.now(),!1,e])}},{}],16:[function(t,e,n){function r(t){if(NREUM.init){for(var e=NREUM.init,n=t.split("."),r=0;r<n.length-1;r++)if(e=e[n[r]],"object"!=typeof e)return;return e=e[n[n.length-1]]}}e.exports={getConfiguration:r}},{}],17:[function(t,e,n){e.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(e){return}}}},{}],18:[function(t,e,n){var r=0,i=navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);i&&(r=+i[1]),e.exports=r},{}],19:[function(t,e,n){function r(){return s.exists&&performance.now?Math.round(performance.now()):(o=Math.max((new Date).getTime(),o))-a}function i(){return o}var o=(new Date).getTime(),a=o,s=t(27);e.exports=r,e.exports.offset=a,e.exports.getLastTimestamp=i},{}],20:[function(t,e,n){function r(t){return!(!t||!t.protocol||"file:"===t.protocol)}e.exports=r},{}],21:[function(t,e,n){function r(t,e){var n=t.getEntries();n.forEach(function(t){"first-paint"===t.name?d("timing",["fp",Math.floor(t.startTime)]):"first-contentful-paint"===t.name&&d("timing",["fcp",Math.floor(t.startTime)])})}function i(t,e){var n=t.getEntries();n.length>0&&d("lcp",[n[n.length-1]])}function o(t){t.getEntries().forEach(function(t){t.hadRecentInput||d("cls",[t])})}function a(t){if(t instanceof h&&!w){var e=Math.round(t.timeStamp),n={type:t.type};e<=l.now()?n.fid=l.now()-e:e>l.offset&&e<=Date.now()?(e-=l.offset,n.fid=l.now()-e):e=l.now(),w=!0,d("timing",["fi",e,n])}}function s(t){d("pageHide",[l.now(),t])}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var c,f,u,d=t("handle"),l=t("loader"),p=t(24),h=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){c=new PerformanceObserver(r);try{c.observe({entryTypes:["paint"]})}catch(m){}f=new PerformanceObserver(i);try{f.observe({entryTypes:["largest-contentful-paint"]})}catch(m){}u=new PerformanceObserver(o);try{u.observe({type:"layout-shift",buffered:!0})}catch(m){}}if("addEventListener"in document){var w=!1,v=["click","keydown","mousedown","pointerdown","touchstart"];v.forEach(function(t){document.addEventListener(t,a,!1)})}p(s)}},{}],22:[function(t,e,n){function r(){function t(){return e?15&e[n++]:16*Math.random()|0}var e=null,n=0,r=window.crypto||window.msCrypto;r&&r.getRandomValues&&(e=r.getRandomValues(new Uint8Array(31)));for(var i,o="xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx",a="",s=0;s<o.length;s++)i=o[s],"x"===i?a+=t().toString(16):"y"===i?(i=3&t()|8,a+=i.toString(16)):a+=i;return a}function i(){return a(16)}function o(){return a(32)}function a(t){function e(){return n?15&n[r++]:16*Math.random()|0}var n=null,r=0,i=window.crypto||window.msCrypto;i&&i.getRandomValues&&Uint8Array&&(n=i.getRandomValues(new Uint8Array(31)));for(var o=[],a=0;a<t;a++)o.push(e().toString(16));return o.join("")}e.exports={generateUuid:r,generateSpanId:i,generateTraceId:o}},{}],23:[function(t,e,n){function r(t,e){if(!i)return!1;if(t!==i)return!1;if(!e)return!0;if(!o)return!1;for(var n=o.split("."),r=e.split("."),a=0;a<r.length;a++)if(r[a]!==n[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var s=navigator.userAgent,c=s.match(a);c&&s.indexOf("Chrome")===-1&&s.indexOf("Chromium")===-1&&(i="Safari",o=c[1])}e.exports={agent:i,version:o,match:r}},{}],24:[function(t,e,n){function r(t){function e(){t(a&&document[a]?document[a]:document[i]?"hidden":"visible")}"addEventListener"in document&&o&&document.addEventListener(o,e,!1)}e.exports=r;var i,o,a;"undefined"!=typeof document.hidden?(i="hidden",o="visibilitychange",a="visibilityState"):"undefined"!=typeof document.msHidden?(i="msHidden",o="msvisibilitychange"):"undefined"!=typeof document.webkitHidden&&(i="webkitHidden",o="webkitvisibilitychange",a="webkitVisibilityState")},{}],25:[function(t,e,n){function r(t,e){var n=[],r="",o=0;for(r in t)i.call(t,r)&&(n[o]=e(r,t[r]),o+=1);return n}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],26:[function(t,e,n){function r(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,i=n-e||0,o=Array(i<0?0:i);++r<i;)o[r]=t[e+r];return o}e.exports=r},{}],27:[function(t,e,n){e.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(t,e,n){function r(){}function i(t){function e(t){return t&&t instanceof r?t:t?f(t,c,a):a()}function n(n,r,i,o,a){if(a!==!1&&(a=!0),!p.aborted||o){t&&a&&t(n,r,i);for(var s=e(i),c=m(n),f=c.length,u=0;u<f;u++)c[u].apply(s,r);var l=d[y[n]];return l&&l.push([x,n,r,s]),s}}function o(t,e){g[t]=m(t).concat(e)}function h(t,e){var n=g[t];if(n)for(var r=0;r<n.length;r++)n[r]===e&&n.splice(r,1)}function m(t){return g[t]||[]}function w(t){return l[t]=l[t]||i(n)}function v(t,e){p.aborted||u(t,function(t,n){e=e||"feature",y[n]=e,e in d||(d[e]=[])})}var g={},y={},x={on:o,addEventListener:o,removeEventListener:h,emit:n,get:w,listeners:m,context:e,buffer:v,abort:s,aborted:!1};return x}function o(t){return f(t,c,a)}function a(){return new r}function s(){(d.api||d.feature)&&(p.aborted=!0,d=p.backlog={})}var c="nr@context",f=t("gos"),u=t(25),d={},l={},p=e.exports=i();e.exports.getOrSetContext=o,p.backlog=d},{}],gos:[function(t,e,n){function r(t,e,n){if(i.call(t,e))return t[e];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return t[e]=r,r}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(t,e,n){function r(t,e,n,r){i.buffer([t],r),i.emit(t,e,n)}var i=t("ee").get("handle");e.exports=r,r.ee=i},{}],id:[function(t,e,n){function r(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:a(t,o,function(){return i++})}var i=1,o="nr@id",a=t("gos");e.exports=r},{}],loader:[function(t,e,n){function r(){if(!S++){var t=O.info=NREUM.info,e=m.getElementsByTagName("script")[0];if(setTimeout(f.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&e))return f.abort();c(E,function(e,n){t[e]||(t[e]=n)});var n=a();s("mark",["onload",n+O.offset],null,"api"),s("timing",["load",n]);var r=m.createElement("script");0===t.agent.indexOf("http://")||0===t.agent.indexOf("https://")?r.src=t.agent:r.src=p+"://"+t.agent,e.parentNode.insertBefore(r,e)}}function i(){"complete"===m.readyState&&o()}function o(){s("mark",["domContent",a()+O.offset],null,"api")}var a=t(19),s=t("handle"),c=t(25),f=t("ee"),u=t(23),d=t(20),l=t(16),p=l.getConfiguration("ssl")===!1?"http":"https",h=window,m=h.document,w="addEventListener",v="attachEvent",g=h.XMLHttpRequest,y=g&&g.prototype,x=!d(h.location);NREUM.o={ST:setTimeout,SI:h.setImmediate,CT:clearTimeout,XHR:g,REQ:h.Request,EV:h.Event,PR:h.Promise,MO:h.MutationObserver};var b=""+location,E={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1209.min.js"},R=g&&y&&y[w]&&!/CriOS/.test(navigator.userAgent),O=e.exports={offset:a.getLastTimestamp(),now:a,origin:b,features:{},xhrWrappable:R,userAgent:u,disabled:x};if(!x){t(15),t(21),m[w]?(m[w]("DOMContentLoaded",o,!1),h[w]("load",r,!1)):(m[v]("onreadystatechange",i),h[v]("onload",r)),s("mark",["firstbyte",a.getLastTimestamp()],null,"api");var S=0}},{}],"wrap-function":[function(t,e,n){function r(t,e){function n(e,n,r,c,f){function nrWrapper(){var o,a,u,l;try{a=this,o=d(arguments),u="function"==typeof r?r(o,a):r||{}}catch(p){i([p,"",[o,a,c],u],t)}s(n+"start",[o,a,c],u,f);try{return l=e.apply(a,o)}catch(h){throw s(n+"err",[o,a,h],u,f),h}finally{s(n+"end",[o,a,l],u,f)}}return a(e)?e:(n||(n=""),nrWrapper[l]=e,o(e,nrWrapper,t),nrWrapper)}function r(t,e,r,i,o){r||(r="");var s,c,f,u="-"===r.charAt(0);for(f=0;f<e.length;f++)c=e[f],s=t[c],a(s)||(t[c]=n(s,u?c+r:r,i,c,o))}function s(n,r,o,a){if(!h||e){var s=h;h=!0;try{t.emit(n,r,o,e,a)}catch(c){i([c,n,r,o],t)}h=s}}return t||(t=u),n.inPlace=r,n.flag=l,n}function i(t,e){e||(e=u);try{e.emit("internal-error",t)}catch(n){}}function o(t,e,n){if(Object.defineProperty&&Object.keys)try{var r=Object.keys(t);return r.forEach(function(n){Object.defineProperty(e,n,{get:function(){return t[n]},set:function(e){return t[n]=e,e}})}),e}catch(o){i([o],n)}for(var a in t)p.call(t,a)&&(e[a]=t[a]);return e}function a(t){return!(t&&t instanceof Function&&t.apply&&!t[l])}function s(t,e){var n=e(t);return n[l]=t,o(t,n,u),n}function c(t,e,n){var r=t[e];t[e]=s(r,n)}function f(){for(var t=arguments.length,e=new Array(t),n=0;n<t;++n)e[n]=arguments[n];return e}var u=t("ee"),d=t(26),l="nr@original",p=Object.prototype.hasOwnProperty,h=!1;e.exports=r,e.exports.wrapFunction=s,e.exports.wrapInPlace=c,e.exports.argsToArray=f},{}]},{},["loader",2,12,4,3]);</script><meta property="og:url" content="https://www.saramin.co.kr/zf_user/">
<meta property="og:title" content="사람인">
<meta property="og:description" content="1000대기업 공채 및 핵심자료, 대기업/중소기업 채용, 기업정보, 연봉정보 제공">
<meta property="og:image" content="//www.saraminimage.co.kr/logo/saraminsnslogo.png">
<meta property="og:site_name" content="사람인">
<meta property="og:type" content="website">
<meta property="og:locale" content="ko_KR">
<meta property="fb:app_id" content="1593727887570039">
<meta property="og:image:width" content="200">
<meta property="og:image:height" content="200"><link href="android-app://kr.co.saramin.brandapp/https/m.saramin.co.kr/" rel="alternate">
<link href="https://www.saramin.co.kr/zf_user/" rel="canonical">
<link href="ios-app://739013038/https/m.saramin.co.kr/" rel="alternate">
<link href="https://m.saramin.co.kr/" rel="alternate" type="text/html" title="mobile optimized version" media="only screen and (max-width: 640px)">
<link href="//feeds.feedburner.com/live-job" rel="alternate" type="application/rss+xml" title="취업 생중계 RSS Feed">
<link href="//feeds.feedburner.com/live-jobs-atom" rel="alternate" type="application/atom+xml" title="취업 생중계 Atom Feed">
<link href="/favicon.ico?ver=2" rel="favicon">
<link href="/favicon.ico?ver=2" rel="icon" type="image/x-icon">
<link href="/favicon.ico?ver=2" rel="shortcut icon" type="image/x-icon">
<link href="/sri_css/header_default.css?v=20210608103301" rel="stylesheet">
<link href="/sri_css/main.css?v=20210608103301" rel="stylesheet">

<link href="csss/Newmain.css" rel="stylesheet" type="text/css">
<link href="csss/headerDefa.css" rel="stylesheet" type="text/css">

<link href="/sri_css/sticky_assist.css?v=20210608103301" rel="stylesheet"><script type="text/javascript">var googleSlotList = {};  var googletag = googletag || {};
googletag.cmd = googletag.cmd || [];  (function() {
var useSSL = 'https:' == document.location.protocol;
var src = (useSSL ? 'https:' : 'http:') + '//www.googletagservices.com/tag/js/gpt.js';
document.write('<scr' + 'ipt src="' + src + '"></scr' + 'ipt>');
})();</script><script src="https://www.googletagservices.com/tag/js/gpt.js"></script><meta http-equiv="origin-trial" content="A+b/H0b8RPXNaJgaNFpO0YOFuGK6myDQXlwnJB3SwzvNMfcndat4DZYMrP4ClJIzYWo3/yP2S+8FTZ/lpqbPAAEAAABueyJvcmlnaW4iOiJodHRwczovL2ltYXNkay5nb29nbGVhcGlzLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzVGhpcmRQYXJ0eSI6dHJ1ZX0="><meta http-equiv="origin-trial" content="A9ZgbRtm4pU3oZiuNzOsKcC8ppFSZdcjP2qYcdQrFKVzkmiWH1kdYY1Mi9x7G8+PS8HV9Ha9Cz0gaMdKsiVZIgMAAAB7eyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="AxL6oBxcpn5rQDPKSAs+d0oxNyJYq2/4esBUh3Yx5z8QfcLu+AU8iFCXYRcr/CEEfDnkxxLTsvXPJFQBxHfvkgMAAACBeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A9KPtG5kl3oLTk21xqynDPGQ5t18bSOpwt0w6kGa6dEWbuwjpffmdUpR3W+faZDubGT+KIk2do0BX2ca16x8qAcAAACBeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiVHJ1c3RUb2tlbnMiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A3HucHUo1oW9s+9kIKz8mLkbcmdaj5lxt3eiIMp1Nh49dkkBlg1Fhg4Fd/r0vL69mRRA36YutI9P/lJUfL8csQoAAACFeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjI2MjIwNzk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlfQ=="><meta http-equiv="origin-trial" content="A0OysezhLoCRYomumeYlubLurZTCmsjTb087OvtCy95jNM65cfEsbajrJnhaGwiTxhz38ZZbm+UhUwQuXfVPTg0AAACLeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjI2MjIwNzk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlfQ=="><meta http-equiv="origin-trial" content="AxoOxdZQmIoA1WeAPDixRAeWDdgs7ZtVFfH2y19ziTgD1iaHE5ZGz2UdSjubkWvob9C5PrjUfkWi4ZSLgWk3Xg8AAACLeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjI2MjIwNzk5LCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlfQ=="><meta http-equiv="origin-trial" content="A7+rMYR5onPnACrz+niKSeFdH3xw1IyHo2AZSHmxrofRk9w4HcQPMYcpBUKu6OQ6zsdxf4m/vqa6tG6Na4OLpAQAAAB4eyJvcmlnaW4iOiJodHRwczovL2ltYXNkay5nb29nbGVhcGlzLmNvbTo0NDMiLCJmZWF0dXJlIjoiQ29udmVyc2lvbk1lYXN1cmVtZW50IiwiZXhwaXJ5IjoxNjI2MjIwNzk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="AwfG8hAcHnPa/kJ1Co0EvG/K0F9l1s2JZGiDLt2mhC3QI5Fh4qmsmSwrWObZFbRC9ieDaSLU6lHRxhGUF/i9sgoAAACBeyJvcmlnaW4iOiJodHRwczovL2RvdWJsZWNsaWNrLm5ldDo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="AwQ7dCmHkvR6FuOFxAuNnktYSQrGbL4dF+eBkrwNLALc69Wr//PnO1yzns3pjUoCaYbKHtVcnng2hU+8OUm0PAYAAACHeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXN5bmRpY2F0aW9uLmNvbTo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="AysVDPGQTLD/Scn78x4mLwB1tMfje5jwUpAAzGRpWsr1NzoN7MTFhT3ClmImi2svDZA7V6nWGIV8YTPsSRTe0wYAAACHeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXRhZ3NlcnZpY2VzLmNvbTo0NDMiLCJmZWF0dXJlIjoiSW50ZXJlc3RDb2hvcnRBUEkiLCJleHBpcnkiOjE2MjYyMjA3OTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9"><script src="https://securepubads.g.doubleclick.net/gpt/pubads_impl_2021060301.js" id="gpt-impl-0.8099890066972921" nonce=""></script> <script type="text/javascript">googletag.cmd.push(function() {
 googleSlotList['div-gpt-ad-1511847708022-0'] = googletag.defineSlot('/61280259/1000-list_120x240', [120, 240], 'div-gpt-ad-1511847708022-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-0'] = googletag.defineSlot('/61280259/1000-list_120x600', [120, 600], 'div-gpt-ad-1400664864294-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1511846653839-0'] = googletag.defineSlot('/61280259/area-list_120x240', [120, 240], 'div-gpt-ad-1511846653839-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-2'] = googletag.defineSlot('/61280259/area-list_120x600', [120, 600], 'div-gpt-ad-1400664864294-2').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-3'] = googletag.defineSlot('/61280259/area-list_728x90', [728, 90], 'div-gpt-ad-1400664864294-3').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1511845706684-0'] = googletag.defineSlot('/61280259/category-list_120x240', [120, 240], 'div-gpt-ad-1511845706684-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-4'] = googletag.defineSlot('/61280259/category-list_120x600', [120, 600], 'div-gpt-ad-1400664864294-4').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-5'] = googletag.defineSlot('/61280259/category-list_728x90', [728, 90], 'div-gpt-ad-1400664864294-5').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1426214085634-0'] = googletag.defineSlot('/61280259/Contest-box_left_307x281', [307, 281], 'div-gpt-ad-1426214085634-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1426214150723-0'] = googletag.defineSlot('/61280259/Contest-box_middle_307x281', [307, 281], 'div-gpt-ad-1426214150723-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1426214197444-0'] = googletag.defineSlot('/61280259/Contest-box_right_307x281', [307, 281], 'div-gpt-ad-1426214197444-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1511845587070-0'] = googletag.defineSlot('/61280259/CS_120x240', [120, 240], 'div-gpt-ad-1511845587070-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-6'] = googletag.defineSlot('/61280259/CS_120x600', [120, 600], 'div-gpt-ad-1400664864294-6').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-7'] = googletag.defineSlot('/61280259/CS_728x90', [728, 90], 'div-gpt-ad-1400664864294-7').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1511846339912-0'] = googletag.defineSlot('/61280259/etc_120x240', [120, 240], 'div-gpt-ad-1511846339912-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-10'] = googletag.defineSlot('/61280259/etc_120x600', [120, 600], 'div-gpt-ad-1400664864294-10').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-11'] = googletag.defineSlot('/61280259/etc_728x90', [728, 90], 'div-gpt-ad-1400664864294-11').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1580945710799-0'] = googletag.defineSlot('/61280259/etc_office_worker_in_120x600', [120, 600], 'div-gpt-ad-1580945710799-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1550638948072-0'] = googletag.defineSlot('/61280259/Login_728x90', [728, 90], 'div-gpt-ad-1550638948072-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-12'] = googletag.defineSlot('/61280259/logout_120x600', [120, 600], 'div-gpt-ad-1400664864294-12').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-13'] = googletag.defineSlot('/61280259/logout_728x90', [728, 90], 'div-gpt-ad-1400664864294-13').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1594859543669-0'] = googletag.defineSlot('/61280259/Main-Big_468x60', [468, 60], 'div-gpt-ad-1594859543669-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1425521803564-0'] = googletag.defineSlot('/61280259/Main-Big_543x113', [543, 113], 'div-gpt-ad-1425521803564-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1426837722822-0'] = googletag.defineSlot('/61280259/Main-image_230x142', [230, 142], 'div-gpt-ad-1426837722822-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1553056482914-0'] = googletag.defineSlot('/61280259/member_120x240', [120, 240], 'div-gpt-ad-1553056482914-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-14'] = googletag.defineSlot('/61280259/member_120x600', [120, 600], 'div-gpt-ad-1400664864294-14').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-15'] = googletag.defineSlot('/61280259/member_728x90', [728, 90], 'div-gpt-ad-1400664864294-15').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1550543155169-0'] = googletag.defineSlot('/61280259/memcom_120x240', [120, 240], 'div-gpt-ad-1550543155169-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-16'] = googletag.defineSlot('/61280259/memcom_120x600', [120, 600], 'div-gpt-ad-1400664864294-16').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1571807667744-0'] = googletag.defineSlot('/61280259/memcom_264x264', [264, 264], 'div-gpt-ad-1571807667744-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-17'] = googletag.defineSlot('/61280259/memcom_728x90', [728, 90], 'div-gpt-ad-1400664864294-17').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1511846020570-0'] = googletag.defineSlot('/61280259/profession-list_120x240', [120, 240], 'div-gpt-ad-1511846020570-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-18'] = googletag.defineSlot('/61280259/profession-list_120x600', [120, 600], 'div-gpt-ad-1400664864294-18').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-19'] = googletag.defineSlot('/61280259/profession-list_728x90', [728, 90], 'div-gpt-ad-1400664864294-19').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-20'] = googletag.defineSlot('/61280259/rapid-view_120x600', [120, 600], 'div-gpt-ad-1400664864294-20').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1511933728215-0'] = googletag.defineSlot('/61280259/recruit-view_120x240', [120, 240], 'div-gpt-ad-1511933728215-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-22'] = googletag.defineSlot('/61280259/recruit-view_120x600', [120, 600], 'div-gpt-ad-1400664864294-22').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1547596188605-0'] = googletag.defineSlot('/61280259/recruit-view_250x250', [250, 250], 'div-gpt-ad-1547596188605-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-23'] = googletag.defineSlot('/61280259/recruit-view_728x90', [728, 90], 'div-gpt-ad-1400664864294-23').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1374566074903-2'] = googletag.defineSlot('/61280259/SearchLeft120x600', [120, 600], 'div-gpt-ad-1374566074903-2').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1384850668630-1'] = googletag.defineSlot('/61280259/SearchTop_468x60', [468, 60], 'div-gpt-ad-1384850668630-1').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1550638841234-0'] = googletag.defineSlot('/61280259/successHelper_728x90', [728, 90], 'div-gpt-ad-1550638841234-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1553056822382-0'] = googletag.defineSlot('/61280259/talent_120x240', [120, 240], 'div-gpt-ad-1553056822382-0').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-24'] = googletag.defineSlot('/61280259/talent_120x600', [120, 600], 'div-gpt-ad-1400664864294-24').addService(googletag.pubads());
 googleSlotList['div-gpt-ad-1400664864294-25'] = googletag.defineSlot('/61280259/talent_728x90', [728, 90], 'div-gpt-ad-1400664864294-25').addService(googletag.pubads());
 googletag.enableServices();
 googletag.pubads().addEventListener('slotRenderEnded', function(event) {
 if (!event.isEmpty) {
 var domId = event.slot.getSlotId().getDomId();
 if (!!document.getElementById(domId + '-wrapper')) {
 document.getElementById(domId + '-wrapper').querySelector('.google-standby-banner').style.display = 'none';
 document.getElementById(domId + '-inner').style.display = '';
 }
 }
 });
});</script> <!--[if lt IE 9]><script type="text/javascript" src="//www.saramin.co.kr/js/html5shiv.min.js"></script><![endif]-->
<link rel="preload" href="https://adservice.google.co.kr/adsid/integrator.js?domain=www.saramin.co.kr" as="script"><script type="text/javascript" src="https://adservice.google.co.kr/adsid/integrator.js?domain=www.saramin.co.kr"></script><link rel="preload" href="https://adservice.google.com/adsid/integrator.js?domain=www.saramin.co.kr" as="script"><script type="text/javascript" src="https://adservice.google.com/adsid/integrator.js?domain=www.saramin.co.kr"></script><link rel="prefetch" href="https://aa236d4fa1b897e00e1e4ff5c24bd9b9.safeframe.googlesyndication.com/safeframe/1-0-38/html/container.html"><script charset="utf-8" src="/js/index/dist/GnbView.chunk.js?v=a018deaead807986ccf9"></script><script charset="utf-8" src="/js/index/dist/LoginBoxLayerView~LoginBoxView.chunk.js?v=e9c1bc54abe52067ca51"></script><script charset="utf-8" src="/js/index/dist/LoginBoxView.chunk.js?v=e94a7eee94b750a89866"></script><script charset="utf-8" src="/js/index/dist/LoginBoxLayerView.chunk.js?v=ef9426c70ae2148700b9"></script><script charset="utf-8" src="/js/index/dist/PersonContentsView.chunk.js?v=5d3c9cb7d0f5e7273a50"></script><script charset="utf-8" src="/js/index/dist/BigboxByPersonView.chunk.js?v=27550be4207847b89132"></script><script charset="utf-8" src="/js/index/dist/BigboxByCompanyView.chunk.js?v=62ad931a51c1077ceaa3"></script><script charset="utf-8" src="/js/index/dist/NoticeRollingView.chunk.js?v=0760fe0eefdfdeb64106"></script><script charset="utf-8" src="/js/index/dist/KeywordSearchController.chunk.js?v=40917f9010ec083e60e7"></script><script charset="utf-8" src="/js/index/dist/AreaSearchController.chunk.js?v=4f145dc52c6797267a99"></script><script charset="utf-8" src="/js/index/dist/CategorySearchController.chunk.js?v=ff1d696bf7100d7d2108"></script></head>
<body id="sri_main">
<div id="skipnavigation">
<a href="#search">본문 바로가기</a>
</div>
<header id="sri_header">
<div class="wrap_header">
<h1>
<a href="/" class="bi" aria-label="사람인" onclick="pushDataLayer('ga_lead','main-gnb','global_menu','ci')">
<span class="wrap_img">
<svg class="img_bi" aria-hidden="true"><use xlink:href="#svg_saramin_ci"></use></svg>
</span>
</a>
</h1>
<img src="static/css/Animation.gif" class="bi_art_logo" aria-label="내일이 더 즐거운 사람인" onclick="pushDataLayer('ga_lead','main-gnb','global_menu','ci')">
<span class="blind">내일이 더 즐거운 사람인</span>
</a>
<div class="navigation">
<div class="navi_common">
<ul class="navi_depth1">
<li><a onclick="pushDataLayer('ga_lead','main-gnb','menu','recruit')" href="/zf_user/jobs/list/domestic"><span>채용정보</span></a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','menu','company_info')" href="/zf_user/companylab"><span>기업정보</span></a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','menu','status-list')" href="/zf_user/member/suggest/status-list"><span>인재검색</span></a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','menu','verification')" href="/zf_user/memcom/preview/custom-guide"><span>검증면접</span></a></li>
<li>
<a onclick="pushDataLayer('ga_lead','main-gnb','menu','acceptance')" href="/zf_user/jobs/theme/it-headhunting">
<span class="passkk0">50만원 받고</span>
<span class="passkk1">합격ㅋㅋ</span>
<span class="passkk2"><svg class="img_bi" aria-hidden="true"><use xlink:href="#svg_gnb_passkk1"></use></svg></span>
<span class="passkk3"><svg class="img_bi" aria-hidden="true"><use xlink:href="#svg_gnb_passkk2"></use></svg></span>
</a>
</li>
</ul>
</div>
<div class="navi_depth1 secondary">
<span class="marker"><svg aria-hidden="true"><use xlink:href="#svg_gnb_more"></use></svg></span>
<ul>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','menu','qst-and-ans')" href="/zf_user/company-review-qst-and-ans"><span>취준진담</span></a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','menu','contents')" href="/zf_user/white-paper/office"><span>콘텐츠</span></a></li>
<li><img src="static/css/1234.png" onclick="pushDataLayer('ga_lead','main-gnb','menu','jumpit')" href="https://www.jumpit.co.kr" target="_blank"><span class="icon icon_jumpit">점핏</span></li>
</ul>
</div>
</div>
<div class="utility">
<button id="search_open" class="btn_search" type="button" onclick="pushDataLayer('ga_lead','main-gnb','global_menu','search')">
<svg class="icon" aria-hidden="true"><use xlink:href="#svg_gnb_search"></use></svg>
<span>궁금한 정보를 검색해보세요</span>
</button>
<a onclick="pushDataLayer('ga_lead','main-gnb','layer_sign','signin')" href="/zf_user/auth?url=%2Fzf_user%2F" class="btn_sign signin"><span class="txt">로그인</span></a>
<a onclick="pushDataLayer('ga_lead','main-gnb','layer_sign','join')" href="/zf_user/member/registration/join" class="btn_sign signup"><span class="txt">회원가입</span></a>
</div>
</div>
<div class="navi_total">
<button type="button" class="btn_menu" onclick="pushDataLayer('ga_lead','main-gnb','total_menu','open')">
<svg aria-hidden="true"><use xlink:href="#svg_gnb_total_off"></use></svg>
<svg aria-hidden="true"><use xlink:href="#svg_gnb_total_on"></use></svg>
<span class="blind">전체메뉴</span>
</button>
<div id="sri_index">
<div class="inner">
<div class="menu">
<div class="depth_1">
<span><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit')" href="/zf_user/jobs/list/domestic">채용정보</a></span>
<ul class="depth_2">
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit_area')" href="/zf_user/jobs/list/domestic">지역별</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit_job')" href="/zf_user/jobs/list/job-category">직업별</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit_hot100')" href="/zf_user/jobs/hot100">HOT100</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit_curation')" href="/zf_user/curation">큐레이션</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit_public')" href="/zf_user/jobs/public/list">공채</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit_upjong')" href="/zf_user/upjikjong-recruit/select-upjikjong/recruitform_type/industrial">산업별</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit_headhunting')" href="/zf_user/jobs/list/headhunting">헤드헌팅</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit_dispatch')" href="/zf_user/jobs/list/dispatch">파견대행</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit_theme')" href="/zf_user/jobs/theme/main">채용관</a></li>
</ul>
</div>
<div class="depth_1">
<span><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','companylab')" href="/zf_user/companylab">기업정보</a></span>
<ul class="depth_2">
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','company_review')" href="/zf_user/company-review">기업리뷰</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','company_interview')" href="/zf_user/interview-review">면접후기</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','company_careerinfo')" href="/zf_user/career-information/senior-list">직무인터뷰</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','company_salary')" href="/zf_user/salaries/total-salary/list">연봉정보</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','company_certification')" href="/zf_user/company-info/sri-certification?seq=377">기업큐레이션</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','company_roadmap')" href="/zf_user/company-section/road-map">이직로드맵</a></li>
</ul>
</div>
<div class="depth_1">
<span><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','talent_person')" href="/zf_user/member/suggest/status-list">인재검색</a></span>
<ul class="depth_2">
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','talent_status-list')" href="/zf_user/member/suggest/status-list">제안받은 현황<span class="flag">개인</span></a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','talent_talent-pool')" href="/zf_user/memcom/talent-pool/main">인재Pool 검색<span class="flag">기업</span></a></li>
</ul>
</div>
<div class="depth_1">
<span><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','verification')" href="/zf_user/memcom/preview/custom-guide">검증면접</a></span>
<ul class="depth_2">
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','verification_preview')" href="/zf_user/memcom/preview/guide?page_type=manual">preview 소개</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','verification_iam-ground')" href="/zf_user/event/iam-ground-app/app-intro">아이엠그라운드 소개</a></li>
</ul>
</div>
<div class="depth_1">
<span><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','acceptance')" href="/zf_user/jobs/theme/it-headhunting">합격ㅋㅋ</a></span>
</div>
<div class="depth_1">
<span><a>사람인 서비스</a></span>
<ul class="depth_2">
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','resume-manage')" href="/zf_user/resume/resume-manage">이력서 관리<span class="flag">개인</span></a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','recruit-manage')" href="/zf_user/company/recruit-manage">공고·지원자 관리<span class="flag">기업</span></a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','qst-and-ans')" href="/zf_user/company-review-qst-and-ans">취준진담</a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','contents')" href="/zf_user/white-paper/office">콘텐츠<span class="flag">글자수세기</span></a></li>
</ul>
<ul class="depth_2">
<li><a target="_blank" onclick="pushDataLayer('ga_lead','main-gnb','total_menu','jumpit')" href="https://www.jumpit.co.kr" class="icon icon_jumpit">점핏<svg aria-hidden="true"><use xlink:href="#svg_gnb_window_new"></use></svg></a></li>
<li><a target="_blank" onclick="pushDataLayer('ga_lead','main-gnb','total_menu','otwojob')" href="https://www.otwojob.com/main" class="icon icon_otwojob">오투잡<svg aria-hidden="true"><use xlink:href="#svg_gnb_window_new"></use></svg></a></li>
</ul>
</div>
</div>
<ul class="extra">
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','help')" href="/zf_user/help/help-word/main">고객센터<span>공지/이벤트</span></a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','reclist_recommend')" href="/zf_user/member/avatar/list">추천<span>채용공고</span></a></li>
<li><a onclick="pushDataLayer('ga_lead','main-gnb','total_menu','products')" href="/zf_user/service/products">상품 안내<span>유료서비스</span></a></li>
<li><a target="_blank" onclick="pushDataLayer('ga_lead','main-gnb','total_menu','welounge')" href="/zf_user/welounge/main">We.라운지<span>브랜딩</span></a></li>
</ul>
</div>
</div>
</div>
</header>
<div id="search">
<form id="search_form_recruit" onsubmit="event.preventDefault()">
<div class="main_search">
<div class="option option_keyword">
<label for="ipt_keyword_recruit" class="placeholder" style="color: rgb(72, 118, 239);">모빌리티솔루션즈코리아</label>
<input id="ipt_keyword_recruit" type="text" class="key" maxlength="30" placeholder="검색어를 입력해주세요" autocomplete="off">
</div>
<div class="option option_area">
<label for="ipt_area_recruit" class="placeholder">지역을 선택해주세요</label>
<button id="ipt_area_recruit" type="button" class="key">
<span class="filter_selected"></span>
</button>
</div>
<div class="option option_category">
<label for="ipt_category_recruit" class="placeholder">직업을 선택해주세요</label>
<button id="ipt_category_recruit" type="button" class="key">
<span class="filter_selected"></span>
</button>
</div>
<button type="button" id="btn_search_recruit" class="btn_search">
<span class="txt">검색</span>
</button>
<button type="button" id="search_close_recruit" class="btn_close">
<svg aria-hidden="true"><use xlink:href="#svg_default_close"></use></svg>
<span class="blind">닫기</span>
</button>
</div>
</form>
</div>
<div id="section_contents" class="cont_top">
<div class="inner">
<div class="lpop_wrap layer_upgrade" style="display: none;">
<div class="layer_head"><strong class="blind">브라우저 지원범위 안내</strong></div>
<div class="layer_cont">
<a class="desc_upgrade" target="_blank" title="업그레이드 새창알림">
원활한 서비스 이용을 위해<br>
<strong>최신 익스플로러 브라우저</strong>로<br>
<strong>업그레이드</strong> 해주세요
</a>
</div>
<button type="button" class="btn_close"><span class="blind">닫기</span></button>
</div>        <div class="wrap_recomm loading" style="display : block">
<div class="wrap_bigbox person">
<div class="bigbox person" style="width: 2233px; transform: translateX(-1595px); transition: all 300ms ease 0s;">
<div class="slide type_event">
<img src="https://www.saraminbanner.co.kr/new/main/2021/03/qpqjor_pit8-2so1qt_A01.png">
<a href="https://www.saramin.co.kr/zf_user/curation?inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=top_box_type_banner_person&amp;inner_term=curation" class="go_link" target="_blank"></a>
</div><div class="slide type_company">
<span class="category">추천기업</span>
<strong class="title">
<a href="/zf_user/company-info/view?csn=RWxFQ0JEWDhqL09Xc3h4dXRyUFpxZz09" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=0&amp;pcId=16230612419786911889857&amp;nonce=f545d7cea28927b4a53f&amp;dpId=SRI_050_MAIN_SM_CPN&amp;scnId=763&amp;tgId=1&amp;itemSetId=1&amp;itemValue=5298500774&amp;click=1" class="link goto_company_view" onmousedown="loggingEventAndTagManager(['main', 'BIG_com', 'cominfo', ''], ['ga_lead', 'main', 'BIG_com', 'cominfo'])">
<span>롯데e커머스</span>
</a>
</strong>
<div class="wrap_list">
<dl class="list">
<dt class="list_title">기업정보
<svg xmlns="http://www.w3.org/2000/svg" width="7" height="11" viewBox="0 0 7 11" class="ic_arrow">
<path fill="none" fill-rule="evenodd" stroke="#FFF" d="M-2 3L3 8 8 3" opacity=".8" transform="rotate(-90 3 5.5)"></path>
</svg>
</dt><dd class="desc company_info">
- 업종 : 쇼핑몰·오픈마켓<br>- 주소 : 서울 송파구                        </dd>
</dl>
<a href="/zf_user/company-info/view?csn=RWxFQ0JEWDhqL09Xc3h4dXRyUFpxZz09" onmousedown="loggingEventAndTagManager(['main', 'BIG_com', 'cominfo', ''], ['ga_lead', 'main', 'BIG_com', 'cominfo'])" class="list_link"></a>
</div>
<div class="wrap_list">
<dl class="list">
<dt class="list_title">진행중 공고
<svg xmlns="http://www.w3.org/2000/svg" width="7" height="11" viewBox="0 0 7 11" class="ic_arrow">
<path fill="none" fill-rule="evenodd" stroke="#FFF" d="M-2 3L3 8 8 3" opacity=".8" transform="rotate(-90 3 5.5)"></path>
</svg>
</dt>
<dd class="desc">
[TECH팀] DevOps(C 외 4건                        </dd>
</dl>
<a href="/zf_user/company-info/view-inner-recruit?csn=RWxFQ0JEWDhqL09Xc3h4dXRyUFpxZz09" class="list_link" onclick="" onmousedown="loggingEventAndTagManager(['main', 'BIG_com', 'rec', ''], ['ga_lead', 'main', 'BIG_com', 'rec'])"></a>
</div>
<button type="button" class="btn_link" onclick="window.location.href='/zf_user/company-info/view?csn=RWxFQ0JEWDhqL09Xc3h4dXRyUFpxZz09'" onmousedown="loggingEventAndTagManager(['main', 'BIG_com', 'cominfo', ''], ['ga_lead', 'main', 'BIG_com', 'cominfo'])">
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 18 18" version="1.1" class="ic">
<title>ico_company</title>
<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
<g transform="translate(-424.000000, -490.000000)">
<g transform="translate(330.000000, 192.000000)">
<g transform="translate(32.000000, 288.000000)">
<g transform="translate(61.000000, 10.000000)">
<image x="1" y="0" width="18" height="18" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASCAYAAABWzo5XAAAABGdBTUEAALGOfPtRkwAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAEqADAAQAAAABAAAAEgAAAACaqbJVAAADfklEQVQ4EX2TzXLjRBSFT6tbv5bkyHbiBJOahCoWFFWkYMdr8AaseQ/2bNiymuJ5qKIoGEiYIZOfyTixLcuWLPUPRx4Ydthldbu7de+53z0t8M/n+vo63mxeKWMK1y8tFguRZZm9uLjY/Hvm/0bx/Pn3RRwfH56ejL8t1+WXxnqVgxPOiiBIopuH+7df/3p9vXwfZB/2v9it74tcykYl0fCb2z9ffHV7qT/uui7VFrCuFyWglDqVYfRjZHTTRzaWmz7grMeHg5IeEmnDUTH6QZ19dL7wuvrzN4sNAnjQ2qAPs48FeEK4L5I43q9LvqiN2YsLAwXL+Wg4wPDog+/UdHpc3q8a1HaFozzBU9UgCgIGMhDCQ7NrEQ8GeCzXOCpyzFcVjHEoigEubx9xOpvhcFxU6mm5FY4beRwhDn3kVB/4ivL7zB58z0PM7FkSIeT6kGO/E4XhXo0QAmVZeqpuWjyVGzwsar4cY1W16GWTCTFJ1Lsd8jTBI5WQDBY8q1l3P39YrDFlaYICVGc6+EGENPcRhBIxSYVkYXtFnoRTCiGzJwMq5RinHozgnNyGxQgqCCElG2OYWNcbGLLRNoBpOmi+3DPqSzNth86ynG3NdQ292dEc7KyyMJslzFCh6hioT1xZhRW1SCdRQiLibw9bKtQELkSENXsZehEqBiFSnvGxZIIGCnkg+SS6SexBOY3Yt4g4SklL9lI9i9Q3CEQL5XcYuB0k/zsGz5TDLBWIhaFqvAv0wLJeE/Y4CbCsCduX1N7D9lA3NWGnmNNnxxNF6GsY63DMSq5uHnjWR0amvFvAeBBCd4ZtplMJr6+33ZEVa0jIIjBbeCHVdhUOQzKVAe2iMBunPM9kdQ3Vdh3evH3C1f0cRcpWstSknuOX367eO5z25txhx+CzkylWKsPZ+TkuX75GRvVRf11s22JykDI7M3IxJLj5/RY/3a4xzhKUW+KUEr4SeFxWOHl2hmfHUxRZjLPZIY0aYlOW7xTd3N7h91d3OMh5b6hqUozRsmRJf5ntjibglyw6YitGE9zd36GmgKuXf7E0+oxN8aztxGCQYDwaEioDZdnejLqpYHXDjtS8nA2bqznf7m1xkOdIkhiT8YjXit4jaFWWm/rDSbE9SuNty4VBFOPnF384JnBat8J22hneN2O0cM66dVmKzz79RPTMTicHhOeUllH9N/QDw/IGcl6sAAAAAElFTkSuQmCC"></image>
</g>
</g>
</g>
</g>
</g>
</svg>
기업정보 보러가기
</button>
</div>
<div class="slide type_announce">
<span class="category">추천공고</span>
<strong class="title"><span>라인비즈플러스(주)</span></strong>
<p class="title_recom">
<a href="/zf_user/jobs/relay/view?isMypage=no&amp;view_type=list&amp;rec_idx=40378127" class="link goto_recruit_view" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=56a136eb71e11c3e8ce7&amp;dpId=SRI_050_MAIN_AVA_RCT&amp;scnId=755&amp;tgId=2&amp;itemSetId=1&amp;itemValue=40378127&amp;click=1" onmousedown="loggingEventAndTagManager(['main', 'BIG_rec', 'rec', ''], ['ga_lead', 'main', 'BIG_rec', 'rec'])">
<span>LINE Fintech Recruitment 2021 전직군 경력 공개채용</span>
</a>
</p>
<div class="wrap_list">
<dl class="list">
<dt class="list_title">기업정보
<svg xmlns="http://www.w3.org/2000/svg" width="7" height="11" viewBox="0 0 7 11" class="ic_arrow">
<path fill="none" fill-rule="evenodd" stroke="#FFF" d="M-2 3L3 8 8 3" opacity=".8" transform="rotate(-90 3 5.5)"></path>
</svg>
</dt><dd class="desc">
응용 소프트웨어 개발 및 공급업, 8년차, 경기 성남시 분당구 분당내곡로                        </dd>
</dl>
<a href="/zf_user/company-info/view?csn=bEl4VFRFN051aTFRSEEwYzJscW9wUT09" onmousedown="loggingEventAndTagManager(['main', 'BIG_rec', 'cominfo', ''], ['ga_lead', 'main', 'BIG_rec', 'cominfo'])" class="list_link"></a>
</div>
<div class="wrap_list">
<dl class="list">
<dt class="list_title">면접 후기
<svg xmlns="http://www.w3.org/2000/svg" width="7" height="11" viewBox="0 0 7 11" class="ic_arrow"><path fill="none" fill-rule="evenodd" stroke="#FFF" d="M-2 3L3 8 8 3" opacity=".8" transform="rotate(-90 3 5.5)"></path></svg>
</dt>
<dd class="desc">
IT·인터넷&nbsp;면접 후기 748건
</dd>
</dl>
<a href="/zf_user/interview-review?my=0&amp;page=1&amp;orderby=registration&amp;job_category=4" class="list_link" onmousedown="loggingEventAndTagManager(['main', 'BIG_rec', 'interview-review', ''], ['ga_lead', 'main', 'BIG_rec', 'interview-review'])"></a>
</div>
<button type="button" class="btn_link" onclick="window.location.href='/zf_user/jobs/relay/view?isMypage=no&amp;view_type=list&amp;rec_idx=40378127'" onmousedown="loggingEventAndTagManager(['main', 'BIG_rec', 'rec', ''], ['ga_lead', 'main', 'BIG_rec', 'rec'])">
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20px" height="16px" viewBox="0 0 20 16" version="1.1" class="ic">
<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
<g transform="translate(-434.000000, -492.000000)">
<g transform="translate(330.000000, 192.000000)">
<g transform="translate(32.000000, 288.000000)">
<g transform="translate(72.000000, 10.000000)">
<image x="0" y="2" width="20" height="16" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAQCAYAAAAWGF8bAAAABGdBTUEAALGOfPtRkwAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAFKADAAQAAAABAAAAEAAAAABHXVY9AAADRElEQVQ4EWVUWUhUYRT+5s6Ms2leQguzpk1pcwFbaGFQ6qUhqKDMXvKhNx9ajCIIdwtCeokIKiiTShkwgtQpITWQUiSEtCJsrMacYcLKcu7s472df+S/3uiHe8/2ne3+51wdNKexsbHCarVWRqNRaX5+/npDQ8NrjVllm5qatpBwnrC5oVDocX19/W3VyJmampqr09PTCjvJZFIZGRmR6+rqyrmd09ra2j0DAwMSw7ATCAQUSvyIHoFjQMJBr9ebAmhfXV1dYbLZOZD4JR0dHQtZNUC/369QQacYLhU1PT39kt2u+nF/lJWVWaj1M1xBVZ1wOp25XOY0JycH9FyghGahubk53+FwbOdGLaVEoESHCGhg+uzs7IrMzEwtROVLS0tX6XS6XYIsyztW5uYKPs84ZqY/gzpRQYwpKipap9fr11ZXV1sKCgoKZ2d8+DYxhngs+g+OkkEQhN1C1tKl2z1DT9H78CaObFqPG+eOIJlIqGAC6hKJRB5VtsoqS+KnkT5UOYtxcqsVMz6visvIyAB1lCekxX9ve/m8Bx++x+BNAl2uJxh71asCLRYLqzoj02Zb6W69hgl/EF+DJnwMKGitO/pPR9StaEhG/5jvt/ZATgP0BgGySYb0c0INSBfBnJImszG9v28Qd12DEJcAQRmQ46OgS4PBkPrEzCchmMRl74vXUzAjyCBj/17AXuhQA0qSxBwC0Cvv9uxajSy6EykC7C4GHAeOq8FoGUCfxm/w/Yo9ONt8udIzWIOsFcDGfXexOn+bGnByclIi4WNV1dnZTlH8vmHN6eVGYxCbdx7CZufiggSDQYTD4begkWDD+iMaCSmxaEQzrgtsS0tLH49O2HtUiRIJh/7Dud3uBI3gWoFAc+Pj4+2yokOaycx9U3RqagrU8i2N8g7TmS1WjQqIx+MYGhp6Tmv5JbUpNpvtSmdnp0+LikQiaGtre0Gz9ZjrKflwe3v7vbm5Oa5K0e7u7hDN6kUm6Nmrv78/VFJS8mx0dLRMFMVltNcgxx6j0XiMdjTGMPzQOrqHh4ftZrO5mNrXuVwur8fjKac/0BuG0XEgo6QspTE4TGyY1qiNKlqcHw2Q9HR9OEnY5VRZL8nd3PwX+wS6IUlvDbcAAAAASUVORK5CYII="></image>
</g>
</g>
</g>
</g>
</g>
</svg>
공고 바로가기
</button>
</div>
<div class="slide type_qst">
<span class="category">취준진담</span>
<strong class="title"><span>34살 신입으로 취업하는 건 이제 포기해야되나요?</span></strong>
<span class="recom_category">
<span>모든기업</span>
<span>모든 직무</span>
<span>2021.03.09작성</span>
</span>
<span class="recom_category">
<span>#신입</span>
</span>
<p class="question">
할 수 있는 건 다 한것 같습니다.4년제 공대 졸업 후 빚이 너무 있어서 학자금 대출 상환하고 집안 형편이 어려워 집안을 돕느라4~5년간 전공과 무관한 일을 하다가모두 빚을 상환하고 모은돈으로 다시 전공공부를 했습니다.대학전공과 관련된 기사자격증 2개토익컴활 한능검 공기업인턴전공과 관련된 실무를 쌓기위해 4개월간 학원도 다녓습니다그리고1월부터 현재까지 600곳이상의 회사를 지원했습니다.결과는 모두다 광탈입니다면접은 총 20곳 정도 됫는데다 불합격됬습니다이제 뭘해야될지 모르겟습니다자살이 답일까요?                 </p>
<button type="button" class="btn_link goto_qna" data-value="15009" onmousedown="loggingEventAndTagManager(['main', 'BIG_qna', 'qna', ''], ['ga_lead', 'main', 'BIG_qna', 'qna'])">
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="19px" height="19px" viewBox="0 0 19 19" version="1.1" class="ic">
<title>ico_answer</title>
<g id="0806" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
<g transform="translate(-421.000000, -490.000000)">
<g transform="translate(328.000000, 192.000000)">
<g transform="translate(32.000000, 288.000000)">
<g transform="translate(61.000000, 10.000000)">
<image x="0" y="0" width="19" height="19" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAATCAYAAAByUDbMAAAABGdBTUEAALGOfPtRkwAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAE6ADAAQAAAABAAAAEwAAAAAgb1CmAAADN0lEQVQ4EYVUS0tbYRCd5MY8jIkm1b6wkSi1iotSKm0pCBIo7cJVf0F3dpX+BemupRRcdNGuCm6sYsFNNkViMRBQKkqKWEuiRkJioqZG8zKP23NuvSK22g8m3813Z86cOTPfNciZNTExYcaRx2Qy3bfZbD0NDQ3XDAaDvV6vF6vVaqpUKq1VKpX5tra22ODgYBnvVB3CoD+MjIyY+vv7ewDworW19Smc3Y2NjWI2m8VoNArABCACMNnd3c3t7Ox8OTo6Gl1ZWZn3+/1lHUdUVVWmp6efhMPhOBxVBOHo/AVgdX9/X11eXi7MzMw8RzU2gpn4MzU1dQdMPnR1dd1obm4WRVF4fO5CaeJwOMTr9dqQchTJM9g/K8Fg0Iqo1wB6SCCLxSJ0/t+iDw0yKGDpRbmfjIlE4iayPLLb7QLRNQxkYel/GXU7fU5nNEhA4m6xWBwwsmtOp9NNRgSjs55VZ6jvp9/xmYuSoFFG7Pf4c4sdYwa+YODe3p4sLCwIOibIKIuLi9oZAZaWlmR9fV1qtZrWZXaaJDAFHUZQdzPDaTZ0Hhsbk2g0KtBDxsfHJR6PC+aMzZJQKKSNiR5DQCynMjQ09KClpWUApmWgQ1NTk/T19YnH49G61t3dLe3t7VpzOjs7pbe3VyCNJglnL5fLSTqd/mbK5/ORbDYrBwcHWqksmY40LoqOTp8ITzD9nEwxuFIoFGibJkx0CB3ddLvdHWwCF7Whfvqz3kWyplZ8z523gSQymUwNYGEFbc0DyI5gH5tAZgxiAI1AZ01ndHh4SCA25CvA3ygYNhV38gf+XIHdpuOxoJrI/H/WWBoZpVIpQXwUTfIPDw//1GqZm5vL+3y+7xiDx6B7iRpQWL0cBpfLZW1MyIYjE4vFZHV1NYgx8qMB4dnZWfXPyEMc3M0MGPyiFslkUra3tysoew1WhwRulG4AaAUNyyJZBOABPIfwtUlQZup7AoYrddVqtXYQbGtrq4SvxzuXy/UKYAawdIAlb0sJJZWQrByJRApgUyWIvjSwQCBgAatnuBaXMajwTb4EyEd8p0rHjmk94KJdA4MOLpRwfWNj4y1Yvccem5ycrF0U+K93vwFtX0aHbXi7swAAAABJRU5ErkJggg=="></image>
</g>
</g>
</g>
</g>
</g>
</svg>
답변 99건+ 보러가기                </button>
</div>
<div class="slide type_event">
<img src="https://www.saraminbanner.co.kr/new/main/2021/03/qq7cir_wudv-2so1qt_PC.png">
<a href="https://www.saramin.co.kr/zf_user/jobs/theme/jump-it?t_ref=main&amp;t_ref_content=platinum_fix_expand&amp;inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=top_box_type_banner_person&amp;inner_term=jumpit" class="go_link" target="_blank"></a>
</div>
<div class="slide type_event slide_active">
<img src="https://www.saraminbanner.co.kr/new/main/2021/03/qpqjor_pit8-2so1qt_A01.png">
<a href="https://www.saramin.co.kr/zf_user/curation?inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=top_box_type_banner_person&amp;inner_term=curation" class="go_link" target="_blank"></a>
</div>
<div class="slide type_company">
<span class="category">추천기업</span>
<strong class="title">
<a href="/zf_user/company-info/view?csn=RWxFQ0JEWDhqL09Xc3h4dXRyUFpxZz09" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=0&amp;pcId=16230612419786911889857&amp;nonce=f545d7cea28927b4a53f&amp;dpId=SRI_050_MAIN_SM_CPN&amp;scnId=763&amp;tgId=1&amp;itemSetId=1&amp;itemValue=5298500774&amp;click=1" class="link goto_company_view" onmousedown="loggingEventAndTagManager(['main', 'BIG_com', 'cominfo', ''], ['ga_lead', 'main', 'BIG_com', 'cominfo'])">
<span>롯데e커머스</span>
</a>
</strong>
<div class="wrap_list">
<dl class="list">
<dt class="list_title">기업정보
<svg xmlns="http://www.w3.org/2000/svg" width="7" height="11" viewBox="0 0 7 11" class="ic_arrow">
<path fill="none" fill-rule="evenodd" stroke="#FFF" d="M-2 3L3 8 8 3" opacity=".8" transform="rotate(-90 3 5.5)"></path>
</svg>
</dt><dd class="desc company_info">
- 업종 : 쇼핑몰·오픈마켓<br>- 주소 : 서울 송파구                        </dd>
</dl>
<a href="/zf_user/company-info/view?csn=RWxFQ0JEWDhqL09Xc3h4dXRyUFpxZz09" onmousedown="loggingEventAndTagManager(['main', 'BIG_com', 'cominfo', ''], ['ga_lead', 'main', 'BIG_com', 'cominfo'])" class="list_link"></a>
</div>
<div class="wrap_list">
<dl class="list">
<dt class="list_title">진행중 공고
<svg xmlns="http://www.w3.org/2000/svg" width="7" height="11" viewBox="0 0 7 11" class="ic_arrow">
<path fill="none" fill-rule="evenodd" stroke="#FFF" d="M-2 3L3 8 8 3" opacity=".8" transform="rotate(-90 3 5.5)"></path>
</svg>
</dt>
<dd class="desc">
[TECH팀] DevOps(C 외 4건                        </dd>
</dl>
<a href="/zf_user/company-info/view-inner-recruit?csn=RWxFQ0JEWDhqL09Xc3h4dXRyUFpxZz09" class="list_link" onclick="" onmousedown="loggingEventAndTagManager(['main', 'BIG_com', 'rec', ''], ['ga_lead', 'main', 'BIG_com', 'rec'])"></a>
</div>
<button type="button" class="btn_link" onclick="window.location.href='/zf_user/company-info/view?csn=RWxFQ0JEWDhqL09Xc3h4dXRyUFpxZz09'" onmousedown="loggingEventAndTagManager(['main', 'BIG_com', 'cominfo', ''], ['ga_lead', 'main', 'BIG_com', 'cominfo'])">
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewBox="0 0 18 18" version="1.1" class="ic">
<title>ico_company</title>
<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
<g transform="translate(-424.000000, -490.000000)">
<g transform="translate(330.000000, 192.000000)">
<g transform="translate(32.000000, 288.000000)">
<g transform="translate(61.000000, 10.000000)">
<image x="1" y="0" width="18" height="18" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASCAYAAABWzo5XAAAABGdBTUEAALGOfPtRkwAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAEqADAAQAAAABAAAAEgAAAACaqbJVAAADfklEQVQ4EX2TzXLjRBSFT6tbv5bkyHbiBJOahCoWFFWkYMdr8AaseQ/2bNiymuJ5qKIoGEiYIZOfyTixLcuWLPUPRx4Ydthldbu7de+53z0t8M/n+vo63mxeKWMK1y8tFguRZZm9uLjY/Hvm/0bx/Pn3RRwfH56ejL8t1+WXxnqVgxPOiiBIopuH+7df/3p9vXwfZB/2v9it74tcykYl0fCb2z9ffHV7qT/uui7VFrCuFyWglDqVYfRjZHTTRzaWmz7grMeHg5IeEmnDUTH6QZ19dL7wuvrzN4sNAnjQ2qAPs48FeEK4L5I43q9LvqiN2YsLAwXL+Wg4wPDog+/UdHpc3q8a1HaFozzBU9UgCgIGMhDCQ7NrEQ8GeCzXOCpyzFcVjHEoigEubx9xOpvhcFxU6mm5FY4beRwhDn3kVB/4ivL7zB58z0PM7FkSIeT6kGO/E4XhXo0QAmVZeqpuWjyVGzwsar4cY1W16GWTCTFJ1Lsd8jTBI5WQDBY8q1l3P39YrDFlaYICVGc6+EGENPcRhBIxSYVkYXtFnoRTCiGzJwMq5RinHozgnNyGxQgqCCElG2OYWNcbGLLRNoBpOmi+3DPqSzNth86ynG3NdQ292dEc7KyyMJslzFCh6hioT1xZhRW1SCdRQiLibw9bKtQELkSENXsZehEqBiFSnvGxZIIGCnkg+SS6SexBOY3Yt4g4SklL9lI9i9Q3CEQL5XcYuB0k/zsGz5TDLBWIhaFqvAv0wLJeE/Y4CbCsCduX1N7D9lA3NWGnmNNnxxNF6GsY63DMSq5uHnjWR0amvFvAeBBCd4ZtplMJr6+33ZEVa0jIIjBbeCHVdhUOQzKVAe2iMBunPM9kdQ3Vdh3evH3C1f0cRcpWstSknuOX367eO5z25txhx+CzkylWKsPZ+TkuX75GRvVRf11s22JykDI7M3IxJLj5/RY/3a4xzhKUW+KUEr4SeFxWOHl2hmfHUxRZjLPZIY0aYlOW7xTd3N7h91d3OMh5b6hqUozRsmRJf5ntjibglyw6YitGE9zd36GmgKuXf7E0+oxN8aztxGCQYDwaEioDZdnejLqpYHXDjtS8nA2bqznf7m1xkOdIkhiT8YjXit4jaFWWm/rDSbE9SuNty4VBFOPnF384JnBat8J22hneN2O0cM66dVmKzz79RPTMTicHhOeUllH9N/QDw/IGcl6sAAAAAElFTkSuQmCC"></image>
</g>
</g>
</g>
</g>
</g>
</svg>
기업정보 보러가기
</button>
</div></div>
<div class="wrap_slide_btns person" style="display: block">
<div class="pager person"><button type="button" class="pager_item" data-index="0">1</button><button type="button" class="pager_item" data-index="1">1</button><button type="button" class="pager_item" data-index="2">1</button><button type="button" class="pager_item" data-index="3">1</button><button type="button" class="pager_item active" data-index="4">1</button></div>
<div class="controll_auto play">
<button type="button" class="btn_play">
<svg width="6px" height="8px" viewBox="0 0 6 8" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" class="btn">
<title>슬라이드 시작 버튼</title>
<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
<g transform="translate(-615.000000, -535.000000)" fill="#FFFFFF">
<g transform="translate(330.000000, 192.000000)">
<g transform="translate(229.000000, 343.000000)">
<g transform="translate(56.000000, 0.000000)">
<polygon points="0 5.69266856e-14 0 8 6 4"></polygon>
</g>
</g>
</g>
</g>
</g>
</svg>
</button>
<button type="button" class="btn_pause">
<svg width="6px" height="6px" viewBox="0 0 6 6" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" class="btn">
<title>슬라이드 정지 버튼</title>
<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
<g transform="translate(-615.000000, -536.000000)" fill="#FFFFFF" fill-rule="nonzero">
<g transform="translate(330.000000, 192.000000)">
<g transform="translate(229.000000, 344.000000)">
<g transform="translate(56.000000, 0.000000)">
<rect x="0" y="0" width="1.5" height="6"></rect>
<rect x="4.5" y="0" width="1.5" height="6"></rect>
</g>
</g>
</g>
</g>
</g>
</svg>
</button>
</div>
</div>
</div>
<div class="recomm_content">
<div class="wrap_box_news person">
<div class="box_news person" style="width: 2232px; transform: translateX(-558px);">
<div class="slide">
<div class="item">
<span class="title type_curation">기업큐레이션</span>
<p class="desc">서비스 업종★스타트업</p>
<span class="hashtag"><span>#(주)쏘카 #(주)커리어포커스</span></span>
<span class="wrap_thumb">
<img src="//www.saraminimage.co.kr/sri/main/thumb/cu_8.jpg" alt="기업큐레이션 이미지" class="thumb">
</span>
<a href="/zf_user/company-info/sri-certification?seq=502" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'certification', ''], ['ga_lead', 'main', 'CONTENTS', 'certification'])"></a>
</div>
<div class="item">
<span class="title type_review">면접후기</span>
<p class="desc">이력서 사실확인과 간단한 중국어 회화, 작문 실력 테스트 진행.  이력서 확인은 한국인 대표님과 진행하였고 중국어평가는 중국인 직원분들과 진행. </p>
<span class="hashtag"><span>#직무·인성 면접 #직무·인성 면접 #기타</span></span>
<span class="wrap_thumb">
<img src="//www.saraminimage.co.kr/sri/main/thumb/interview_8.jpg" alt="면접후기 이미지" class="thumb">
</span>
<a href="/zf_user/interview-review?my=0&amp;page=1&amp;orderby=registration&amp;career_cd=1&amp;job_category=5" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'interview-review', ''], ['ga_lead', 'main', 'CONTENTS', 'interview-review'])"></a>
</div>
<div class="item">
<span class="title type_choice">초이스</span>
<p class="desc">이건 좀... 자제해 주세요!
</p>
<span class="wrap_thumb">
<img src="//www.saraminimage.co.kr/sri/main/thumb/choice_1.jpg" alt="초이스 이미지" class="thumb">
</span>
<a href="/zf_user/company-review-qst-and-ans" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'choice', ''], ['ga_lead', 'main', 'CONTENTS', 'choice'])"></a>
</div>
<div class="item">
<span class="title type_qna">취준진담</span>
<p class="desc">연봉이 비슷하다는 조건하에 퇴직금 포함(거리 가까움)vs 퇴직금 별도(거리 멈)</p>
<span class="hashtag"><span>#퇴직금 #거리 #선택</span></span>
<span class="wrap_thumb">
<img src="//www.saraminimage.co.kr/sri/main/thumb/review_1.jpg" alt="취준진담 이미지" class="thumb">
</span>
<a href="/zf_user/company-review-qst-and-ans/detail-page?qust_idx=22614" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'qna', ''], ['ga_lead', 'main', 'CONTENTS', 'qna'])"></a>
</div>
</div><div class="slide slide_active">
<div class="item">
<span class="title type_review">면접후기</span>
<p class="desc">면접은 코로나때문에 비대면으로 실시됐습니다.
지원자 6에 면접관 5였던걸로 기억합니다.
면접은 인성과 끈기, 가치관 위주로 물어봤습니다.
저한테만 상이한 질문하여서 합격했다는 느낌을 받았습니다.
상이한 질문은 저한테만 사는곳이 여긴데 어디서도 근무가능하냐는 질문이었습니다.</p>
<span class="hashtag"><span>#직무·인성 면접</span></span>
<span class="wrap_thumb">
<img src="//www.saraminimage.co.kr/sri/main/thumb/interview_6.jpg" alt="면접후기 이미지" class="thumb">
</span>
<a href="/zf_user/interview-review?my=0&amp;page=1&amp;orderby=registration&amp;career_cd=1&amp;job_category=10" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'interview-review', ''], ['ga_lead', 'main', 'CONTENTS', 'interview-review'])"></a>
</div>
<div class="item">
<span class="title type_interview">직무인터뷰</span>
<p class="desc">진정성을 바탕으로 소통하는 채용 컨설턴트</p>
<span class="hashtag"><span>#로버트월터스코리아</span></span>
<span class="wrap_thumb">
<img src="https://pds.saramin.co.kr/career-information/asset_thumbnail/202105/25/qtndz8_b5sd-2so1r1_asset.jpg" alt="직무인터뷰 이미지" class="thumb">
</span>
<a href="/zf_user/career-information/senior-view?doc_idx=21980&amp;page=1" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'job-interview', ''], ['ga_lead', 'main', 'CONTENTS', 'job-interview'])"></a>
</div>
<div class="item">
<span class="title type_live">취업뉴스</span>
<p class="desc">사람인HR, (주)두산과 함께 중소기업 채용 돕는다</p>
<span class="wrap_thumb">
<img src="//www.saraminimage.co.kr/sri/main/thumb/new_p_6.jpg" alt="취업뉴스 이미지" class="thumb">
</span>
<a href="/zf_user/help/live/view?idx=108297&amp;list_idx=0&amp;listType=news&amp;category=10&amp;keyword=&amp;menu=1&amp;page=1" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'job-news', ''], ['ga_lead', 'main', 'CONTENTS', 'job-news'])"></a>
</div>
<div class="item">
<span class="title type_curation">기업큐레이션</span>
<p class="desc">일하기 좋은in경기도</p>
<span class="hashtag"><span>#(주)고운세상코스메틱 #(주)아프리카티비</span></span>
<span class="wrap_thumb">
<img src="//www.saraminimage.co.kr/sri/main/thumb/cu_6.jpg" alt="기업큐레이션 이미지" class="thumb">
</span>
<a href="/zf_user/company-info/sri-certification?seq=995" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'certification', ''], ['ga_lead', 'main', 'CONTENTS', 'certification'])"></a>
</div>
</div>
<div class="slide">
<div class="item">
<span class="title type_curation">기업큐레이션</span>
<p class="desc">서비스 업종★스타트업</p>
<span class="hashtag"><span>#(주)쏘카 #(주)커리어포커스</span></span>
<span class="wrap_thumb">
<img src="//www.saraminimage.co.kr/sri/main/thumb/cu_8.jpg" alt="기업큐레이션 이미지" class="thumb">
</span>
<a href="/zf_user/company-info/sri-certification?seq=502" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'certification', ''], ['ga_lead', 'main', 'CONTENTS', 'certification'])"></a>
</div>
<div class="item">
<span class="title type_review">면접후기</span>
<p class="desc">이력서 사실확인과 간단한 중국어 회화, 작문 실력 테스트 진행.  이력서 확인은 한국인 대표님과 진행하였고 중국어평가는 중국인 직원분들과 진행. </p>
<span class="hashtag"><span>#직무·인성 면접 #직무·인성 면접 #기타</span></span>
<span class="wrap_thumb">
<img src="//www.saraminimage.co.kr/sri/main/thumb/interview_8.jpg" alt="면접후기 이미지" class="thumb">
</span>
<a href="/zf_user/interview-review?my=0&amp;page=1&amp;orderby=registration&amp;career_cd=1&amp;job_category=5" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'interview-review', ''], ['ga_lead', 'main', 'CONTENTS', 'interview-review'])"></a>
</div>
<div class="item">
<span class="title type_choice">초이스</span>
<p class="desc">이건 좀... 자제해 주세요!
</p>
<span class="wrap_thumb">
<img src="//www.saraminimage.co.kr/sri/main/thumb/choice_1.jpg" alt="초이스 이미지" class="thumb">
</span>
<a href="/zf_user/company-review-qst-and-ans" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'choice', ''], ['ga_lead', 'main', 'CONTENTS', 'choice'])"></a>
</div>
<div class="item">
<span class="title type_qna">취준진담</span>
<p class="desc">연봉이 비슷하다는 조건하에 퇴직금 포함(거리 가까움)vs 퇴직금 별도(거리 멈)</p>
<span class="hashtag"><span>#퇴직금 #거리 #선택</span></span>
<span class="wrap_thumb">
<img src="//www.saraminimage.co.kr/sri/main/thumb/review_1.jpg" alt="취준진담 이미지" class="thumb">
</span>
<a href="/zf_user/company-review-qst-and-ans/detail-page?qust_idx=22614" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'qna', ''], ['ga_lead', 'main', 'CONTENTS', 'qna'])"></a>
</div>
</div>
<div class="slide">
<div class="item">
<span class="title type_review">면접후기</span>
<p class="desc">면접은 코로나때문에 비대면으로 실시됐습니다.
지원자 6에 면접관 5였던걸로 기억합니다.
면접은 인성과 끈기, 가치관 위주로 물어봤습니다.
저한테만 상이한 질문하여서 합격했다는 느낌을 받았습니다.
상이한 질문은 저한테만 사는곳이 여긴데 어디서도 근무가능하냐는 질문이었습니다.</p>
<span class="hashtag"><span>#직무·인성 면접</span></span>
<span class="wrap_thumb">
<img src="//www.saraminimage.co.kr/sri/main/thumb/interview_6.jpg" alt="면접후기 이미지" class="thumb">
</span>
<a href="/zf_user/interview-review?my=0&amp;page=1&amp;orderby=registration&amp;career_cd=1&amp;job_category=10" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'interview-review', ''], ['ga_lead', 'main', 'CONTENTS', 'interview-review'])"></a>
</div>
<div class="item">
<span class="title type_interview">직무인터뷰</span>
<p class="desc">진정성을 바탕으로 소통하는 채용 컨설턴트</p>
<span class="hashtag"><span>#로버트월터스코리아</span></span>
<span class="wrap_thumb">
<img src="https://pds.saramin.co.kr/career-information/asset_thumbnail/202105/25/qtndz8_b5sd-2so1r1_asset.jpg" alt="직무인터뷰 이미지" class="thumb">
</span>
<a href="/zf_user/career-information/senior-view?doc_idx=21980&amp;page=1" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'job-interview', ''], ['ga_lead', 'main', 'CONTENTS', 'job-interview'])"></a>
</div>
<div class="item">
<span class="title type_live">취업뉴스</span>
<p class="desc">사람인HR, (주)두산과 함께 중소기업 채용 돕는다</p>
<span class="wrap_thumb">
<img src="//www.saraminimage.co.kr/sri/main/thumb/new_p_6.jpg" alt="취업뉴스 이미지" class="thumb">
</span>
<a href="/zf_user/help/live/view?idx=108297&amp;list_idx=0&amp;listType=news&amp;category=10&amp;keyword=&amp;menu=1&amp;page=1" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'job-news', ''], ['ga_lead', 'main', 'CONTENTS', 'job-news'])"></a>
</div>
<div class="item">
<span class="title type_curation">기업큐레이션</span>
<p class="desc">일하기 좋은in경기도</p>
<span class="hashtag"><span>#(주)고운세상코스메틱 #(주)아프리카티비</span></span>
<span class="wrap_thumb">
<img src="//www.saraminimage.co.kr/sri/main/thumb/cu_6.jpg" alt="기업큐레이션 이미지" class="thumb">
</span>
<a href="/zf_user/company-info/sri-certification?seq=995" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'certification', ''], ['ga_lead', 'main', 'CONTENTS', 'certification'])"></a>
</div>
</div></div>
<div class="wrap_slide_btns" style="display: block">
<button type="button" class="btn_slide btn_prev">
<svg xmlns="http://www.w3.org/2000/svg" width="6" height="10" viewBox="0 0 6 10" class="btn">
<g fill="none" fill-rule="evenodd">
<path fill-rule="nonzero" d="M0 0L6 0 6 10 0 10z"></path>
<path stroke="#9398AA" stroke-width="1.2" d="M-1 3L3 7 7 3" transform="rotate(90 3 5)" class="change"></path>
</g>
</svg>
</button>
<button type="button" class="btn_slide btn_next">
<svg xmlns="http://www.w3.org/2000/svg" width="6" height="10" viewBox="0 0 6 10" class="btn">
<g fill="none" fill-rule="evenodd">
<path fill-rule="nonzero" d="M0 0L6 0 6 10 0 10z"></path>
<path stroke="#9398AA" stroke-width="1.2" d="M-1 3L3 7 7 3" transform="matrix(0 1 1 0 -2 2)" class="change"></path>
</g>
</svg>
</button>
</div>
</div></div>
</div>        <div class="wrap_recomm company" style="display : none">
<div class="wrap_bigbox company">
<div class="bigbox company" style="width: 1595px; transform: translateX(-957px); transition: all 300ms ease 0s;">
<div class="slide type_hr">
<img src="https://www.saraminbanner.co.kr/new/main/2020/08/qevl7q_6psk-1meg1l1_banner3.png">
<a href="http://www.saramin.co.kr/zf_user/memcom/preview/guide?page_type=verify&amp;inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=top_box_type_banner_company&amp;inner_term=preview" class="go_link" target=""></a>
</div><div class="slide type_rec_write">
<svg xmlns="http://www.w3.org/2000/svg" width="44" height="45" viewBox="0 0 44 45" class="ic_write">
<g fill="none" fill-rule="evenodd" opacity=".7">
<path fill="#FFF" fill-rule="nonzero" d="M16 5v2H2v35h35V26h2v18H0V5h16z" transform="translate(0 1)"></path>
<path stroke="#FFF" stroke-linecap="round" stroke-width="2" d="M38.828 1.828l2.344 2.344c1.562 1.562 1.562 4.094 0 5.656L18 33h-8v-8L33.172 1.828c1.562-1.562 4.094-1.562 5.656 0zM30 5l8 8" transform="translate(0 1)"></path>
</g>
</svg>
<p class="desc1">구직자의 입사지원은 물론,<br>맞춤형 인재추천까지!</p>
<p class="desc2">
지금!<br>채용공고를 등록하세요!                        </p>
<button type="button" class="btn_link" onclick="document.location.href='/zf_user/recruit-manage';" onmousedown="">채용공고 등록하기</button>
</div>
<div class="slide type_hr">
<img src="https://www.saraminbanner.co.kr/new/main/2020/09/qhel6d_eyqc-2so1qt_032.png">
<a href="http://www.saramin.co.kr/zf_user/memcom/talent-pool/main/recommend?inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=top_box_type_banner_company&amp;inner_term=new_talent-pool" class="go_link" target="_blank"></a>
</div>
<div class="slide type_hr slide_active">
<img src="https://www.saraminbanner.co.kr/new/main/2020/08/qevl7q_6psk-1meg1l1_banner3.png">
<a href="http://www.saramin.co.kr/zf_user/memcom/preview/guide?page_type=verify&amp;inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=top_box_type_banner_company&amp;inner_term=preview" class="go_link" target=""></a>
</div>
<div class="slide type_rec_write">
<svg xmlns="http://www.w3.org/2000/svg" width="44" height="45" viewBox="0 0 44 45" class="ic_write">
<g fill="none" fill-rule="evenodd" opacity=".7">
<path fill="#FFF" fill-rule="nonzero" d="M16 5v2H2v35h35V26h2v18H0V5h16z" transform="translate(0 1)"></path>
<path stroke="#FFF" stroke-linecap="round" stroke-width="2" d="M38.828 1.828l2.344 2.344c1.562 1.562 1.562 4.094 0 5.656L18 33h-8v-8L33.172 1.828c1.562-1.562 4.094-1.562 5.656 0zM30 5l8 8" transform="translate(0 1)"></path>
</g>
</svg>
<p class="desc1">구직자의 입사지원은 물론,<br>맞춤형 인재추천까지!</p>
<p class="desc2">
지금!<br>채용공고를 등록하세요!                        </p>
<button type="button" class="btn_link" onclick="document.location.href='/zf_user/recruit-manage';" onmousedown="">채용공고 등록하기</button>
</div></div>
<div class="wrap_slide_btns company" style="display: block">
<div class="pager company"><button type="button" class="pager_item" data-index="0">1</button><button type="button" class="pager_item" data-index="1">1</button><button type="button" class="pager_item active" data-index="2">1</button></div>
<div class="controll_auto play">
<button type="button" class="btn_play">
<svg width="6px" height="8px" viewBox="0 0 6 8" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" class="btn">
<title>슬라이드 시작 버튼</title>
<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
<g transform="translate(-615.000000, -535.000000)" fill="#FFFFFF">
<g transform="translate(330.000000, 192.000000)">
<g transform="translate(229.000000, 343.000000)">
<g transform="translate(56.000000, 0.000000)">
<polygon points="0 5.69266856e-14 0 8 6 4"></polygon>
</g>
</g>
</g>
</g>
</g>
</svg>
</button>
<button type="button" class="btn_pause">
<svg width="6px" height="6px" viewBox="0 0 6 6" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" class="btn">
<title>슬라이드 정지 버튼</title>
<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
<g transform="translate(-615.000000, -536.000000)" fill="#FFFFFF" fill-rule="nonzero">
<g transform="translate(330.000000, 192.000000)">
<g transform="translate(229.000000, 344.000000)">
<g transform="translate(56.000000, 0.000000)">
<rect x="0" y="0" width="1.5" height="6"></rect>
<rect x="4.5" y="0" width="1.5" height="6"></rect>
</g>
</g>
</g>
</g>
</g>
</svg>
</button>
</div>
</div>
</div>
<div class="recomm_content">
<div class="wrap_box_news company">
<div class="box_news company">
<div class="slide type2">
<div class="item">
<strong class="title">HR매거진</strong>
<p class="desc">논란을 줄이는 회사 문화 구축 방법</p>
<p class="desc2">바로가기</p>
<span class="wrap_thumb">
<img src="//www.saraminimage.co.kr/sri/main/thumb/hr_1_l.jpg" alt="HR매거진 이미지" class="thumb">
</span>
<a href="/zf_user/hr-magazine/view?hr_idx=810&amp;magazine_join_type=subject" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'hr-magazine', ''], ['ga_lead', 'main', 'CONTENTS', 'hr-magazine'])"></a>
</div>
<div class="item">
<strong class="title">인재POOL</strong>
<p class="desc">딱 맞는 인재추천부터 입사제의를 제한없이 편리하게 이용해보세요.</p>
<p class="desc2">빠르게 인재구하기</p>
<span class="wrap_thumb">
<img src="//www.saraminimage.co.kr/sri/main/thumb/rec_pool_1_l.jpg" alt="인재POOL 이미지" class="thumb">
</span>
<a href="/zf_user/memcom/talent-pool/main#/recommend" class="link" onmousedown="loggingEventAndTagManager(['main', 'CONTENTS', 'talent-manage', ''], ['ga_lead', 'main', 'CONTENTS', 'talent-manage'])"></a>
</div>
</div>
</div>
</div>
</div>
</div>        <div class="wrap_my_area">
<div class="top_login" style="display:block">
<input type="hidden" id="top_login_tab" name="top_login_tab" value="p">
<ul class="area_login">
<li class="on"><button type="button" id="login_tab_person" class="track_event" data-track_event="login|pc_main_per|tab_per"><strong>개인회원</strong> 로그인</button></li>
<li><button type="button" id="login_tab_company" class="track_event" data-track_event="login|pc_main_com|tab_com"><strong>기업회원</strong> 로그인</button></li>
</ul>
<a href="/zf_user/helpdesk/idpw-find" class="link_id_password track_event" data-track_event="login|pc_main_per|find|">아이디/비번찾기</a>
<a href="/zf_user/member/registration/join" onclick="return false;" class="link_join track_event" data-track_event="login|pc_main_per|join|">회원가입</a></div>
<div class="area_recom recruit_card" style="display : block">
<div class="top">
<strong class="sub_title">추천공고</strong>
<button type="button" class="more_list" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', 'card-view', ''], ['ga_lead', 'Recommend-main', 'avata', 'card-view'])" data-gtm-vis-recent-on-screen-6226168_1540="63" data-gtm-vis-first-on-screen-6226168_1540="64" data-gtm-vis-total-visible-time-6226168_1540="100" data-gtm-vis-has-fired-6226168_1540="1">전체보기</button>
</div>
<div class="list_recom">
<div class="list">
<strong class="rec_name" title="(주)감정평가법인세종">(주)감정평가법인세종</strong>
<a href="/zf_user/jobs/relay/pop-view?rec_idx=40402200&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=752" class="rec_desc" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=null&amp;scnId=752&amp;tgId=2&amp;itemSetId=1&amp;itemValue=40402200&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main-main', 'avata', '(주)감정평가법인세종-Java 개발자 모집', ''], ['ga_lead', 'Recommend-main-main', 'avata', '(주)감정평가법인세종-Java 개발자 모집'])">Java 개발자 모집</a>
<p class="hashtag" title=" #웹개발 #강남구"> #웹개발 #강남구</p>
<button type="button" class="spr_scrap btn_scrap" data-value="40402200"><span class="blind">스크랩</span></button>
<button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40402200','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=752', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                </div>
<div class="list">
<strong class="rec_name" title="(주)네이처뉴트리션">(주)네이처뉴트리션</strong>
<a href="/zf_user/jobs/relay/pop-view?rec_idx=40184967&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=752" class="rec_desc" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=null&amp;scnId=752&amp;tgId=2&amp;itemSetId=1&amp;itemValue=40184967&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main-main', 'avata', '(주)네이처뉴트리션-1년만에 2,000% 성장 네이처뉴트리션 상반기 각부문 신입/경력', ''], ['ga_lead', 'Recommend-main-main', 'avata', '(주)네이처뉴트리션-1년만에 2,000% 성장 네이처뉴트리션 상반기 각부문 신입/경력'])">1년만에 2,000% 성장 네이처뉴트리션 상반기 각부문 신입/경력</a>
<p class="hashtag" title=" #웹개발 #강남구"> #웹개발 #강남구</p>
<button type="button" class="spr_scrap btn_scrap" data-value="40184967"><span class="blind">스크랩</span></button>
<button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40184967','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=752', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                </div>
</div>
</div>
<div class="area_recom live" style="display:none">
<div class="top">
<strong class="sub_title">요즘, 취업 동향</strong>
<a href="/zf_user/help/live?category=10" class="more_list" onmousedown="loggingEventAndTagManager(['main', 'job-news', 'more-job-news', ''], ['ga_lead', 'main', 'job-news', 'more-job-news'])">
더보기
<svg xmlns="http://www.w3.org/2000/svg" width="6" height="10" viewBox="0 0 7 11" class="ic_arrow">
<path fill="none" fill-rule="evenodd" stroke="#949494" d="M-2 3L3 8 8 3" transform="rotate(-90 3 5.5)"></path>
</svg>
</a>
</div>
<ul class="list_info">
<li><a href="/zf_user/help/live/view?idx=108296&amp;list_idx=0&amp;listType=news&amp;category=10&amp;keyword=&amp;menu=1&amp;page=1" target="_blank" onmousedown="loggingEventAndTagManager(['main', 'job-news', 'go-job-news', ''], ['ga_lead', 'main', 'job-news', 'go-job-news'])"><strong class="title">경기회복 기대감, 주요기업 신입사원 채용 나서</strong><span class="date">2021-06-03</span></a></li>
<li><a href="/zf_user/help/live/view?idx=108293&amp;list_idx=0&amp;listType=news&amp;category=10&amp;keyword=&amp;menu=1&amp;page=1" target="_blank" onmousedown="loggingEventAndTagManager(['main', 'job-news', 'go-job-news', ''], ['ga_lead', 'main', 'job-news', 'go-job-news'])"><strong class="title">기업 절반, “MZ세대 조기 퇴사 비율 높다”… 평균 5개월 이내 퇴사 </strong><span class="date">2021-06-02</span></a></li>
<li><a href="/zf_user/help/live/view?idx=108282&amp;list_idx=0&amp;listType=news&amp;category=10&amp;keyword=&amp;menu=1&amp;page=1" target="_blank" onmousedown="loggingEventAndTagManager(['main', 'job-news', 'go-job-news', ''], ['ga_lead', 'main', 'job-news', 'go-job-news'])"><strong class="title">기업 절반, MZ세대 잡기 위해 노력 중!</strong><span class="date">2021-05-24</span></a></li>
</ul>
</div>
<div class="wrap_float_login" style="display:none">
<form name="login_frm" id="login_frm" method="post" action="https://www.saramin.co.kr/zf_user/auth/login">
<input type="hidden" id="url" name="url" value="/zf_user/">
<input type="hidden" id="seq" name="seq" value="0">
<input type="hidden" id="encid" name="encid" value="">
<input type="hidden" id="encpw" name="encpw" value="">
<input type="hidden" id="login_tab" name="login_tab" value="p">
<fieldset>
<ul class="btn_logins">
<li class="on"><button type="button" id="login_layer_tab_person" class="track_event" data-track_event="login|pc_main_per|tab_per">개인회원 로그인</button></li>
<li class=""><button type="button" id="login_layer_tab_company" class="track_event" data-track_event="login|pc_main_com|tab_com">기업회원 로그인</button></li>
</ul>
<div class="area_login">
<div class="sns_login" id="wrap_sns_login">
<a href="/zf_user/auth/sign-in-with?provider=naver.com&amp;display=popup&amp;url=%2Fzf_user%2F" onclick="return false;" class="link_sns link_naver track_event tag_manager" data-track_event="login|pc_main_per|social_login|naver"><span class="blind">네이버 아이디 로그인</span></a>
<a href="/zf_user/auth/sign-in-with?provider=kakao.com&amp;display=popup&amp;url=%2Fzf_user%2F" onclick="return false;" class="link_sns link_kakaotalk track_event tag_manager" data-track_event="login|pc_main_per|social_login|kakao"><span class="blind">카카오톡 아이디 로그인</span></a>
<a href="/zf_user/auth/sign-in-with?provider=facebook.com&amp;display=popup&amp;url=%2Fzf_user%2F" onclick="return false;" class="link_sns link_facebook track_event tag_manager" data-track_event="login|pc_main_per|social_login|facebook"><span class="blind">페이스북 아이디 로그인</span></a>
<a href="/zf_user/auth/sign-in-with?provider=google.com&amp;display=popup&amp;url=%2Fzf_user%2F" onclick="return false;" class="link_sns link_google track_event tag_manager" data-track_event="login|pc_main_per|social_login|google"><span class="blind">구글 아이디 로그인</span></a>
<a href="/zf_user/auth/sign-in-with?provider=apple.com&amp;display=popup&amp;&amp;url=%2Fzf_user%2F" onclick="return false;" class="link_sns link_apple track_event tag_manager" data-track_event="login|pc_main_per|social_login|apple"><span class="blind">애플로그인</span></a>
</div>
<div class="login_input person" style="display: block;">
<strong class="blind">개인회원 로그인</strong>
<span class="box_typo id"><label for="login_person_id" class="blind">아이디</label><input type="text" name="id" id="login_person_id" class="inpTypo" value="" placeholder="아이디" title="아이디 입력"></span>
<span class="box_typo password"><label for="login_person_pwd" class="blind">비밀번호</label><input type="password" name="password" id="login_person_pwd" class="inpTypo" placeholder="비밀번호" title="비밀번호 입력"></span>
</div>
<div class="login_input company" style="display: none;">
<strong class="blind">기업회원 로그인</strong>
<span class="box_typo id"></span>
<span class="box_typo password"></span>
</div>
<div class="login_etc">
<button type="submit" class="btn_login track_event log_fb_pixel_login tag_manager" data-track_event="login|pc_main_per|login|">로그인</button>
<span class="inpChk small">
<input type="checkbox" name="autologin" id="autoLogin">
<label for="autoLogin" class="lbl autologin" data-track_event="login|pc_main_per|auto_login|">로그인 유지</label>
</span>
<span class="inpChk small">
<input type="checkbox" name="id_save" id="id_save">
<label for="id_save" class="lbl track_event" data-track_event="login|pc_main_per|id_save|">아이디 저장</label>
</span>
<span class="txt_safety">
<input type="checkbox" name="ssl_login" id="ssl_login" checked="checked" class="inp_safety track_event" data-track_event="login|pc_main_per|security|OFF">
<label for="ssl_login" class="lab_safety">&nbsp;보안</label>
</span>
<a href="/zf_user/applicant/rater/login-form" class="link_rater track_event" data-track_event="" style="display: none;">협업자 로그인</a>
</div>
<div class="wrap_join_find">
<a href="/zf_user/member/registration/join" onclick="return false;" class="link_join login_layer_link_join track_event" data-track_event="login|pc_main_per|join|">회원가입</a>
<a href="/zf_user/helpdesk/idpw-find" class="link_id_password login_layer_link_id_password track_event" data-track_event="login|pc_main_per|find|">아이디/비번찾기</a>
</div>
<button type="button" class="btn_layer_close"><span class="blind">닫기</span></button></div>
</fieldset>
</form></div><div class="list_slide live_notify">
<span class="category"><a href="/zf_user/help/live?listType=notice&amp;mem_type=a">공지</a></span>
<ul class="wrap_notice" style="transform: translateY(-132px); transition: all 300ms ease 0s;">
<li class="list">
<a href="/zf_user/help/live/view?list_idx=0&amp;listType=notice&amp;keyword=&amp;menu=1&amp;mem_type=a&amp;page=1&amp;idx=108262" onmousedown="loggingEventAndTagManager(['main', 'Notice', 'notice_view', ''], ['ga_lead', 'main', 'Notice', 'notice_view'])">IE 9, 10 버전에 대한 사람인 PC 서비스 대응 종료 안내 (5월 21일 이후)</a>
</li><li class="list">
<a href="/zf_user/help/live/view?list_idx=0&amp;listType=notice&amp;keyword=&amp;menu=1&amp;mem_type=a&amp;page=1&amp;idx=108273" onmousedown="loggingEventAndTagManager(['main', 'Notice', 'notice_view', ''], ['ga_lead', 'main', 'Notice', 'notice_view'])">지금, 문 엽니다 We.라운지 </a>
</li>
<li class="list">
<a href="/zf_user/help/live/view?list_idx=0&amp;listType=notice&amp;keyword=&amp;menu=1&amp;mem_type=a&amp;page=1&amp;idx=108287" onmousedown="loggingEventAndTagManager(['main', 'Notice', 'notice_view', ''], ['ga_lead', 'main', 'Notice', 'notice_view'])">고객님의 소중한 의견이 반영되었습니다. &lt;#04&gt;</a>
</li>
<li class="list slide_active">
<a href="/zf_user/help/live/view?list_idx=0&amp;listType=notice&amp;keyword=&amp;menu=1&amp;mem_type=a&amp;page=1&amp;idx=108279" onmousedown="loggingEventAndTagManager(['main', 'Notice', 'notice_view', ''], ['ga_lead', 'main', 'Notice', 'notice_view'])">AI면접 솔루션 아이엠그라운드 대학교 제휴서비스 안내</a>
</li>
<li class="list">
<a href="/zf_user/help/live/view?list_idx=0&amp;listType=notice&amp;keyword=&amp;menu=1&amp;mem_type=a&amp;page=1&amp;idx=108262" onmousedown="loggingEventAndTagManager(['main', 'Notice', 'notice_view', ''], ['ga_lead', 'main', 'Notice', 'notice_view'])">IE 9, 10 버전에 대한 사람인 PC 서비스 대응 종료 안내 (5월 21일 이후)</a>
</li>
<li class="list">
<a href="/zf_user/help/live/view?list_idx=0&amp;listType=notice&amp;keyword=&amp;menu=1&amp;mem_type=a&amp;page=1&amp;idx=108273" onmousedown="loggingEventAndTagManager(['main', 'Notice', 'notice_view', ''], ['ga_lead', 'main', 'Notice', 'notice_view'])">지금, 문 엽니다 We.라운지 </a>
</li></ul>
<button type="button" class="btn_prev">
<svg xmlns="http://www.w3.org/2000/svg" width="10" height="6" viewBox="0 0 11 6">
<title>이전글보기</title>
<path fill="none" fill-rule="evenodd" stroke="#949494" d="M0 0L4.5 4 9 0" opacity=".5" transform="matrix(1 0 0 -1 1 5)" class="change"></path>
</svg>
</button>
<button type="button" class="btn_next">
<svg xmlns="http://www.w3.org/2000/svg" width="10" height="6" viewBox="0 0 11 6">
<title>다음글보기</title>
<path fill="none" fill-rule="evenodd" stroke="#949494" d="M0 0L4.5 4 9 0" opacity=".5" transform="translate(1 1)" class="change"></path>
</svg>
</button>
</div>
</div>
<div id="wrap_float_recom_recruit" class="wrap_float_recom">
<div class="top">
<strong class="title"><span class="txt_emph">사람인 추천</span> 공고를 확인하세요 <a href="/zf_user/member/avatar/list" class="link_more" onmousedown="pushDataLayer('ga_lead', 'main', 'Recommend-rec', 'more')">공고 더보기 <svg xmlns="http://www.w3.org/2000/svg" width="7" height="11" viewBox="0 0 7 11" class="ic_arrow"><path fill="none" fill-rule="evenodd" stroke="#949494" d="M-2 3L3 8 8 3" transform="rotate(-90 3 5.5)"></path></svg></a></strong>
<span class="txt_alram_recom">
<button type="button" class="btn_alarm avatar_mail">추천공고 알림 받기<span class="ico_onoff">OFF</span></button>
</span>
<button type="button" class="btn_close"><span class="blind">레이어닫기</span></button>
</div>
<div class="wrap_list person">
<div class="list">
<a href="/zf_user/jobs/relay/pop-view?rec_idx=40402200&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=752" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=null&amp;scnId=752&amp;tgId=2&amp;itemSetId=1&amp;itemValue=40402200&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '(주)감정평가법인세종-Java 개발자 모집', ''], ['ga_lead', 'Recommend-main', 'avata', '(주)감정평가법인세종-Java 개발자 모집'])"></a>
<strong class="rec_name">(주)감정평가법인세종</strong>
<span class="rec_desc">Java 개발자 모집</span>
<span class="hashtag"> #웹개발 #강남구</span>
<button type="button" class="spr_scrap btn_scrap" data-value="40402200"><span class="blind">스크랩</span></button>
<button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40402200','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=752', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                    </div>
<div class="list">
<a href="/zf_user/jobs/relay/pop-view?rec_idx=40184967&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=752" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=null&amp;scnId=752&amp;tgId=2&amp;itemSetId=1&amp;itemValue=40184967&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '(주)네이처뉴트리션-1년만에 2,000% 성장 네이처뉴트리션 상반기 각부문 신입/경력', ''], ['ga_lead', 'Recommend-main', 'avata', '(주)네이처뉴트리션-1년만에 2,000% 성장 네이처뉴트리션 상반기 각부문 신입/경력'])"></a>
<strong class="rec_name">(주)네이처뉴트리션</strong>
<span class="rec_desc">1년만에 2,000% 성장 네이처뉴트리션 상반기 각부문 신입/경력</span>
<span class="hashtag"> #웹개발 #강남구</span>
<button type="button" class="spr_scrap btn_scrap" data-value="40184967"><span class="blind">스크랩</span></button>
<button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40184967','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=752', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                    </div>
<div class="list">
<a href="/zf_user/jobs/relay/pop-view?rec_idx=38783890&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=659" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=SRI_070_MAIN_ACT_RCT_AVATAR&amp;scnId=659&amp;tgId=2&amp;itemSetId=1&amp;itemValue=38783890&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '현대무벡스(주)-현대무벡스㈜ 부문별 경력사원 상시 모집', ''], ['ga_lead', 'Recommend-main', 'avata', '현대무벡스(주)-현대무벡스㈜ 부문별 경력사원 상시 모집'])"></a>
<strong class="rec_name">현대무벡스(주)</strong>
<span class="rec_desc">현대무벡스㈜ 부문별 경력사원 상시 모집</span>
<span class="hashtag"> #웹개발 #서울전체</span>
<button type="button" class="spr_scrap btn_scrap" data-value="38783890"><span class="blind">스크랩</span></button>
</div>
<div class="list">
<a href="/zf_user/jobs/relay/pop-view?rec_idx=39990399&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=659" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=SRI_070_MAIN_ACT_RCT_AVATAR&amp;scnId=659&amp;tgId=2&amp;itemSetId=4&amp;itemValue=39990399&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '(주)베네통코리아-[베네통코리아] 온라인MD/상품개발/IT웹 개발자 채용', ''], ['ga_lead', 'Recommend-main', 'avata', '(주)베네통코리아-[베네통코리아] 온라인MD/상품개발/IT웹 개발자 채용'])"></a>
<strong class="rec_name">(주)베네통코리아</strong>
<span class="rec_desc">[베네통코리아] 온라인MD/상품개발/IT웹 개발자 채용</span>
<span class="hashtag"> #웹개발 #서울전체</span>
<button type="button" class="spr_scrap btn_scrap" data-value="39990399"><span class="blind">스크랩</span></button>
<button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('39990399','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=659', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                    </div>
<div class="list">
<a href="/zf_user/jobs/relay/pop-view?rec_idx=40340923&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=659" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=SRI_070_MAIN_ACT_RCT_AVATAR&amp;scnId=659&amp;tgId=2&amp;itemSetId=5&amp;itemValue=40340923&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '(주)애큐온캐피탈-리테일 시스템 개발 및 운영', ''], ['ga_lead', 'Recommend-main', 'avata', '(주)애큐온캐피탈-리테일 시스템 개발 및 운영'])"></a>
<strong class="rec_name">(주)애큐온캐피탈</strong>
<span class="rec_desc">리테일 시스템 개발 및 운영</span>
<span class="hashtag"> #웹개발 #강남구</span>
<button type="button" class="spr_scrap btn_scrap" data-value="40340923"><span class="blind">스크랩</span></button>
<button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40340923','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=659', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                    </div>
<div class="list">
<a href="/zf_user/jobs/relay/pop-view?rec_idx=40363191&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=659" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=SRI_070_MAIN_ACT_RCT_AVATAR&amp;scnId=659&amp;tgId=2&amp;itemSetId=6&amp;itemValue=40363191&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', 'SBI저축은행-2021년 상반기 경력직 수시채용', ''], ['ga_lead', 'Recommend-main', 'avata', 'SBI저축은행-2021년 상반기 경력직 수시채용'])"></a>
<strong class="rec_name">SBI저축은행</strong>
<span class="rec_desc">2021년 상반기 경력직 수시채용</span>
<span class="hashtag"> #응용프로그램개발 #강남구</span>
<button type="button" class="spr_scrap btn_scrap" data-value="40363191"><span class="blind">스크랩</span></button>
<button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40363191','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=659', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                    </div>
<div class="list">
<a href="/zf_user/jobs/relay/pop-view?rec_idx=40399200&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=659" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=SRI_070_MAIN_ACT_RCT_AVATAR&amp;scnId=659&amp;tgId=2&amp;itemSetId=7&amp;itemValue=40399200&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '(주)스마트스코어-[골프IT선두기업] 2021 상반기 대규모 경력직 채용', ''], ['ga_lead', 'Recommend-main', 'avata', '(주)스마트스코어-[골프IT선두기업] 2021 상반기 대규모 경력직 채용'])"></a>
<strong class="rec_name">(주)스마트스코어</strong>
<span class="rec_desc">[골프IT선두기업] 2021 상반기 대규모 경력직 채용</span>
<span class="hashtag"> #웹개발 #강남구</span>
<button type="button" class="spr_scrap btn_scrap" data-value="40399200"><span class="blind">스크랩</span></button>
<button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40399200','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=659', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                    </div>
<div class="list">
<a href="/zf_user/jobs/relay/pop-view?rec_idx=39529547&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=659" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=SRI_070_MAIN_ACT_RCT_AVATAR&amp;scnId=659&amp;tgId=2&amp;itemSetId=8&amp;itemValue=39529547&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '이제너두(주)-복지몰/강남 [영업,재무회계,개발,인프라,MD,헬스케어] 모집공고', ''], ['ga_lead', 'Recommend-main', 'avata', '이제너두(주)-복지몰/강남 [영업,재무회계,개발,인프라,MD,헬스케어] 모집공고'])"></a>
<strong class="rec_name">이제너두(주)</strong>
<span class="rec_desc">복지몰/강남 [영업,재무회계,개발,인프라,MD,헬스케어] 모집공고</span>
<span class="hashtag"> #웹개발 #강남구</span>
<button type="button" class="spr_scrap btn_scrap" data-value="39529547"><span class="blind">스크랩</span></button>
<button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('39529547','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=659', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                    </div>
<div class="list">
<a href="/zf_user/jobs/relay/pop-view?rec_idx=40293837&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=659" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=SRI_070_MAIN_ACT_RCT_AVATAR&amp;scnId=659&amp;tgId=2&amp;itemSetId=9&amp;itemValue=40293837&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '로크웰오토메이션코리아(주)-각 부문 경력직원 모집', ''], ['ga_lead', 'Recommend-main', 'avata', '로크웰오토메이션코리아(주)-각 부문 경력직원 모집'])"></a>
<strong class="rec_name">로크웰오토메이션코리아(주)</strong>
<span class="rec_desc">각 부문 경력직원 모집</span>
<span class="hashtag"> #응용프로그램개발 #강남구</span>
<button type="button" class="spr_scrap btn_scrap" data-value="40293837"><span class="blind">스크랩</span></button>
<button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40293837','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=659', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                    </div>
<div class="list">
<a href="/zf_user/jobs/relay/pop-view?rec_idx=40069730&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=659" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=SRI_070_MAIN_ACT_RCT_AVATAR&amp;scnId=659&amp;tgId=2&amp;itemSetId=10&amp;itemValue=40069730&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '(주)푸드테크-푸드테크 IT부문 채용', ''], ['ga_lead', 'Recommend-main', 'avata', '(주)푸드테크-푸드테크 IT부문 채용'])"></a>
<strong class="rec_name">(주)푸드테크</strong>
<span class="rec_desc">푸드테크 IT부문 채용</span>
<span class="hashtag"> #웹개발 #강남구</span>
<button type="button" class="spr_scrap btn_scrap" data-value="40069730"><span class="blind">스크랩</span></button>
<button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40069730','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=659', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                    </div>
<div class="list">
<a href="/zf_user/jobs/relay/pop-view?rec_idx=40413259&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=757" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=SRI_070_MAIN_ACT_RCT_AVATAR&amp;scnId=757&amp;tgId=2&amp;itemSetId=4&amp;itemValue=40413259&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '선진정공(주)-2021년 당진사업장 각 부문별 정규직 모집', ''], ['ga_lead', 'Recommend-main', 'avata', '선진정공(주)-2021년 당진사업장 각 부문별 정규직 모집'])"></a>
<strong class="rec_name">선진정공(주)</strong>
<span class="rec_desc">2021년 당진사업장 각 부문별 정규직 모집</span>
<span class="hashtag"> #웹개발 #경기전체</span>
<button type="button" class="spr_scrap btn_scrap" data-value="40413259"><span class="blind">스크랩</span></button>
<button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40413259','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=757', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                    </div>
<div class="list">
<a href="/zf_user/jobs/relay/pop-view?rec_idx=40387901&amp;t_ref_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_ref_scnid=757" class="link_recomm" data-click-url="http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=&amp;pcId=16230612419786911889857&amp;nonce=06e0165939df192a672a&amp;dpId=SRI_070_MAIN_ACT_RCT_AVATAR&amp;scnId=757&amp;tgId=2&amp;itemSetId=5&amp;itemValue=40387901&amp;click=1" onmousedown="loggingEventAndTagManager(['Recommend-main', 'avata', '지지무역(주)-[서울본사 및 해외] 2021년 경력직 채용(해외영업, PPIC(생산기획), 품질관리)', ''], ['ga_lead', 'Recommend-main', 'avata', '지지무역(주)-[서울본사 및 해외] 2021년 경력직 채용(해외영업, PPIC(생산기획), 품질관리)'])"></a>
<strong class="rec_name">지지무역(주)</strong>
<span class="rec_desc">[서울본사 및 해외] 2021년 경력직 채용(해외영업, PPIC(생산기획), 품질관리)</span>
<span class="hashtag"> #영업·고객상담 #서울전체</span>
<button type="button" class="spr_scrap btn_scrap" data-value="40387901"><span class="blind">스크랩</span></button>
<button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('40387901','','t_category=main&amp;t_content=SRI_070_MAIN_ACT_RCT_AVATAR&amp;t_scnid=757', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','main','quick_apply','');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                    </div>
</div>
</div>
<div class="ad_google" style="">
<div id="div-gpt-ad-1594859543669-0" class="wrap_banner" style="">
<div id="div-gpt-ad-1594859543669-0-wrapper">
<a href="http://www.saramin.co.kr/avatar-branding/?inner_source=saramin&amp;inner_medium=banner&amp;inner_campaign=Waiting_Main_BigBanner&amp;inner_term=avatar_introduce" target="_blank" class="google-standby-banner" rel="nofollow"><img src="https://www.saraminbanner.co.kr/adserver/default/2020/08/qfc9h9_1m6o-2rxicl_.png" alt="인공지능 취업플랫폼 사람인"></a>
</div>
<div id="div-gpt-ad-1594859543669-0-inner" style="display: none;">
<div id="div-gpt-ad-1594859543669-0">
</div>
</div>
<div id="google_ads_iframe_/61280259/Main-Big_468x60_0__container__" style="border: 0pt none; width: 468px; height: 0px;"></div></div>
</div>
</div>
</div>


</body></html>