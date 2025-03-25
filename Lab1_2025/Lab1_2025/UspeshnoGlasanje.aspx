<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UspeshnoGlasanje.aspx.cs" Inherits="Lab1_2025._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>
            Ви благодариме за учеството во акцијата за избор на најинтересен предмет на ФИНКИ.<br />
            Резултатите од гласањето ќе ги добиете по електронска пошта, на Е-MAIL:
            <em><asp:Label ID="savedEmail" runat="server" Text="email_address@students.finki.ukim.mk"></asp:Label></em>
        </h1>
    </div>

</asp:Content>
