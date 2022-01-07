$(document).ready(function() {
    var signaturePadCanvas = $('#signature-pad')[0]
    signaturePadCanvas.height = $('#padArea').height()
    signaturePadCanvas.width = $('#padArea').width()
    var signaturePad = new SignaturePad(signaturePadCanvas, {
        backgroundColor: 'rgba(220, 220, 220, 255)',
        penColor: 'rgb(0, 0, 0)'
    });

    $('#save').on('click',function() {
        var data = signaturePad.toDataURL('image/png');
        $('#exportData').val(data)
        $('#restoreSign').attr('src', data)
    })
    
    $('#clear').on('click',function() {
        signaturePad.clear()
        $('#exportData').val(null)
        $('#restoreSign').attr('src', null)
    })
});


