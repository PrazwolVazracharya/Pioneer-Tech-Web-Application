<%@ Page Title="" Language="C#" MasterPageFile="~/UI/PioneerTechMasterPage.Master" AutoEventWireup="true" CodeBehind="ProjectDetail.aspx.cs" Inherits="PioneerTech.WebApp.UI.ProjectDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table id="ProjectTable" style="width: 100%; height: 150px;">
        <tr>
            <td class="auto-style1">Project Details</td>
         </tr>

        <tr id =" ProjectNameRow">
            <td id ="ProjectNameLabelColumn">
                <asp:Label ID="ProjectNameLabel" runat="server" Text="Project Name"></asp:Label>
                </td>
            <td id ="ProjectNameColumn">
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" Width="171px"></asp:TextBox>
            </td>
         </tr>

         <tr id =" ClientNameRow">
            <td id ="ClientNameLabelColumn">
                <asp:Label ID="Label1" runat="server" Text="Client Name"></asp:Label>
                </td>
            <td id ="ClientNameColumn">
                <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" Width="171px"></asp:TextBox>
            </td>
         </tr>
         
         <tr id =" LocationRow">
            <td id ="LocationLabelColumn">
                <asp:Label ID="Label2" runat="server" Text="Location"></asp:Label>
                </td>
            <td id ="LocationColumn">
                <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" Width="171px"></asp:TextBox>
            </td>
         </tr>

         <tr id =" RolesRow">
            <td id ="RolesLabelColumn">
                <asp:Label ID="Label3" runat="server" Text="Roles"></asp:Label>
                </td>
            <td id ="RolesColumn">
                <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 0px" Width="171px"></asp:TextBox>
            </td>
         </tr>

         <tr id="Button">
            <td class="auto-style">
                <asp:Button ID="Save" runat="server" Text="Save" Width="78px" CssClass="auto-style5" Height="27px" />
            </td>
            <td class="auto-style">
                <asp:Button ID="EditButton" runat="server" Text="Edit" Width="78px" CssClass="auto-style5" Height="27px" />
            </td>
         </tr>
</table>
</asp:Content>
