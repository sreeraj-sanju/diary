$(document).on('change','#toggle-active', function () {
    var value = $(this).data('value');
    var path = $(this).data('path');
    
    $.ajax({
        type: "GET",
        url: path,
        data: {value:value},
        dataType: "json",
        success: function (response) {
            
                Swal.fire({
                    position: 'center',
                    icon: 'success',
                    title: 'The Process Completed Successfully',
                    showConfirmButton: false,
                    timer: 1000
                }).then(() => {
                    //window.location.reload();
                });
        }
    });
});
