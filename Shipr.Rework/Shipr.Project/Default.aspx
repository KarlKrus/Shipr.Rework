<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Shipr.Rework.Shipr.Project.Default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/site.css" rel="stylesheet" />
    <script src="scripts/jquery-3.1.1.js" type="text/javascript"></script>
    <script src="scripts/bootstrap.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <br />
            <div class="row">
                <div class="pull-left">
                    <h1 style="font-family: Comfortaa">
                        <img alt="" src="images/logo.png" height="50" width="50" />
                        Shipr</h1>
                </div>
                <div class="pull-right">
                    <h2 style="text-align: center; font-family: Comfortaa">
                        <asp:LinkButton ID="LinkButton1" runat="server">List</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server">Setup</asp:LinkButton>
                    </h2>
                </div>
            </div>
            <div class="row">
                <h3 style="text-align: center; font-family: 'Century Gothic'"><i>Kunware quotes to na importante at may silbi hahaha</i> - Carl</h3>

            </div>
        </div>
        <img alt="" src="images/fb.png" height="350" width="" class="img-responsive" />
    </form>
</body>
</html>
