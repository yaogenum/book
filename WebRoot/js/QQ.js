
(function(){
var p = {
url:location.href, /*获取URL，可加上来自分享到QQ标识，方便统计*/
desc:'', /*分享理由(风格应模拟用户对话),支持多分享语随机展现（使用|分隔）*/
title:'', /*分享标题(可选)*/
summary:'', /*分享摘要(可选)*/
pics:'', /*分享图片(可选)*/
flash: '', /*视频地址(可选)*/
site:'', /*分享来源(可选) 如：QQ分享*/
style:'101',
width:96,
height:30
};
var s = [];
for(var i in p){
s.push(i + '=' + encodeURIComponent(p[i]||''));
}
document.write(['<a class="qcShareQQDiv" style="position:absolute;left:800px;top:500px;" href="http://connect.qq.com/widget/shareqq/index.html?',s.join('&'),'" target="_blank">QQ好友，空间分享</a>'].join(''));
})();


(function(){
  var _w = 106 , _h = 58;
  var param = {
    url:location.href,
    type:'5',
    count:'1', /**是否显示分享数，1显示(可选)*/
    appkey:'', /**您申请的应用appkey,显示分享来源(可选)*/
    title:'', /**分享的文字内容(可选，默认为所在页面的title)*/
    pic:'', /**分享图片的路径(可选)*/
    ralateUid:'3236937180', /**关联用户的UID，分享微博会@该用户(可选)*/
	language:'zh_cn', /**设置语言，zh_cn|zh_tw(可选)*/
    rnd:new Date().valueOf()
  }
  var temp = [];
  for( var p in param ){
    temp.push(p + '=' + encodeURIComponent( param[p] || '' ) )
  }
  document.write('<iframe allowTransparency="true" frameborder="0" scrolling="no" src="http://hits.sinajs.cn/A1/weiboshare.html?' + temp.join('&') + '" width="'+ _w+'" height="'+_h+'"></iframe>')
})();










