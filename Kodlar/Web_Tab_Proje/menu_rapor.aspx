<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="menu_rapor.aspx.cs" Inherits="Web_Tab_Proje.menu_rapor" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <br />
    <br />
    
    <br />
    <br />    
    <br />
    <br />
<rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="1232px">
    </rsweb:ReportViewer>

</asp:Content>
