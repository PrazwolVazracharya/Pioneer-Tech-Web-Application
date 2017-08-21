<%@ Page Title="" Language="C#" MasterPageFile="~/UI/PioneerTechMasterPage.Master" AutoEventWireup="true" CodeBehind="EducationDetail.aspx.cs" Inherits="PioneerTech.WebApp.UI.EducationDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .auto-style5 {
            width: 75px;
        }

        .auto-style6 {
            width: 87px;
        }

        .auto-style11 {
            margin-left: 0px;
        }

        .auto-style13 {
            width: 179px;
        }
        .auto-style14 {
            width: 175px;
        }
        .auto-style15 {
            width: 167px;
        }
        .auto-style19 {
            width: 91px;
        }
        .auto-style20 {
            width: 92px;
        }
        .auto-style21 {
            width: 64%;
            height: 186px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="EducationTable" class="auto-style21">
        <tr>
            <td class="auto-style15" colspan="2">Education Details</td>
        </tr>

        <tr id=" CourseTypeRow">
            <td id="CourseTypeLabelColumn" class="auto-style15" colspan="2">
                <asp:Label ID="CourseTypeLabel" runat="server" Text="Course Type"></asp:Label>
            </td>
            <td id="CourseTypeColumn" class="auto-style13">
                <asp:TextBox ID="CourseTypeTextBox" runat="server" Style="margin-left: 0px" Width="279px" CssClass="auto-style14"></asp:TextBox>
                <asp:RequiredFieldValidator ID="CourseTypeRequiredFieldValidator1" runat="server" ErrorMessage="Please! Enter Correct Course Type" ControlToValidate="CourseTypeTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr id=" YearOfPassRow">
            <td id="YearOfPassLabelColumn" class="auto-style15" colspan="2">
                <asp:Label ID="YearOfPassLabel" runat="server" Text="Year Of Pass"></asp:Label>
            </td>
            <td id="YearOfPassColumn" class="auto-style6">
                <asp:TextBox ID="YearOfPassTextBox" runat="server" Style="margin-left: 0px" Width="279px"></asp:TextBox>
            </td>
        </tr>

        <tr id=" CourseSpecializationRow">
            <td id="CourseSpecializationLabelColumn" class="auto-style15" colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Course Specialization"></asp:Label>
            </td>
            <td id="CourseSpecializationColumn" class="auto-style6">
                <asp:TextBox ID="CourseSpecializationTextBox" runat="server" Style="margin-left: 0px" Width="279px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="CourseSpecializationRequiredFieldValidator1" runat="server" ErrorMessage="Please Fill the Course" ControlToValidate="CourseSpecializationTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr id=" EmployeeIdRow">
            <td id="EmployeeIdLabelColumn" class="auto-style15" colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Employee ID"></asp:Label>
            </td>
            <td id="EmployeeIdColumn" class="auto-style6">
                <asp:TextBox ID="EmployeeIdTextBox" runat="server" Width="279px" CssClass="auto-style11"></asp:TextBox>
            </td>
        </tr>

        <tr id="Button">
            
            <td class="auto-style19">
                <asp:Button ID="SaveButton" runat="server" Text="Save" Width="78px" Height="27px" OnClick="SaveButton_Click" />
            </td>

            <td class="auto-style20">
                <asp:Button ID="EditButton" runat="server" Text="Edit" Width="78px" CssClass="auto-style5" Height="27px" />
            </td>
            <td class="auto-style">
                <asp:Button ID="ClearButton" runat="server" Height="27px" Text="Clear" Width="78px" OnClick="ClearButton_Click" />
        </tr>
    </table>
</asp:Content>
