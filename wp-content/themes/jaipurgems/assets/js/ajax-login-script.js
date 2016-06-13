jQuery(document).ready(function($) {

    // Show the login dialog box on click
    // $('a#show_login').on('click', function(e){
    //     $('body').prepend('<div class="login_overlay"></div>');
    //     $('form#login').fadeIn(500);
    //     $('div.login_overlay, form#login a.close').on('click', function(){
    //         $('div.login_overlay').remove();
    //         $('form#login').hide();
    //     });
    //     e.preventDefault();
    // });

    // Perform AJAX login on form submit
    $('.checkout_panel.step_1 form.login:not(.guest-form)').on('submit', function(e){
        e.preventDefault();
        console.log(ajax_login_object.loadingmessage);
        // $('form#login p.status').show().text(ajax_login_object.loadingmessage);
        $.ajax({
            type: 'POST',
            dataType: 'json',
            url: ajax_login_object.ajaxurl,
            data: { 
                'action': 'ajaxlogin', //calls wp_ajax_nopriv_ajaxlogin
                'username': $('.checkout_panel.step_1 form.login #username').val(), 
                'password': $('.checkout_panel.step_1 form.login #password').val(), 
                // 'security': $('form#login #security').val() 
            },
            success: function(data){
                // $('form#login p.status').text(data.message);

                if (data.loggedin == true){
                    // document.location.href = ajax_login_object.redirecturl;
                    // console.log(data);
                    $('#billing_first_name').val(data.user_first);
                    $('#billing_last_name').val(data.user_last);
                    $('#billing_phone').val(data.user_phone);
                    $('#billing_address_1').val(data.user_address);
                    $('.checkout_panel.step_1').removeClass('active');
                    $('.checkout_panel.step_2').addClass('active');
                }
            }
        });
        // e.preventDefault();
    });

});