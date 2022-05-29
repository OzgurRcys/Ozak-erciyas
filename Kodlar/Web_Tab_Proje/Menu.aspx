<%@ Page Title="MENÜ" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Web_Tab_Proje.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 188px;
            height: 79px;
           
            
        }

        .auto-style15 {
            position: fixed;
            right: 1500px;
            top: 100px;
            left: 43px;
            z-index: 1030;
            height: 171px;
            margin-left: 0px;
            margin-right: 0px;
        }
       
        .auto-style19 {
             width: 57%;
            height: 250px;
            margin-left: 300px;
        }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <br />
    <br />
    <br />
    <br />
    <div class="auto-style15">


        <a href="#Çorba" class="list-group-item list-group-item-action " aria-current="true">Çorbalar</a>
        <a href="#EtliYemek" class="list-group-item list-group-item-action " aria-current="true">Etli Yemekler</a>
        <a href="#SebzeliYemek" class="list-group-item list-group-item-action " aria-current="true">Sebzeli Yemekler</a>
        <a href="#Kebaplar" class="list-group-item list-group-item-action " aria-current="true">Kebaplar</a>
        <a href="#Pilavlar" class="list-group-item list-group-item-action " aria-current="true">Pilavlar</a>
        <a href="#Salatalar" class="list-group-item list-group-item-action " aria-current="true">Salatalar</a>
        <a href="#Tatlılar" class="list-group-item list-group-item-action " aria-current="true">Tatlılar</a>
        <a href="#İçecekler" class="list-group-item list-group-item-action " aria-current="true">İçecekler</a>

    </div>

    <div  align="center">

        <h1 style="color: white"><a name="Çorba">ÇORBALAR</a></h1>
        <br>
       
        <table class="auto-style19">
            <tr>
                <td>


        <img src="Resimler/yemekler/tarhana_corbasi.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
        <h5 class="card-title">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </h5>
                    <h5 class="card-title">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
                </Fields>
            </asp:DetailsView>
            <asp:Label ID="tarhana_id" runat="server" Text="1" Visible="False"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </h5>
                    <h5 class="card-title">
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </h5>
                    <h5 class="card-title">
            <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
                </Fields>
            </asp:DetailsView>
        </h5>
        <a href="#" class="btn btn-primary">Go somewhere</a>

        </td>
                <td>


        <img src="Resimler/yemekler/ezogelin_corbasi.jpg" class="auto-style3" alt="ezogelin_corbasi" align="center">
 <h5 class="card-title">
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Ezo_ID" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </h5>
                    <h5 class="card-title">
            <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource4" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
                </Fields>
            </asp:DetailsView>
            <asp:Label ID="Ezo_ID" runat="server" Text="2" Visible="False" ForeColor="White"></asp:Label>
        </h5>
                    <h5 class="card-title">
            <asp:DetailsView ID="DetailsView6" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource6" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
                </Fields>
            </asp:DetailsView>
        </h5>
                    <h5 class="card-title">
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Ezo_ID" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </h5>
                    <h5 class="card-title">
            <asp:DetailsView ID="DetailsView5" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource5" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Ezo_ID" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </h5>
        <a href="#" class="btn btn-primary">Go somewhere</a></td>
                <td>&nbsp;<img src="Resimler/yemekler/mercimek_corbasi.jpg" class="auto-style3" alt="mercimek_corbasi" align="center">
       
        <h5 class="card-title">
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Mercimek_ID" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </h5>
                    <h5 class="card-title">
            <asp:DetailsView ID="DetailsView7" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource7" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
                </Fields>
            </asp:DetailsView>
            <asp:Label ID="Mercimek_ID" runat="server" Text="3" Visible="False"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Mercimek_ID" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </h5>
                    <h5 class="card-title">
            <asp:DetailsView ID="DetailsView8" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource8" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Mercimek_ID" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </h5>
                    <h5 class="card-title">
            <asp:DetailsView ID="DetailsView9" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource9" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
                </Fields>
            </asp:DetailsView>
        </h5>
        <a href="#" class="btn btn-primary">Go somewhere</a></td>
            </tr>
        </table>
        <br />
        <br />
        <h1 style="color: white"><a name="EtliYemek">Etli Yemekler</a></h1>
        <table class="auto-style19">
            <tr>
                <td>
         <img src="Resimler/yemekler/tas_kebabi.jpg" class="auto-style3" alt="tas_kebabi" align="center">
  <h5 class="card-title">
            <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TasKebab" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView10" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource10" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
                </Fields>
            </asp:DetailsView>
            <asp:Label ID="TasKebab" runat="server" Text="4" Visible="False" ForeColor="White"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TasKebab" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView11" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource11" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TasKebab" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView12" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource12" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
                </Fields>
            </asp:DetailsView>
        </h5>
        <a href="#" class="btn btn-primary">Go somewhere</a></td>
                <td>    <img src="Resimler/yemekler/izmir_kofte.jpg" class="auto-style3" alt="izmir_kofte" align="center">
  <h5 class="card-title">
            <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="izmir_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView13" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource13" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
                </Fields>
            </asp:DetailsView>
            <asp:Label ID="izmir_id" runat="server" Text="7" Visible="False" ForeColor="White"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="izmir_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView14" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource15" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="izmir_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView15" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
                </Fields>
            </asp:DetailsView>
        </h5>
        <a href="#" class="btn btn-primary">Go somewhere</a></td>
                <td>&nbsp;  <img src="Resimler/yemekler/tavuk_sote.jpg" class="auto-style3" alt="tavuk_sote" align="center">
