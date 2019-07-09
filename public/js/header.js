$(function(){
    $.ajax({
        url:"header.html",
        type:"get",
        success: function(result) {
            $(result).replaceAll("header");
            $(`<link rel="stylesheet" href="css/header.css">`).appendTo("head");
            $(`<script src="js/login.js"></script>`).appendTo("body");
        }
    })
})