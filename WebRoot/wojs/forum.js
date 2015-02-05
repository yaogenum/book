
function postToWb(){
var _t = encodeURI(document.title);
var _url = encodeURIComponent(document.location);
var _appkey = encodeURI("ce7fb946290e4109bdc9175108b6db3a");
var _pic = "";
var _site = encodeURIComponent("PHPChina");
var _from = 'discuz';
var _u = 'http://v.t.qq.com/share/share.php?url='+_url+'&appkey='+_appkey+'&site='+_site+'&pic='+_pic+'&title='+_t+'&from='+_from;
window.open( _u,'', 'width=700, height=680, top=0, left=0, toolbar=no, menubar=no, scrollbars=no, location=yes, resizable=no, status=no' );
}
function postToQzone(){
var _url = encodeURIComponent(document.location.href);
var _site = encodeURIComponent("PHPChina");
var _title = encodeURIComponent("关于THINKPHP的__ROOT__： 会替换成当前网站的地址（不含域名...");
var _pics = "";
var _from = 'discuz';
var _u = 'http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url='+_url+'&site='+_site+'&title='+_title+'&pics='+_pics+'&from='+_from;
window.open(_u);
}
function postToPengyou(){
var _url = encodeURIComponent(document.location.href);
var _site = encodeURIComponent("PHPChina");
var _title = encodeURIComponent("关于THINKPHP的__ROOT__： 会替换成当前网站的地址（不含域名...");
var _pics = "";
var _from = 'discuz';
var _u = 'http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?to=pengyou&url='+_url+'&site='+_site+'&title='+_title+'&pics='+_pics+'&from='+_from;
window.open(_u);
}
// JavaScript Document