<h5 class="card-title">
            <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="tavuksis_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView16" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource16" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource17" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="tavuksis_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView17" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource17" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource18" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="tavuksis_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView18" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource18" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
                </Fields>
            </asp:DetailsView>
        </h5>
        <a href="#" class="btn btn-primary">Go somewhere</a></td>
            </tr>
        </table>
        <br />
&nbsp;    <br />
        <br /> <h1 style="color:white"><a name="SebzeliYemek">Sebzeli Yemekler</a></h1>
        <table class="auto-style19">
            <tr>
                <td>
   
        <img src="Resimler/yemekler/ispanak.jpg" class="auto-style3" alt="ispanak" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource19" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ispanak_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView19" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource19" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="ispanak_id" runat="server" Text="9" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource20" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ispanak_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView20" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource20" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource21" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ispanak_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView21" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource21" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
                <td>&nbsp;<img src="Resimler/yemekler/musakka.jpg" class="auto-style3" alt="musakka" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="musakka_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView22" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource22" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="musakka_id" runat="server" Text="10" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource23" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="musakka_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView23" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource23" Height="16px" Width="246px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource24" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="mevsim_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView24" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource24" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
            </tr>
        </table>
        <br />
        <br />
&nbsp;<h1 style="color:white"><a name="Kebaplar">Kebaplar</a></h1>
        <table class="auto-style19">
            <tr>
                <td>
    <img src="Resimler/yemekler/adana_kebabi.jpg" class="auto-style3" alt="adana_kebabi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource25" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="adana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView25" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource25" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="adana_id" runat="server" Text="13" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource26" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="adana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView26" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource26" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource27" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="adana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView27" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource27" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
                <td><img src="Resimler/yemekler/tavuk_sis_kebabi.jpg" class="auto-style3" alt="tavuk_sis_kebabi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource28" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tavuksis_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView28" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource28" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="tavuksis_id" runat="server" Text="14" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource29" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tavuksis_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView29" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource29" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource30" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tavuksis_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView30" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource30" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
                <td>&nbsp;<img src="Resimler/yemekler/beyti_kebabi.jpg" class="auto-style3" alt="beyti_kebabi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource94" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="beyti_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView94" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource94" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="beyti_id" runat="server" Text="15" Visible="False" ForeColor="White"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource95" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="beyti_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView95" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource95" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource96" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="beyti_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView96" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource96" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
            </tr>
        </table>
        <br />
&nbsp;<br />
        <br />
