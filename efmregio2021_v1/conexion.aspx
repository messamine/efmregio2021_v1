<%@ Page Title="" Language="C#" MasterPageFile="~/accueil.Master" AutoEventWireup="true" CodeBehind="conexion.aspx.cs" Inherits="efmregio2021_v1.conexion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 29px;
        }
    </style>
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <table class="auto-style1">
        <tr>
            <td>utili</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">passe</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" Text="conexion" OnClick="Button1_Click" />
            </td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
    </table>








</asp:Content>
