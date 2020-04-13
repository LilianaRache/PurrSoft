<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="PerfilUsuario.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.Perfil_Usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <link href="../css/usuario.css" rel="stylesheet" />


    <div class="container" style="margin-top: 50px">

        <div class="nombre_u">

            <asp:Image ID="imgFotoUsuario" runat="server" CssClass="avatar_u" />
            <h1 class="user_n">
                <asp:Label ID="lblNombresUsu" runat="server" Font-Size="22px" Font-Bold="true"></asp:Label><br />
                <asp:Label ID="lblApellidosUsu" runat="server" Font-Size="20px" Font-Bold="true"></asp:Label></h1>
        </div>
        <ul class="social_lista">
            <li>
                <h3><b>Telefono:</b></h3>
                <asp:Label ID="lblTelefono" runat="server" Text="Label"></asp:Label>
            </li>
            <li>
                <h3><b>Correo:</b></h3>
                <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
            </li>
        </ul>
        <asp:Button ID="btnActualizar" runat="server" Text="Actualizar Mis datos" CssClass="btn btn-success" Height="60px" Width="160px" Font-Size="14px" Font-Bold="true" OnClick="btnActualizar_Click" />
        <div>
            <ul class="nav justify-content-end">
                <li class="nav-item text-right">
                    <asp:Button ID="btnVolver" runat="server" CssClass="btn btn-secondary float-right boton-regresar" Text="Regresar" Font-Size="20px" OnClick="btnVolver_Click" Style="left: -200px; top: -56px; margin-bottom: 0" />
                </li>
            </ul>
        </div>
        <div class="infromacion">
            <h3 style="text-align: center">Mis Mascotas</h3>
            <br />
            <asp:GridView ID="gvdListaMascotasUsu" runat="server" AutoGenerateColumns="False" OnRowCommand="gvdListaMascotasUsu_RowCommand" CssClass="tabla-mascotas" Style="margin-top: 0px; left: 164px; top: 0px; width: 738px;">
                <Columns>
                    <asp:BoundField DataField="ID_mascota" HeaderText="Id_Mascota">
                        <HeaderStyle BackColor="#999999" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre de la Mascota">
                        <HeaderStyle BackColor="#999999" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Especie" HeaderText="Especie">
                        <HeaderStyle BackColor="#999999" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Raza" HeaderText="Raza">
                        <HeaderStyle BackColor="#999999" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Ver Detalle">
                        <ItemTemplate>
                            <asp:ImageButton CommandName="Ver" ID="imgVisualizar" runat="server" ImageUrl="~/Images/ojo.png" Width="22px" />
                        </ItemTemplate>
                        <HeaderStyle BackColor="#999999" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>

    <div class="infromacion">
        <h3 style="text-align: center">Detalles de la Mascota</h3>
        <br />
        <asp:GridView ID="gvdListaDetalleMascotasUsuario" runat="server" CssClass="tabla-mascotas" Style="margin-top: 0px; left: 203px; top: 6px; width: 728px;" AutoGenerateColumns="False" OnRowCommand="gvdListaDetalleMascotasUsuario_RowCommand">
            <Columns>
                <asp:BoundField DataField="ID_detalle_historia" HeaderText="ID_detalle"><HeaderStyle BackColor="#999999" /></asp:BoundField>
                <asp:BoundField DataField="Nombre_doctor" HeaderText="Nombre del Doctor"><HeaderStyle BackColor="#999999" /></asp:BoundField>
                <asp:BoundField DataField="Motivo_consulta" HeaderText="Motivo de la Consulta"><HeaderStyle BackColor="#999999" /></asp:BoundField>
                <asp:TemplateField HeaderText="  Ver  ">
                    <ItemTemplate> 
                        <asp:ImageButton CommandName="VerDetalle" ID="imgVisualizar" runat="server" ImageUrl="~/Images/ojo.png" Width="22px"/>
                    </ItemTemplate>
                    <HeaderStyle BackColor="#999999" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>


</asp:Content>
