<%@ Page Title="MENÜ" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Web_Tab_Proje.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 188px;
            height: 79px;
           
            
        }

        .auto-style13 {
            
            width: 100px;
            height: 100px;
            padding: 2px;
            margin-left: 550px;
            margin-right: 550px;
            margin-top: 0px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <br />
    <br />
    <br />
    <br />
    <div class="auto-style15">


        <a href="#Çorba" class="list-group-item list-group-item-action " aria-current="true">Çorbalar
        </a>
        <a href="#EtliYemek" class="list-group-item list-group-item-action " aria-current="true">Etli Yemekler</a>
        <a href="#SebzeliYemek" class="list-group-item list-group-item-action " aria-current="true">Sebzeli Yemekler</a>
        <a href="#Kebaplar" class="list-group-item list-group-item-action " aria-current="true">Kebaplar</a>
        <a href="#Pilavlar" class="list-group-item list-group-item-action " aria-current="true">Pilavlar</a>
        <a href="#Salatalar" class="list-group-item list-group-item-action " aria-current="true">Salatalar</a>
        <a href="#Tatlılar" class="list-group-item list-group-item-action " aria-current="true">Tatlılar</a>
        <a href="#İçecekler" class="list-group-item list-group-item-action " aria-current="true">İçecekler</a>

    </div>

    <div class="auto-style13" align="center">

        <h1 style="color: white"><a name="Çorba">ÇORBALAR</a></h1>


        <img src="Resimler/yemekler/tarhana_corbasi.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
        <h5 class="card-title">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
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
            <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
                </Fields>
            </asp:DetailsView>
        </h5>
        <a href="#" class="btn btn-primary">Go somewhere</a>

        <br />
        <br />


        <img src="Resimler/yemekler/ezogelin_corbasi.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
 <h5 class="card-title">
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Ezo_ID" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource4" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
                </Fields>
            </asp:DetailsView>
            <asp:Label ID="Ezo_ID" runat="server" Text="2" Visible="False" ForeColor="White"></asp:Label>
            <asp:DetailsView ID="DetailsView6" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource6" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Ezo_ID" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
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
        <a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;   <img src="Resimler/yemekler/mercimek_corbasi.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
       
        <h5 class="card-title">
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Mercimek_ID" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
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
            <asp:DetailsView ID="DetailsView9" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource9" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
                </Fields>
            </asp:DetailsView>
        </h5>
        <a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<h1 style="color: white"><a name="EtliYemek">Etli Yemekler</a></h1>
         <img src="Resimler/yemekler/tas_kebabi.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
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
            <asp:Label ID="TasKebab" runat="server" Text="4" Visible="False"></asp:Label>
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
        <a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;    <img src="Resimler/yemekler/izmir_kofte.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
  <h5 class="card-title">
            <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView13" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
                </Fields>
            </asp:DetailsView>
            <asp:Label ID="Label4" runat="server" Text="1" Visible="False"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView14" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource15" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView15" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
                </Fields>
            </asp:DetailsView>
        </h5>
        <a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;  <img src="Resimler/yemekler/tavuk_sote.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
            <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView16" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
                </Fields>
            </asp:DetailsView>
            <asp:Label ID="Label5" runat="server" Text="1" Visible="False"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource17" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView17" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource18" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView18" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
                <Fields>
                    <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
                </Fields>
            </asp:DetailsView>
        </h5>
        <a href="#" class="btn btn-primary">Go somewhere</a><br />
        <br /> <h1 style="color:white"><a name="SebzeliYemek">Sebzeli Yemekler</a></h1>
   
        <img src="Resimler/yemekler/ispanak.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource19" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView19" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label6" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource20" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView20" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource21" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView21" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<img src="Resimler/yemekler/musakka.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView22" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label7" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource23" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView23" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource24" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView24" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<h1 style="color:white"><a name="Kebaplar">Kebaplar</a></h1>
    <img src="Resimler/yemekler/adana_kebabi.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource25" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView25" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label8" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource26" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView26" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource27" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView27" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<img src="Resimler/yemekler/tavuk_sis_kebabi.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource28" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView28" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label9" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource29" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView29" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource30" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView30" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<img src="Resimler/yemekler/beyti_kebabi.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource94" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView94" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label31" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource95" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView95" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource96" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView96" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<h1 style="color:white"><a name="Pilavlar">Pilavlar</a></h1>
    
    <img src="Resimler/yemekler/bulgur_pilavi.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource31" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
                    <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView31" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label10" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource32" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView32" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource33" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView33" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<img src="Resimler/yemekler/pirinc_pilavi.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource34" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView34" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label11" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource35" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView35" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource36" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView36" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<h1 style="color:white"><a name="Salatalar">Salatalar</a></h1>
    <img src="Resimler/yemekler/coban_salata.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource37" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView37" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label12" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource38" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView38" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource39" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView39" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<img src="Resimler/yemekler/mevsim_salata.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource40" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView40" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label13" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource41" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView41" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource42" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView42" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<img src="Resimler/yemekler/akdeniz_salata.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource43" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView43" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label14" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource44" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView44" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource45" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView45" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<h1 style="color:white"><a name="Tatlılar">Tatlılar</a></h1>
    <img src="Resimler/yemekler/havuc_dilimi.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource46" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView46" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label15" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource47" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView47" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource48" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView48" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<img src="Resimler/yemekler/soguk_baklava.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource49" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView49" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label16" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource50" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView50" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource51" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView51" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<img src="Resimler/yemekler/fistikli_baklava.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource52" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView52" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label17" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource53" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView53" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource54" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView54" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<img src="Resimler/yemekler/firin_sutlac.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource55" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView55" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label18" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource56" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView56" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource57" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView57" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<img src="Resimler/yemekler/trilece.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource58" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView58" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label19" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource59" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView59" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource60" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView60" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<img src="Resimler/yemekler/kunefe.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource61" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView61" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label20" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource62" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView62" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource63" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView63" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<img src="Resimler/yemekler/profiterol.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource64" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView64" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label21" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource65" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView65" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource66" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView66" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<h1 style="color:white"><a name="İçecekler">İçecekler</a></h1>
    <img src="Resimler/yemekler/coca_cola.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource67" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView67" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label22" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource68" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView68" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource69" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView69" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<img src="Resimler/yemekler/fanta.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource70" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView70" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label23" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource71" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView71" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource72" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView72" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<img src="Resimler/yemekler/sprite.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource73" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView73" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label24" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource74" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView74" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource75" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView75" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<img src="Resimler/yemekler/ice_tea.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource76" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView76" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label25" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource77" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView77" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource78" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView78" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<img src="Resimler/yemekler/soda.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource79" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView79" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label26" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource80" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView80" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource81" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView81" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<img src="Resimler/yemekler/su.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource82" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView82" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label27" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource83" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView83" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource84" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView84" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<img src="Resimler/yemekler/ayran.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource85" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView85" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label28" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource86" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView86" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource87" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView87" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<img src="Resimler/yemekler/turk_kahvesi.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource88" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView88" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label29" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource89" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView89" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource90" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView90" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;<img src="Resimler/yemekler/kahve.jpg" class="auto-style3" alt="tarhana_corbasi" align="center">
<h5 class="card-title">
    <asp:SqlDataSource ID="SqlDataSource91" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_adi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView91" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource1" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_adi" SortExpression="yemek_adi" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label30" runat="server" Text="1" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource92" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_icerigi] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView92" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource2" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_icerigi" SortExpression="yemek_icerigi" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource93" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" SelectCommand="SELECT [yemek_fiyati] FROM [Yemek_menü] WHERE ([yemek_id] = @yemek_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="tarhana_id" Name="yemek_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView93" runat="server" AutoGenerateRows="False" BorderStyle="None" DataSourceID="SqlDataSource3" Height="16px" Width="168px" BackColor="White">
        <Fields>
            <asp:BoundField DataField="yemek_fiyati" SortExpression="yemek_fiyati" />
        </Fields>
    </asp:DetailsView>
</h5>
<a href="#" class="btn btn-primary">Go somewhere</a><br />
&nbsp;</div> 
</asp:Content>
