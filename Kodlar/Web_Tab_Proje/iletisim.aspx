<%@ Page Title="BİZE ULAŞIN" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="iletisim.aspx.cs" Inherits="Web_Tab_Proje.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .auto-style3 {
            margin-right: 0;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div align="center">
    <asp:TextBox  ID="TextBox1" runat="server" Height="20px" Width="224px" BorderStyle="None">ÖZAK-ERCİYAS RESTORAN</asp:TextBox>
       <br />
    <br/>
    
        <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="911px" BorderStyle="None">ADRES:
Bartın Üniversitesi 
Mühendislik Mimarlık Fakültesi 
74110 Kutlubeyyazıcılar 
Bartın Merkez 
Bartın</asp:TextBox>
        <br />
       <br />
 <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style3" Height="27px" Width="269px" BorderStyle="None">İLETİŞİM:
0 (378) 555 55 55
</asp:TextBox>
       <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style3" Height="27px" Width="268px" BorderStyle="None">
ozak-erciyas@restaurant.com</asp:TextBox>

        <br/>
    <br/>
        </div>
    <div align="center">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2660.1231800068003!2d32.28967992838646!3d41.550044193448386!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x409b7ab4a40a9d37%3A0x503bc50f823c4b15!2zQmFydMSxbiDDnG5pdmVyc2l0ZXNpIEt1dGx1YmV5IFlhesSxY8SxbGFyIEthbXDDvHPDvA!5e0!3m2!1str!2str!4v1653505153246!5m2!1str!2str"
        width="1000" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>

</asp:Content>
