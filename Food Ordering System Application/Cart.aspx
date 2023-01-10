<%@ Page Title="" Language="C#" MasterPageFile="~/TGI_Master.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Food_Ordering_System_Application.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="h-100 h-custom" style="background-color: #eee;">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <div>
                <H3 class="mb-1">Shopping cart</H3>
                
            </div>
            <div>
                <p class="mb-0">&nbsp;</p>
                <p class="mb-0">&nbsp;</p>
            </div>
        </div>
        <p>Sales ID: <asp:Label ID="lblSalesID" runat="server"></asp:Label></p>

        <a href='javascript:history.go(-1)'>Continue Shopping</a>

        <div class="”table-responsive”">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="table table-striped">

                <AlternatingRowStyle BackColor="White" />

                <Columns>
                    <asp:ImageField DataImageUrlField="ItemImage" DataImageUrlFormatString="images/{0}" HeaderText="Image">
                        <ControlStyle Width="100px" />
                        <HeaderStyle Width="0px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="ItemId" HeaderText="Item ID" SortExpression="ItemId" />
                    <asp:BoundField DataField="ItemTitle" HeaderText="Product" SortExpression="ItemTitle" />
                    <asp:TemplateField HeaderText="Price" SortExpression="ItemPrice">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ItemPrice") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ItemPrice", "{0:c}") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Width="55px" Wrap="False" />
                        <ItemStyle Width="55px" Wrap="False" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity">
                        <HeaderStyle Width="55px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SubTotal" HeaderText="Sub Total" SortExpression="SubTotal" DataFormatString="{0:c}" ReadOnly="True">
                        <HeaderStyle Width="55px" Wrap="False" />
                    </asp:BoundField>
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="getItems" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:CookieParameter CookieName="Name" Name="salesid" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;
        <br />

        <div class="cart-body">
            <div class="row">
                <div class="col-md-12 order-2 order-lg-1 col-lg-5 col-xl-6">
                    <div class="order-note">
                      
                    </div>
                </div>
                <div class="col-md-12 order-1 order-lg-2 col-lg-7 col-xl-6">
                    <div class="order-total table-responsive ">
                        <table class="table table-borderless text-right">
                            <tbody>
                                <tr>
                                    <td>Total :</td>
                                    <td>
                                        <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Tax(6%) :</td>
                                    <td>
                                        <asp:Label ID="lblTax" runat="server" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Rounding :</td>
                                    <td>
                                        <asp:Label ID="lblRounding" runat="server" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="f-w-7 font-18">
                                        <h4>Amount :</h4>
                                    </td>
                                    <td class="f-w-7 font-18">
                                        <h4>
                                            <asp:Label ID="lblTotalAmount" runat="server" Text=""></asp:Label></h4>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="cart-footer text-right">
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="ri-save-line mr-2, btn btn-info my-1" OnClick="Button1_Click" />
            <asp:Button ID="btnCheckout" runat="server" Text="Checkout" class="ri-save-line mr-2, btn btn-info my-1" OnClick="btnCheckout_Click" />
        </div>
        
          <asp:Label ID="lblStatus" runat="server"></asp:Label>
    </section>
</asp:Content>
