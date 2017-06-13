https://github.com/Giphy/GiphyAPI

doc for using GiphyAPI


youtube tutorial to integrate api: https://www.youtube.com/watch?v=IMdVAFV9paU


implemented giphy : https://codepen.io/blaketarter/pen/wBgWbV?editors=0010#0


source for building navigation using repeaters:
https://msdn.microsoft.com/en-us/library/aa581781.aspx



check whatsapp installed 

<%--whatsapp share code--%>
        <a id="share_whatsapp" onclick="open_whatsapp()">Share with Whatsapp</a>

        <script>
            function open_whatsapp() {
                $.ajax({
                    type: 'POST',
                    url: 'whatsapp://send?text=text=Hello%20World!',
                    success: function () {
                        window.location.href = URL;
                    },
                    error: function () {
                        alert("Whatspp not installed");
                    }
                });
            }
        </script>

        <%--whatsapp share code--%>
