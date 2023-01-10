<%@ Page Title="" Language="C#" MasterPageFile="~/TGI_Master.Master" AutoEventWireup="true" CodeBehind="SignUpPages.aspx.cs" Inherits="Food_Ordering_System_Application.SignUpPages" %>

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

                                <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Register your account now</h5>
                                <!-- 2 column grid layout with text inputs for the first and last names -->
                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <label class="form-label" for="form3Example1">Name</label>
                                            &nbsp;
                                            <asp:RequiredFieldValidator ID="rqfvNameRegister" runat="server" ControlToValidate="txtNameRegister" Display="Dynamic" ErrorMessage="*Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            &nbsp;
                                            <asp:TextBox ID="txtNameRegister" runat="server" class="form-control" type="text"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <label class="form-label" for="form3Example2">Phone Number</label>
                                            &nbsp;
                                            <asp:RequiredFieldValidator ID="rqfvPhoneNoRegister" runat="server" ControlToValidate="txtPhoneNoRegister" Display="Dynamic" ErrorMessage="*Phone No. is  required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                            &nbsp;
                                            <asp:TextBox ID="txtPhoneNoRegister" runat="server" class="form-control" type="number"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <!-- Email input -->
                                <div class="form-outline mb-4">
                                    <label class="form-label" for="form3Example3">Email address</label>
                                    &nbsp;
                                    <asp:RequiredFieldValidator ID="rqfvEmailRegister" runat="server" ControlToValidate="txtEmailRegister" Display="Dynamic" ErrorMessage="*Email is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    &nbsp;
                                    <asp:TextBox ID="txtEmailRegister" runat="server" class="form-control" type="email"></asp:TextBox>
                                </div>

                                <!-- Password input -->
                                <div class="form-outline mb-4">
                                    <label class="form-label" for="form3Example4">Password</label>
                                    &nbsp;
                                    <asp:RequiredFieldValidator ID="rqfvPasswordRegister" runat="server" ControlToValidate="txtPasswordRegister" Display="Dynamic" ErrorMessage="*Password is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    &nbsp;
                                    <asp:TextBox ID="txtPasswordRegister" runat="server" class="form-control" type="password"></asp:TextBox>
                                </div>

                                <!-- Submit button -->
                                <asp:Button ID="btnRegister" runat="server" Text="Sign up" class="btn btn-primary btn-block mb-4" OnClick="btnRegister_Click" />


                                <p class="mb-5 pb-lg-2" style="color: #393f81;">
                                    Already have an account? &nbsp;
                                            <asp:LinkButton ID="LinkLogin" runat="server" Style="color: #393f81;" OnClick="LinkLogin_Click" CausesValidation="false">Login here</asp:LinkButton>
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
