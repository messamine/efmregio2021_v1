<%@ Page Title="" Language="C#" MasterPageFile="~/accueil.Master" AutoEventWireup="true" CodeBehind="reservation.aspx.cs" Inherits="efmregio2021_v1.reservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="TYPE :    "></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="prodduit_nuit" DataValueField="id_jour">
    
    
    
    
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:v1_regioConnectionString %>" SelectCommand="SELECT [id_jour], [prodduit_nuit] FROM [jour]"></asp:SqlDataSource>

    <br />
    date debut&nbsp;
    <input id="date1" type="date" runat="server" /><br />
    date fin  <input id="date2" type="date" runat="server" /><br />
    <br />MONTANT TOTAL : 
    <asp:TextBox ID="txtmontant" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <br />

</asp:Content>
