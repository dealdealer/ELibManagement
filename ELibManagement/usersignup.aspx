﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="ELibManagement.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                         <div class="row">
                              <div class="col">
                                  <center>
                                      <img width="100px" src="imgs/generaluser.png" />
                                  </center>
                              </div>
                        </div>

                         <div class="row">
                              <div class="col">
                                  <center>
                                      <h4>Регистрация пользователя</h4>
                                  </center>
                              </div>
                        </div>

                        
                         <div class="row">
                              <div class="col">
                                <hr />
                              </div>
                        </div>


                         <div class="row">
                              <div class="col-md-6">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Полное имя"></asp:TextBox>
                                </div>
                              </div>
                              <div class="col-md-6">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Дата рождения" TextMode="Date"></asp:TextBox>
                                </div>
                              </div>
                             <div class="col-md-6">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Контактный номер" TextMode="Number"></asp:TextBox>
                                </div>
                              </div>
                              <div class="col-md-6">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Электронная почта" TextMode="Email"></asp:TextBox>
                                </div>
                              </div>
                             <div class="col-md-4">
                                 <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                     <asp:ListItem Text="Выбор государства" Value="Выбор страны"></asp:ListItem>
                                     <asp:ListItem Text="Российская Федерация" Value="Российская Федерация"></asp:ListItem>
                                     <asp:ListItem Text="Азербайджанская Республика" Value="Азербайджанская Республика"></asp:ListItem>
                                     <asp:ListItem Text="Республика Армения" Value="Республика Армения"></asp:ListItem>
                                     <asp:ListItem Text="Республика Беларусь" Value="Республика Беларусь"></asp:ListItem>
                                     <asp:ListItem Text="Республика Казахстан" Value="Республика Казахстан"></asp:ListItem>
                                     <asp:ListItem Text="Кыргызская Республика" Value="Кыргызская Республика"></asp:ListItem>
                                     <asp:ListItem Text="Республика Молдова" Value="Республика Молдова"></asp:ListItem>
                                     <asp:ListItem Text="Республика Таджикистан" Value="Республика Таджикистан"></asp:ListItem>
                                     <asp:ListItem Text="Республика Узбекистан" Value="Республика Узбекистан"></asp:ListItem>
                                 </asp:DropDownList>
                              </div>
                              <div class="col-md-4">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Город"></asp:TextBox>
                                </div>
                              </div>
                             <div class="col-md-4">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Индекс" TextMode="Number"></asp:TextBox>
                                </div>
                              </div>

                             <div class="col">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Полный адрес" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                              </div>
                        </div>

                             <div class="row">
                                  <div class="col">
                                    <hr />
                                  </div>
                            </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group d-grid gap-3 mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="ID пользователя"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group d-grid gap-3 mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Пароль" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group d-grid gap-3 mb-3">
                                <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Регистрация" OnClick="Button1_Click" />
                            </div>
                        </div>

                    </div>
                </div>

                <br><a href="homepage.aspx"><< Вернуться на главную</a><br><br>
            </div>
        </div>
    </div>

</asp:Content>