&nbsp;<h1 style="color:white"><a name="Pilavlar">Pilavlar</a></h1>
        <table class="auto-style19">
            <tr>
                <td>
    
    <img src="Resimler/yemekler/bulgur_pilavi.jpg" class="auto-style3" alt="bulgur_pilavi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource31" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                    <SelectParameters>
            <asp:ControlParameter ControlID="bulgur_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView31" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource31" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="bulgur_id" runat="server" Text="11" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource32" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="bulgur_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView32" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource32" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource33" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="bulgur_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView33" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource33" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
               
                <td><img src="Resimler/yemekler/pirinc_pilavi.jpg" class="auto-style3" alt="pirinc_pilavi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource34" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="pirinc_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView34" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource34" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="pirinc_id" runat="server" Text="12" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource35" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="pirinc_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView35" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource35" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource36" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="pirinc_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView36" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource36" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
            </tr>
        </table>
        <br />
&nbsp;<br />
&nbsp;<h1 style="color:white"><a name="Salatalar">Salatalar</a></h1>
        <table class="auto-style19">
            <tr>
                <td>
    <img src="Resimler/yemekler/coban_salata.jpg" class="auto-style3" alt="coban_salata" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource37" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="coban_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView37" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource37" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="coban_id" runat="server" Text="16" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource38" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="coban_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView38" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource38" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource39" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="coban_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView39" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource39" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
                <td><img src="Resimler/yemekler/mevsim_salata.jpg" class="auto-style3" alt="mevsim_salata" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource40" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="mevsim_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView40" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource40" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="mevsim_id" runat="server" Text="17" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource41" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="mevsim_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView41" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource41" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource42" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="mevsim_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView42" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource42" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
                <td><img src="Resimler/yemekler/akdeniz_salata.jpg" class="auto-style3" alt="akdeniz_salata" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource43" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="akdeniz_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView43" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource43" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="akdeniz_id" runat="server" Text="18" Visible="False" ForeColor="White"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource44" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="akdeniz_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView44" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource44" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource45" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="akdeniz_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView45" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource45" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
            </tr>
        </table>
        <br />
&nbsp;<br />
&nbsp;<br />
&nbsp;<h1 style="color:white"><a name="Tatlılar">Tatlılar</a></h1>
        <table class="auto-style19">
            <tr>
                <td>&nbsp;<img src="Resimler/yemekler/soguk_baklava.jpg" class="auto-style3" alt="soguk_baklava" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource49" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="sogukbaklava_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView49" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource49" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="sogukbaklava_id" runat="server" Text="20" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource50" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="sogukbaklava_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView50" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource50" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource51" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="sogukbaklava_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView51" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource51" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
                <td>&nbsp;<img src="Resimler/yemekler/fistikli_baklava.jpg" class="auto-style3" alt="fistikli_baklava" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource52" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="fistiklibaklava_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView52" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource52" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="fistiklibaklava_id" runat="server" Text="21" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource53" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="fistiklibaklava_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView53" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource53" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource54" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="fistiklibaklava_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView54" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource54" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
                <td><img src="Resimler/yemekler/firin_sutlac.jpg" class="auto-style3" alt="firin_sutlac" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource55" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="sutlac_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView55" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource55" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="sutlac_id" runat="server" Text="22" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource56" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="sutlac_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView56" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource56" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource57" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="sutlac_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView57" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource57" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
            </tr>
            <tr>
                <td><img src="Resimler/yemekler/trilece.jpg" class="auto-style3" alt="trilece" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource58" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="trilece_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView58" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource58" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="trilece_id" runat="server" Text="23" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource59" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="trilece_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView59" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource59" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource60" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="trilece_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView60" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource60" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
                <td>&nbsp;<img src="Resimler/yemekler/kunefe.jpg" class="auto-style3" alt="kunefe" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource61" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="kunefe_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView61" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource61" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="kunefe_id" runat="server" Text="24" Visible="False" ForeColor="White"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource62" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="kunefe_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView62" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource62" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource63" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="kunefe_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView63" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource63" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
                <td><img src="Resimler/yemekler/profiterol.jpg" class="auto-style3" alt="profiterol" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource64" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="profiterol_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView64" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource64" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="profiterol_id" runat="server" Text="25" Visible="False" ForeColor="White"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource65" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="profiterol_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView65" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource65" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource66" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="profiterol_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView66" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource66" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
    <img src="Resimler/yemekler/havuc_dilimi.jpg" class="auto-style3" alt="havuc_dilimi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource46" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="havuc_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView46" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource46" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="havuc_id" runat="server" Text="19" Visible="False" ForeColor="White"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource47" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="havuc_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView47" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource47" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource48" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="havuc_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView48" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource48" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
