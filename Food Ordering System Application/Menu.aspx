<%@ Page Title="" Language="C#" MasterPageFile="~/TGI_Master.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Food_Ordering_System_Application.Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="card" style="border-radius: 1rem;">
            <div class=" align-items-center" />
            <div class="card-body p-4 p-lg-5 text-black">
                <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Our Menu</h5>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Items] WHERE ([CatId] = @CatId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="CatId" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Categories] ORDER BY [CatId]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="CatTitle" DataValueField="CatId">
                </asp:DropDownList>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ItemId" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="ItemTitle" HeaderText="Name" SortExpression="ItemTitle" />
                        <asp:BoundField DataField="ItemPrice" HeaderText="Price" SortExpression="ItemPrice" DataFormatString="{0:c}" >
                        <ItemStyle Width="80px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ItemDesc" HeaderText="Description" SortExpression="ItemDesc" >
                        <ControlStyle Width="100px" />
                        <ItemStyle Width="300px" />
                        </asp:BoundField>
                        <asp:ImageField DataImageUrlField="ItemImage" DataImageUrlFormatString="images/{0}" HeaderText="Image">
                            <ControlStyle Width="200px" />
                        </asp:ImageField>
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
