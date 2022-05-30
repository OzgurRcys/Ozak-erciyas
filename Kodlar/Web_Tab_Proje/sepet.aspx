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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Height="466px" Width="837px">
            <Columns>
                <asp:BoundField DataField="yemek_adi" HeaderText="Yemek Adı" SortExpression="yemek_adi" />
                <asp:BoundField DataField="yemek_fiyati" HeaderText="Yemek Fiyatı" SortExpression="yemek_fiyati" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
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
        
    </p>
    <p>
        <asp:Button ID="Button10" runat="server" class="btn btn-primary"  Text="İşlemi Tamamla" OnClick="Button10_Click" />
        
    </p>
</asp:Content>
