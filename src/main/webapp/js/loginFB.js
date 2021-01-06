
FB.login(function(response) {
}, {
    scope: 'email', 
    return_scopes: true
});


  window.fbAsyncInit = function() {
    FB.init({
      appId      : '{4075264515835811}',
      cookie     : true,
      xfbml      : true,
      version    : '{v8.0}'
    });
      
    FB.AppEvents.logPageView();   
      
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));




FB.getLoginStatus(function(response) {
  if (response.status === 'connected') {
    console.log(response.authResponse.accessToken);
  }
});




/*Esto devolvera una matriz con
 * el id":"101540562372987329832845483",
  "name":"Bob Smith" del usuario*/

FB.api('/me', function(response) {
    console.log(JSON.stringify(response));
});
