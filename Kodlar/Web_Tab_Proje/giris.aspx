<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="Web_Tab_Proje.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="vh-100" style="background-color: #eee;">
        <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-12 col-xl-11">
                    <div class="card text-black" style="border-radius: 25px; left: -1px; top: 0px;">
                        <div class="card-body p-md-5">
                            <div class="row justify-content-center">
                                <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                    <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Giriş Yap</p>

                                    <form>
                                        <!-- Email input -->
                                        <div class="form-outline mb-4">

                                            <label class="form-label" for="form2Example1">E mail adresi</label>
                                            <asp:TextBox class="form-control" ID="Txt_Giris_Mail" runat="server" Width="373px"></asp:TextBox>

                                            &nbsp;
      <br />
                                            <br />
                                            <label class="form-label" for="form2Example2">Şifre</label>
                                        </div>

                                        <!-- Password input -->
                                        <div class="form-outline mb-4">
                                            <asp:TextBox class="form-control" ID="Txt_Giris_Sifre" runat="server" Width="373px"></asp:TextBox>

                                            &nbsp;
      <br />
                                        </div>



                                        <!-- Submit button -->

                                        <!-- Register buttons -->
                                        <asp:Button class="btn btn-primary btn-lg" ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş Yap" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button class="btn btn-primary btn-lg" ID="Button_Yonetici_giris" runat="server" OnClick="Button_Yonetici_giris_Click" Text="Yönetici Girişi " Width="160px" />
                                        <div class="text-center">
                                            <p>&nbsp;</p>
                                            <p>Kayıtlı hesabınız yok mu? <a href="kayit_ol.aspx">Buradan kayıt olabilirsiniz</a></p>
                                        </div>
                                    </form>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
</asp:Content>
