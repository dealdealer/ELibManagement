<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="ELibManagement.adminauthormanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">         
                        
                         <div class="row">
                              <div class="col">
                                  <center>
                                      <h4>Информация об авторе</h4>
                                  </center>
                              </div>
                        </div>

                        <div class="row">
                              <div class="col">
                                  <center>
                                      <img width="100px" src="imgs/writer.png" />
                                  </center>
                              </div>
                        </div>
                  
                         <div class="row">
                              <div class="col">
                                <hr />
                              </div>
                        </div>


                         <div class="row">
                              <div class="col-md-4">
                                  <div class="form-group d-grid gap-3 mb-3">
                                      <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="ID"></asp:TextBox>
                                          <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Go" OnClick="Button2_Click" />
                                      </div>
                                </div>
                              </div>
                              <div class="col-md-8">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Имя автора"></asp:TextBox>
                                </div>
                              </div>
                        </div>
                
                        <div class="row">
                            <div class="col-4">
                                <asp:Button class="btn btn-lg btn-success w-100" ID="Button3" runat="server" Text="Добавить" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button class="btn btn-lg btn-warning w-100" ID="Button1" runat="server" Text="Обновление" OnClick="Button1_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button class="btn btn-lg btn-danger w-100" ID="Button4" runat="server" Text="Удаление" OnClick="Button4_Click" />
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
                                      <h4>Список авторов</h4>
                                  </center>
                              </div>
                        </div>
                        
                         <div class="row">
                              <div class="col">
                                <hr />
                              </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" ProviderName="<%$ ConnectionStrings:elibraryDBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                              <div class="col">
                                  <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="author_id">
                                      <Columns>
                                          <asp:BoundField DataField="author_id" HeaderText="ID" ReadOnly="True" SortExpression="author_id"></asp:BoundField>
                                          <asp:BoundField DataField="author_name" HeaderText="Имя" SortExpression="author_name"></asp:BoundField>
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
