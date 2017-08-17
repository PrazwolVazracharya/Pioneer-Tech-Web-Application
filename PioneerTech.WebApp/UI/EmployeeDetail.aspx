<%@ Page Title="" Language="C#" MasterPageFile="~/UI/PioneerTechMasterPage.Master" AutoEventWireup="true" CodeBehind="EmployeeDetail.aspx.cs" Inherits="PioneerTech.WebApp.UI.EmployeeDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 123px;
        }

        .auto-style5 {
            margin-top: 28px;
        }

        .auto-style8 {
            margin-top: 28px;
            margin-left: 0px;
            margin-right: 69px;
        }

        .auto-style13 {
            width: 293px;
        }

        .auto-style15 {
            width: 485px;
        }

        .auto-style16 {
            width: 97px;
        }

        .auto-style17 {
            width: 99px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="EmployeeTable" style="width: 100%; height: 150px;">
        <tr>
            <td class="auto-style1">Employee Details</td>
        </tr>

        <tr id=" FirstNameRow">
            <td id="FirstNameLabelColumn">
                <asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label>
            </td>
            <td id="FirstNameColumn" class="auto-style13" colspan="3">
                <asp:TextBox ID="FirstNameTextBox" runat="server" Style="margin-left: 0px" Width="279px"></asp:TextBox>
            </td>
        </tr>

        <tr id=" LastNameRow">
            <td id="LastNameLabelColumn">
                <asp:Label ID="Label1" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td id="LastNameColumn" class="auto-style13" colspan="3">

                <asp:TextBox ID="LastNameTextBox" runat="server" Style="margin-left: 0px" Width="278px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="LastNameRequiredFieldValidator1" runat="server" ErrorMessage="Please! Enter your Last Name" ControlToValidate="LastNameTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr id=" EmailIdRow">
            <td id="EmailIdLabelColumn">
                <asp:Label ID="Label2" runat="server" Text="Email ID"></asp:Label>
            </td>
            <td id="EmailIdColumn" class="auto-style13" colspan="3">
                <asp:TextBox ID="EmailIDTextBox3" runat="server" Style="margin-left: 0px" Width="278px"></asp:TextBox>
            </td>
        </tr>

        <tr id=" MobileNumberRow">
            <td id="MobileNumberLabelColumn">
                <asp:Label ID="Label4" runat="server" Text="Mobile Number"></asp:Label>
            </td>
            <td id="MobileNumberColumn" class="auto-style13" colspan="3">
                <asp:TextBox ID="MobileNumberTextBox" runat="server" Style="margin-left: 0px" Width="279px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="MobileNumberRegularExpressionValidator1" runat="server" ErrorMessage="Please! Enter in Correct Format" ControlToValidate="MobileNumberTextBox" ValidationExpression="((\(\d{3}\) ?)|(\d{3}))?\d{3}\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr id=" AlternateMobileNumberRow">
            <td id="AlternateMobileNumberLabelColumn">
                <asp:Label ID="Label5" runat="server" Text="Alternate Mobile Number"></asp:Label>
            </td>
            <td id="AlternateMobileNumberColumn" class="auto-style13" colspan="3">
                <asp:TextBox ID="AlternateMobileNumberTextBox" runat="server" Style="margin-left: 0px" Width="279px"></asp:TextBox>
            </td>
        </tr>

        <tr id=" Address1Row">
            <td id="Address1LabelColumn">
                <asp:Label ID="Label6" runat="server" Text="Address 1"></asp:Label>
            </td>
            <td id="Address1Column" class="auto-style13" colspan="3">
                <asp:TextBox ID="Address1TextBox" runat="server" Style="margin-left: 0px" Width="279px"></asp:TextBox>
            </td>
        </tr>

        <tr id=" Address2Row">
            <td id="Address2LabelColumn">
                <asp:Label ID="Label7" runat="server" Text="Address 2"></asp:Label>
            </td>
            <td id="Address2Column" class="auto-style13" colspan="3">
                <asp:TextBox ID="Address2TextBox" runat="server" Style="margin-left: 0px" Width="279px"></asp:TextBox>
            </td>
        </tr>

        <tr id=" HomeCountryRow">
            <td id="HomeCountryLabelColumn">
                <asp:Label ID="Label8" runat="server" Text="Home Country"></asp:Label>
            </td>
            <td id="HomeCountryColumn" class="auto-style13" colspan="3">
                <asp:TextBox ID="HomeCountryTextBox" runat="server" Style="margin-left: 0px" Width="279px"></asp:TextBox>
            </td>
        </tr>

        <tr id=" CurrentCountryRow">
            <td id="CurrentCountryLabelColumn">
                <asp:Label ID="Label9" runat="server" Text="Current Country"></asp:Label>
            </td>
            <td id="CurrentCountryColumn" class="auto-style13" colspan="3">
                <asp:TextBox ID="CurrentCountryTextBox" runat="server" Style="margin-left: 0px" Width="279px"></asp:TextBox>
            </td>
        </tr>

        <tr id=" ZipCodeRow">
            <td id="ZipCodeLabelColumn">
                <asp:Label ID="Label10" runat="server" Text="Zip Code"></asp:Label>
            </td>
            <td id="ZipCodeColumn" class="auto-style13" colspan="3">
                <asp:TextBox ID="ZipCodeTextBox" runat="server" Style="margin-left: 0px" Width="279px"></asp:TextBox>

                <asp:RegularExpressionValidator ID="ZipCodeRegularExpressionValidator1" runat="server" ErrorMessage="Please! Enter only Five Digits" ControlToValidate="ZipCodeTextBox" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
            </td>
        </tr>


        <tr id="Button">
            <td class="auto-style">

            <td class="auto-style16">
                <asp:Button ID="Save" runat="server" Text="Save" Width="78px" CssClass="auto-style5" Height="27px" OnClick="Save_Click" />
            </td>
            <td class="auto-style16">
                <asp:Button ID="EditButton" runat="server" Text="Edit" Width="78px" CssClass="auto-style5" Height="27px" />
            </td>
            <td class="auto-style16">
                <asp:Button ID="clear" runat="server" Text="Clear" Width="78px" CssClass="auto-style8" Height="27px" OnClick="clear_Click" />
            </td>
            <td class="auto-style">
        </tr>
    </table>

</asp:Content>

