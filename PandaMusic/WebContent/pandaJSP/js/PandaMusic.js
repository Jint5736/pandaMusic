
$(window).resize(function() { 
    winWidth = window.innerWidth;
    winHeight = window.innerHeight;
    
     if(winWidth <= 1220){
         $(".MyMusic-search").stop();
         $(".MyMusic-search input").stop();
         $(".MyMusic-search").animate({"width": "38px"})
         $(".MyMusic-search input").animate({"width": 0})
//       console.log(1)
     }else{
         $(".MyMusic-search").stop();
         $(".MyMusic-search input").stop();
         $(".MyMusic-search").animate({"width": "220px"})
         $(".MyMusic-search input").animate({"width":"174px"})
     }
     
     if(winHeight <= 880){
         $(".middle-contain").stop();
         $(".middle-contain").animate({"margin-top": "220px"}, 1000)
     }else{
         $(".middle-contain").stop();
         $(".middle-contain").animate({"margin-top": "350px"}, 1000)
     }
     
     
});

$(document).ready(function(){
    $(".MyMusic-search").mouseenter(function(){
        winWidth = window.innerWidth;
        if(winWidth <= 1220){
            $(".MyMusic-search").stop();
            $(".MyMusic-search input").stop();
            $(".MyMusic-search").animate({"width": "220px"})
            $(".MyMusic-search input").animate({"width":"174px"})
        }
    }).mouseleave(function(){
        winWidth = window.innerWidth;
        if(winWidth <= 1220){
            $(".MyMusic-search").stop();
            $(".MyMusic-search input").stop();
            $(".MyMusic-search").animate({"width": "38px"})
            $(".MyMusic-search input").animate({"width": 0})
        }
    })
    
    $(".bottom-download-item").mouseover(function(){
        $(this).find("i").css("background-position-y", "-49px")
    }).mouseout(function(){
        $(this).find("i").css("background-position-y", 0)
    })
    
    $(".bottom-product-item").mouseover(function(){
        $(this).find("i").css("background-position-y", "-49px")
    }).mouseout(function(){
        $(this).find("i").css("background-position-y", 0)
    })

})



