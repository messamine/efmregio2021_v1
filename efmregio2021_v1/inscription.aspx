<%@ Page Title="" Language="C#" MasterPageFile="~/accueil.Master" AutoEventWireup="true" CodeBehind="inscription.aspx.cs" Inherits="efmregio2021_v1.inscription" %>
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
            <td>id</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">nom</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        
    </table>







    <table class="auto-style1">
        <tr>
            <td class="auto-style2">email</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox3" runat="server" Width="171px"></asp:TextBox>
            </td>
        </tr>
        
    </table>







    <table class="auto-style1">
        <tr>
            <td class="auto-style2">nom2</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox4" runat="server" Width="171px"></asp:TextBox>
            </td>
        </tr>
        
    </table>
      <br />
      <br />
    <br />
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="email incorect" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox2" ErrorMessage="CompareValidator"></asp:CompareValidator>
    <br />
    <br />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


    <asp:Button ID="Button1" runat="server" Text="inscription" />





  




<asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="ID EXISTE DEJA" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>





  




</asp:Content>

