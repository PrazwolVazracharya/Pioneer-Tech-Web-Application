<%@ Page Title="" Language="C#" MasterPageFile="~/UI/PioneerTechMasterPage.Master" AutoEventWireup="true" CodeBehind="ProjectDetail.aspx.cs" Inherits="PioneerTech.WebApp.UI.ProjectDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 138px;
        }
        .auto-style2 {
            width: 63px;
            height: 70px;
        }
        .auto-style3 {
            width: 96px;
            height: 70px;
        }
        .auto-style4 {
            width: 80px;
            height: 70px;
        }
        .auto-style5 {
            width: 160px;
            height: 34px;
        }
        .auto-style6 {
            height: 70px;
        }
        .auto-style7 {
            width: 138px;
            height: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table id="ProjectTable" style="width: 100%; height: 150px;">
        <tr>
            <td class="auto-style1">Project Details</td>
         </tr>

        <tr id =" ProjectNameRow">
            <td id ="ProjectNameLabelColumn" class="auto-style1">
                <asp:Label ID="ProjectNameLabel" runat="server" Text="Project Name"></asp:Label>
                </td>
            <td id ="ProjectNameColumn" colspan="3">
                <asp:TextBox ID="ProjectNameTextBox" runat="server" style="margin-left: 0px" Width="279px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ProjectNameRequiredFieldValidator" runat="server" ErrorMessage="Please! Enter correct Project Name" ControlToValidate="ProjectNameTextBox"></asp:RequiredFieldValidator>
            </td>
         </tr>

         <tr id =" ClientNameRow">
            <td id ="ClientNameLabelColumn" class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="Client Name"></asp:Label>
                </td>
            <td id ="ClientNameColumn" colspan="3">
                <asp:TextBox ID="ClientNameTextBox" runat="server" style="margin-left: 0px" Width="279px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ClientNameRequiredFieldValidator" runat="server" ErrorMessage="Please! Enter Valid Client Name" ControlToValidate="ClientNameTextBox"></asp:RequiredFieldValidator>
            </td>
         </tr>
         
         <tr id =" LocationRow">
            <td id ="LocationLabelColumn" class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Location"></asp:Label>
                </td>
            <td id ="LocationColumn" colspan="3">
                <asp:TextBox ID="Location_TextBox" runat="server" style="margin-left: 0px" Width="279px"></asp:TextBox>
            </td>
         </tr>

         <tr id =" RolesRow">
            <td id ="RolesLabelColumn" class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="Roles"></asp:Label>
                </td>
            <td id ="RolesColumn" colspan="3">
                <asp:TextBox ID="RolesTextBox" runat="server" style="margin-left: 0px" Width="279px"></asp:TextBox>
            </td>
         </tr>

         <tr id =" EmployeeIdRow">
            <td id ="EmployeeIdLabelColumn" class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="Employee ID"></asp:Label>
                </td>
            <td id ="EmployeeIdColumn" colspan="3">
                <asp:DropDownList ID="ProjectEmployeeDropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="EmployeeID" DataValueField="EmployeeID" Width="285px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PioneerTechConsultancy_DatabaseConnectionString4 %>" SelectCommand="SELECT [EmployeeID] FROM [ProjectDetail]"></asp:SqlDataSource>
            </td>
         </tr>

         <tr id="Button">
            <td class="auto-style7">
                <asp:Label ID="Project_EmployeeIdLabel" runat="server" Text="Employee ID"></asp:Label>
             </td>
            <td class="auto-style3">
                   <asp:DropDownList ID="Project_Edit_DropDownList1" runat="server" Height="16px" Width="142px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="EmployeeID" DataValueField="EmployeeID" OnSelectedIndexChanged="Project_DropDownList1_SelectedIndexChanged">
                   </asp:DropDownList>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PioneerTechConsultancy_DatabaseConnectionString3 %>" SelectCommand="SELECT [EmployeeID] FROM [ProjectDetail]"></asp:SqlDataSource>
            </td>
             </tr>
         <tr>
             <td class="auto-style4">
                <asp:Button ID="SaveButton" runat="server" Text="Save" Width="78px" CssClass="auto-style5" Height="27px" OnClick="SaveButton_Click1" />
            </td>
            <td class="auto-style4">
                <asp:Button ID="EditButton" runat="server" Text="Edit" Width="78px" CssClass="auto-style5" Height="27px" OnClick="EditButton_Click" />
            </td>
            <td class="auto-style4">
                <asp:Button ID="ClearButton" runat="server" OnClick="ClearButton_Click" Text="Clear" Width="76px" />
            </td>
            <td class="auto-style6">
                </td>
         </tr>
</table>
</asp:Content>
