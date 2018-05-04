// Custom Scripts for Primal Template //

jQuery(function($) {


/*----- Preloader ----- */

    $(window).load(function() {
    	   $('#qq').popover({
    	        trigger : 'hover',//鼠标以上时触发弹出提示框
    	        html:true,//开启html 为true的话，data-content里就能放html代码了
    	        content:"<img src='wechat.jpg'>"
    	    });
    	    $('#weixin').popover({
    	        trigger : 'hover',
    	        html:true,
    	        content:"<img src='wechat.jpg'>"
    	    });
    });

});


