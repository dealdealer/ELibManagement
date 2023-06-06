<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="ELibManagement.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                         <div class="row">
                              <div class="col">
                                  <center>
                                      <img width="150px" src="imgs/generaluser.png" />
                                  </center>
                              </div>
                        </div>

                         <div class="row">
                              <div class="col">
                                  <center>
                                      <h3>Вход пользователя</h3>
                                  </center>
                              </div>
                        </div>

                        
                         <div class="row">
                              <div class="col">
                                      <hr />
                              </div>
                        </div>

                         <div class="row">
                     <div class="col">
                        <div class="form-group d-grid gap-3 mb-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID пользователя"></asp:TextBox>
                        </div>
                        <div class="form-group d-grid gap-3 mb-3">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Пароль" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group d-grid gap-3 mb-3">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Вход" OnClick="Button1_Click" />
                        </div>
                        <div class="form-group d-grid gap-3 mb-3">
                           <a class="btn btn-primary btn-lg d-block w-100" href="usersignup.aspx" id="Button2" type="button">Регистрация</a>
                        </div>
                     </div>
                  </div>

                    </div>
                </div>

                <br><a href="homepage.aspx"><< Вернуться на главную</a><br><br>
            </div>
        </div>
    </div>

</asp:Content>
