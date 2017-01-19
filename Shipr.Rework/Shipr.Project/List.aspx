<%@ Page Title="List" Language="C#" MasterPageFile="~/Shipr.Project/Default.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Shipr.Rework.Shipr.Project.List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <h1 style="font-family: 'Century Gothic'">Shipping Promotions</h1>
        </div>
        <br />
        <div class="row">
            <ul class="nav nav-tabs nav-justified" style="font-family: 'Century Gothic'">
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
                    <asp:GridView ID="grdvwPromos" runat="server" CssClass="table table-hover table-responsive ">
                        <Columns>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <input type="checkbox" id="chkAll" name="chkAll"
                                        onclick="Check(this)" disabled="disabled" />
                                </HeaderTemplate>

                                <ItemTemplate>
                                    <asp:CheckBox ID="chkSelect" runat="server" Visible="true" />
                                </ItemTemplate>

                            </asp:TemplateField>

                            <asp:HyperLinkField
                                DataNavigateUrlFields="PromoID" DataNavigateUrlFormatString="~/ShipR.Project/Setup.aspx?promoID={0}"
                                Text="Edit" />

                            <asp:BoundField DataField="promoID" HeaderText="ID" SortExpression="PromoID"></asp:BoundField>
                            <asp:TemplateField HeaderText="Name" ControlStyle-Width="200" SortExpression="Name">
                                <ItemTemplate>
                                    <%# Eval("Name") %>
                                </ItemTemplate>
                                <ControlStyle Width="200px"></ControlStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Promo Type" SortExpression="PromoTypeDesc">
                                <ItemTemplate>
                                    <%# Eval("PromoTypeDesc") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Shipping Method" SortExpression="Display">
                                <ItemTemplate>
                                    <%# Eval("Display") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Discount Type" SortExpression="DiscountTypeDesc">
                                <ItemTemplate>
                                    <%# Eval("DiscountTypeDesc") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Status" SortExpression="Status">
                                <ItemTemplate>
                                    <%# Convert.ToBoolean(Eval("Status")) %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CheckBoxField />
                        </Columns>
                    </asp:GridView>
                </div>
                <div id="inactive" class="tab-pane fade">
                    <h3>Inactive Promotions</h3>
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
