<%@ Page Title="" Language="C#" MasterPageFile="~/TGI_Master.Master" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="Food_Ordering_System_Application.ThankYou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron text-center">
        <h1 class="display-3">Thank You For Ordering!</h1>
        <p class="lead">
            <strong>
                <asp:Label ID="lblOrderNumber" runat="server" Text=""></asp:Label></strong> is your order number.
        </p>
        <hr>
        <p class="lead">
            <a class="btn btn-primary btn-sm" href= "HomePage.aspx" role="button">Continue to homepage</a>
        </p>
    </div>
   
</asp:Content>
