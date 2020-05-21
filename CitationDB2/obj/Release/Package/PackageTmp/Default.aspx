<%@ Page Title="CitationDB Log In" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CitationDB2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

     <head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
       <!-- Bootstrap core CSS -->
    <link href="https://v4-alpha.getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet"/>

    <link href="~/CSS/login.css" rel="stylesheet" type="text/css" media="screen" runat="server" />

    <!-- Custom styles for this template -->
    <link href="https://v4-alpha.getbootstrap.com/examples/signin/signin.css" rel="stylesheet"/>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="https://v4-alpha.getbootstrap.com/assets/js/ie10-viewport-bug-workaround.js"></script>
     <link rel="stylesheet" href="/CSS/Style.css" type="text/css"/>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="/animate.min.css" rel="stylesheet" type="text/css" runat="server"/>
    
     </head>
    
<body>
    <script>
  window.fbAsyncInit = function() {
    FB.init({
        appId: '{1477133745770003}',
      cookie     : true,
      xfbml      : true,
      version    : '{v5.0}'
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
</script>

    <header>
       <h5></h5>
    </header>
    <%--Main Page Contents --%>
    
      <div class="col-lg 6 col-md-6">
          <div class="animated fadeIn">
   <div class="container1" >
       <div class="card-transparent" style="background-color: rgba(245, 245, 245, 1)">
      <div class="card-body">
      <form class="form-signin" runat="server">
        <h2 class="form-signin-heading text-center">CitationDB</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="text" id="TextBox1" name="TextBox1" class="form-control" placeholder="Username" required="" autofocus=""/>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="TextBox2" name="TextBox2" class="form-control" placeholder="Password" required=""/>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"/> Remember me
          </label>
        </div>
        <asp:Button ID="Button1" style="float:right" CssClass="btn btn-primary" runat="server" Font-Size="Medium" OnClick="Button1_Click" Text="Log In" />
          
        <h5 id="accountlabel">Don't have an account? Register <a href="register1.aspx">Here</a>!</h5>
        <asp:Label ID="Label4" runat="server" Font-Size="X-Large"></asp:Label>
      </form>
      </div>
       </div>
        </div>
        </div>
        </div>
        
    
    
        <footer>
            <h5>Photo by <a href="https://unsplash.com/@syinq?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Susan Yin</a> on <a href="https://unsplash.com/s/photos/education?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a></h5>
        </footer>
        <%--</div>--%>
    <script src="animation.js"></script>
</body>
</html>
