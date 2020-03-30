<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="RegistroUsuarios.aspx.cs" Inherits="PurrSoft_Proyecto_Final.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    

    <div style="text-align: center;">
        <form action="/my-handling-form-page" method="post">
                 <h1>Registro de Usuarios</h1>

            
            <label for="name">Tipo de documento:</label>
            <asp:DropDownList ID="ddlTipoDocuemto" runat="server"></asp:DropDownList>
             <br /> <br />

            <label for="motivo de consulta">Motivo de consulta:</label>
            <input type="text" id="ipMotivoConsulta" placeholder="Motivo de Consulta">
             <br /><br /> 

            <label for="descripcionCaso">Descripcion del caso:</label>
            <input type="text" id="ipDescripcionCaso" placeholder="">
             <br /><br />

            <label for="antecedentes">Antecedentes:</label>
            <input type="text" id="ipAntecedentes" placeholder="Antecedentes" />
             <br /><br />

            <label for="valoracion">Valoracion de resultados:</label>
            <input type="text" id="ipValoracionResultados" placeholder="Valoracion">
              <br /><br />
            
            <label for="prescripcion">Prescripcion Medica:</label>
            <input type="text" id="ipPrescripcionMedica" placeholder="Prescripcion">
             <br /><br />
            
           
            <div style=" margin: 0 auto; text-align: center; border-radius: 10px; border: 1px solid #666666;width: 248px; height: 195px;">
            <label for="fechaConsulta">Fecha de Consulta :</label>
            <asp:Calendar ID="CalenFechaConsulta" runat="server" Height="171px" Width="243px"></asp:Calendar>
            </div>
            <br /><br />

            <div style=" margin: 0 auto;text-align: center;border-radius: 10px;border: 1px solid #666666; width: 248px;height: 195px;">
            <label for="fechaProxConsulta">Fecha de proxima consulta:</label>
            <asp:Calendar  style="text-align: center" ID="CalenFechaProxConsulta" runat="server" Width="243px"></asp:Calendar>
            </div>
            <br /><br />
           
            <asp:Button ID="btnRegistrar" Text="Registrar" runat="server" />
            <asp:Button ID="btnVolver" runat="server" Text="Volver" />
        </form>

    </div>
    <br />
        
</asp:Content>
