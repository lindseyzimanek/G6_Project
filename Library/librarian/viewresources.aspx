<%@ Page Title="" Language="VB" MasterPageFile="~/Library/library.master" AutoEventWireup="false" CodeFile="viewresources.aspx.vb" Inherits="librarian_viewresources" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_slpl %>" SelectCommand="SELECT * FROM [slpl_materials]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MaterialID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="MaterialType" HeaderText="Material Type" SortExpression="MaterialType" />
            <asp:BoundField DataField="Available" HeaderText="Available" SortExpression="Available" />
            <asp:HyperLinkField DataNavigateUrlFields="MaterialID" Text="View Details" DataNavigateUrlFormatString="~/librarian/resourcedetails.aspx?MaterialID={0}" />
        </Columns>
    </asp:GridView>


</asp:Content>

