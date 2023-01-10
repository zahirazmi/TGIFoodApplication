<%@ Page Title="" Language="C#" MasterPageFile="~/TGI_Master.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Food_Ordering_System_Application.AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="card" style="border-radius: 1rem;">
            <div class=" align-items-center" />
            <div class="card-body p-4 p-lg-5 text-black">
                <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Admin's Page</h5>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceUserAcc" class="table table-hover">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="phoneNo" HeaderText="phoneNo" SortExpression="phoneNo" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="PasswordHash" HeaderText="PasswordHash" SortExpression="PasswordHash" />
                        <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                        <asp:CheckBoxField DataField="Enabled" HeaderText="Enabled" SortExpression="Enabled" />
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



    <asp:SqlDataSource ID="SqlDataSourceUserAcc" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [UserAccounts] WHERE [Id] = @Id" InsertCommand="INSERT INTO [UserAccounts] ([name], [phoneNo], [email], [PasswordHash], [Role], [Enabled]) VALUES (@name, @phoneNo, @email, @PasswordHash, @Role, @Enabled)" SelectCommand="SELECT * FROM [UserAccounts]" UpdateCommand="UPDATE [UserAccounts] SET [name] = @name, [phoneNo] = @phoneNo, [email] = @email, [PasswordHash] = @PasswordHash, [Role] = @Role, [Enabled] = @Enabled WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="phoneNo" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="PasswordHash" Type="String" />
            <asp:Parameter Name="Role" Type="String" />
            <asp:Parameter Name="Enabled" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="phoneNo" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="PasswordHash" Type="String" />
            <asp:Parameter Name="Role" Type="String" />
            <asp:Parameter Name="Enabled" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
