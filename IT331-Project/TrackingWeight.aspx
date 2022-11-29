
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrackingWeight.aspx.cs" Inherits="IT331_Project.WebForm2" %>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Track your weight</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style type="text/css">
        .auto-style1 {
            margin-right: 42px;
        }
    </style>
</head>


<body class="track">
    <form id="form1" runat="server">
    <!---------------------------------------------- Header----------------------------------------------- -->
        <header>

        <img src="logo.png" height="100" width="110" alt="logo">

        <nav>
            <ul>
                <li><a href="index.aspx">Sign out</a></li>
                <li><a href="HealthyMeals.aspx">Healthy Meals</a></li>
                <li><a href="AboutUs.aspx">About us</a></li>
            </ul>
        </nav>

    </header>

    <!---------------------------------------------- Content ---------------------------------------------- -->
    <div class="trackingBox">
        <p class="cardHeader">
            <h3>Your weight data:</h3>
        <p>&nbsp;</p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="username" Width="556px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                    <asp:BoundField DataField="weight" HeaderText="weight" SortExpression="weight" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
            <br>


        </p>
        <br>
        <br>
        <br>

        <p>
            <h3>Enter new record:</h3>
                <p>
                    <label style="margin-left: -65px;">
                        Current Weight:
							<input type="number" class="info" name="cweight" placeholder="Your Current weight"
                                required id="newWeight" runat="server">
                    </label>
                </p>
                <br>

            &nbsp;<asp:Button ID="Button1" class="send" runat="server" OnClick="recordButton_Click" Text="Click to enter" />
        </p>
    </div>

    <!---------------------------------------------- Footer----------------------------------------------- -->

    <footer class="track">
        <h6>&copy; Healthy Life | Designed by G-R-J</h6>
        <span class="logo">Logo made by <a href="https://www.designevo.com/" title="Free Online Logo Maker">DesignEvo free logo creator</a></span>
    </footer>
    </form>
</body>
</html>
