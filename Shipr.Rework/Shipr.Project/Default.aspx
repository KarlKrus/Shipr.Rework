<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Shipr.Rework.Shipr.Project.Default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shipr</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/site.css" rel="stylesheet" />
    <script src="scripts/jquery-3.1.1.js" type="text/javascript"></script>
    <script src="scripts/bootstrap.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="pull-left">
                    <img alt="" src="images/name.png" height="50" width="150" class="img-responsive" />
                </div>
                <div class="pull-right">
                    <h1 style="text-align: center; font-family: 'Century Gothic';">
                        <a href="List.aspx" style="color: white">List</a>
                        &nbsp;&nbsp;&nbsp;
                        <a href="Setup.aspx" style="color: white">Setup</a>
                    </h1>
                </div>
            </div>
            <br />
            <br />
            <div class="row" style="text-align: center">
                <img alt="" src="images/logo.png" height="100" width="100" class="img-responsive center-block" />
                <h1 style="font-family: Comfortaa; color: white; font-size: 400%">Shipping never been this good.<br />
                </h1>
                <br />
                <%--<asp:LinkButton ID="lnkbtnSetup" runat="server" CssClass="btn btn-success" Font-Size="XX-Large">Continue</asp:LinkButton>--%>
                <a href="List.aspx" class="btn btn-outline-success" style="font-size: xx-large; font-family: 'Century Gothic'">Continue</a>
            </div>
        </div>
    </form>
</body>
</html>
