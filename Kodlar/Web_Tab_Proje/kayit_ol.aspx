<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="kayit_ol.aspx.cs" Inherits="Web_Tab_Proje.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="vh-100" style="background-color: #eee;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px; left: 0px; top: 0px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1" >

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Kayıt ol</p>
                  <div align="center">
                <form class="mx-1 mx-md-4">

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">

                       &nbsp;<label class="form-label" for="form3Example1c">Adınız<asp:TextBox  class="form-control" ID="Txt_Ad" runat="server" Width="373px"></asp:TextBox>
                        
                        </label>
                        &nbsp;<br />
                        <br />
                    </div>
                  </div>


                    <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      &nbsp;<label class="form-label" for="form3Example1c">Soyadınız<asp:TextBox  class="form-control" ID="Txt_Soyad" runat="server" Width="373px"></asp:TextBox>
                        </label>
                        &nbsp;<br />
                        <br />
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      &nbsp;<label class="form-label" for="form3Example3c">E posta adresiniz</label>
                        <br />
                        <label class="form-label" for="form3Example3c">
                       <label class="form-label" for="form3Example1c">
                        <asp:TextBox  class="form-control" ID="Txt_Mail" runat="server" Width="373px"></asp:TextBox>
                        </label>
                        </label>
                        <br />
                    </div>
                  </div>

                    <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      &nbsp;<label class="form-label" for="form3Example3c">Telefon Numaranız</label>
                        <br />
                       <label class="form-label" for="form3Example1c">
                        <asp:TextBox  class="form-control" ID="Txt_TelNo" runat="server" Width="373px"></asp:TextBox>
                        </label>
                        <br />
                    </div>
                  </div>


                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      &nbsp;<label class="form-label" for="form3Example4c">Şifreniz</label>
                        <br />
                       <label class="form-label" for="form3Example1c">
                        <asp:TextBox  class="form-control" ID="Txt_Sifre" runat="server" Width="373px"></asp:TextBox>
                        </label>
                        <br />
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      &nbsp;
                        <br />
                    </div>
                  </div>

                  <div class="form-check d-flex justify-content-center mb-5">
                    &nbsp;</div>

                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                     <asp:Button class="btn btn-primary btn-lg" ID="Button1" runat="server" OnClick="Button1_Click" Text="Kayıt Ol" />
                  </div>

                </form>

              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                &nbsp;</div>
              </div>
            </div>
          </div>
        </div>
      </div>
</div>
</section>
</asp:Content>
