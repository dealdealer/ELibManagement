<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="ELibManagement.adminmembermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">         
                        
                         <div class="row">
                              <div class="col">
                                  <center>
                                      <h4>Информация о пользователе</h4>
                                  </center>
                              </div>
                        </div>

                         <div class="row">
                              <div class="col">
                                  <center>
                                      <img width="100px" src="imgs/generaluser.png" />
                                  </center>
                              </div>
                        </div>
                  
                         <div class="row">
                              <div class="col">
                                <hr />
                              </div>
                        </div>

                         <div class="row">
                              <div class="col-md-3">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Go" OnClick="Button2_Click" />
                                    </div>
                                </div>
                              </div>
                              <div class="col-md-4">
                                  <div class="form-group d-grid gap-3 mb-3">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Имя пользователя" ReadOnly="true"></asp:TextBox>
                                </div>
                              </div>
                              <div class="col-md-5">
                                  <div class="form-group d-grid gap-3 mb-3">
                                      <div class="input-group gap-1">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Статус аккаунта" ReadOnly="true"></asp:TextBox>
                                          <asp:LinkButton class="btn btn-success" ID="Button4" runat="server" Text="A" OnClick="Button4_Click"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                                          <asp:LinkButton class="btn btn-warning" ID="Button5" runat="server" Text="A" OnClick="Button5_Click"><i class="fa-solid fa-circle-pause"></i></asp:LinkButton>
                                          <asp:LinkButton class="btn btn-danger" ID="Button6" runat="server" Text="A" OnClick="Button6_Click"><i class="fa-regular fa-circle-xmark"></i></asp:LinkButton>
                                      </div>
                                </div>
                              </div>  
                        </div>

                         <div class="row">
                            <div class="col-md-3">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <label>Дата рождения</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Дата рождения" ReadOnly="True"></asp:TextBox>
                                </div>
                              </div>
                              <div class="col-md-4">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <label>Номер телефона</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Номер телефона" ReadOnly="True"></asp:TextBox>
                                </div>
                              </div>
                              <div class="col-md-5">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <label>Электронная почта</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Электронная почта" ReadOnly="True"></asp:TextBox>
                                </div>
                              </div>
                        </div>

                         <div class="row">
                            <div class="col-md-4">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <label>Государство</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Государство" ReadOnly="True"></asp:TextBox>
                                </div>
                              </div>
                              <div class="col-md-4">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <label>Город</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Город" ReadOnly="True"></asp:TextBox>
                                </div>
                              </div>
                              <div class="col-md-4">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <label>Индекс</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Индекс" ReadOnly="True"></asp:TextBox>
                                </div>
                              </div>
                        </div>

                         <div class="row">
                              <div class="col-12">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <label>Адрес</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Адрес" ReadOnly="True" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                              </div>
                        </div>

                        <div class="row">
                            <div class="col-8 mx-auto">
                                <asp:Button class="btn btn-lg btn-danger w-100" ID="Button3" runat="server" Text="Удаление пользователя безвозвратно" OnClick="Button3_Click" />
                            </div>
                        </div>

                    </div>
                </div>

                <br><a href="homepage.aspx"><< Вернуться на главную</a><br><br>
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                         <div class="row">
                              <div class="col">
                                  <center>
                                      <h4>Список пользователей</h4>
                                  </center>
                              </div>
                        </div>
                        
                         <div class="row">
                              <div class="col">
                                <hr />
                              </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                              <div class="col">
                                  <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
                                      <Columns>
                                          <asp:BoundField DataField="member_id" HeaderText="ID" ReadOnly="True" SortExpression="member_id"></asp:BoundField>
                                          <asp:BoundField DataField="full_name" HeaderText="Имя" SortExpression="full_name"></asp:BoundField>
                                          <asp:BoundField DataField="account_status" HeaderText="Статус аккаунта" SortExpression="account_status"></asp:BoundField>
                                          <asp:BoundField DataField="contact_no" HeaderText="Номер телефона" SortExpression="contact_no"></asp:BoundField>
                                          <asp:BoundField DataField="email" HeaderText="Почта" SortExpression="email"></asp:BoundField>
                                          <asp:BoundField DataField="state" HeaderText="Государство" SortExpression="state"></asp:BoundField>
                                          <asp:BoundField DataField="city" HeaderText="Город" SortExpression="city"></asp:BoundField>
                                      </Columns>
                                  </asp:GridView>
                              </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
