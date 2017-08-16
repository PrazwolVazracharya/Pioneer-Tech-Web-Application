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
            width: 238px;
        }

        .auto-style20 {
            margin-left: 37px;
        }

        .auto-style22 {
            width: 276px;
        }

        .auto-style23 {
            width: 67%;
        }

        .auto-style24 {
            width: 175px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="CompanyTable" class="auto-style3">
        <tr>
            <td class="auto-style15" colspan="2">Company Details</td>
        </tr>

        <tr id=" EmployerNameRow">
            <td id="EmployerNameLabelColumn" class="auto-style15" colspan="2">
                <asp:Label ID="EmployerNameLabel" runat="server" Text="Employer Name"></asp:Label>
            </td>
            <td id="EmployerNameColumn" class="auto-style13" colspan="2">
                <asp:TextBox ID="EmployerNameTextBox" runat="server" Style="margin-left: 0px" Width="279px" CssClass="auto-style14"></asp:TextBox>
            </td>
        </tr>

        <tr id=" ContactNumberRow">
            <td id="ContactNumberLabelColumn" class="auto-style15" colspan="2">
                <asp:Label ID="ContactNumberLabel" runat="server" Text="Contact Number"></asp:Label>
            </td>
            <td id="ContactNumberColumn" class="auto-style6" colspan="2">
                <asp:TextBox ID="ContactNumberTextBox" runat="server" Style="margin-left: 0px" Width="279px"></asp:TextBox>
            </td>
        </tr>

        <tr id=" LocationRow">
            <td id="LocationLabelColumn" class="auto-style15" colspan="2">
                <asp:Label ID="LocationLabel" runat="server" Text="Location"></asp:Label>
            </td>
            <td id="LocationColumn" class="auto-style7" colspan="2">
                <asp:TextBox ID="LocationTextBox" runat="server" Style="margin-left: 0px" Width="279px"></asp:TextBox>
            </td>
        </tr>


        <tr id=" WebsiteRow">
            <td id="WebsiteLabelColumn" class="auto-style15" colspan="2">
                <asp:Label ID="WebsiteLabel" runat="server" Text="Website"></asp:Label>
            </td>
            <td id="WebsiteColumn" class="auto-style1" colspan="2">
                <asp:TextBox ID="WebsiteTextBox" runat="server" Style="margin-left: 0px" Width="279px"></asp:TextBox>
            </td>
        </tr>

        <tr id=" EmployeeIdRow">
            <td id="EmployeeIdLabelColumn" class="auto-style15" colspan="2">
                <asp:Label ID="EmployeeIDLabel" runat="server" Text="Employee ID"></asp:Label>
            </td>
            <td id="EmployeeIdColumn" class="auto-style2" colspan="2">
                <asp:TextBox ID="EmployeeIDTextBox" runat="server" Style="margin-left: 0px" Width="279px"></asp:TextBox>
                <table class="auto-style23">
                </table>
            </td>
        </tr>

        <tr id="Button">
            <td class="auto-style24">

                <asp:Label ID="Company_EmployeeIdLabel1" runat="server" Text="Employee ID"></asp:Label>

                <asp:DropDownList ID="EmployeeIDDropDownList" runat="server" DataSourceID="SqlDataSource1" DataTextField="EmployeeID" DataValueField="EmployeeID" Height="27px" OnSelectedIndexChanged="EmployeeIDDropDownList_SelectedIndexChanged" Width="164px" AutoPostBack="True" CssClass="auto-style20">
                </asp:DropDownList>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PioneerTechConsultancy_DatabaseConnectionString %>" SelectCommand="SELECT [EmployeeID] FROM [EmployeeDetail]"></asp:SqlDataSource>

            </td>
            <td class="auto-style24">

                <asp:Label ID="Company_CompanyIDLabel" runat="server" Text="Company ID "></asp:Label>

                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="CompanyID" DataValueField="CompanyID" Width="164px" CssClass="auto-style2" Height="27px">
                </asp:DropDownList>

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PioneerTechConsultancy_DatabaseConnectionString2 %>" SelectCommand="SELECT [CompanyID] FROM [CompanyDetail] WHERE ([EmployeeID] = @EmployeeID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="EmployeeIDDropDownList" Name="EmployeeID" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </td>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="SaveButton" runat="server" Text="Save" Width="78px" CssClass="auto-style5" Height="27px" OnClick="Save_Click" />

                </td>
                <td class="auto-style4">
                    <asp:Button ID="EditButton" runat="server" Text="Edit" Width="78px" CssClass="auto-style5" Height="27px" OnClick="EditButton_Click" />

                </td>
                <td class="auto-style4">
                    <asp:Button ID="ClearButton" runat="server" Text="Clear" Width="78px" CssClass="auto-style5" Height="27px" />
                </td>
            </tr>
    </table>
</asp:Content>
