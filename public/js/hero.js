$(function(){
    $.ajax({
        url:"http://localhost:8080/hero/heroname",
        type:"get",
        success:function(result){
            var str=`<option value="所有">所有</option>`;
            for(var name of result){
                str+=`<option value="${name.hcname}">${name.hcname}</option>`;
            }
            $(str).appendTo("#heroname");

        }
    })
    $.ajax({
        url:"http://localhost:8080/hero/herol",
        type:"get",
        async: false, 
        success: function(result) {
            var str="";
            for(var hero of result){
               str+=`<li class="heroimg"><a href="#"><img src="${hero.spic}"><img src="${hero.bpic}" class="herohover d-no" alt="" data-name="${hero.hcname}" data-roles="${hero.roles}" data-astyle="${hero.astyle}"></a></li>`;
               //    $(this).mouseleave(function(){
                   //        $(".heroimg>img.herohover").addClass("d-no")
                   //    })
                }
                $(str).replaceAll("#strl");
        // $(".heroimg").mouseover(function(){ 
        //     var $this=$(this).children().children("img:nth-child(2)");
        //     var $img1=$(this).children().children("img:nth-child(1)");
        //     $this.removeClass("d-no");
        //     $("#hero_name").html( $img1.attr("data-name"));
        //     $("#hero_roles").html(`<span>${$img1.attr("data-astyle")}</span><span> - ${$img1.attr("data-roles")}</span>`);
        // })
        // $(".heroimg").mouseout(function(){
        //     var $this=$(this).children().children("img:nth-child(2)");
        //     $this.addClass("d-no");
        // })

        }
    });

    $.ajax({
        url:"http://localhost:8080/hero/herom",
        type:"get",
        async: false,
        success: function(result) {
            var str="";
            for(var hero of result){
               str+=`<li class="heroimg"><a href="#"><img src="${hero.spic}"><img src="${hero.bpic}" class="herohover d-no" alt="" data-name="${hero.hcname}" data-roles="${hero.roles}" data-astyle="${hero.astyle}"></a></li>`;
               //    $(this).mouseleave(function(){
                   //        $(".heroimg>img.herohover").addClass("d-no")
                   //    })
                }
                 $(str).replaceAll("#str2");
            }
        });
        
    $.ajax({
        url:"http://localhost:8080/hero/heroz",
        type:"get",

        async: false,
        success: function(result) {
            var str="";
            for(var hero of result){
                str+=`<li class="heroimg"><a href="#"><img src="${hero.spic}"><img src="${hero.bpic}" class="herohover d-no" alt="" data-name="${hero.hcname}" data-roles="${hero.roles}" data-astyle="${hero.astyle}"></a></li>`;
                //    $(this).mouseleave(function(){
                    //        $(".heroimg>img.herohover").addClass("d-no")
                    //    })
                }
         $(str).replaceAll("#str3");
            }
        })
    $.ajax({
        url:"http://localhost:8080/hero/herolb",
        type:"get",
        async: false,
        success: function(result) {
            var str="";
            for(var hero of result){
                str+=`<li class="heroimg"><a href="#"><img src="${hero.spic}"><img src="${hero.bpic}" class="herohover d-no" alt=""  data-name="${hero.hcname}" data-roles="${hero.roles}" data-astyle="${hero.astyle}"></a></li>`;
                //    $(this).mouseleave(function(){
                    //        $(".heroimg>img.herohover").addClass("d-no")
                    //    })
                }
            $(str).replaceAll("#str4");
            }
        })
    $.ajax({
        url:"http://localhost:8080/hero/heromb",
        type:"get",
        async: false,
        success: function(result) {
            var str="";
            for(var hero of result){
                str+=`<li class="heroimg"><a href="#"><img src="${hero.spic}"><img src="${hero.bpic}" class="herohover d-no" alt=""  data-name="${hero.hcname}" data-roles="${hero.roles}" data-astyle="${hero.astyle}"></a></li>`;
                //    $(this).mouseleave(function(){
                    //        $(".heroimg>img.herohover").addClass("d-no")
                    //    })
                }
            $(str).replaceAll("#str5");
            }
        })
    $.ajax({
        url:"http://localhost:8080/hero/herozb",
        type:"get",
        async: false,
        success: function(result) {
            var str="";
            for(var hero of result){
                str+=`<li class="heroimg"><a href="#"><img src="${hero.spic}" ><img src="${hero.bpic}" class="herohover d-no" alt="" data-name="${hero.hcname}" data-roles="${hero.roles}" data-astyle="${hero.astyle}"></div></a></li>`;
                //    $(this).mouseleave(function(){
                    //        $(".heroimg>img.herohover").addClass("d-no")
                    //    })
                }
            $(str).replaceAll("#str6");
        $(".heroimg").mouseenter(function(){ 
            var $this=$(this).children().children("img:nth-child(2)");
            var $img1=$(this).children().children("img:nth-child(1)");
            $this.removeClass("d-no");
            if(!$img1.hasClass("gray")&&!$img1.hasClass("dang")&&!$img1.hasClass("hui")){
            $("#hero_name").html( $this.attr("data-name"));
            $("#hero_roles").html(`<span>${$this.attr("data-astyle")}</span><span> - ${$this.attr("data-roles")}</span>`);
            }
        })
        $(".heroimg").mouseleave(function(){
            var $this=$(this).children().children("img:nth-child(2)");
            $this.addClass("d-no");
        })

        }
    });
    $("#rolessel").change(function(){
        var $this=$(this);
        var reg=new RegExp(`${$this.val()}`);
        var $img=$(".heroimg").children().children("img:nth-child(2)");
        for (var i=0;i<$img.length;i++){
            $pic=$($img[i]);
            
            if($this.val()=="所有"||$this.val()=="按定位"){
                $pic.prev().removeClass("gray");
                $pic.removeClass("g-no");
              
                
            }
            else if(reg.test(`${$pic.attr("data-roles")}`)){
                $pic.prev().removeClass("gray");
                $pic.removeClass("g-no");          
            }
            else{
                $pic.prev().addClass("gray");
                $pic.addClass("g-no");  
            }
        }
    })
    $("#attack").change(function(){
        var $this=$(this);
        var reg=new RegExp(`${$this.val()}`);
        var $img=$(".heroimg").children().children("img:nth-child(2)");
        console.log($this.val())
        for (var i=0;i<$img.length;i++){
            $pic=$($img[i]);
            
            if($this.val()=="所有"||$this.val()=="按攻击类型"){
                $pic.prev().removeClass("dang");
                $pic.removeClass("a-no");
              
                
            }
            else if(reg.test(`${$pic.attr("data-astyle")}`)){
                $pic.prev().removeClass("dang");
                $pic.removeClass("a-no");          
            }
            else{
                $pic.prev().addClass("dang");
                $pic.addClass("a-no");  
            }
        }
    })
    $("#heroname").change(function(){
        var $this=$(this);
        var reg=new RegExp(`${$this.val()}`);
        var $img=$(".heroimg").children().children("img:nth-child(2)");
        console.log($this.val())
        for (var i=0;i<$img.length;i++){
            $pic=$($img[i]);
            
            if($this.val()=="所有"||$this.val()=="英雄名称"){
                $pic.prev().removeClass("hui");
                $pic.removeClass("h-no");
            }
            else if(reg.test(`${$pic.attr("data-name")}`)){
                $pic.prev().removeClass("hui");
                $pic.removeClass("h-no");          
            }
            else{
                $pic.prev().addClass("hui");
                $pic.addClass("h-no");  
            }
        }
    })
})