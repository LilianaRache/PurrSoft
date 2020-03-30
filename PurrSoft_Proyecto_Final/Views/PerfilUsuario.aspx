<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="PerfilUsuario.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.Perfil_Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <img src="../Images/Icono_usuario.jpg" align="left">
   
    <div style="padding: 20px;text-align: center;border: black 2px solid; width:600px; height:100px;">
      
    </div>
    <asp:Button ID="btnActualizarDatos" runat="server" Text="Actualizar Perfil"/>

    <asp:TextBox  ID="txtNombreUsuario" runat="server"></asp:TextBox>

    <table>
        <tr>
            <td> <asp:GridView ID="gvListaMascotas" runat="server"></asp:GridView></td>
            <td><asp:Button ID="Button1" runat="server" Text="Button" /></td>
        </tr>

    </table>
   

</asp:Content>
