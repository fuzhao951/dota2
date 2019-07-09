

(function(){
    var lunbo=document.getElementById("lunbo");
    var width=document.body.querySelector(".Carousel");
    var Carouseldo=document.body.querySelector("#Carouseldo");
    var alis=document.body.querySelectorAll("ul#Carouseldo>li>a");
    var arrow1=document.querySelector(".arrow>a:first-child");
    var arrow2=document.querySelector(".arrow>a:last-child");
    var ntimer;
    var timer;

    function stop(){
        return new Promise(function(open){
            var left=width.offsetLeft;
            timer=setTimeout(function(){
                open();
            },5000);
        })
    }
    function change(){
        return new Promise(function(open){
            width.style.transition="none";
            var left=parseInt(Math.round(width.offsetLeft/document.body.offsetWidth)*100);
            if(left<=-400){              
                lunbo.className="ali1";
                Carouseldo.className="lb1";
            }
            var left=parseInt(Math.round(width.offsetLeft/document.body.offsetWidth)*100);
            console.log(left);
            var i=0;
            if(left==-400){              
                lunbo.className="ali1";
            }
            ntimer=setInterval(function(){                          
                i+=2;                          
                left-=2;
                width.style.left=left+"%";
                if(left<0&&left>=-100){
                    Carouseldo.className="lb2"; 
                }
                else if(left<-100&&left>=-200){
                    Carouseldo.className="lb3";
                }
                else if(left<-200&&left>=-300){
                    Carouseldo.className="lb4";
                }
                else if(left<-300&&left>=-400){
                    Carouseldo.className="lb1";
                }
                else {
                    Carouseldo.className="lb5";
                }
                
                if(i==100){                  
                    if(left<=-400){
                        width.style.left="0px";
                    }
                    open();
                    stop().then(change);
                    clearInterval(ntimer);
                }               
            },10)
        })
    }
    for(var ali of alis){     
        ali.style.cursor="pointer";
        ali.onclick=function(){
            width.style.transition="left 500ms ease-out";
            width.style.left="";
            var ali=this;      
            clearInterval(ntimer);
            clearTimeout(timer);
            if (ali==alis[0]){              
                lunbo.className="ali1"; 
                Carouseldo.className="lb1"
            }
            else if(ali==alis[1]){
                lunbo.className="ali2";  
                Carouseldo.className="lb2"           
            }
            else if(ali==alis[2]){
                lunbo.className="ali3";   
                Carouseldo.className="lb3"     
            }
            else if(ali==alis[3]){
                lunbo.className="ali4"; 
                Carouseldo.className="lb4"        
            }
            stop().then(change);
        }
    }
   var goleft= arrow1.onclick=function(){ 
        arrow1.onclick="";    
        clearTimeout(timer);
        clearInterval(ntimer);
        width.style.transition="none";
       // var left=width.offsetLeft;
       var left=parseInt(Math.round(width.offsetLeft/document.body.offsetWidth)*100);
       console.log(left);
       if(left==0){      
           lunbo.className="ali5";
        }
        left=parseInt(Math.round(width.offsetLeft/document.body.offsetWidth)*100);
        width.style.left="";
        width.style.transition="left 500ms ease-out";
        if(left<=0&&left>-100){
            lunbo.className="ali4";
            Carouseldo.className="lb4";    
        }
        else if(left<=-100&&left>-200){
            lunbo.className="ali1";
            Carouseldo.className="lb1";
        }
        else if(left<=-200&&left>-300){
            lunbo.className="ali2";
            Carouseldo.className="lb2";
        }
        else if(left<=-300&&left>-400){
            lunbo.className="ali3";
            Carouseldo.className="lb3";
        }
        else if(left<=-400){
            lunbo.className="ali4";
            Carouseldo.className="lb4";
        }
        setTimeout(function(){
            arrow1.onclick=goleft;
        },500);
        stop().then(change);
        // else {
        //     lunbo.className="ali1";
        //     Carouseldo.className="lb1";
        // }
    }
    var goright=arrow2.onclick=function(){  
        arrow2.onclick="";
        clearTimeout(timer);
        clearInterval(ntimer);
        width.style.transition="none";
        var left=parseInt(Math.round(width.offsetLeft/document.body.offsetWidth)*100);
        console.log(left);
        if(left<=-400){              
            lunbo.className="ali1";
            Carouseldo.className="lb1";
        }
        left=parseInt(Math.round(width.offsetLeft/document.body.offsetWidth)*100);
        width.style.left="";
        width.style.transition="left 500ms ease-out";
        if(left<=0&&left>-100){
            lunbo.className="ali2";
            Carouseldo.className="lb2";    
        }
        else if(left<=-100&&left>-200){
            lunbo.className="ali3";
            Carouseldo.className="lb3";
        }
        else if(left<=-200&&left>-300){
            lunbo.className="ali4";
            Carouseldo.className="lb4";
        }
        else if(left<=-300&&left>-400){
            lunbo.className="ali5";
            Carouseldo.className="lb1";
        }
        setTimeout(function(){
            arrow2.onclick=goright;
        },600);
        stop().then(change);
        // else {
        //     lunbo.className="ali1";
        //     Carouseldo.className="lb1";
        // }
    }
    stop().then(change);
})();
