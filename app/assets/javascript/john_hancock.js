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

    function resizeCanvas() {
      var ratio =  Math.max(window.devicePixelRatio || 1, 1);
      canvas.width = canvas.offsetWidth * ratio;
      canvas.height = canvas.offsetHeight * ratio;
      canvas.getContext("2d").scale(ratio, ratio);
      signaturePad.clear();
    }

    window.addEventListener("resize", resizeCanvas);
    resizeCanvas();
  }
})