&nbsp;<br />
&nbsp;<br />
        <br />
&nbsp;<br />
&nbsp;<h1 style="color:white"><a name="İçecekler">İçecekler</a></h1>
        
        <br />
<table class="auto-style19">
            <tr>
                <td>
    <img src="Resimler/yemekler/coca_cola.jpg" class="auto-style3" alt="coca_cola" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource97" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="kola_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView97" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource97" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="kola_id" runat="server" Text="26" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource98" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="kola_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView98" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource98" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource99" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="kola_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView99" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource99" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
                <td><img src="Resimler/yemekler/fanta.jpg" class="auto-style3" alt="fanta" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource100" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="fanta_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView100" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource100" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="fanta_id" runat="server" Text="27" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource101" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="fanta_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView101" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource101" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource102" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="fanta_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView102" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource102" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
                <td>&nbsp;<img src="Resimler/yemekler/sprite.jpg" class="auto-style3" alt="sprite" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource103" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="sprite_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView103" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource103" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="sprite_id" runat="server" Text="28" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource104" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="sprite_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView104" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource104" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource105" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="sprite_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView105" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource105" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
            </tr>
            <tr>
                <td>&nbsp;<img src="Resimler/yemekler/ice_tea.jpg" class="auto-style3" alt="ice_tea" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource106" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="icetea_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView106" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource106" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="icetea_id" runat="server" Text="29" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource107" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="icetea_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView107" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource107" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource108" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="icetea_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView108" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource108" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
                <td>&nbsp;<img src="Resimler/yemekler/soda.jpg" class="auto-style3" alt="soda" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource109" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="soda_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView109" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource109" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="soda_id" runat="server" Text="30" Visible="False" ForeColor="White"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource110" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="soda_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView110" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource110" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource111" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="soda_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView111" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource111" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
                <td><img src="Resimler/yemekler/su.jpg" class="auto-style3" alt="su" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource112" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="su_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView112" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="su_id" runat="server" Text="33" Visible="False" ForeColor="White"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource113" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="su_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView113" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource113" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource114" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="su_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView114" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource114" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
            </tr>
            <tr>
                <td>&nbsp;<img src="Resimler/yemekler/ayran.jpg" class="auto-style3" alt="ayran" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource115" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ayran_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView115" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource115" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="ayran_id" runat="server" Text="34" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource116" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ayran_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView116" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource116" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource117" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ayran_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView117" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource117" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
                <td>&nbsp;<img src="Resimler/yemekler/turk_kahvesi.jpg" class="auto-style3" alt="turk_kahvesi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource118" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="turkkahvesi_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView118" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource118" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="turkkahvesi_id" runat="server" Text="35" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource119" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="turkkahvesi_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView119" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource119" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource120" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="turkkahvesi_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView120" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource120" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
                <td><img src="Resimler/yemekler/kahve.jpg" class="auto-style3" alt="kahve" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource121" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="kahve_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView121" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource121" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="kahve_id" runat="server" Text="36" Visible="False" ForeColor="White"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource122" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="kahve_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView122" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource122" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource123" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="kahve_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView123" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource123" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a></td>
            </tr>
        </table></a><br />
&nbsp;</div> 
</asp:Content>
