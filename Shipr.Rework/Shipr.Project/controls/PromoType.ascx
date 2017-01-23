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
        <hr />
        <asp:Panel ID="pnlOrderLevel" runat="server">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Label ID="lblDollarMin" runat="server" Text="Label">Orders From:</asp:Label><label style="color: red">*</label>
                    <div class="input-group">
                        <span class="input-group-addon" id="basic-addon1">$</span>
                        <asp:TextBox ID="txtDollarMin" MaxLength="8" runat="server" CssClass="form-control" aria-describedby="basic-addon1">0</asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-6">
                    <asp:Label ID="lblDollarMax" runat="server" Text="Label">To:</asp:Label><label style="color: red">*</label>
                    <div class="input-group">
                        <span class="input-group-addon" id="basic-addon2">$</span>
                        <asp:TextBox ID="txtDollarMax" MaxLength="8" runat="server" CssClass="form-control" aria-describedby="basic-addon2">50000</asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <asp:Label ID="lblWeightMin" runat="server" Text="Label">Weight  From:</asp:Label><label style="color: red">*</label>
                    <div class="input-group">
                        <asp:TextBox ID="txtWeightMin" MaxLength="7" runat="server" CssClass="form-control" aria-describedby="basic-addon3">0</asp:TextBox>
                        <span class="input-group-addon" id="basic-addon3">lbs.</span>
                    </div>
                </div>
                <div class="col-sm-6">
                    <asp:Label ID="lblWeightMax" runat="server" Text="Label">To:</asp:Label><label style="color: red">*</label>
                    <div class="input-group">
                        <asp:TextBox ID="txtWeightMax" MaxLength="7" runat="server" CssClass="form-control" aria-describedby="basic-addon4">200</asp:TextBox>
                        <span class="input-group-addon" id="basic-addon4">lbs.</span>
                    </div>
                </div>
            </div>
        </asp:Panel>
    </div>
</div>
