<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ShipMethodSelector.ascx.cs" Inherits="Shipr.Rework.Shipr.Project.controls.ShipMethodSelector" %>

<div class="panel panel-default">
    <div class="panel-heading">
        <h5>
            <asp:Literal ID="ltrlTitle" runat="server"></asp:Literal></h5>
    </div>
    <div class="panel-body">
        <asp:Label ID="lblShipMethod" runat="server" CssClass="control-label">Shipping Method:</asp:Label><label style="color:red">*</label><br />
        <asp:DropDownList ID="ddlShipMethod" runat="server" CssClass="form-control"></asp:DropDownList>
    </div>
</div>
