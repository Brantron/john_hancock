//= require signature_pad
$( document ).ready(function() {
  if(document.getElementById("JohnHancock-canvas")){
    var canvas = document.getElementById("JohnHancock-canvas"),
        hidden_field = document.getElementById("JohnHancock-hidden"),
        parent_form = $(canvas).closest("form"),
        signaturePad;

    signaturePad = new SignaturePad(canvas);

    $(parent_form).submit(function(e) {
      $(hidden_field).val(signaturePad.toDataURL());
    });
  }
})
