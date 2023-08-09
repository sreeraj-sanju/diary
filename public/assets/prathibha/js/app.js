$(window).ready(function(){
    $(".boton1").wrapInner('<div class=boton1text></div>');
        
        $(".boton1text").clone().appendTo( $(".boton1") );
        
        $(".boton1").append('<span class="twist"></span><span class="twist"></span><span class="twist"></span><span class="twist"></span>');
        
        $(".boton2").wrapInner('<div class=boton2text></div>');
        
        $(".boton2text").clone().appendTo( $(".boton2") );
        
        $(".boton2").append('<span class="twist"></span><span class="twist"></span><span class="twist"></span><span class="twist"></span>');
        

        $(".twist").css("width", "25%").css("width", "+=3px");
    });

    $(document).on('click','.imageBtn', function () {
        var path = $(this).data('path');
        var value = $(this).data('value');
        var item = $(this).data('item');
        $.ajax({
            type: "POST",
            url: path,
            data: {'id':value, 'item':item},
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
                if(item == 'image'){
                $("#imageModal").modal('show');
                $("#quizImagesrc").attr('src', response);
                }else if(item == 'audio'){
                    $('#audioModal').modal('show');
                    $("#quizaudiosrc").attr('src', response);
                }else if(item == 'video'){
                    $('#videoModal').modal('show');
                    $('#quizvideosrc').attr('src', response);
                }

            }
        });
        // $("#quizImagesrc").attr('src', path);
    });