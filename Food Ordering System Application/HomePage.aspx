<%@ Page Title="" Language="C#" MasterPageFile="~/TGI_Master.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Food_Ordering_System_Application.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>

        <div class="row flex-lg-row-reverse align-items-center g-5 py-5">
            <div class="col-10 col-sm-8 col-lg-6">
                <img src="Images/pexels-dima-valkov-3864681.jpg" class="d-block mx-lg-auto img-fluid" alt="Bootstrap Themes" width="700" height="500" loading="lazy">
            </div>
            <div class="col-lg-5">
                <h1 class="display-5 fw-bold lh-1 mb-3">TGI's Friday</h1>
                <p class="lead">TGI Fridays℠ is an international chain focusing on casual dining, with over 1000 restaurants in 58 countries. Famous for fresh food and mouthwatering American classics, from appetizers perfect for sharing, to memorable burgers and delicious desserts. With the fun and friendly waiters and waitresses, we have become the ultimate destination for diners looking for something distinctive and different.</p>
                <div class="d-grid gap-2 d-md-flex justify-content-md-start">
                    <asp:Button ID="Button1" runat="server" Text="Order Now!" class="btn btn-primary btn-lg px-4 me-md-2 fw-bold" OnClick="Button1_Click" />
                    &nbsp; &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Menu" class="btn btn-outline-secondary btn-lg px-4" OnClick="Button2_Click" />
                </div>
            </div>
        </div>


    </header>

</asp:Content>
