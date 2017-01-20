<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StoreSelector.ascx.cs" Inherits="Shipr.Rework.Shipr.Project.controls.StoreSelector" %>
<div class="panel panel-default">
    <div class="panel-heading">
        <h5>
            <asp:Literal ID="ltrlTitle" runat="server"></asp:Literal></h5>
    </div>
    <div class="panel-body">
        <asp:CheckBoxList ID="chklstStore" runat="server" RepeatDirection="Horizontal" 
            RepeatColumns="5" CssClass="table table-condensed table-responsive table-bordered" 
             RepeatLayout="Table">
        </asp:CheckBoxList>
    </div>
</div>
