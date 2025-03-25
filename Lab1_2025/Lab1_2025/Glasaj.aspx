<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Glasaj.aspx.cs" Inherits="Lab1_2025.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:Image ID="logo" runat="server" AlternateText="Лого на ФИНКИ" ImageUrl="https://www.finki.ukim.mk/sites/default/files/logo_10.png" Width="292px" />
    </div>

    <div style="margin-left: 10px;">
        <asp:Label ID="lblProfessor" runat="server" Text="вонр. проф. д-р Весна Димитрова"></asp:Label>
    </div>

    <div style="margin-bottom: 10px; margin-left: 20px; margin-top: 15px">
        <asp:ListBox ID="listSubjects" runat="server" AutoPostBack="true" OnSelectedIndexChanged="listSubjects_SelectedIndexChanged"></asp:ListBox>
        <asp:ListBox ID="listCredits" runat="server" OnSelectedIndexChanged="listCredits_SelectedIndexChanged"></asp:ListBox>
    </div>

    <div style="margin-bottom: 10px; margin-left: 80px;">
        <asp:Button ID="btnVote" runat="server" Text="Гласај" OnClick="btnVote_Click" />
    </div>

 
</asp:Content>
