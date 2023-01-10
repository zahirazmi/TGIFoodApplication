<%@ Page Title="" Language="C#" MasterPageFile="~/TGI_Master.Master" AutoEventWireup="true" CodeBehind="LoginPages.aspx.cs" Inherits="Food_Ordering_System_Application.LoginPages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Styles/js/bootstrap.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="vh-100" style="background-color: #FFFFFF;">
        <div class="shadow-lg p-4 mb-4 bg-light">

            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-xl-10">
                        <div class="card" style="border-radius: 1rem;">

                            <div class=" align-items-center" />
                            <div class="card-body p-4 p-lg-5 text-black">


                                <div class="text-center mb-3 pb-3">
                                    <img src="Images/Tgi_l-removebg-preview.png" style="width: 150px" />
                                </div>

                                <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Login into your account</h5>

                                <div class="form-outline mb-4">
                                    <label class="form-label" for="form2Example17">Email address</label>
                                    &nbsp;
                                    <asp:RequiredFieldValidator ID="rqfvEmailLogin" runat="server" ControlToValidate="txtEmailLogin" Display="Dynamic" ErrorMessage="*Email is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    &nbsp;<asp:TextBox ID="txtEmailLogin" runat="server" type="email" class="form-control form-control-lg"></asp:TextBox>
                                </div>

                                <div class="form-outline mb-4">
                                    <label class="form-label" for="form2Example27">Password</label>
                                    &nbsp;
                                    <asp:RequiredFieldValidator ID="rqfvPasswordLogin" runat="server" ControlToValidate="txtPasswordLogin" Display="Dynamic" ErrorMessage="*Password is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>

                                    &nbsp;<asp:TextBox ID="txtPasswordLogin" runat="server" type="password" class="form-control form-control-lg"></asp:TextBox>
                                </div>

                                <div class="pt-1 mb-4">
                                    <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn btn-primary btn-lg btn-block" OnClick="btnLogin_Click" />
                                </div>

                                <p class="mb-5 pb-lg-2" style="color: #393f81;">
                                    Don't have an account? &nbsp;
                                            <asp:LinkButton ID="LinkRegister" runat="server" Style="color: #393f81;" OnClick="LinkRegister_Click" CausesValidation="false">Register here</asp:LinkButton>
                                </p>
                                <asp:Label ID="lblStatus" runat="server" Visible="false" role="alert"></asp:Label>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
