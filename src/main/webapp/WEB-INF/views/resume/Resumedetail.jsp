<%@page import="bit.com.a.dto.Resume_AwardVo"%>
<%@page import="bit.com.a.dto.Resume_LanguageVo"%>
<%@page import="bit.com.a.dto.Resume_AwardDto"%>
<%@page import="bit.com.a.dto.Resume_ActivityVo"%>
<%@page import="bit.com.a.dto.Resume_licenseVo"%>
<%@page import="bit.com.a.dto.Resume_CareerVo"%>
<%@page import="bit.com.a.dto.Resume_EduVo"%>
<%@page import="java.util.List"%>
<%@page import="bit.com.a.dto.MemberDto"%>
<%@page import="bit.com.a.dto.ResumeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<meta charset="utf-8" />
<meta http-equiv="Content-Language" content="ko-KR">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"VgMEUFRbDRAEUFJQAQAEUVc=",licenseKey:"03a1f7dfe5",applicationID:"443261373"};window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var i=e[n]={exports:{}};t[n][0].call(i.exports,function(e){var i=t[n][1][e];return r(i||e)},i,i.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<n.length;i++)r(n[i]);return r}({1:[function(t,e,n){function r(t){try{s.console&&console.log(t)}catch(e){}}var i,o=t("ee"),a=t(25),s={};try{i=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(s.console=!0,i.indexOf("dev")!==-1&&(s.dev=!0),i.indexOf("nr_dev")!==-1&&(s.nrDev=!0))}catch(c){}s.nrDev&&o.on("internal-error",function(t){r(t.stack)}),s.dev&&o.on("fn-err",function(t,e,n){r(n.stack)}),s.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(s,function(t,e){return t}).join(", ")))},{}],2:[function(t,e,n){function r(t,e,n,r,s){try{p?p-=1:i(s||new UncaughtException(t,e,n),!0)}catch(f){try{o("ierr",[f,c.now(),!0])}catch(d){}}return"function"==typeof u&&u.apply(this,a(arguments))}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}function i(t,e){var n=e?null:c.now();o("err",[t,n])}var o=t("handle"),a=t(26),s=t("ee"),c=t("loader"),f=t("gos"),u=window.onerror,d=!1,l="nr@seenError";if(!c.disabled){var p=0;c.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(h){"stack"in h&&(t(9),t(8),"addEventListener"in window&&t(5),c.xhrWrappable&&t(10),d=!0)}s.on("fn-start",function(t,e,n){d&&(p+=1)}),s.on("fn-err",function(t,e,n){d&&!n[l]&&(f(n,l,function(){return!0}),this.thrown=!0,i(n))}),s.on("fn-end",function(){d&&!this.thrown&&p>0&&(p-=1)}),s.on("internal-error",function(t){o("ierr",[t,c.now(),!0])})}},{}],3:[function(t,e,n){var r=t("loader");r.disabled||(r.features.ins=!0)},{}],4:[function(t,e,n){function r(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var i=t("ee"),o=t("handle"),a=t(9),s=t(8),c="learResourceTimings",f="addEventListener",u="resourcetimingbufferfull",d="bstResource",l="resource",p="-start",h="-end",m="fn"+p,w="fn"+h,v="bstTimer",g="pushState",y=t("loader");if(!y.disabled){y.features.stn=!0,t(7),"addEventListener"in window&&t(5);var x=NREUM.o.EV;i.on(m,function(t,e){var n=t[0];n instanceof x&&(this.bstStart=y.now())}),i.on(w,function(t,e){var n=t[0];n instanceof x&&o("bst",[n,e,this.bstStart,y.now()])}),a.on(m,function(t,e,n){this.bstStart=y.now(),this.bstType=n}),a.on(w,function(t,e){o(v,[e,this.bstStart,y.now(),this.bstType])}),s.on(m,function(){this.bstStart=y.now()}),s.on(w,function(t,e){o(v,[e,this.bstStart,y.now(),"requestAnimationFrame"])}),i.on(g+p,function(t){this.time=y.now(),this.startPath=location.pathname+location.hash}),i.on(g+h,function(t){o("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),f in window.performance&&(window.performance["c"+c]?window.performance[f](u,function(t){o(d,[window.performance.getEntriesByType(l)]),window.performance["c"+c]()},!1):window.performance[f]("webkit"+u,function(t){o(d,[window.performance.getEntriesByType(l)]),window.performance["webkitC"+c]()},!1)),document[f]("scroll",r,{passive:!0}),document[f]("keypress",r,!1),document[f]("click",r,!1)}}},{}],5:[function(t,e,n){function r(t){for(var e=t;e&&!e.hasOwnProperty(u);)e=Object.getPrototypeOf(e);e&&i(e)}function i(t){s.inPlace(t,[u,d],"-",o)}function o(t,e){return t[1]}var a=t("ee").get("events"),s=t("wrap-function")(a,!0),c=t("gos"),f=XMLHttpRequest,u="addEventListener",d="removeEventListener";e.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(f.prototype)):f.prototype.hasOwnProperty(u)&&(i(window),i(f.prototype)),a.on(u+"-start",function(t,e){var n=t[1],r=c(n,"nr@wrapped",function(){function t(){if("function"==typeof n.handleEvent)return n.handleEvent.apply(n,arguments)}var e={object:t,"function":n}[typeof n];return e?s(e,"fn-",null,e.name||"anonymous"):n});this.wrapped=t[1]=r}),a.on(d+"-start",function(t){t[1]=this.wrapped||t[1]})},{}],6:[function(t,e,n){function r(t,e,n){var r=t[e];"function"==typeof r&&(t[e]=function(){var t=o(arguments),e={};i.emit(n+"before-start",[t],e);var a;e[m]&&e[m].dt&&(a=e[m].dt);var s=r.apply(this,t);return i.emit(n+"start",[t,a],s),s.then(function(t){return i.emit(n+"end",[null,t],s),t},function(t){throw i.emit(n+"end",[t],s),t})})}var i=t("ee").get("fetch"),o=t(26),a=t(25);e.exports=i;var s=window,c="fetch-",f=c+"body-",u=["arrayBuffer","blob","json","text","formData"],d=s.Request,l=s.Response,p=s.fetch,h="prototype",m="nr@context";d&&l&&p&&(a(u,function(t,e){r(d[h],e,f),r(l[h],e,f)}),r(s,"fetch",c),i.on(c+"end",function(t,e){var n=this;if(e){var r=e.headers.get("content-length");null!==r&&(n.rxSize=r),i.emit(c+"done",[null,e],n)}else i.emit(c+"done",[t],n)}))},{}],7:[function(t,e,n){var r=t("ee").get("history"),i=t("wrap-function")(r);e.exports=r;var o=window.history&&window.history.constructor&&window.history.constructor.prototype,a=window.history;o&&o.pushState&&o.replaceState&&(a=o),i.inPlace(a,["pushState","replaceState"],"-")},{}],8:[function(t,e,n){var r=t("ee").get("raf"),i=t("wrap-function")(r),o="equestAnimationFrame";e.exports=r,i.inPlace(window,["r"+o,"mozR"+o,"webkitR"+o,"msR"+o],"raf-"),r.on("raf-start",function(t){t[0]=i(t[0],"fn-")})},{}],9:[function(t,e,n){function r(t,e,n){t[0]=a(t[0],"fn-",null,n)}function i(t,e,n){this.method=n,this.timerDuration=isNaN(t[1])?0:+t[1],t[0]=a(t[0],"fn-",this,n)}var o=t("ee").get("timer"),a=t("wrap-function")(o),s="setTimeout",c="setInterval",f="clearTimeout",u="-start",d="-";e.exports=o,a.inPlace(window,[s,"setImmediate"],s+d),a.inPlace(window,[c],c+d),a.inPlace(window,[f,"clearImmediate"],f+d),o.on(c+u,r),o.on(s+u,i)},{}],10:[function(t,e,n){function r(t,e){d.inPlace(e,["onreadystatechange"],"fn-",s)}function i(){var t=this,e=u.context(t);t.readyState>3&&!e.resolved&&(e.resolved=!0,u.emit("xhr-resolved",[],t)),d.inPlace(t,g,"fn-",s)}function o(t){y.push(t),h&&(b?b.then(a):w?w(a):(E=-E,R.data=E))}function a(){for(var t=0;t<y.length;t++)r([],y[t]);y.length&&(y=[])}function s(t,e){return e}function c(t,e){for(var n in t)e[n]=t[n];return e}t(5);var f=t("ee"),u=f.get("xhr"),d=t("wrap-function")(u),l=NREUM.o,p=l.XHR,h=l.MO,m=l.PR,w=l.SI,v="readystatechange",g=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],y=[];e.exports=u;var x=window.XMLHttpRequest=function(t){var e=new p(t);try{u.emit("new-xhr",[e],e),e.addEventListener(v,i,!1)}catch(n){try{u.emit("internal-error",[n])}catch(r){}}return e};if(c(p,x),x.prototype=p.prototype,d.inPlace(x.prototype,["open","send"],"-xhr-",s),u.on("send-xhr-start",function(t,e){r(t,e),o(e)}),u.on("open-xhr-start",r),h){var b=m&&m.resolve();if(!w&&!m){var E=1,R=document.createTextNode(E);new h(a).observe(R,{characterData:!0})}}else f.on("fn-end",function(t){t[0]&&t[0].type===v||a()})},{}],11:[function(t,e,n){function r(t){if(!s(t))return null;var e=window.NREUM;if(!e.loader_config)return null;var n=(e.loader_config.accountID||"").toString()||null,r=(e.loader_config.agentID||"").toString()||null,f=(e.loader_config.trustKey||"").toString()||null;if(!n||!r)return null;var h=p.generateSpanId(),m=p.generateTraceId(),w=Date.now(),v={spanId:h,traceId:m,timestamp:w};return(t.sameOrigin||c(t)&&l())&&(v.traceContextParentHeader=i(h,m),v.traceContextStateHeader=o(h,w,n,r,f)),(t.sameOrigin&&!u()||!t.sameOrigin&&c(t)&&d())&&(v.newrelicHeader=a(h,m,w,n,r,f)),v}function i(t,e){return"00-"+e+"-"+t+"-01"}function o(t,e,n,r,i){var o=0,a="",s=1,c="",f="";return i+"@nr="+o+"-"+s+"-"+n+"-"+r+"-"+t+"-"+a+"-"+c+"-"+f+"-"+e}function a(t,e,n,r,i,o){var a="btoa"in window&&"function"==typeof window.btoa;if(!a)return null;var s={v:[0,1],d:{ty:"Browser",ac:r,ap:i,id:t,tr:e,ti:n}};return o&&r!==o&&(s.d.tk=o),btoa(JSON.stringify(s))}function s(t){return f()&&c(t)}function c(t){var e=!1,n={};if("init"in NREUM&&"distributed_tracing"in NREUM.init&&(n=NREUM.init.distributed_tracing),t.sameOrigin)e=!0;else if(n.allowed_origins instanceof Array)for(var r=0;r<n.allowed_origins.length;r++){var i=h(n.allowed_origins[r]);if(t.hostname===i.hostname&&t.protocol===i.protocol&&t.port===i.port){e=!0;break}}return e}function f(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.enabled}function u(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.exclude_newrelic_header}function d(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&NREUM.init.distributed_tracing.cors_use_newrelic_header!==!1}function l(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.cors_use_tracecontext_headers}var p=t(22),h=t(13);e.exports={generateTracePayload:r,shouldGenerateTrace:s}},{}],12:[function(t,e,n){function r(t){var e=this.params,n=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<l;r++)t.removeEventListener(d[r],this.listener,!1);e.aborted||(n.duration=a.now()-this.startTime,this.loadCaptureCalled||4!==t.readyState?null==e.status&&(e.status=0):o(this,t),n.cbTime=this.cbTime,u.emit("xhr-done",[t],t),s("xhr",[e,n,this.startTime]))}}function i(t,e){var n=c(e),r=t.params;r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.parsedOrigin=c(e),t.sameOrigin=t.parsedOrigin.sameOrigin}function o(t,e){t.params.status=e.status;var n=w(e,t.lastSize);if(n&&(t.metrics.rxSize=n),t.sameOrigin){var r=e.getResponseHeader("X-NewRelic-App-Data");r&&(t.params.cat=r.split(", ").pop())}t.loadCaptureCalled=!0}var a=t("loader");if(a.xhrWrappable&&!a.disabled){var s=t("handle"),c=t(13),f=t(11).generateTracePayload,u=t("ee"),d=["load","error","abort","timeout"],l=d.length,p=t("id"),h=t(18),m=t(17),w=t(14),v=window.XMLHttpRequest;a.features.xhr=!0,t(10),t(6),u.on("new-xhr",function(t){var e=this;e.totalCbs=0,e.called=0,e.cbTime=0,e.end=r,e.ended=!1,e.xhrGuids={},e.lastSize=null,e.loadCaptureCalled=!1,e.params=this.params||{},e.metrics=this.metrics||{},t.addEventListener("load",function(n){o(e,t)},!1),h&&(h>34||h<10)||window.opera||t.addEventListener("progress",function(t){e.lastSize=t.loaded},!1)}),u.on("open-xhr-start",function(t){this.params={method:t[0]},i(this,t[1]),this.metrics={}}),u.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid);var n=f(this.parsedOrigin);if(n){var r=!1;n.newrelicHeader&&(e.setRequestHeader("newrelic",n.newrelicHeader),r=!0),n.traceContextParentHeader&&(e.setRequestHeader("traceparent",n.traceContextParentHeader),n.traceContextStateHeader&&e.setRequestHeader("tracestate",n.traceContextStateHeader),r=!0),r&&(this.dt=n)}}),u.on("send-xhr-start",function(t,e){var n=this.metrics,r=t[0],i=this;if(n&&r){var o=m(r);o&&(n.txSize=o)}this.startTime=a.now(),this.listener=function(t){try{"abort"!==t.type||i.loadCaptureCalled||(i.params.aborted=!0),("load"!==t.type||i.called===i.totalCbs&&(i.onloadCalled||"function"!=typeof e.onload))&&i.end(e)}catch(n){try{u.emit("internal-error",[n])}catch(r){}}};for(var s=0;s<l;s++)e.addEventListener(d[s],this.listener,!1)}),u.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),u.on("xhr-load-added",function(t,e){var n=""+p(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),u.on("xhr-load-removed",function(t,e){var n=""+p(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),u.on("addEventListener-end",function(t,e){e instanceof v&&"load"===t[0]&&u.emit("xhr-load-added",[t[1],t[2]],e)}),u.on("removeEventListener-end",function(t,e){e instanceof v&&"load"===t[0]&&u.emit("xhr-load-removed",[t[1],t[2]],e)}),u.on("fn-start",function(t,e,n){e instanceof v&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=a.now()))}),u.on("fn-end",function(t,e){this.xhrCbStart&&u.emit("xhr-cb-time",[a.now()-this.xhrCbStart,this.onload,e],e)}),u.on("fetch-before-start",function(t){function e(t,e){var n=!1;return e.newrelicHeader&&(t.set("newrelic",e.newrelicHeader),n=!0),e.traceContextParentHeader&&(t.set("traceparent",e.traceContextParentHeader),e.traceContextStateHeader&&t.set("tracestate",e.traceContextStateHeader),n=!0),n}var n,r=t[1]||{};"string"==typeof t[0]?n=t[0]:t[0]&&t[0].url?n=t[0].url:window.URL&&t[0]&&t[0]instanceof URL&&(n=t[0].href),n&&(this.parsedOrigin=c(n),this.sameOrigin=this.parsedOrigin.sameOrigin);var i=f(this.parsedOrigin);if(i&&(i.newrelicHeader||i.traceContextParentHeader))if("string"==typeof t[0]||window.URL&&t[0]&&t[0]instanceof URL){var o={};for(var a in r)o[a]=r[a];o.headers=new Headers(r.headers||{}),e(o.headers,i)&&(this.dt=i),t.length>1?t[1]=o:t.push(o)}else t[0]&&t[0].headers&&e(t[0].headers,i)&&(this.dt=i)})}},{}],13:[function(t,e,n){var r={};e.exports=function(t){if(t in r)return r[t];var e=document.createElement("a"),n=window.location,i={};e.href=t,i.port=e.port;var o=e.href.split("://");!i.port&&o[1]&&(i.port=o[1].split("/")[0].split("@").pop().split(":")[1]),i.port&&"0"!==i.port||(i.port="https"===o[0]?"443":"80"),i.hostname=e.hostname||n.hostname,i.pathname=e.pathname,i.protocol=o[0],"/"!==i.pathname.charAt(0)&&(i.pathname="/"+i.pathname);var a=!e.protocol||":"===e.protocol||e.protocol===n.protocol,s=e.hostname===document.domain&&e.port===n.port;return i.sameOrigin=a&&(!e.hostname||s),"/"===i.pathname&&(r[t]=i),i}},{}],14:[function(t,e,n){function r(t,e){var n=t.responseType;return"json"===n&&null!==e?e:"arraybuffer"===n||"blob"===n||"json"===n?i(t.response):"text"===n||""===n||void 0===n?i(t.responseText):void 0}var i=t(17);e.exports=r},{}],15:[function(t,e,n){function r(){}function i(t,e,n){return function(){return o(t,[f.now()].concat(s(arguments)),e?null:this,n),e?void 0:this}}var o=t("handle"),a=t(25),s=t(26),c=t("ee").get("tracer"),f=t("loader"),u=NREUM;"undefined"==typeof window.newrelic&&(newrelic=u);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",p=l+"ixn-";a(d,function(t,e){u[e]=i(l+e,!0,"api")}),u.addPageAction=i(l+"addPageAction",!0),u.setCurrentRouteName=i(l+"routeName",!0),e.exports=newrelic,u.interaction=function(){return(new r).get()};var h=r.prototype={createTracer:function(t,e){var n={},r=this,i="function"==typeof e;return o(p+"tracer",[f.now(),t,n],r),function(){if(c.emit((i?"":"no-")+"fn-start",[f.now(),r,i],n),i)try{return e.apply(this,arguments)}catch(t){throw c.emit("fn-err",[arguments,this,t],n),t}finally{c.emit("fn-end",[f.now()],n)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,e){h[e]=i(p+e)}),newrelic.noticeError=function(t,e){"string"==typeof t&&(t=new Error(t)),o("err",[t,f.now(),!1,e])}},{}],16:[function(t,e,n){function r(t){if(NREUM.init){for(var e=NREUM.init,n=t.split("."),r=0;r<n.length-1;r++)if(e=e[n[r]],"object"!=typeof e)return;return e=e[n[n.length-1]]}}e.exports={getConfiguration:r}},{}],17:[function(t,e,n){e.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(e){return}}}},{}],18:[function(t,e,n){var r=0,i=navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);i&&(r=+i[1]),e.exports=r},{}],19:[function(t,e,n){function r(){return s.exists&&performance.now?Math.round(performance.now()):(o=Math.max((new Date).getTime(),o))-a}function i(){return o}var o=(new Date).getTime(),a=o,s=t(27);e.exports=r,e.exports.offset=a,e.exports.getLastTimestamp=i},{}],20:[function(t,e,n){function r(t){return!(!t||!t.protocol||"file:"===t.protocol)}e.exports=r},{}],21:[function(t,e,n){function r(t,e){var n=t.getEntries();n.forEach(function(t){"first-paint"===t.name?d("timing",["fp",Math.floor(t.startTime)]):"first-contentful-paint"===t.name&&d("timing",["fcp",Math.floor(t.startTime)])})}function i(t,e){var n=t.getEntries();n.length>0&&d("lcp",[n[n.length-1]])}function o(t){t.getEntries().forEach(function(t){t.hadRecentInput||d("cls",[t])})}function a(t){if(t instanceof h&&!w){var e=Math.round(t.timeStamp),n={type:t.type};e<=l.now()?n.fid=l.now()-e:e>l.offset&&e<=Date.now()?(e-=l.offset,n.fid=l.now()-e):e=l.now(),w=!0,d("timing",["fi",e,n])}}function s(t){d("pageHide",[l.now(),t])}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var c,f,u,d=t("handle"),l=t("loader"),p=t(24),h=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){c=new PerformanceObserver(r);try{c.observe({entryTypes:["paint"]})}catch(m){}f=new PerformanceObserver(i);try{f.observe({entryTypes:["largest-contentful-paint"]})}catch(m){}u=new PerformanceObserver(o);try{u.observe({type:"layout-shift",buffered:!0})}catch(m){}}if("addEventListener"in document){var w=!1,v=["click","keydown","mousedown","pointerdown","touchstart"];v.forEach(function(t){document.addEventListener(t,a,!1)})}p(s)}},{}],22:[function(t,e,n){function r(){function t(){return e?15&e[n++]:16*Math.random()|0}var e=null,n=0,r=window.crypto||window.msCrypto;r&&r.getRandomValues&&(e=r.getRandomValues(new Uint8Array(31)));for(var i,o="xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx",a="",s=0;s<o.length;s++)i=o[s],"x"===i?a+=t().toString(16):"y"===i?(i=3&t()|8,a+=i.toString(16)):a+=i;return a}function i(){return a(16)}function o(){return a(32)}function a(t){function e(){return n?15&n[r++]:16*Math.random()|0}var n=null,r=0,i=window.crypto||window.msCrypto;i&&i.getRandomValues&&Uint8Array&&(n=i.getRandomValues(new Uint8Array(31)));for(var o=[],a=0;a<t;a++)o.push(e().toString(16));return o.join("")}e.exports={generateUuid:r,generateSpanId:i,generateTraceId:o}},{}],23:[function(t,e,n){function r(t,e){if(!i)return!1;if(t!==i)return!1;if(!e)return!0;if(!o)return!1;for(var n=o.split("."),r=e.split("."),a=0;a<r.length;a++)if(r[a]!==n[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var s=navigator.userAgent,c=s.match(a);c&&s.indexOf("Chrome")===-1&&s.indexOf("Chromium")===-1&&(i="Safari",o=c[1])}e.exports={agent:i,version:o,match:r}},{}],24:[function(t,e,n){function r(t){function e(){t(a&&document[a]?document[a]:document[i]?"hidden":"visible")}"addEventListener"in document&&o&&document.addEventListener(o,e,!1)}e.exports=r;var i,o,a;"undefined"!=typeof document.hidden?(i="hidden",o="visibilitychange",a="visibilityState"):"undefined"!=typeof document.msHidden?(i="msHidden",o="msvisibilitychange"):"undefined"!=typeof document.webkitHidden&&(i="webkitHidden",o="webkitvisibilitychange",a="webkitVisibilityState")},{}],25:[function(t,e,n){function r(t,e){var n=[],r="",o=0;for(r in t)i.call(t,r)&&(n[o]=e(r,t[r]),o+=1);return n}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],26:[function(t,e,n){function r(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,i=n-e||0,o=Array(i<0?0:i);++r<i;)o[r]=t[e+r];return o}e.exports=r},{}],27:[function(t,e,n){e.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(t,e,n){function r(){}function i(t){function e(t){return t&&t instanceof r?t:t?f(t,c,a):a()}function n(n,r,i,o,a){if(a!==!1&&(a=!0),!p.aborted||o){t&&a&&t(n,r,i);for(var s=e(i),c=m(n),f=c.length,u=0;u<f;u++)c[u].apply(s,r);var l=d[y[n]];return l&&l.push([x,n,r,s]),s}}function o(t,e){g[t]=m(t).concat(e)}function h(t,e){var n=g[t];if(n)for(var r=0;r<n.length;r++)n[r]===e&&n.splice(r,1)}function m(t){return g[t]||[]}function w(t){return l[t]=l[t]||i(n)}function v(t,e){p.aborted||u(t,function(t,n){e=e||"feature",y[n]=e,e in d||(d[e]=[])})}var g={},y={},x={on:o,addEventListener:o,removeEventListener:h,emit:n,get:w,listeners:m,context:e,buffer:v,abort:s,aborted:!1};return x}function o(t){return f(t,c,a)}function a(){return new r}function s(){(d.api||d.feature)&&(p.aborted=!0,d=p.backlog={})}var c="nr@context",f=t("gos"),u=t(25),d={},l={},p=e.exports=i();e.exports.getOrSetContext=o,p.backlog=d},{}],gos:[function(t,e,n){function r(t,e,n){if(i.call(t,e))return t[e];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return t[e]=r,r}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(t,e,n){function r(t,e,n,r){i.buffer([t],r),i.emit(t,e,n)}var i=t("ee").get("handle");e.exports=r,r.ee=i},{}],id:[function(t,e,n){function r(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:a(t,o,function(){return i++})}var i=1,o="nr@id",a=t("gos");e.exports=r},{}],loader:[function(t,e,n){function r(){if(!S++){var t=O.info=NREUM.info,e=m.getElementsByTagName("script")[0];if(setTimeout(f.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&e))return f.abort();c(E,function(e,n){t[e]||(t[e]=n)});var n=a();s("mark",["onload",n+O.offset],null,"api"),s("timing",["load",n]);var r=m.createElement("script");0===t.agent.indexOf("http://")||0===t.agent.indexOf("https://")?r.src=t.agent:r.src=p+"://"+t.agent,e.parentNode.insertBefore(r,e)}}function i(){"complete"===m.readyState&&o()}function o(){s("mark",["domContent",a()+O.offset],null,"api")}var a=t(19),s=t("handle"),c=t(25),f=t("ee"),u=t(23),d=t(20),l=t(16),p=l.getConfiguration("ssl")===!1?"http":"https",h=window,m=h.document,w="addEventListener",v="attachEvent",g=h.XMLHttpRequest,y=g&&g.prototype,x=!d(h.location);NREUM.o={ST:setTimeout,SI:h.setImmediate,CT:clearTimeout,XHR:g,REQ:h.Request,EV:h.Event,PR:h.Promise,MO:h.MutationObserver};var b=""+location,E={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1209.min.js"},R=g&&y&&y[w]&&!/CriOS/.test(navigator.userAgent),O=e.exports={offset:a.getLastTimestamp(),now:a,origin:b,features:{},xhrWrappable:R,userAgent:u,disabled:x};if(!x){t(15),t(21),m[w]?(m[w]("DOMContentLoaded",o,!1),h[w]("load",r,!1)):(m[v]("onreadystatechange",i),h[v]("onload",r)),s("mark",["firstbyte",a.getLastTimestamp()],null,"api");var S=0}},{}],"wrap-function":[function(t,e,n){function r(t,e){function n(e,n,r,c,f){function nrWrapper(){var o,a,u,l;try{a=this,o=d(arguments),u="function"==typeof r?r(o,a):r||{}}catch(p){i([p,"",[o,a,c],u],t)}s(n+"start",[o,a,c],u,f);try{return l=e.apply(a,o)}catch(h){throw s(n+"err",[o,a,h],u,f),h}finally{s(n+"end",[o,a,l],u,f)}}return a(e)?e:(n||(n=""),nrWrapper[l]=e,o(e,nrWrapper,t),nrWrapper)}function r(t,e,r,i,o){r||(r="");var s,c,f,u="-"===r.charAt(0);for(f=0;f<e.length;f++)c=e[f],s=t[c],a(s)||(t[c]=n(s,u?c+r:r,i,c,o))}function s(n,r,o,a){if(!h||e){var s=h;h=!0;try{t.emit(n,r,o,e,a)}catch(c){i([c,n,r,o],t)}h=s}}return t||(t=u),n.inPlace=r,n.flag=l,n}function i(t,e){e||(e=u);try{e.emit("internal-error",t)}catch(n){}}function o(t,e,n){if(Object.defineProperty&&Object.keys)try{var r=Object.keys(t);return r.forEach(function(n){Object.defineProperty(e,n,{get:function(){return t[n]},set:function(e){return t[n]=e,e}})}),e}catch(o){i([o],n)}for(var a in t)p.call(t,a)&&(e[a]=t[a]);return e}function a(t){return!(t&&t instanceof Function&&t.apply&&!t[l])}function s(t,e){var n=e(t);return n[l]=t,o(t,n,u),n}function c(t,e,n){var r=t[e];t[e]=s(r,n)}function f(){for(var t=arguments.length,e=new Array(t),n=0;n<t;++n)e[n]=arguments[n];return e}var u=t("ee"),d=t(26),l="nr@original",p=Object.prototype.hasOwnProperty,h=!1;e.exports=r,e.exports.wrapFunction=s,e.exports.wrapInPlace=c,e.exports.argsToArray=f},{}]},{},["loader",2,12,4,3]);</script>
<script type="text/javascript"
	src="//www.saraminimage.co.kr/js/libs/jquery-1.11.1.min.js"></script>
<script type="text/javascript">var $j = jQuery.noConflict();</script>
<script type="text/javascript"
	src="/js/persons/common-layout.js?v=20210603163200"></script>

<title>사람인</title>
<meta name="Description"
	content="1000대기업 공채 및 대기업, 중소기업 채용, 공채자료, 기업정보, 연봉정보 제공">
<meta property="og:title" content="사람인">
<meta property="og:image"
	content="//www.saraminimage.co.kr/logo/saraminsnslogo.png">
<meta property="og:site_name" content="사람인">
<meta property="og:type" content="website">
<meta property="og:locale" content="ko_KR">
<meta property="fb:app_id" content="1593727887570039">
<meta property="og:image:width" content="200">
<meta property="og:image:height" content="200">
<link href="/sri_css/person/layout.css?v=20210603163200" media="all"
	rel="stylesheet" type="text/css">
<link href="/sri_css/person/pattern.css?v=20210603163200" media="all"
	rel="stylesheet" type="text/css">
<link href="/sri_css/person/my_resume.css?v=?20210603163200" media="all"
	rel="stylesheet" type="text/css">
<link href="/sri_css/resume.css?v=20210603163200" media="all"
	rel="stylesheet" type="text/css">
<link href="/favicon.ico?ver=2" rel="favicon">
<link href="/favicon.ico?ver=2" rel="icon" type="image/x-icon">
<link href="/favicon.ico?ver=2" rel="shortcut icon" type="image/x-icon">
<script type="text/javascript"
	src="/js/ui/common/dist/ui-module.js?v=20210603163200"></script>
<link href="csss/header.css" rel="stylesheet" type="text/css">
<link href="csss/resume2.css" rel="stylesheet" type="text/css">
<link href="csss/resume3.css" rel="stylesheet" type="text/css">
<link href="csss/resume4.css" rel="stylesheet" type="text/css">

</head>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
ResumeDto dto =(ResumeDto)request.getAttribute("dto");
List<Resume_EduVo> edulist =(List<Resume_EduVo>)request.getAttribute("edulist");
List<Resume_CareerVo> calist =(List<Resume_CareerVo>)request.getAttribute("calist");
List<Resume_licenseVo> liclist =(List<Resume_licenseVo>)request.getAttribute("liclist");
List<Resume_ActivityVo> actlist =(List<Resume_ActivityVo>)request.getAttribute("actlist");
List<Resume_AwardVo> awdlist =(List<Resume_AwardVo>)request.getAttribute("awdlist");
List<Resume_LanguageVo> lanlist =(List<Resume_LanguageVo>)request.getAttribute("lanlist");
//dto들어오는지 확인
System.out.println(dto.toString());

//학력사항 들어오는지 확인
for(int i=0; i<edulist.size(); i++){
if(edulist == null || edulist.isEmpty()){
	System.out.println("경력없음");
} else{
	System.out.println(edulist.get(i));
}
}


//경력사항 들어오는지 확인
for(int i=0; i<calist.size(); i++){
if(calist == null || calist.isEmpty()){
	System.out.println("경력없음");
} else{
	System.out.println(calist.get(i));
}
}


//자격증사항 들어오는지 확인
for(int i=0; i<liclist.size(); i++){
if(liclist == null || liclist.isEmpty()){
	System.out.println("자격증없음");
} else{
	System.out.println(liclist.get(0));
}
}


//대외활동사항 들어오는지 확인
for(int i=0; i<actlist.size(); i++){
if(actlist == null || actlist.isEmpty()){
	System.out.println("대외활동없음");
} else{
	System.out.println(actlist.get(0));
}
}



//수상사항 들어오는지 확인
for(int i=0; i<awdlist.size(); i++){
if(awdlist == null || awdlist.isEmpty()){
	System.out.println("수상없음");
} else{
	System.out.println(awdlist.get(0));
}
}



//어학사항 들어오는지 확인
for(int i=0; i<lanlist.size(); i++){
if(lanlist == null || lanlist.isEmpty()){
	System.out.println("어학없음");
} else{
	System.out.println(lanlist.get(0));
}
}



/* 로그인 세션 가져오기 */
Object obj = session.getAttribute("login"); //세션으로 넘어오면 세션으로
MemberDto memdto = null;
if(obj != null){
	memdto = (MemberDto)obj;
}

String birth = memdto.getBirth();
System.out.println(birth);

/* 나이구하기 */
int age = 2021 - (Integer.parseInt(birth.substring(0, 4))) + 1;
System.out.println(age);

/* 성별구하기 */
int gender = dto.getGender();
String _gender = "";
if(gender==1){
	_gender += "남자";
} else{
	_gender += "여자";
}
System.out.println(_gender);
%>

	<div id="sri_section">
		<div id="sri_wrap">
			<div id="content">
				<div id="resume_print_area">
					<div class="wrapper_narrow wrap_letterview packed_resume_view">
						<h2 class="blind">이력서 VIEW</h2>
						<div class="section_profile">
							<div class="area_title">
								<h3 class="title">경영학과전공, 업무에 맞춤 인재 최은지입니다.</h3>
							</div>
							<div class="personal_info case1">
								<div class="box_photo">
									<div class="inbox">
										<img alt=""
											src="./upload/<%=dto.getNewresumeimage() %>"
											border="0" width="100" height="140" />
									</div>
								</div>
								<div class="my_data">
									<p class="myname">
										<em>최은지</em><span class="birthday"><span>${login.birth }
												(<%=age %>세)</span><span><%=_gender %></span><span><%=dto.getRecruit_status() %></span></span>
									</p>

									<ul class="myaddress">
										<li class="mail">${login.email }</li>
										<li class="phone">010-4724-1469</li>
										<li class="tel">-</li>
										<li class="address">${login.address }</li>
									</ul>

								</div>
								<div class="dashboard">
									<ul>
										<li><strong>학력사항</strong>
										<%  
										int p = 0;
										for(int j=0 ; j< edulist.size(); j++){ %>
										<% if(edulist.get(j).getUniversity()==null || edulist.get(j).getUniversity().equals("")){
										}else{
										%>
											<p class="txt"><%=edulist.get(j).getUniv_status() %> <%=edulist.get(j).getUniv_end_status() %></p></li>
											
										<%		
											p = p+1;
											}
										}
										%>
										
										<% if(p==0){
											for(int i=0; i< edulist.size(); i++){ %> 
										<% if(edulist.get(i).getUniversity()==null || edulist.get(i).getUniversity().equals("")){
											
											%>
											<p class="txt"><%=edulist.get(i).getHighschool() %> <%=edulist.get(i).getHigh_end_status() %></p></li>
										<%	
												}
											}
										}
										
										%>
										<li><strong>경력사항</strong>
										<%if(calist == null || calist.isEmpty()){ %>
											<p class="txt">신입</p>
										<%  } else { %>
										<p class="txt">경력</p>

										<% }
										%>

										</li>
										<li><strong>희망연봉</strong>
											<p class="txt"><%=dto.getDesiredsalary() %></p></li>
										<li><strong>희망근무지</strong>
											<p class="txt">
												<%=dto.getDesiredarea1() %>
											</p></li>
										 <li><strong>희망근무형태</strong>
										<!-- 포트폴리오가 있으면 표시하고 없으면 -로 표시 -->
											<p class="txt portfolio_txt">
											<%=dto.getDesiredjobtype() %>
											</p>
											<div class="toolTip portfolio_tooltip" style="display:">
												<span class="tail tail_top_right"></span>
												<div class="toolTipCont txtLeft"></div>
											</div></li> 
									</ul>
								</div>
							</div>
						</div>
						<div class="section_part">
							<div class="area_title">
								<h3 class="title">
									학력<span class="indetail">
									</span>
								</h3>
							</div>

							<div class="part_table">
								<table class="inpart_view" cellspacing="0" cellpadding="0">
									<caption>개인 학력</caption>
									<colgroup>
										<col width="19%" />
										<col width="11%" />
										<col width="*" />
										<col width="25%" />
										<col width="11%" />
									</colgroup>
									<thead>
										<tr>
											<th scope="col">재학기간</th>
											<th scope="col">구분</th>
											<th scope="col">학교명</th>
											<th scope="col">전공</th>
											<th scope="col">학점</th>
										</tr>
									</thead>
									<tbody>
									<%	if(edulist!=null && !edulist.isEmpty()){
									
										for(int i=0 ; i<edulist.size(); i++){
											
										if(edulist.get(i).getUniversity()==null || edulist.get(i).getUniversity().equals("")){
									} else{
										%>
									
										<tr>
											<td class="lineup_center" rowspan="1"><%=edulist.get(i).getUniv_str()%>
												~ <%=edulist.get(i).getUniv_end()%></td>
											<td class="lineup_center" rowspan="1"><%=edulist.get(i).getUniv_end_status()%></td>
											<td><%=edulist.get(i).getUniversity()%></td>
											<td><%=edulist.get(i).getUniv_major()%></td>
											<td class="lineup_center"><%=edulist.get(i).getUniv_grade()%>
												/ <%=edulist.get(i).getUniv_grade_base()%></td>
										</tr>
									<% 		} 
										}
									}
									%>
									
									<%  
										int pp = 0;
									
										if(edulist!=null && !edulist.isEmpty()){
										
										for(int i=0; i<edulist.size(); i++){
										if(pp==0){	
										if(edulist.get(i).getHighschool()==null || edulist.get(i).getHighschool().equals("")){ 
									
									} else{
										
										%>
										
										<tr>
											<td class="lineup_center" rowspan="1"><%=edulist.get(i).getHigh_str()%>
												~ <%=edulist.get(i).getHigh_end()%></td>
											<td class="lineup_center" rowspan="1">졸업</td>
											<td><%=edulist.get(i).getHighschool()%></td>
											<td>문과계열</td>
											<td class="lineup_center">-</td>
										</tr>

									<% 		pp=pp+1; } 
												}
											}
										}
									%>
									</tbody>
								</table>
							</div>

						</div>
						<div class="section_part">
							<div class="area_title">
								<h3 class="title">
									경력<span class="indetail"></span>
								</h3>
							</div>
							<div class="part_table"></div>
						</div>

						<div class="part_table" id="career_table" style="display: ">
							<table class="inpart_view" cellspacing="0" cellpadding="0">
								<caption>개인 경력</caption>
								<colgroup>
									<col width="19%" />
									<col width="*" />
									<col width="23%" />
									<col width="23%" />
									<col width="11%" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col">근무기간</th>
										<th scope="col">회사명</th>
										<th scope="col">부서/직급/직책</th>
										<th scope="col">지역/직종</th>
										<th scope="col">연봉</th>
									</tr>
								</thead>
								<tbody>
									<%for(int i=0 ; i<calist.size(); i++){ %>
									<tr>
										<td class="lineup_center" rowspan="2"><%=calist.get(0).getPre_startdate() %> ~ <%=calist.get(0).getPre_enddate() %><br />
										</td>
										<td><%=calist.get(0).getPre_comname() %></td>
										<td><%=calist.get(0).getPre_dept() %>&nbsp;/&nbsp;<%=calist.get(0).getPre_position() %></td>
										<td><%=calist.get(0).getPre_area() %> / <%=calist.get(0).getPre_buscode() %></td>
										<td class="lineup_center"><%=calist.get(0).getPre_sal() %></td>
									</tr>
									<tr>
										<td colspan="4">
											<p class="box_point">
												<span class="ico_point">담당업무</span><%=calist.get(0).getPre_jobdetail()%>
											</p>
											<p class="box_point">
												<span class="ico_point">퇴사사유</span><%=calist.get(0).getResumeseq() %>
											</p>
										</td>
									</tr>

									<% } %>
								</tbody>
							</table>
						</div>

						<div class="section_part">
							<div class="area_title">
								<h3 class="title">대외활동</h3>
							</div>
							<div class="part_table">
								<table class="inpart_view" cellspacing="0" cellpadding="0">
									<caption>대외활동</caption>
									<colgroup>
										<col width="19%" />
										<col width="11%" />
										<col width="32%" />
										<col width="*" />
									</colgroup>
									<thead>
										<tr>
											<th scope="col">기간</th>
											<th scope="col">구분</th>
											<th scope="col">기관/장소</th>
											<th scope="col">내용</th>
										</tr>
									</thead>
									<tbody>
									<%for(int i=0 ; i< actlist.size(); i++) {%>
										<tr>
											<td class="lineup_center"><%=actlist.get(i).getAct_str() %> ~ <%=actlist.get(i).getAct_end() %></td>
											<td class="lineup_center"><%=actlist.get(i).getAct_field() %></td>
											<td><%=actlist.get(i).getAct_org() %></td>
											<td><%=actlist.get(i).getAct_detail() %></td>
										</tr>
									<%} %>
									</tbody>
								</table>
							</div>
						</div>



						<div class="section_part">
							<div class="area_title">
								<h3 class="title">자격증/어학/수상내역</h3>
							</div>
							<div class="part_table">
								<table class="inpart_view" cellspacing="0" cellpadding="0">
									<caption>자격증/어학/수상내역</caption>
									<colgroup>
										<col width="13%" />
										<col width="16%" />
										<col width="*" />
										<col width="24%" />
										<col width="11%" />
									</colgroup>
									<thead>
										<tr>
											<th scope="col">취득일/수상일</th>
											<th scope="col">구분</th>
											<th scope="col">자격/어학/수상명</th>
											<th scope="col">발행처/기관/언어</th>
											<th scope="col">합격/점수</th>
										</tr>
									</thead>
									<tbody>
										<% for(int i=0; i< lanlist.size();i++) {%>
										<tr>
											<td class="lineup_center"><%=lanlist.get(0).getLan_date() %></td>
											<td class="lineup_center">어학시험</td>
											<td><%=lanlist.get(0).getLan_exam() %></td>
											<td><%=lanlist.get(0).getLan_kind() %></td>
											<td class="lineup_center"><%=lanlist.get(0).getLan_score()%>/<%lanlist.get(0).getLan_grade(); %>/<%=lanlist.get(0).getLan_pass() %></td>
										</tr>
										<% } %>

										<% for(int i=0; i< liclist.size();i++) {%>
										<tr>
											<td class="lineup_center"><%=liclist.get(0).getLic_date() %></td>
											<td class="lineup_center">자격증/면허증</td>
											<td><%=liclist.get(0).getLic_name() %></td>
											<td><%=liclist.get(0).getLic_publisher() %></td>
											<td class="lineup_center"><%=liclist.get(0).getLic_pass() %></td>
										</tr>
										<% } %>

										<% for(int i=0; i< awdlist.size();i++) {%>
										<tr>
											<td class="lineup_center"><%=awdlist.get(0).getAwd_date() %></td>
											<td class="lineup_center">수상내역/공모전</td>
											<td><%=awdlist.get(0).getAwd_name() %></td>
											<td><%=awdlist.get(0).getAwd_org() %></td>
											<td class="lineup_center">수상</td>
										</tr>
										<% } %>
									</tbody>
								</table>
							</div>
						</div>
						<div class="section_part">
							<div class="area_title">
								<h3 class="title">자기소개서</h3>
							</div>
							<div class="part_table">
								<div class="my_letter_view">
									<% if(dto.getResume_intro_title()==null || dto.getResume_intro_content()==null){
										
									} else {%>
									<p class="intit"><%=dto.getResume_intro_title() %></p>
									<div class="intxt">
										<%=dto.getResume_intro_content() %>
									</div>
									<% } %>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


<script type="text/javascript">
$( document ).ready(function() {

careerChk();

function careerChk() {
if ( calist == null || calist.isEmpty() ) {
	alert("callist null");
	document.getElementById('career_table').style.display='none';
	} else {
	alert("calist not null");
	document.getElementById('career_table').style.display='block';
	}
}

});
</script>

</body>
</html>
