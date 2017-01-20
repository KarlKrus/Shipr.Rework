<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Duration.ascx.cs" Inherits="Shipr.Rework.Shipr.Project.controls.Duration" %>
<div class="panel panel-default">
    <div class="panel-heading">
        <h5>
            <asp:Literal ID="ltrlTitle" runat="server"></asp:Literal></h5>
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-sm-6">
                <asp:Label ID="lblStartDate" runat="server" CssClass="control-label">Start date:</asp:Label><label style="color:red">*</label><br />
                <div class="row">
                    <div class="col-sm-6">
                        <asp:TextBox ID="txtStartDate" runat="server" onfocus="this.value=='MM/DD/YYYY'?this.value='':null" MaxLength="10" CssClass="form-control" TextMode="Date">MM/DD/YYYY</asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <asp:DropDownList ID="ddlStartTime" runat="server" CssClass="form-control">
                            <asp:ListItem Selected="True" Value=""></asp:ListItem>
                            <asp:ListItem Value="0">12:00 AM</asp:ListItem>
                            <asp:ListItem Value="1">01:00 AM</asp:ListItem>
                            <asp:ListItem Value="2">02:00 AM</asp:ListItem>
                            <asp:ListItem Value="3">03:00 AM</asp:ListItem>
                            <asp:ListItem Value="4">04:00 AM</asp:ListItem>
                            <asp:ListItem Value="5">05:00 AM</asp:ListItem>
                            <asp:ListItem Value="6">06:00 AM</asp:ListItem>
                            <asp:ListItem Value="7">07:00 AM</asp:ListItem>
                            <asp:ListItem Value="8">08:00 AM</asp:ListItem>
                            <asp:ListItem Value="9">09:00 AM</asp:ListItem>
                            <asp:ListItem Value="10">10:00 AM</asp:ListItem>
                            <asp:ListItem Value="11">11:00 AM</asp:ListItem>
                            <asp:ListItem Value="12">12:00 PM</asp:ListItem>
                            <asp:ListItem Value="13">01:00 PM</asp:ListItem>
                            <asp:ListItem Value="14">02:00 PM</asp:ListItem>
                            <asp:ListItem Value="15">03:00 PM</asp:ListItem>
                            <asp:ListItem Value="16">04:00 PM</asp:ListItem>
                            <asp:ListItem Value="17">05:00 PM</asp:ListItem>
                            <asp:ListItem Value="18">06:00 PM</asp:ListItem>
                            <asp:ListItem Value="19">07:00 PM</asp:ListItem>
                            <asp:ListItem Value="20">08:00 PM</asp:ListItem>
                            <asp:ListItem Value="21">09:00 PM</asp:ListItem>
                            <asp:ListItem Value="22">10:00 PM</asp:ListItem>
                            <asp:ListItem Value="23">11:00 PM</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <asp:Label ID="lblEndDate" runat="server" CssClass="control-label">End date:</asp:Label><label style="color:red">*</label><br />

                <div class="row">
                    <div class="col-sm-6">
                        <asp:TextBox ID="txtEndDate" runat="server" onfocus="this.value=='MM/DD/YYYY'?this.value='':null" MaxLength="10" CssClass="form-control" TextMode="Date">MM/DD/YYYY</asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <asp:DropDownList ID="ddlEndTime" runat="server" CssClass="form-control">
                            <asp:ListItem Selected="True" Value=""></asp:ListItem>
                            <asp:ListItem Value="0">12:00 AM</asp:ListItem>
                            <asp:ListItem Value="1">01:00 AM</asp:ListItem>
                            <asp:ListItem Value="2">02:00 AM</asp:ListItem>
                            <asp:ListItem Value="3">03:00 AM</asp:ListItem>
                            <asp:ListItem Value="4">04:00 AM</asp:ListItem>
                            <asp:ListItem Value="5">05:00 AM</asp:ListItem>
                            <asp:ListItem Value="6">06:00 AM</asp:ListItem>
                            <asp:ListItem Value="7">07:00 AM</asp:ListItem>
                            <asp:ListItem Value="8">08:00 AM</asp:ListItem>
                            <asp:ListItem Value="9">09:00 AM</asp:ListItem>
                            <asp:ListItem Value="10">10:00 AM</asp:ListItem>
                            <asp:ListItem Value="11">11:00 AM</asp:ListItem>
                            <asp:ListItem Value="12">12:00 PM</asp:ListItem>
                            <asp:ListItem Value="13">01:00 PM</asp:ListItem>
                            <asp:ListItem Value="14">02:00 PM</asp:ListItem>
                            <asp:ListItem Value="15">03:00 PM</asp:ListItem>
                            <asp:ListItem Value="16">04:00 PM</asp:ListItem>
                            <asp:ListItem Value="17">05:00 PM</asp:ListItem>
                            <asp:ListItem Value="18">06:00 PM</asp:ListItem>
                            <asp:ListItem Value="19">07:00 PM</asp:ListItem>
                            <asp:ListItem Value="20">08:00 PM</asp:ListItem>
                            <asp:ListItem Value="21">09:00 PM</asp:ListItem>
                            <asp:ListItem Value="22">10:00 PM</asp:ListItem>
                            <asp:ListItem Value="23">11:00 PM</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
