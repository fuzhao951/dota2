$(function(){
    $(".playbtn").click(function(){
        $(".power>video").css("display","block");
    });
    $(".herobtn>li").click(function(){
        $this=$(this);
        $(".insc").css("margin-left",`${-1920*($this.index())}px`);
        $this.addClass("transtop");
        $this.siblings().removeClass("transtop");
        console.log($this.index());
    });
    $(".herobtn>li").hover(function(){
        $this=$(this);
        $this.addClass("transtop");
    },function(){
        $this=$(this);
        $this.removeClass("transtop");
    })
})