<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PromoName.ascx.cs" Inherits="Shipr.Rework.Shipr.Project.controls.PromoName" %>

<div class="panel panel-default">
    <div class="panel-heading">
        <h5><asp:Literal ID="ltrlTitle" runat="server"></asp:Literal></h5>
    </div>
    <div class="panel-body">
        <asp:PlaceHolder ID="plchldrPromoName" runat="server" Visible="true">
            <asp:Label ID="lblPromoName" runat="server" CssClass="control-label">Promo Name: </asp:Label>*
            <asp:TextBox ID="txtbxPromoName" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
        </asp:PlaceHolder>
    </div>
</div>
