<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PromoType.ascx.cs" Inherits="Shipr.Rework.Shipr.Project.controls.PromoType" %>
<div class="panel panel-default">
    <div class="panel-heading">
        <h5>
            <asp:Literal ID="ltrlTitle" runat="server"></asp:Literal></h5>
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-sm-6"></div>
            <div class="col-sm-6"></div>
        </div>
        <asp:Label ID="lblPromoType" runat="server" CssClass="control-label">Promo Type:</asp:Label><label style="color: red">*</label>
        <div class="row">
            <div class="col-sm-6">
                <asp:DropDownList ID="ddlPromoType" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="col-sm-6">
                <asp:CheckBox ID="chkExactPromo" runat="server" Text="Exact Promo Full Order" CssClass="checkbox checkbox-info" />
            </div>
        </div>
    </div>
</div>
