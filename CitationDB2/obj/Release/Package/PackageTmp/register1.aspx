<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register1.aspx.cs" Inherits="CitationDB2.register1" %>

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
    <div class="col-lg 6 col-md-6">
        <div class="animated fadeIn">
            <div class="container1">
                <div class="card-transparent" style="background-color: rgba(245, 245, 245, 1)">
                    <div class="card-body">
                        <form class="form-signin" runat="server">
                            <h2 class="form-signin-heading text-center">Register!</h2>
                            <label for="inputEmail" class="sr-only">Email address</label>
                            <input type="text" id="fName" name="fName" class="form-control" placeholder="First Name" required="" autofocus="" />
                            <label for="inputEmail" class="sr-only">Email address</label>
                            <input type="text" id="lName" name="lName" class="form-control" placeholder="Last Name" required="" autofocus="" />
                            <label for="inputEmail" class="sr-only">Email address</label>
                            <input type="text" id="email" name="email" class="form-control" placeholder="E-mail" required="" autofocus="" />
                            <label for="inputEmail" class="sr-only">Email address</label>
                            <input type="text" id="username" name="username" class="form-control" placeholder="Username" required="" autofocus="" />
                            <label for="inputPassword" class="sr-only">Password</label>
                            <input type="password" id="password" name="password" class="form-control" placeholder="Password" required="" />
                            <label for="inputPassword" class="sr-only">Password</label>
                            <input type="password" id="passwordcheck" name="passwordcheck" class="form-control" placeholder="Re-enter Password" required="" />
                            <div class="checkbox">
                            </div>
                            <asp:Button ID="Button1" Style="float: right" CssClass="btn btn-primary" runat="server" Font-Size="Medium" OnClick="Button1_Click" Text="Register" />

                           
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
</body>
</html>
