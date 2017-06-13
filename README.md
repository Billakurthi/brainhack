https://github.com/Giphy/GiphyAPI

doc for using GiphyAPI


youtube tutorial to integrate api: https://www.youtube.com/watch?v=IMdVAFV9paU


implemented giphy : https://codepen.io/blaketarter/pen/wBgWbV?editors=0010#0


source for building navigation using repeaters:
https://msdn.microsoft.com/en-us/library/aa581781.aspx



check whatsapp installed 

<a id="share_whatsapp" onclick="open_whatsapp()">Share with Whatsapp</a>
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js?ver=4.1' type='text/javascript'></script>
<script>
  function open_whatsapp(){
    $.ajax({
      type: 'HEAD',
      url: 'whatsapp://send?text=text=Hello%20World!',
      success: function() {
        window.location='whatsapp://send?text=text=Hello%20World!';   
      },
      error: function() {
        alert("Whatspp not installed");
      }
    });     
  }
</script>