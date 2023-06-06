<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="ELibManagement.adminbookissuing" %>
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
                                      <h4>Выдача книг</h4>
                                  </center>
                              </div>
                        </div>

                         <div class="row">
                              <div class="col">
                                  <center>
                                      <img width="100px" src="imgs/books1.png" />
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
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="ID пользователя"></asp:TextBox>
                                </div>
                              </div>
                              <div class="col-md-6">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="ID книги"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Go" OnClick="Button2_Click" />
                                    </div>
                                </div>
                              </div>
                        </div>

                        <div class="row">
                              <div class="col-md-6">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Имя пользователя" ReadOnly="True"></asp:TextBox>
                                </div>
                              </div>
                              <div class="col-md-6">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Имя книги" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                              </div>
                        </div>

                        <div class="row">
                              <div class="col-md-6">
                                  <div class="form-group d-grid gap-3 mb-3">
                                      <label>Дата начала</label>
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Дата начала" TextMode="Date"></asp:TextBox>
                                </div>
                              </div>
                              <div class="col-md-6">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <label>Дата конца</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Дата конца" TextMode="Date"></asp:TextBox>
                                </div>
                              </div>
                        </div>
                
                        <div class="row">
                            <div class="col-6">
                                <asp:Button class="btn btn-lg btn-primary w-100" ID="Button3" runat="server" Text="Выдать" OnClick="Button3_Click" />
                            </div>
                            <div class="col-6">
                                <asp:Button class="btn btn-lg btn-success w-100" ID="Button1" runat="server" Text="Вернуть" OnClick="Button1_Click" />
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
                                      <h4>Список выданных книг</h4>
                                  </center>
                              </div>
                        </div>
                        
                         <div class="row">
                              <div class="col">
                                <hr />
                              </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                              <div class="col">
                                  <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                      <Columns>
                                          <asp:BoundField DataField="member_id" HeaderText="ID пользователя" SortExpression="member_id"></asp:BoundField>
                                          <asp:BoundField DataField="member_name" HeaderText="Имя пользователя" SortExpression="member_name"></asp:BoundField>
                                          <asp:BoundField DataField="book_id" HeaderText="ID книги" SortExpression="book_id"></asp:BoundField>
                                          <asp:BoundField DataField="book_name" HeaderText="Название книги" SortExpression="book_name"></asp:BoundField>
                                          <asp:BoundField DataField="issue_date" HeaderText="Дата выдачи" SortExpression="issue_date"></asp:BoundField>
                                          <asp:BoundField DataField="due_date" HeaderText="Срок сдачи" SortExpression="due_date"></asp:BoundField>
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
