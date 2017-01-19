<%@ Page Title="List" Language="C#" MasterPageFile="~/Shipr.Project/Default.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Shipr.Rework.Shipr.Project.List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <h1 style="text-align: center; font-family: 'Century Gothic'">Shipping Promotions</h1>
        </div>
        <div class="row">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">
                    <h4>Home</h4>
                </a></li>
                <li><a data-toggle="tab" href="#active">
                    <h4>Active</h4>
                </a></li>
                <li><a data-toggle="tab" href="#inactive">
                    <h4>Inactive</h4>
                </a></li>
            </ul>

            <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
                    <h3>HOME</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                </div>
                <div id="active" class="tab-pane fade">
                    <h3>Active Promotions</h3>
                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                </div>
                <div id="inactive" class="tab-pane fade">
                    <h3>Inactive Promotions</h3>
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
