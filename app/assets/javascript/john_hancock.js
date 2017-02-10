//= require jquery
//= require signature_pad
$( document ).ready(function() {
  if(document.getElementById("JohnHancock-canvas")){
    signaturePad = $("#JohnHancock-canvas")
    hidden_field = document.getElementById("JohnHancock-hidden"),
    parent_form = signaturePad.closest("form"),

    signaturePad.jSignature()

    $(parent_form).submit(function(e) {
      $(hidden_field).val(signaturePad.jSignature("getData") );
    });
  }
})
