<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="RegistroMascotas.aspx.cs" Inherits="PurrSoft_Proyecto_Final.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <!--<div style="text-align: center;">
        <form action="/my-handling-form-page" method="post">

            <table  style="text-align: center;">

                <tr>
                    <td colspan=2><h1>Registro Historia Clinica</h1></td>
                </tr>

                <tr>
                    <td> <label for="name">Nombre de doctor:</label></td>
                    <td style="width: 414px"> <input type="text" id="ipNomDoctor" placeholder="Nombre de doctor" style="width: 177px; height: 16px"></td>
                </tr>

                <tr>
                    <td> <label for="motivo de consulta">Motivo de consulta:</label></td>
                    <td style="width: 414px"> <input type="text" id="ipMotivoConsulta" placeholder="Motivo de Consulta" style="width: 186px; height: 24px"></td>
                </tr>

                <tr>
                    <td><label for="descripcionCaso">Descripcion del caso:</label></td>
                    <td style="width: 414px">
                        <textarea id="txtDescripcionCaso"  placeholder="Descripcion" style="width: 338px; height: 61px"></textarea>
         
                </tr>
           
                <tr>
                    <td><label for="antecedentes">Antecedentes:</label></td>
                    <td> <textarea id="txtAntecedentes"  placeholder="Antecedentes" style="width: 338px; height: 61px"></textarea></td>
                </tr>
                <tr>
                    <td><label for="valoracion">Valoracion de resultados:</label></td>
                    <td> <textarea id="txtValoracion"  placeholder="Valoracion Resultados" style="width: 338px; height: 61px"></textarea></td>
                </tr>
                <tr>
                    <td><label for="prescripcion">Prescripcion Medica:</label></td>
                    <td> <textarea id="txtPrescripcion"  placeholder="Prescripcion" style="width: 338px; height: 61px"></textarea></td>
                </tr>
                <tr>
                     <td style="margin: 0 auto; text-align: center; border-radius: 10px; border: 1px solid #666666; width: 248px; height: 195px;">
                        <label for="fechaConsulta">Fecha de Consulta :</label> 
                         <asp:Calendar ID="CalenFechaConsulta" runat="server"></asp:Calendar>
                     </td>
                   
                </tr>
             
                  <tr>
                    <td style="margin: 0 auto; text-align: center; border-radius: 10px; border: 1px solid #666666; width: 248px; height: 195px;">
                        <label for="fechaProxConsulta">Fecha de proxima consulta:</label>
                    <asp:Calendar ID="CalenFechaProxConsulta" runat="server"></asp:Calendar></td>
                </tr>
                  <tr>
                    <td> <asp:Button ID="btnRegistrar" Text="Registrar" runat="server" /></td>
                    <td style="width: 414px">  <asp:Button ID="btnVolver" runat="server" Text="Volver" /></td>  
      
        </table>
      </form>
      
    </div> -->
   
    <link href="../css/registroMascota.css" rel="stylesheet" />

    <link href="../css/font-awesome.css" rel="stylesheet" />



     <section class="form_wrap">

        <section class="cantact_info">
            <section class="info_title">
                <h2>Registrar <br>mascota</h2>
            </section>
            
        </section>

        <form action="" >
            <div class="registro">
                <asp:Label Text="Motivo de consulta" Font-Size="19px" runat="server" /><br /> 
                <asp:Label Text="label" runat="server" font-size="15px"/>
                <br />
                <asp:Label Text="text" runat="server" Font-Size="19px"/><br />
                <asp:Label Text="text" runat="server" font-size="15px"/>
                <br />
                <asp:Label Text="text" runat="server" Font-Size="19px"/><br />
                <asp:Label Text="text" runat="server" font-size="15px" />
                <br />
                <asp:Label Text="text" runat="server" Font-Size="19px"/><br />
                <asp:Label Text="text" runat="server"  font-size="15px"/>
                <br />
                 <asp:Label Text="FEcha de nacimiento" runat="server" Font-Size="19px"/><br />
                 <asp:Calendar ID="CalFecConsul" runat="server"></asp:Calendar>
                <br />
                <asp:Button ID="Button1" runat="server" CssClass="botones" Text="Button" /><br /> <br /> <br />
                <br />
                <a href="#" class="botones">volver</a>
            </div>
        </form>

    </section>
    <a href="#" class="botones btn-sm">content</a>
    
</asp:Content>
