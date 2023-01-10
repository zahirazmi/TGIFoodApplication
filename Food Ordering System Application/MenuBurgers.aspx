<%@ Page Title="" Language="C#" MasterPageFile="~/TGI_Master.Master" AutoEventWireup="true" CodeBehind="MenuBurgers.aspx.cs" Inherits="Food_Ordering_System_Application.MenuBurgers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/css/bootstrap.min.css" rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Items] WHERE ([CatId] = @CatId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="CatId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Categories] ORDER BY [CatTitle]"></asp:SqlDataSource>



        <br />

        <br />


        <br />
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class=" align-items-center" />
            <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Order Page</h5>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Cart.aspx" class="fw-normal mb-3 pb-3" Style="letter-spacing: 1px;">Cart</asp:LinkButton>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="CatTitle" DataValueField="CatId">
            </asp:DropDownList>
            <br />

            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ItemId" GroupItemCount="4">
                <AlternatingItemTemplate>
                    <br />
                    <br />
                    <br />
                    <asp:Image class="card-img-top" ID="Image2" runat="server" ImageUrl='<%# Eval("ItemImage", "images/{0}") %>' Width="300px" />

                    <br />
                    <asp:Label ID="ItemTitleLabel2" runat="server" Text='<%# Eval("ItemTitle") %>' />
                    <br />
                    RM
                    <asp:Label ID="ItemPriceLabel2" runat="server" Text='<%# Eval("ItemPrice") %>' />
                    <br />
                    <asp:Label ID="ItemDescLabel2" runat="server" Text='<%# Eval("ItemDesc") %>' />
                    <br />
                    <asp:Label ID="lblItemID2" runat="server" Text='<%# Eval("ItemId") %>'></asp:Label>
                    <br />
                    Quantity:
                    <asp:TextBox ID="txtBurgerQuantity2" runat="server" TextMode="Number" Width="70px">1</asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="btnBurgerAdd2" runat="server" Text="Add to Cart" OnClick="btnBurgerAdd2_Click" />
                    <br />
                    </div>
                    </div>
                    </div>


                </AlternatingItemTemplate>


                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>

                <ItemTemplate>
                    <br />
                    <br />
                    <asp:Image class="card-img-top" ID="Image1" runat="server" ImageUrl='<%# Eval("ItemImage", "images/{0}") %>' Width="300px" />
                    <br />
                    &nbsp;<asp:Label ID="ItemTitleLabel" runat="server" Text='<%# Eval("ItemTitle") %>' />
                    <br />
                    RM
                    <asp:Label ID="ItemPriceLabel" runat="server" Text='<%# Eval("ItemPrice") %>' />
                    <br />
                    &nbsp;<asp:Label ID="ItemDescLabel" runat="server" Text='<%# Eval("ItemDesc") %>' />
                    <br />
                    <asp:Label ID="lblItemID1" runat="server" Text='<%# Eval("ItemId") %>'></asp:Label>
                    <br />
                    Quantity: &nbsp;<asp:TextBox ID="txtQuantitiy" runat="server" TextMode="Number" Width="70px">1</asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="btnBurgerAdd1" runat="server" OnClick="btnBurgerAdd1_Click" Text="Add to Cart" CommandArgument='<%# Eval("ItemId") %>' />
                    </td>
                </ItemTemplate>

                <LayoutTemplate>
                    <div class="card-group" width="150px">
                        <div class="card">
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                            <tr id="groupPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style=""></td>
                                </tr>
                            </table>
                </LayoutTemplate>

            </asp:ListView>


            <asp:Label ID="lblStatus" runat="server"></asp:Label>
            <asp:Label ID="lblSalesID" runat="server"></asp:Label>


        </div>




        <br />


    </section>
</asp:Content>
