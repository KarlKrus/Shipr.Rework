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
                <asp:CheckBox ID="chkExactPromo" runat="server" Text="Exact Promo/ Full Order" CssClass="checkbox checkbox-info" />
            </div>
        </div>
        <hr />
        <!--Order Level -->
        <asp:Panel ID="pnlOrderLevel" runat="server">
            <div class="row">
                <div class="col-sm-3">
                    <asp:Label ID="lblDollarMin" runat="server" Text="Label">Orders From:</asp:Label><label style="color: red">*</label>
                    <div class="input-group">
                        <span class="input-group-addon" id="basic-addon1">$</span>
                        <asp:TextBox ID="txtDollarMin" MaxLength="8" runat="server" CssClass="form-control" aria-describedby="basic-addon1">0</asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-3">
                    <asp:Label ID="lblDollarMax" runat="server" Text="Label">Orders To:</asp:Label><label style="color: red">*</label>
                    <div class="input-group">
                        <span class="input-group-addon" id="basic-addon2">$</span>
                        <asp:TextBox ID="txtDollarMax" MaxLength="8" runat="server" CssClass="form-control" aria-describedby="basic-addon2">50000</asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-3">
                    <asp:Label ID="lblWeightMin" runat="server" Text="Label">Weight From:</asp:Label><label style="color: red">*</label>
                    <div class="input-group">
                        <asp:TextBox ID="txtWeightMin" MaxLength="7" runat="server" CssClass="form-control" aria-describedby="basic-addon3">0</asp:TextBox>
                        <span class="input-group-addon" id="basic-addon3">lbs.</span>
                    </div>
                </div>
                <div class="col-sm-3">
                    <asp:Label ID="lblWeightMax" runat="server" Text="Label">Weight To:</asp:Label><label style="color: red">*</label>
                    <div class="input-group">
                        <asp:TextBox ID="txtWeightMax" MaxLength="7" runat="server" CssClass="form-control" aria-describedby="basic-addon4">200</asp:TextBox>
                        <span class="input-group-addon" id="basic-addon4">lbs.</span>
                    </div>
                </div>
            </div>
        </asp:Panel>
        <!--Increase Percent-->
        <asp:Panel ID="pnlIncreasePercent" runat="server">
            <hr />
            <div class="row">
                <div class="col-sm-6">
                    <asp:DropDownList ID="ddlIncreaseBox" runat="server" OnSelectedIndexChanged="ddlIncreaseBox_SelectedIndexChanged"
                        AutoPostBack="True" CssClass="form-control">
                        <asp:ListItem Value="0"> Increase By Percent </asp:ListItem>
                        <asp:ListItem Value="1"> Increase by Dollar </asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-sm-6">
                    <div class="input-group">
                        <asp:Label ID="lblInptGrpDollarPercent" runat="server" Text="%" CssClass="input-group-addon"></asp:Label>
                        <asp:TextBox ID="txtIncreasePercent" MaxLength="4" runat="server" CssClass="form-control" aria-describedby="lblInptGrpDollarPercent"></asp:TextBox>
                        <asp:TextBox ID="txtIncreaseDollar" MaxLength="4" runat="server" Visible="false" CssClass="form-control" aria-describedby="lblInptGrpDollarPercent"></asp:TextBox>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-sm-6">
                    <asp:Label ID="lblIncreaseWeightThreshold" runat="server" Text="Label">Threshold Weight:</asp:Label><label style="color: red">*</label>
                    <asp:TextBox ID="txtIncreaseWeightThreshold" MaxLength="7" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-6">
                    <asp:Label ID="lblIncreaseDollarThreshold" runat="server" Text="Label">Threshold Dollar:</asp:Label><label style="color: red">*</label>
                    <asp:TextBox ID="txtIncreaseDollarThreshold" MaxLength="7" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
        </asp:Panel>
        <!--Discount Type-->
        <asp:Panel ID="pnlDiscountType" runat="server">
            <hr />
            <div class="row">
                <div class="col-sm-6">
                    <asp:Label ID="lblDiscountType" runat="server" Text="Label">Discount Type:</asp:Label><label style="color: red">*</label>
                    <asp:DropDownList ID="ddlDiscountType" runat="server" CssClass="form-control"
                        OnSelectedIndexChanged="ddlDiscountType_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                </div>
                <div class="col-sm-6">
                    <asp:Label ID="lblDiscountValue" runat="server" Text="Label">Discount Value:</asp:Label><asp:Literal ID="ltlReqSign" runat="server"><label style="color:red">*</label></asp:Literal>
                    <div class="input-group">
                        <asp:Label ID="lblInptGrpDiscountValue" runat="server" CssClass="input-group-addon">$</asp:Label>
                        <asp:TextBox ID="txtDiscountValue" runat="server" MaxLength="7" CssClass="form-control" aria-describedby="lblInptGrpDiscountValue"></asp:TextBox>
                    </div>
                </div>
            </div>
        </asp:Panel>
        <!--Skus-->
        <asp:Panel ID="pnlSKU" runat="server">
            <hr />
            <div class="row">
                <div class="col-sm-2">
                </div>
                <div class="col-sm-8">
                    <asp:Label ID="lblSku" runat="server">Sku:</asp:Label><label style="color: red">*</label>
                    <div class="input-group">
                        <asp:TextBox ID="txtSku" runat="server" CssClass=" form-control" MaxLength="8" />
                        <span class="input-group-btn">
                            <asp:LinkButton ID="lnkbtnAddSku" runat="server" CssClass=" btn btn-outline-success" OnClick="lnkbtnAddSku_Click">Add</asp:LinkButton>
                            <asp:LinkButton ID="lnkbtnRemoveSku" runat="server" CssClass=" btn btn-outline-danger">Remove</asp:LinkButton>
                        </span>
                    </div>
                    <%--<label style="font-weight: 400">List:</label>--%>
                    <asp:CheckBoxList ID="cblSkuList" runat="server" CssClass="checkbox checkbox-danger table table-responsive" RepeatColumns="5" RepeatDirection="Horizontal"></asp:CheckBoxList>
                </div>
                <div class="col-sm-2">
                </div>
            </div>
        </asp:Panel>
        <!--Category Code-->
        <asp:Panel ID="pnlCategoryCodes" runat="server">
            <hr />
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <h5>Category Code:<label style="color: red">*</label>
                        <asp:TextBox ID="lblSelectedCategory" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                    </h5>
                </div>
                <div class="col-sm-4"></div>
            </div>
            <div class="row">
                <div class="col-sm-3">
                    <asp:Label ID="lblCategory" runat="server">Category:</asp:Label><label style="color: red">*</label>
                    <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" CssClass="form-control"></asp:DropDownList>
                </div>
                <div class="col-sm-3">
                    <asp:Label ID="lblSubMajor" runat="server">SubMajor</asp:Label><label style="font-weight: 400">:</label>
                    <asp:DropDownList ID="ddlSubMajor" runat="server" AutoPostBack="True" CssClass="form-control"></asp:DropDownList>
                </div>
                <div class="col-sm-3">
                    <asp:Label ID="lblMinor" runat="server">Minor</asp:Label><label style="font-weight: 400">:</label>
                    <asp:DropDownList ID="ddlMinor" runat="server" AutoPostBack="True" CssClass="form-control"></asp:DropDownList>
                </div>
                <div class="col-sm-3">
                    <asp:Label ID="lblSubMinor" runat="server">SubMinor</asp:Label><label style="font-weight: 400">:</label>
                    <asp:DropDownList ID="ddlSubMinor" runat="server" AutoPostBack="True" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>
        </asp:Panel>
        <!--Manufacturer-->
        <asp:Panel ID="pnlManufacturer" runat="server">
            <hr />
            <asp:Label ID="lblManufacturer" runat="server">Manufacturer:</asp:Label><label style="color: red">*</label>
            <div class="row">
                <div class="col-sm-5">
                    <asp:Panel ID="pnlCBLManufact" runat="server" ScrollBars="Auto" Height="250" CssClass="well">
                        <asp:CheckBoxList ID="cblManufacturer" runat="server" CssClass="checkbox checkbox-info"></asp:CheckBoxList>
                    </asp:Panel>
                </div>
                <div class="col-sm-2 text-center">
                    <asp:LinkButton ID="lnkbtnRight" runat="server" CssClass="btn btn-info"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></asp:LinkButton>
                    <br /><br />
                    <asp:LinkButton ID="lnkbtnLeft" runat="server" CssClass="btn btn-danger"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span></asp:LinkButton>
                </div>
                <div class="col-sm-5">
                    <asp:Panel ID="pnlCBLSelectedManufact" runat="server" ScrollBars="Auto" Height="250" CssClass="well">
                        <asp:CheckBoxList ID="cblSelectedManufacturer" runat="server" CssClass="checkbox checkbox-danger"></asp:CheckBoxList>
                    </asp:Panel>
                </div>
            </div>
        </asp:Panel>
        <!--Payment Method-->
        <asp:Panel ID="pnlPaymentMethod" runat="server">
            <hr />
            <div class="row"></div>
            <asp:Label ID="lblPaymentMethod" runat="server">Payment Method:</asp:Label><label style="color: red">*</label>
            <asp:CheckBoxList ID="cbl" runat="server" CssClass="checkbox checkbox-danger table table-responsive" RepeatColumns="5" RepeatDirection="Horizontal"></asp:CheckBoxList>
        </asp:Panel>
    </div>
</div>
