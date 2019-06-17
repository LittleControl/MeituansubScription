var count = 1;
var wrap = document.getElementsByClassName('wrap')[0]
var time0 = setInterval(function(){
    var url = 'url(../src/img/bg_'+count+'.jpg)'
    wrap.style.backgroundImage = url
    count++
    if(count === 6){
        count = 1
    }
},1500)