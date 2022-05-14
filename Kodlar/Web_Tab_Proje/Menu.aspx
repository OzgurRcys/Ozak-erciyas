<%@ Page Title="MENÜ" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Web_Tab_Proje.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    

    
  <img src="Resimler/yemekler/tarhana_corbasi.jpg" class="menu_resim_icerik" alt="tarhana_corbasi">
    <div class="card-body">
        <h5 class="card-title">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
                </Fields>
            </asp:DetailsView>
            <asp:Label ID="tarhana_id" runat="server" Text="1" Visible="False"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
                </Fields>
            </asp:DetailsView>
        </h5>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>




</asp:Content>
