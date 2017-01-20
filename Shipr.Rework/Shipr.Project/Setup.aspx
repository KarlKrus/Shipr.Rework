﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Shipr.Project/Default.Master" AutoEventWireup="true" CodeBehind="Setup.aspx.cs" Inherits="Shipr.Rework.Shipr.Project.Setup" %>
<%@ Register TagPrefix="ucPromoName" TagName="PromoName" Src="~/Shipr.Project/controls/PromoName.ascx" %>
<%@ Register TagPrefix="ucStoreSelector" TagName="StoreSelector" Src="~/Shipr.Project/controls/StoreSelector.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Setup a Promotion:</h1>
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
                <ucStoreSelector:StoreSelector ID="uiStoreSelect" runat="server" Title="3. Choose the store/s that the promo applies to" />
            </div>
        </div>
    </div>
</asp:Content>
