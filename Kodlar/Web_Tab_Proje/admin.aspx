<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Web_Tab_Proje.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Admin</title>
    <style type="text/css">
        .auto-style1 {
            height: 1402px;
            margin-left: 0px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style5 {
            width: 100%;
            height: 126px;
        }
        .auto-style7 {
            width: 328px;
        }
        .auto-style8 {
            height: 221px;
        }
        .auto-style9 {
            width: 973px;
        }
        .auto-style11 {
            width: 328px;
            height: 344px;
        }
        .auto-style14 {
            width: 456px;
            height: 344px;
        }
        .auto-style15 {
            width: 456px;
        }
        .auto-style16 {
            height: 221px;
            width: 456px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">






            <div  padding="5px">


                <table class="auto-style3">
                    <tr>
                        <td class="auto-style14">


                            <asp:FormView ID="Kul_bilgileri_form" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="kullanici_id" DataSourceID="Kul_bil_form_sql" GridLines="Both" OnDataBound="Kul_bilgileri_form_DataBound">
                                <EditItemTemplate>
                                    kullanici_id:
                                    <asp:Label ID="kullanici_idLabel1" runat="server" Text='<%# Eval("kullanici_id") %>' />
                                    <br />
                                    kullanici_adi:
                                    <asp:TextBox ID="kullanici_adiTextBox" runat="server" Text='<%# Bind("kullanici_adi") %>' />
                                    <br />
                                    kullanici_soyadi:
                                    <asp:TextBox ID="kullanici_soyadiTextBox" runat="server" Text='<%# Bind("kullanici_soyadi") %>' />
                                    <br />
                                    kullanici_telefon:
                                    <asp:TextBox ID="kullanici_telefonTextBox" runat="server" Text='<%# Bind("kullanici_telefon") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Güncelleştir" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal" />
                                </EditItemTemplate>
                                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                <InsertItemTemplate>
                                    kullanici_adi:
                                    <asp:TextBox ID="kullanici_adiTextBox" runat="server" Text='<%# Bind("kullanici_adi") %>' />
                                    <br />
                                    kullanici_soyadi:
                                    <asp:TextBox ID="kullanici_soyadiTextBox" runat="server" Text='<%# Bind("kullanici_soyadi") %>' />
                                    <br />
                                    kullanici_telefon:
                                    <asp:TextBox ID="kullanici_telefonTextBox" runat="server" Text='<%# Bind("kullanici_telefon") %>' />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Ekle" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <table class="auto-style5">
                                        <tr>
                                            <td>kullanici_id:</td>
                                            <td>
                                                <asp:Label ID="kullanici_idLabel" runat="server" Text='<%# Eval("kullanici_id") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>kullanici_adi:</td>
                                            <td>
                                                <asp:Label ID="kullanici_adiLabel" runat="server" Text='<%# Bind("kullanici_adi") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>kullanici_soyadi:</td>
                                            <td>
                                                <asp:Label ID="kullanici_soyadiLabel" runat="server" Text='<%# Bind("kullanici_soyadi") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>kullanici_telefon:</td>
                                            <td>
                                                <asp:Label ID="kullanici_telefonLabel" runat="server" Text='<%# Bind("kullanici_telefon") %>' />
                                            </td>
                                        </tr>
                                    </table>
&nbsp;<br />&nbsp;<br />&nbsp;<br />&nbsp;<br />&nbsp;<asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Düzenle" />
                                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Sil" />
                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Yeni" />
                                </ItemTemplate>
                                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            </asp:FormView>
                                                                        
                            <asp:FormView ID="Giris_bilgileri_form" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="giris_id" DataSourceID="SqlDataSource2" GridLines="Both" OnDataBound="Kul_bilgileri_form_DataBound">
                                <EditItemTemplate>
                                    giris_id:
                                    <asp:Label ID="giris_idLabel1" runat="server" Text='<%# Eval("giris_id") %>' />
                                    <br />
                                    kullanici_id:
                                    <asp:TextBox ID="kullanici_idTextBox" runat="server" Text='<%# Bind("kullanici_id") %>' />
                                    <br />
                                    giris_mail:
                                    <asp:TextBox ID="giris_mailTextBox" runat="server" Text='<%# Bind("giris_mail") %>' />
                                    <br />
                                    giris_sifre:
                                    <asp:TextBox ID="giris_sifreTextBox" runat="server" Text='<%# Bind("giris_sifre") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                <InsertItemTemplate>
                                    kullanici_id:
                                    <asp:TextBox ID="kullanici_idTextBox" runat="server" Text='<%# Bind("kullanici_id") %>' />
                                    <br />
                                    giris_mail:
                                    <asp:TextBox ID="giris_mailTextBox" runat="server" Text='<%# Bind("giris_mail") %>' />
                                    <br />
                                    giris_sifre:
                                    <asp:TextBox ID="giris_sifreTextBox" runat="server" Text='<%# Bind("giris_sifre") %>' />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    giris_id:
                                    <asp:Label ID="giris_idLabel" runat="server" Text='<%# Eval("giris_id") %>' />
                                    <br />kullanici_id:&nbsp;<asp:Label ID="kullanici_idLabel" runat="server" Text='<%# Bind("kullanici_id") %>' />
                                    <br />giris_mail:
                                    <asp:Label ID="giris_mailLabel" runat="server" Text='<%# Bind("giris_mail") %>' />
                                    <br />giris_sifre:
                                    <asp:Label ID="giris_sifreLabel" runat="server" Text='<%# Bind("giris_sifre") %>' />
                                    <br />
                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                </ItemTemplate>
                                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            </asp:FormView>

                            <td class="auto-style11">

                            <asp:FormView ID="Menu_bilgileri_form" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="yemek_id" DataSourceID="SqlDataSource3" GridLines="Both" OnDataBound="Kul_bilgileri_form_DataBound" Width="124px">
                                <EditItemTemplate>
                                    yemek_id:
                                    <asp:Label ID="yemek_idLabel1" runat="server" Text='<%# Eval("yemek_id") %>' />
                                    <br />
                                    yemek_adi:
                                    <asp:TextBox ID="yemek_adiTextBox" runat="server" Text='<%# Bind("yemek_adi") %>' />
                                    <br />
                                    yemek_fiyati:
                                    <asp:TextBox ID="yemek_fiyatiTextBox" runat="server" Text='<%# Bind("yemek_fiyati") %>' />
                                    <br />
                                    yemek_icerigi:
                                    <asp:TextBox ID="yemek_icerigiTextBox" runat="server" Text='<%# Bind("yemek_icerigi") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                <InsertItemTemplate>
                                    yemek_adi:
                                    <asp:TextBox ID="yemek_adiTextBox" runat="server" Text='<%# Bind("yemek_adi") %>' />
                                    <br />
                                    yemek_fiyati:
                                    <asp:TextBox ID="yemek_fiyatiTextBox" runat="server" Text='<%# Bind("yemek_fiyati") %>' />
                                    <br />
                                    yemek_icerigi:
                                    <asp:TextBox ID="yemek_icerigiTextBox" runat="server" Text='<%# Bind("yemek_icerigi") %>' />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    yemek_id:&nbsp;<asp:Label ID="yemek_idLabel" runat="server" Text='<%# Eval("yemek_id") %>' />
                                    <br />yemek_adi:&nbsp;<asp:Label ID="yemek_adiLabel" runat="server" Text='<%# Bind("yemek_adi") %>' />
                                    <br />yemek_fiyati:&nbsp;<asp:Label ID="yemek_fiyatiLabel" runat="server" Text='<%# Bind("yemek_fiyati") %>' />
                                    <br />yemek_icerigi:
                                    <asp:Label ID="yemek_icerigiLabel" runat="server" Text='<%# Bind("yemek_icerigi") %>' />
                                    <br /><asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                </ItemTemplate>
                                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            </asp:FormView>
                        
                        
                            <asp:FormView ID="Sepet_form" runat="server" CellPadding="3" DataKeyNames="yeni_siparis_id" DataSourceID="Sepet_sql" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" GridLines="Both">
                                <EditItemTemplate>
                                    yeni_siparis_id:
                                    <asp:Label ID="yeni_siparis_idLabel1" runat="server" Text='<%# Eval("yeni_siparis_id") %>' />
                                    <br />
                                    yemek_id:
                                    <asp:TextBox ID="yemek_idTextBox" runat="server" Text='<%# Bind("yemek_id") %>' />
                                    <br />
                                    kullanıcı_id:
                                    <asp:TextBox ID="kullanıcı_idTextBox" runat="server" Text='<%# Bind("kullanıcı_id") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Güncelleştir" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal" />
                                </EditItemTemplate>
                                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                <InsertItemTemplate>
                                    yemek_id:
                                    <asp:TextBox ID="yemek_idTextBox0" runat="server" Text='<%# Bind("yemek_id") %>' />
                                    <br />
                                    kullanıcı_id:
                                    <asp:TextBox ID="kullanıcı_idTextBox0" runat="server" Text='<%# Bind("kullanıcı_id") %>' />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Ekle" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    yeni_siparis_id:
                                    <asp:Label ID="yeni_siparis_idLabel" runat="server" Text='<%# Eval("yeni_siparis_id") %>' />
                                    <br />
                                    yemek_id:
                                    <asp:Label ID="yemek_idLabel" runat="server" Text='<%# Bind("yemek_id") %>' />
                                    <br />
                                    kullanıcı_id:
                                    <asp:Label ID="kullanıcı_idLabel" runat="server" Text='<%# Bind("kullanıcı_id") %>' />
                                    <br />
                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Düzenle" />
                                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Sil" />
                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Yeni" />
                                </ItemTemplate>
                                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            </asp:FormView>

                            <asp:FormView ID="Eski_sip_form" runat="server" CellPadding="3" DataKeyNames="eski_siparis_id" DataSourceID="Eski_sip_sql" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" GridLines="Both">
                                <EditItemTemplate>
                                    eski_siparis_id:
                                    <asp:Label ID="eski_siparis_idLabel1" runat="server" Text='<%# Eval("eski_siparis_id") %>' />
                                    <br />
                                    kullanici_id:
                                    <asp:TextBox ID="kullanici_idTextBox" runat="server" Text='<%# Bind("kullanici_id") %>' />
                                    <br />
                                    yemek_id:
                                    <asp:TextBox ID="yemek_idTextBox" runat="server" Text='<%# Bind("yemek_id") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Güncelleştir" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal" />
                                </EditItemTemplate>
                                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                <InsertItemTemplate>
                                    kullanici_id:
                                    <asp:TextBox ID="kullanici_idTextBox0" runat="server" Text='<%# Bind("kullanici_id") %>' />
                                    <br />
                                    yemek_id:
                                    <asp:TextBox ID="yemek_idTextBox0" runat="server" Text='<%# Bind("yemek_id") %>' />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Ekle" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    eski_siparis_id:
                                    <asp:Label ID="eski_siparis_idLabel" runat="server" Text='<%# Eval("eski_siparis_id") %>' />
                                    <br />
                                    kullanici_id:
                                    <asp:Label ID="kullanici_idLabel" runat="server" Text='<%# Bind("kullanici_id") %>' />
                                    <br />
                                    yemek_id:
                                    <asp:Label ID="yemek_idLabel" runat="server" Text='<%# Bind("yemek_id") %>' />
                                    <br />
                                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Düzenle" />
                                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Sil" />
                                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Yeni" />
                                </ItemTemplate>
                                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            </asp:FormView>
                        
                        
                        </td>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">


            <asp:GridView ID="Kul_Bilgileri" runat="server" AutoGenerateColumns="False" DataKeyNames="kullanici_id" DataSourceID="Kul_bil_sql" Height="100px" Width="362px" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="kullanici_id" HeaderText="kullanici_id" InsertVisible="False" ReadOnly="True" SortExpression="kullanici_id" />
                    <asp:BoundField DataField="kullanici_adi" HeaderText="kullanici_adi" SortExpression="kullanici_adi" />
                    <asp:BoundField DataField="kullanici_soyadi" HeaderText="kullanici_soyadi" SortExpression="kullanici_soyadi" />
                    <asp:BoundField DataField="kullanici_telefon" HeaderText="kullanici_telefon" SortExpression="kullanici_telefon" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
                        
                        
                        </td>
                        <td class="auto-style7">


            <asp:GridView ID="Giris_bil" runat="server" AutoGenerateColumns="False" DataKeyNames="giris_id" DataSourceID="Gir_bil_sql" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="giris_id" HeaderText="giris_id" InsertVisible="False" ReadOnly="True" SortExpression="giris_id" />
                    <asp:BoundField DataField="kullanici_id" HeaderText="kullanici_id" SortExpression="kullanici_id" />
                    <asp:BoundField DataField="giris_mail" HeaderText="giris_mail" SortExpression="giris_mail" />
                    <asp:BoundField DataField="giris_sifre" HeaderText="giris_sifre" SortExpression="giris_sifre" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
                        
                        
                        </td>
                        
                    </tr>
                    <tr>
                        <td class="auto-style16">


            <asp:GridView ID="Eski_Siparisler" runat="server" AutoGenerateColumns="False" DataKeyNames="eski_siparis_id" DataSourceID="Eski_sip_sql" Height="5px" Width="5px" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="eski_siparis_id" HeaderText="eski_siparis_id" InsertVisible="False" ReadOnly="True" SortExpression="eski_siparis_id" />
                    <asp:BoundField DataField="kullanici_id" HeaderText="kullanici_id" SortExpression="kullanici_id" />
                    <asp:BoundField DataField="yemek_id" HeaderText="yemek_id" SortExpression="yemek_id" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
                        

                        </td>
                        <td class="auto-style8">


            <asp:GridView ID="Sepet_bil" runat="server" AutoGenerateColumns="False" DataKeyNames="yeni_siparis_id" DataSourceID="Sepet_sql" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="yeni_siparis_id" HeaderText="yeni_siparis_id" InsertVisible="False" ReadOnly="True" SortExpression="yeni_siparis_id" />
                    <asp:BoundField DataField="yemek_id" HeaderText="yemek_id" SortExpression="yemek_id" />
                    <asp:BoundField DataField="kullanıcı_id" HeaderText="kullanıcı_id" SortExpression="kullanıcı_id" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
                                                
                        </td>
                           </tr>
                   
                    </table>

                <table>
                   
                    
                    <tr>
                        <td class="auto-style9"><asp:GridView ID="Menu" runat="server" AutoGenerateColumns="False" DataKeyNames="yemek_id" DataSourceID="Menu_sql" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1150px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="yemek_id" HeaderText="yemek_id" InsertVisible="False" ReadOnly="True" SortExpression="yemek_id" />
                    <asp:BoundField DataField="yemek_adi" HeaderText="yemek_adi" SortExpression="yemek_adi" />
                    <asp:BoundField DataField="yemek_fiyati" HeaderText="yemek_fiyati" SortExpression="yemek_fiyati" />
                    <asp:BoundField DataField="yemek_icerigi" HeaderText="yemek_icerigi" SortExpression="yemek_icerigi" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView></td>
                        </tr>
                    <tr>
                    <td class="auto-style9">
                       
                            <asp:SqlDataSource ID="Kul_bil_form_sql" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" DeleteCommand="DELETE FROM [Kullanici_bilgi_tablosu] WHERE [kullanici_id] = @original_kullanici_id AND [kullanici_adi] = @original_kullanici_adi AND [kullanici_soyadi] = @original_kullanici_soyadi AND [kullanici_telefon] = @original_kullanici_telefon" InsertCommand="INSERT INTO [Kullanici_bilgi_tablosu] ([kullanici_adi], [kullanici_soyadi], [kullanici_telefon]) VALUES (@kullanici_adi, @kullanici_soyadi, @kullanici_telefon)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Kullanici_bilgi_tablosu] WHERE ([kullanici_id] = @kullanici_id)" UpdateCommand="UPDATE [Kullanici_bilgi_tablosu] SET [kullanici_adi] = @kullanici_adi, [kullanici_soyadi] = @kullanici_soyadi, [kullanici_telefon] = @kullanici_telefon WHERE [kullanici_id] = @original_kullanici_id AND [kullanici_adi] = @original_kullanici_adi AND [kullanici_soyadi] = @original_kullanici_soyadi AND [kullanici_telefon] = @original_kullanici_telefon">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_kullanici_id" Type="Int32" />
                                    <asp:Parameter Name="original_kullanici_adi" Type="String" />
                                    <asp:Parameter Name="original_kullanici_soyadi" Type="String" />
                                    <asp:Parameter Name="original_kullanici_telefon" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="kullanici_adi" Type="String" />
                                    <asp:Parameter Name="kullanici_soyadi" Type="String" />
                                    <asp:Parameter Name="kullanici_telefon" Type="Int32" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Kul_Bilgileri" Name="kullanici_id" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="kullanici_adi" Type="String" />
                                    <asp:Parameter Name="kullanici_soyadi" Type="String" />
                                    <asp:Parameter Name="kullanici_telefon" Type="Int32" />
                                    <asp:Parameter Name="original_kullanici_id" Type="Int32" />
                                    <asp:Parameter Name="original_kullanici_adi" Type="String" />
                                    <asp:Parameter Name="original_kullanici_soyadi" Type="String" />
                                    <asp:Parameter Name="original_kullanici_telefon" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" DeleteCommand="DELETE FROM [Giris_bilgi_tablosu] WHERE [giris_id] = @original_giris_id AND [kullanici_id] = @original_kullanici_id AND [giris_mail] = @original_giris_mail AND [giris_sifre] = @original_giris_sifre" InsertCommand="INSERT INTO [Giris_bilgi_tablosu] ([kullanici_id], [giris_mail], [giris_sifre]) VALUES (@kullanici_id, @giris_mail, @giris_sifre)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Giris_bilgi_tablosu] WHERE ([kullanici_id] = @kullanici_id)" UpdateCommand="UPDATE [Giris_bilgi_tablosu] SET [kullanici_id] = @kullanici_id, [giris_mail] = @giris_mail, [giris_sifre] = @giris_sifre WHERE [giris_id] = @original_giris_id AND [kullanici_id] = @original_kullanici_id AND [giris_mail] = @original_giris_mail AND [giris_sifre] = @original_giris_sifre">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_giris_id" Type="Int32" />
                                    <asp:Parameter Name="original_kullanici_id" Type="Int32" />
                                    <asp:Parameter Name="original_giris_mail" Type="String" />
                                    <asp:Parameter Name="original_giris_sifre" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="kullanici_id" Type="Int32" />
                                    <asp:Parameter Name="giris_mail" Type="String" />
                                    <asp:Parameter Name="giris_sifre" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Kul_Bilgileri" Name="kullanici_id" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="kullanici_id" Type="Int32" />
                                    <asp:Parameter Name="giris_mail" Type="String" />
                                    <asp:Parameter Name="giris_sifre" Type="String" />
                                    <asp:Parameter Name="original_giris_id" Type="Int32" />
                                    <asp:Parameter Name="original_kullanici_id" Type="Int32" />
                                    <asp:Parameter Name="original_giris_mail" Type="String" />
                                    <asp:Parameter Name="original_giris_sifre" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        <asp:SqlDataSource ID="Gir_bil_sql" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" DeleteCommand="DELETE FROM [Giris_bilgi_tablosu] WHERE [giris_id] = @original_giris_id AND [kullanici_id] = @original_kullanici_id AND [giris_mail] = @original_giris_mail AND [giris_sifre] = @original_giris_sifre" InsertCommand="INSERT INTO [Giris_bilgi_tablosu] ([kullanici_id], [giris_mail], [giris_sifre]) VALUES (@kullanici_id, @giris_mail, @giris_sifre)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Giris_bilgi_tablosu]" UpdateCommand="UPDATE [Giris_bilgi_tablosu] SET [kullanici_id] = @kullanici_id, [giris_mail] = @giris_mail, [giris_sifre] = @giris_sifre WHERE [giris_id] = @original_giris_id AND [kullanici_id] = @original_kullanici_id AND [giris_mail] = @original_giris_mail AND [giris_sifre] = @original_giris_sifre" OnSelecting="SqlDataSource2_Selecting">
                <DeleteParameters>
                    <asp:Parameter Name="original_giris_id" Type="Int32" />
                    <asp:Parameter Name="original_kullanici_id" Type="Int32" />
                    <asp:Parameter Name="original_giris_mail" Type="String" />
                    <asp:Parameter Name="original_giris_sifre" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="kullanici_id" Type="Int32" />
                    <asp:Parameter Name="giris_mail" Type="String" />
                    <asp:Parameter Name="giris_sifre" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="kullanici_id" Type="Int32" />
                    <asp:Parameter Name="giris_mail" Type="String" />
                    <asp:Parameter Name="giris_sifre" Type="String" />
                    <asp:Parameter Name="original_giris_id" Type="Int32" />
                    <asp:Parameter Name="original_kullanici_id" Type="Int32" />
                    <asp:Parameter Name="original_giris_mail" Type="String" />
                    <asp:Parameter Name="original_giris_sifre" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="Yemek_Id_yemek_tur_sql" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_id], [yemek_turu_id] FROM [Yemek_kategori]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="Menu_sql" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" DeleteCommand="DELETE FROM [Yemek_menü] WHERE [yemek_id] = @original_yemek_id AND [yemek_adi] = @original_yemek_adi AND [yemek_fiyati] = @original_yemek_fiyati AND (([yemek_icerigi] = @original_yemek_icerigi) OR ([yemek_icerigi] IS NULL AND @original_yemek_icerigi IS NULL))" InsertCommand="INSERT INTO [Yemek_menü] ([yemek_adi], [yemek_fiyati], [yemek_icerigi]) VALUES (@yemek_adi, @yemek_fiyati, @yemek_icerigi)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [yemek_id], [yemek_adi], [yemek_fiyati], [yemek_icerigi] FROM [Yemek_menü]" UpdateCommand="UPDATE [Yemek_menü] SET [yemek_adi] = @yemek_adi, [yemek_fiyati] = @yemek_fiyati, [yemek_icerigi] = @yemek_icerigi WHERE [yemek_id] = @original_yemek_id AND [yemek_adi] = @original_yemek_adi AND [yemek_fiyati] = @original_yemek_fiyati AND (([yemek_icerigi] = @original_yemek_icerigi) OR ([yemek_icerigi] IS NULL AND @original_yemek_icerigi IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_yemek_id" Type="Int32" />
                    <asp:Parameter Name="original_yemek_adi" Type="String" />
                    <asp:Parameter Name="original_yemek_fiyati" Type="Int32" />
                    <asp:Parameter Name="original_yemek_icerigi" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="yemek_adi" Type="String" />
                    <asp:Parameter Name="yemek_fiyati" Type="Int32" />
                    <asp:Parameter Name="yemek_icerigi" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="yemek_adi" Type="String" />
                    <asp:Parameter Name="yemek_fiyati" Type="Int32" />
                    <asp:Parameter Name="yemek_icerigi" Type="String" />
                    <asp:Parameter Name="original_yemek_id" Type="Int32" />
                    <asp:Parameter Name="original_yemek_adi" Type="String" />
                    <asp:Parameter Name="original_yemek_fiyati" Type="Int32" />
                    <asp:Parameter Name="original_yemek_icerigi" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="Yemek_turleri_sql" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" DeleteCommand="DELETE FROM [Yemek_turleri] WHERE [yemek_turu_id] = @original_yemek_turu_id AND [yemek_turleri] = @original_yemek_turleri" InsertCommand="INSERT INTO [Yemek_turleri] ([yemek_turleri]) VALUES (@yemek_turleri)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [yemek_turu_id], [yemek_turleri] FROM [Yemek_turleri]" UpdateCommand="UPDATE [Yemek_turleri] SET [yemek_turleri] = @yemek_turleri WHERE [yemek_turu_id] = @original_yemek_turu_id AND [yemek_turleri] = @original_yemek_turleri">
                <DeleteParameters>
                    <asp:Parameter Name="original_yemek_turu_id" Type="Int32" />
                    <asp:Parameter Name="original_yemek_turleri" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="yemek_turleri" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="yemek_turleri" Type="String" />
                    <asp:Parameter Name="original_yemek_turu_id" Type="Int32" />
                    <asp:Parameter Name="original_yemek_turleri" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="Eski_sip_sql" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" DeleteCommand="DELETE FROM [Gecmis_siparisler] WHERE [eski_siparis_id] = @original_eski_siparis_id AND [kullanici_id] = @original_kullanici_id AND [yemek_id] = @original_yemek_id" InsertCommand="INSERT INTO [Gecmis_siparisler] ([kullanici_id], [yemek_id]) VALUES (@kullanici_id, @yemek_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [eski_siparis_id], [kullanici_id], [yemek_id] FROM [Gecmis_siparisler]" UpdateCommand="UPDATE [Gecmis_siparisler] SET [kullanici_id] = @kullanici_id, [yemek_id] = @yemek_id WHERE [eski_siparis_id] = @original_eski_siparis_id AND [kullanici_id] = @original_kullanici_id AND [yemek_id] = @original_yemek_id">
                <DeleteParameters>
                    <asp:Parameter Name="original_eski_siparis_id" Type="Int32" />
                    <asp:Parameter Name="original_kullanici_id" Type="Int32" />
                    <asp:Parameter Name="original_yemek_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="kullanici_id" Type="Int32" />
                    <asp:Parameter Name="yemek_id" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="kullanici_id" Type="Int32" />
                    <asp:Parameter Name="yemek_id" Type="Int32" />
                    <asp:Parameter Name="original_eski_siparis_id" Type="Int32" />
                    <asp:Parameter Name="original_kullanici_id" Type="Int32" />
                    <asp:Parameter Name="original_yemek_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="Sepet_sql" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" DeleteCommand="DELETE FROM [Sepet_tablosu] WHERE [yeni_siparis_id] = @original_yeni_siparis_id AND [yemek_id] = @original_yemek_id AND [kullanıcı_id] = @original_kullanıcı_id" InsertCommand="INSERT INTO [Sepet_tablosu] ([yemek_id], [kullanıcı_id]) VALUES (@yemek_id, @kullanıcı_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [yeni_siparis_id], [yemek_id], [kullanıcı_id] FROM [Sepet_tablosu]" UpdateCommand="UPDATE [Sepet_tablosu] SET [yemek_id] = @yemek_id, [kullanıcı_id] = @kullanıcı_id WHERE [yeni_siparis_id] = @original_yeni_siparis_id AND [yemek_id] = @original_yemek_id AND [kullanıcı_id] = @original_kullanıcı_id">
                <DeleteParameters>
                    <asp:Parameter Name="original_yeni_siparis_id" Type="Int32" />
                    <asp:Parameter Name="original_yemek_id" Type="Int32" />
                    <asp:Parameter Name="original_kullanıcı_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="yemek_id" Type="Int32" />
                    <asp:Parameter Name="kullanıcı_id" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="yemek_id" Type="Int32" />
                    <asp:Parameter Name="kullanıcı_id" Type="Int32" />
                    <asp:Parameter Name="original_yeni_siparis_id" Type="Int32" />
                    <asp:Parameter Name="original_yemek_id" Type="Int32" />
                    <asp:Parameter Name="original_kullanıcı_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="Kul_bil_sql" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" DeleteCommand="DELETE FROM [Kullanici_bilgi_tablosu] WHERE [kullanici_id] = @original_kullanici_id" InsertCommand="INSERT INTO [Kullanici_bilgi_tablosu] ([kullanici_adi], [kullanici_soyadi], [kullanici_telefon]) VALUES (@kullanici_adi, @kullanici_soyadi, @kullanici_telefon)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Kullanici_bilgi_tablosu]" UpdateCommand="UPDATE [Kullanici_bilgi_tablosu] SET [kullanici_adi] = @kullanici_adi, [kullanici_soyadi] = @kullanici_soyadi, [kullanici_telefon] = @kullanici_telefon WHERE [kullanici_id] = @original_kullanici_id">
                <DeleteParameters>
                    <asp:Parameter Name="original_kullanici_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="kullanici_adi" Type="String" />
                    <asp:Parameter Name="kullanici_soyadi" Type="String" />
                    <asp:Parameter Name="kullanici_telefon" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="kullanici_adi" Type="String" />
                    <asp:Parameter Name="kullanici_soyadi" Type="String" />
                    <asp:Parameter Name="kullanici_telefon" Type="Int32" />
                    <asp:Parameter Name="original_kullanici_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>


                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" DeleteCommand="DELETE FROM [Yemek_menü] WHERE [yemek_id] = @yemek_id" InsertCommand="INSERT INTO [Yemek_menü] ([yemek_adi], [yemek_fiyati], [yemek_icerigi]) VALUES (@yemek_adi, @yemek_fiyati, @yemek_icerigi)" SelectCommand="SELECT * FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)" UpdateCommand="UPDATE [Yemek_menü] SET [yemek_adi] = @yemek_adi, [yemek_fiyati] = @yemek_fiyati, [yemek_icerigi] = @yemek_icerigi WHERE [yemek_id] = @yemek_id">
                                <DeleteParameters>
                                    <asp:Parameter Name="yemek_id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="yemek_adi" Type="String" />
                                    <asp:Parameter Name="yemek_fiyati" Type="Int32" />
                                    <asp:Parameter Name="yemek_icerigi" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Menu" Name="yemek_id" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="yemek_adi" Type="String" />
                                    <asp:Parameter Name="yemek_fiyati" Type="Int32" />
                                    <asp:Parameter Name="yemek_icerigi" Type="String" />
                                    <asp:Parameter Name="yemek_id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>




            </div>




        </div>
    </form>
</body>
</html>
