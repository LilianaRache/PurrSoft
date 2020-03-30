<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="BusquedaUsuarioDoctor.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.BusquedaUsuarioDoctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../css/BusquedaUsuarioDoctor.css" rel="stylesheet" />

      <div class="shadow overflow col-md-offset-4" style="margin-bottom:20px; margin-top:30px; width:500px; height: 366px;">
            <div class="header"></div>
            <div class="profile">
                <div class="image">
                    <img src="../Images/summerfield-336672_1280.jpg" alt=""/>
                </div>
                <div class="name">
                    Daft Punk
                </div>
                <div class="nickname">
                    @daftpunk
                </div>
                <div class="location">
                    <span>place</span>
                </div>
                <div class="bottom">
                    <span class="following ">
                        <span class="count">170</span>
                        following
                    </span>
                </div>
            </div>
        </div><br /> <br />

    <asp:GridView ID="GridView1" CssClass="gridView" runat="server"></asp:GridView>


</asp:Content>
