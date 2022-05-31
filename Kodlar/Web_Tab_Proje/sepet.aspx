<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sepet.aspx.cs" Inherits="Web_Tab_Proje.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 1041;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <div align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Height="466px" Width="837px">
            <Columns>
                <asp:BoundField DataField="yemek_adi" HeaderText="Yemek Adı" SortExpression="yemek_adi" >
                
                </asp:BoundField>
                <asp:BoundField DataField="yemek_fiyati" HeaderText="Yemek Fiyatı" SortExpression="yemek_fiyati" >
                
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ozak_ErciyasConnectionString2 %>" DeleteCommand="DELETE FROM [Sepet_tablosu] WHERE [yeni_siparis_id] = @yeni_siparis_id" InsertCommand="INSERT INTO [Sepet_tablosu] ([yemek_id], [kullanıcı_id]) VALUES (@yemek_id, @kullanıcı_id)" SelectCommand="SELECT yemek_adi, yemek_fiyati FROM [yemek_menü] where yemek_id IN(SELECT yemek_id from Sepet_tablosu where kullanıcı_id=@kullanıcı_id)
" UpdateCommand="UPDATE [Sepet_tablosu] SET [yemek_id] = @yemek_id, [kullanıcı_id] = @kullanıcı_id WHERE [yeni_siparis_id] = @yeni_siparis_id">
            <DeleteParameters>
                <asp:Parameter Name="yeni_siparis_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="yemek_id" Type="Int32" />
                <asp:Parameter Name="kullanıcı_id" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="kullanıcı_id" PropertyName="Text" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="yemek_id" Type="Int32" />
                <asp:Parameter Name="kullanıcı_id" Type="Int32" />
                <asp:Parameter Name="yeni_siparis_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        
            <p>
    <p>
            </p>
        <asp:Button ID="Button10" runat="server" class="btn btn-primary"  Text="İşlemi Tamamla" OnClick="Button10_Click" />
        </div>
    </p>
</asp:Content>
