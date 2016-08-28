/*! HTML5 Shiv vpre3.6 | @afarkas @jdalton @jon_neal @rem | MIT/GPL2 Licensed
  Uncompressed source: https://github.com/aFarkas/html5shiv  */
(function(a,b){function h(a,b){var c=a.createElement("p"),d=a.getElementsByTagName("head")[0]||a.documentElement;return c.innerHTML="x<style>"+b+"</style>",d.insertBefore(c.lastChild,d.firstChild)}function i(){var a=l.elements;return typeof a=="string"?a.split(" "):a}function j(a){var b={},c=a.createElement,f=a.createDocumentFragment,g=f();a.createElement=function(a){if(!l.shivMethods)return c(a);var f;return b[a]?f=b[a].cloneNode():e.test(a)?f=(b[a]=c(a)).cloneNode():f=c(a),f.canHaveChildren&&!d.test(a)?g.appendChild(f):f},a.createDocumentFragment=Function("h,f","return function(){var n=f.cloneNode(),c=n.createElement;h.shivMethods&&("+i().join().replace(/\w+/g,function(a){return c(a),g.createElement(a),'c("'+a+'")'})+");return n}")(l,g)}function k(a){var b;return a.documentShived?a:(l.shivCSS&&!f&&(b=!!h(a,"article,aside,details,figcaption,figure,footer,header,hgroup,nav,section{display:block}audio{display:none}canvas,video{display:inline-block;*display:inline;*zoom:1}[hidden]{display:none}audio[controls]{display:inline-block;*display:inline;*zoom:1}mark{background:#FF0;color:#000}")),g||(b=!j(a)),b&&(a.documentShived=b),a)}var c=a.html5||{},d=/^<|^(?:button|form|map|select|textarea|object|iframe|option|optgroup)$/i,e=/^<|^(?:a|b|button|code|div|fieldset|form|h1|h2|h3|h4|h5|h6|i|iframe|img|input|label|li|link|ol|option|p|param|q|script|select|span|strong|style|table|tbody|td|textarea|tfoot|th|thead|tr|ul)$/i,f,g;(function(){var c=b.createElement("a");c.innerHTML="<xyz></xyz>",f="hidden"in c,f&&typeof injectElementWithStyles=="function"&&injectElementWithStyles("#modernizr{}",function(b){b.hidden=!0,f=(a.getComputedStyle?getComputedStyle(b,null):b.currentStyle).display=="none"}),g=c.childNodes.length==1||function(){try{b.createElement("a")}catch(a){return!0}var c=b.createDocumentFragment();return typeof c.cloneNode=="undefined"||typeof c.createDocumentFragment=="undefined"||typeof c.createElement=="undefined"}()})();var l={elements:c.elements||"abbr article aside audio bdi canvas data datalist details figcaption figure footer header hgroup mark meter nav output progress section summary time video",shivCSS:c.shivCSS!==!1,shivMethods:c.shivMethods!==!1,type:"default",shivDocument:k};a.html5=l,k(b)})(this,document)

$(function() { 
var sWidth = $("#focus").width(); //获取焦点图的宽度（显示面积） 
var len = $("#focus ul li").length; //获取焦点图个数 
var index = 0; 
var picTimer; 

//以下代码添加数字按钮和按钮后的半透明条，还有上一页、下一页两个按钮 
var btn = "<div class='btnBg'></div><div class='btn'>"; 
for(var i=0; i < len; i++) { 
btn += "<span></span>"; 
} 
btn += "</div><div class='preNext pre'></div><div class='preNext next'></div>"; 
$("#focus").append(btn); 
$("#focus .btnBg").css("opacity",0.5); 

//为小按钮添加鼠标滑入事件，以显示相应的内容 
$("#focus .btn span").css("opacity",0.4).mouseenter(function() { 
index = $("#focus .btn span").index(this); 
showPics(index); 
}).eq(0).trigger("mouseenter"); 

//上一页、下一页按钮透明度处理 
$("#focus .preNext").css("opacity",0.2).hover(function() { 
$(this).stop(true,false).animate({"opacity":"0.5"},300); 
},function() { 
$(this).stop(true,false).animate({"opacity":"0.2"},300); 
}); 

//上一页按钮 
$("#focus .pre").click(function() { 
index -= 1; 
if(index == -1) {index = len - 1;} 
showPics(index); 
}); 

//下一页按钮 
$("#focus .next").click(function() { 
index += 1; 
if(index == len) {index = 0;} 
showPics(index); 
}); 

//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度 
$("#focus ul").css("width",sWidth * (len)); 

//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放 
$("#focus").hover(function() { 
clearInterval(picTimer); 
},function() { 
picTimer = setInterval(function() { 
showPics(index); 
index++; 
if(index == len) {index = 0;} 
},4000); //此4000代表自动播放的间隔，单位：毫秒 
}).trigger("mouseleave"); 

//显示图片函数，根据接收的index值显示相应的内容 
function showPics(index) { //普通切换 
var nowLeft = -index*sWidth; //根据index值计算ul元素的left值 
$("#focus ul").stop(true,false).animate({"left":nowLeft},300); //通过animate()调整ul元素滚动到计算出的position 
//$("#focus .btn span").removeClass("on").eq(index).addClass("on"); //为当前的按钮切换到选中的效果 
$("#focus .btn span").stop(true,false).animate({"opacity":"0.4"},300).eq(index).stop(true,false).animate({"opacity":"1"},300); //为当前的按钮切换到选中的效果 
} 
});	