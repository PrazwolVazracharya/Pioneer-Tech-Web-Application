<%@ Page Title="" Language="C#" MasterPageFile="~/UI/PioneerTechMasterPage.Master" AutoEventWireup="true" CodeBehind="TechnicalDetail.aspx.cs" Inherits="PioneerTech.WebApp.UI.TechnicalDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 493px;
            height: 199px;
        }

        .auto-style2 {
            width: 66px;
        }

        .auto-style4 {
            width: 178px;
        }

        .auto-style5 {
            width: 179px;
        }

        .auto-style6 {
            width: 180px;
        }

        .auto-style7 {
            width: 181px;
        }

        .auto-style8 {
            width: 219px;
        }
        .auto-style9 {
            width: 284px;
        }
        .auto-style10 {
            width: 315px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="TechnicalTable" class="auto-style1">
        <tr>
            <td class="auto-style15" colspan="5">Technical Details</td>
        </tr>

        <tr id=" UIRow">
            <td id="UILabelColumn" class="auto-style15" colspan="5">
                <asp:Label ID="UILabel" runat="server" Text="UI"></asp:Label>
            </td>
            <td id="UIColumn" class="auto-style13">
                <asp:TextBox ID="UITextBox" runat="server" Style="margin-left: 0px" Width="279px" CssClass="auto-style14"></asp:TextBox>
            </td>
        </tr>

        <tr id=" ProgrammingLanguageRow">
            <td id="ProgrammingLanguageLabelColumn" class="auto-style15" colspan="5">
                <asp:Label ID="ProgrammingLanguageLabel" runat="server" Text="Programming Language"></asp:Label>
            </td>
            <td id="ProgrammingLanguageColumn" class="auto-style6">
                <asp:TextBox ID="ProgrammingLanguageTextBox" runat="server" Style="margin-left: 0px" Width="279px"></asp:TextBox>
            </td>
        </tr>

        <tr id=" DatabaseRow">
            <td id="DatabaseLabelColumn" class="auto-style15" colspan="5">
                <asp:Label ID="LocationLabel" runat="server" Text="Database"></asp:Label>
            </td>
            <td id="DatabaseColumn" class="auto-style7">
                <asp:TextBox ID="DatabaseTextBox" runat="server" Style="margin-left: 0px" Width="279px"></asp:TextBox>
            </td>
        </tr>

        <tr id=" EmployeeIdRow">
            <td id="EmployeeIdLabelColumn" class="auto-style15" colspan="5">
                <asp:Label ID="Label1" runat="server" Text="Employee ID"></asp:Label>
            </td>
            <td id="EmployeeIdColumn" class="auto-style7">
                <asp:TextBox ID="EmployeeIdTextBox" runat="server" Style="margin-left: 0px" Width="279px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="SaveButton" runat="server" Text="Save" Width="85px" CssClass="auto-style5" Height="27px" OnClick="Save_Click" />

            </td>
            <td class="auto-style16" colspan="1"></td>
            <td class="auto-style8">
                <asp:Button ID="EditButton" runat="server" Height="27px" Text="Edit" Width="78px" />

            </td>
            <td class="auto-style16">
                &nbsp;</td>
            <td class="auto-style10">
                <asp:Button ID="ClearButton" runat="server" Text="Clear" Width="78px" CssClass="auto-style5" Height="27px" OnClick="ClearButton_Click" />

            </td>
        </tr>
    </table>
</asp:Content>
