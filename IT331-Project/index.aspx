
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="IT331_Project.WebForm1" %>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Healthy Life</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>

<body class="home">

    <!---------------------------------------------- Header----------------------------------------------- -->
    <header>

        <img src="logo.png" height="100" width="110" alt="logo">

        <nav>
            <ul>
                <li><a href="#">Sign in</a></li>
                <li><a href="HealthyMeals.aspx">Healthy Meals</a></li>
                <li><a href="AboutUs.aspx">About us</a></li>
            </ul>
        </nav>

    </header>

    <!---------------------------------------------- Content ---------------------------------------------- -->

    <form method="post" action="#" runat="server">

        <div class="box">

            <h2>Already have account?</h2>
            <h3>Sign in</h3>
            <br>

            <p>
                <label>Username:  </label>

                <input class="info" name="username" type="text" placeholder="Your Username" id="oldUsername" runat="server">
            </p>

            <br>

            <p>
                <label>Password:  </label>

                <input class="info" name="password" type="text" placeholder="Your Password" id="oldPassword" runat="server">
            </p>

            <br>

            <asp:Button ID="Button1" class="send2" runat="server" Text="Click to Go" BorderStyle="Solid" OnClick="oldButton_Click" />

        </div>

        <div runat="server" class="box" style="margin-left: 680px; margin-top: -360px;">


            <h2>New here?</h2>
            <h3>Sign up</h3>

            <p>
                <label class="emailLabel">
                    Email: 
                
                </label>

                <input class="info" name="newEmail" type="text" placeholder="Your Email" id="newEmail" runat="server">
            </p>

            <br>

            <p id="first">
                <label>Username:  </label>

                <input class="info" name="newUsername" type="text" placeholder="Your Username" id="newUsername" runat="server">
            </p>

            <br>


            <p>
                <label>Password:  </label>

                <input class="info" name="newPassword" type="text" placeholder="Your Password" id="newPassword" runat="server">
            </p>

            <br>


            <asp:Button ID="Button2" class="send" runat="server" Text="Click to Go" BorderStyle="Solid" OnClick="NewButton_Click" />

        </div>

    </form>
    <!---------------------------------------------- Footer----------------------------------------------- -->
    <footer>
        <h6>&copy; Healthy Life | Designed by G-R-J
        </h6>
        <span class="logo">Logo made by <a href="https://www.designevo.com/" title="Free Online Logo Maker">DesignEvo free logo creator</a></span>
    </footer>

</body>
</html>
