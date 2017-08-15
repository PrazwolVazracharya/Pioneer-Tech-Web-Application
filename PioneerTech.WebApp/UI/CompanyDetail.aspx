<%@ Page Title="" Language="C#" MasterPageFile="~/UI/PioneerTechMasterPage.Master" AutoEventWireup="true" CodeBehind="CompanyDetail.aspx.cs" Inherits="PioneerTech.WebApp.UI.CompanyDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 123px;
        }

        .auto-style5 {
            margin-top: 28px;
        }

        .auto-style13 {
            width: 429px;
        }
    .auto-style14 {
        margin-right: 2px;
    }
        .auto-style15 {
            width: 147px;
        }
        .auto-style16 {
            width: 97px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="CompanyTable" class="auto-style3">
        <tr>
            <td class="auto-style15">Company Details</td>
        </tr>

        <tr id=" EmployerNameRow">
            <td id="EmployerNameLabelColumn" class="auto-style15">
                <asp:Label ID="EmployerNameLabel" runat="server" Text="Employer Name"></asp:Label>
            </td>
            <td id="EmployerNameColumn" class="auto-style13" colspan="4">
                <asp:TextBox ID="EmployerNameTextBox" runat="server" Style="margin-left: 0px" Width="279px" CssClass="auto-style14"></asp:TextBox>
            </td>
        </tr>

        <tr id=" ContactNumberRow">
            <td id="ContactNumberLabelColumn" class="auto-style15">
                <asp:Label ID="ContactNumberLabel" runat="server" Text="Contact Number"></asp:Label>
            </td>
            <td id="ContactNumberColumn" class="auto-style6" colspan="4">
                <asp:TextBox ID="ContactNumberTextBox" runat="server" Style="margin-left: 0px" Width="279px"></asp:TextBox>
            </td>
        </tr>

        <tr id=" LocationRow">
            <td id="LocationLabelColumn" class="auto-style15">
                <asp:Label ID="LocationLabel" runat="server" Text="Location"></asp:Label>
            </td>
            <td id="LocationColumn" class="auto-style7" colspan="4">
                <asp:TextBox ID="LocationTextBox" runat="server" Style="margin-left: 0px" Width="279px"></asp:TextBox>
            </td>
        </tr>

        
        <tr id=" WebsiteRow">
            <td id="WebsiteLabelColumn" class="auto-style15">
                <asp:Label ID="WebsiteLabel" runat="server" Text="Website"></asp:Label>
            </td>
            <td id="WebsiteColumn" class="auto-style1" colspan="4">
                <asp:TextBox ID="WebsiteTextBox" runat="server" Style="margin-left: 0px" Width="279px"></asp:TextBox>
            </td>
        </tr>

        <tr id=" EmployeeIdRow">
            <td id="EmployeeIdLabelColumn" class="auto-style15">
                <asp:Label ID="EmployeeIDLabel" runat="server" Text="Employee ID"></asp:Label>
            </td>
            <td id="EmployeeIdColumn" class="auto-style2" colspan="4">
                <asp:TextBox ID="EmployeeIDTextBox" runat="server" Style="margin-left: 0px" Width="277px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            </td>
        </tr>
        
        <tr id="Button">
            <td class="auto-style15">
                &nbsp;</td>
            <td class="auto-style16">
                <asp:Button ID="SaveButton" runat="server" Text="Save" Width="78px" CssClass="auto-style5" Height="27px" OnClick="Save_Click" />
            </td>
            <td>
                <asp:Button ID="EditButton" runat="server" Text="Edit" Width="78px" CssClass="auto-style5" Height="27px" />
            </td>
            <td class="auto-style4">
                <asp:Button ID="ClearButton" runat="server" Text="Clear" Width="71px" CssClass="auto-style5" Height="27px" />
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
