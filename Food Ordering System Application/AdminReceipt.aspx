<%@ Page Title="" Language="C#" MasterPageFile="~/TGI_Master.Master" AutoEventWireup="true" CodeBehind="AdminReceipt.aspx.cs" Inherits="Food_Ordering_System_Application.AdminReceipt1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="card" style="border-radius: 1rem;">
            <div class=" align-items-center" />
            <div class="card-body p-4 p-lg-5 text-black">
                <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sales Details</h5>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AdminRecieptDetails]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="SalesId,ItemId" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="SalesId" HeaderText="SalesId" ReadOnly="True" SortExpression="SalesId" />
                        <asp:BoundField DataField="ItemId" HeaderText="Item ID" ReadOnly="True" SortExpression="ItemId" />
                        <asp:BoundField DataField="ItemName" HeaderText="Item Name" SortExpression="ItemName" />
                        <asp:BoundField DataField="ItemPrice" HeaderText="Item Price" SortExpression="ItemPrice" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                        <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#d9003d" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#d9003d" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
