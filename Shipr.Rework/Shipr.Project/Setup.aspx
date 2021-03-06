﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Shipr.Project/Default.Master" AutoEventWireup="true" CodeBehind="Setup.aspx.cs" Inherits="Shipr.Rework.Shipr.Project.Setup" %>

<%@ Register TagPrefix="ucPromoName" TagName="PromoName" Src="~/Shipr.Project/controls/PromoName.ascx" %>
<%@ Register TagPrefix="ucStoreSelector" TagName="StoreSelector" Src="~/Shipr.Project/controls/StoreSelector.ascx" %>
<%@ Register TagPrefix="ucDuration" TagName="Duration" Src="~/Shipr.Project/controls/Duration.ascx" %>
<%@ Register TagPrefix="ucShipMethodSelector" TagName="ShipMethodSelector" Src="~/Shipr.Project/controls/ShipMethodSelector.ascx" %>
<%@ Register TagPrefix="ucPromoType" TagName="PromoType" Src="~/Shipr.Project/controls/PromoType.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Setup a Promotion:</h1>
        <h5>Fields marked with an asterisk (<label style="color: red">*</label>) are required fields.</h5>
        <br />
        <div class="row">
            <div class="col-sm-3">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Search SKU:
                    </div>
                    <div class="panel-body">
                        <div class="input-group">
                            <asp:TextBox ID="txtbxSKUSearch" runat="server" CssClass=" form-control" />
                            <span class="input-group-btn">
                                <asp:LinkButton ID="lnkbtnSKUSearch" runat="server" CssClass=" btn btn-outline-primary">Search</asp:LinkButton>
                            </span>
                        </div>
                        <br />
                        <asp:Panel ID="pnlSKUResult" runat="server" Height="150"></asp:Panel>
                    </div>
                </div>
            </div>
            <div class="col-sm-9">
                <ucPromoName:PromoName ID="uiPromoName" runat="server" Title="1. Set the promo name" />
                <ucPromoType:PromoType ID="uiPromoType" runat="server" Title="2. Set the promo type and discount type" />   
                <ucStoreSelector:StoreSelector ID="uiStoreSelect" runat="server" Title="3. Choose the store/s that the promo applies to" />
                <ucDuration:Duration ID="uiDuration" runat="server" Title="4. Set the promo duration" />
                <ucShipMethodSelector:ShipMethodSelector ID="uiShipMethod" runat="server" Title="5. Choose a shipping method that the promo applies to" />
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h5 class="headerSteps">9. Set PDP Text Visibility</h5>
                    </div>
                    <div class="panel-body">
                        <asp:CheckBox ID="chkIsMerchVisible" runat="server" Visible="true" Text="Override PDP text display rule" CssClass="checkbox checkbox-success" />
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-body text-center">
                        <asp:LinkButton ID="lnkbtnSubmit" runat="server" CssClass="btn btn-outline-primary" Font-Size="Large">Submit</asp:LinkButton>
                        <a href="Default.aspx" class="btn btn-outline-danger" style="font-size: large;">Cancel</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
