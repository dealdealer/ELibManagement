<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="ELibManagement.adminbookinventory" %>

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
                                    <h4>Информация о книге</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="book_inventory/books1.png" />
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
                                <asp:FileUpload onchange="readURL(this);" CssClass="form-control mb-4" ID="FileUpload1" runat="server" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group d-grid gap-3 mb-3">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="ID книги"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click1" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <div class="form-group d-grid gap-3 mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Название книги"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group d-grid gap-3 mb-3">
                                    <label>Язык</label>
                                    <asp:DropDownList CssClass="form-control " ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Русский" Value="Русский"></asp:ListItem>
                                        <asp:ListItem Text="Украинский" Value="Украинский"></asp:ListItem>
                                        <asp:ListItem Text="Английский" Value="Английский"></asp:ListItem>
                                        <asp:ListItem Text="Французский" Value="Французский"></asp:ListItem>
                                        <asp:ListItem Text="Немецкий" Value="Немецкий"></asp:ListItem>
                                    </asp:DropDownList>

                                    <label>Название издателя</label>
                                    <asp:DropDownList CssClass="form-control " ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="Publisher 1" Value="Publisher 1"></asp:ListItem>
                                        <asp:ListItem Text="Publisher 2" Value="Publisher 2"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group d-grid gap-3 mb-3">
                                    <label>Имя автора</label>
                                    <asp:DropDownList CssClass="form-control " ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="A1" Value="A1"></asp:ListItem>
                                        <asp:ListItem Text="A2" Value="A2"></asp:ListItem>
                                    </asp:DropDownList>

                                    <label>Дата публикации</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Дата публикации" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group d-grid gap-3 mb-3">
                                    <label>Жанр</label>
                                    <asp:ListBox ID="ListBox1" CssClass="form-control" runat="server" SelectionMode="Multiple" Rows="5">
                                        <asp:ListItem Text="Приключение" Value="Приключение"></asp:ListItem>
                                        <asp:ListItem Text="Комедия" Value="Комедия"></asp:ListItem>
                                        <asp:ListItem Text="Психология" Value="Психология"></asp:ListItem>
                                        <asp:ListItem Text="Драма" Value="Драма"></asp:ListItem>
                                        <asp:ListItem Text="Роман" Value="Роман"></asp:ListItem>
                                        <asp:ListItem Text="Триллер" Value="Триллер"></asp:ListItem>
                                        <asp:ListItem Text="Автобиография" Value="Автобиография"></asp:ListItem>
                                        <asp:ListItem Text="Научная фантастика" Value="Научная фантастика"></asp:ListItem>
                                        <asp:ListItem Text="Автобиография" Value="Автобиография"></asp:ListItem>
                                        <asp:ListItem Text="Саморазвитие" Value="Саморазвитие"></asp:ListItem>
                                        <asp:ListItem Text="Здоровье" Value="Здоровье"></asp:ListItem>
                                    </asp:ListBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group d-grid gap-3 mb-3">
                                    <label>Издание</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Издание"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group d-grid gap-3 mb-3">
                                    <label>Цена книги</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Цена книги"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group d-grid gap-3 mb-3">
                                    <label>Страницы</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Страницы"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group d-grid gap-3 mb-3">
                                    <label>Всего книг</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Всего книг"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group d-grid gap-3 mb-3">
                                    <label>В наличии</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="В наличии" ReadOnly="true" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group d-grid gap-3 mb-3">
                                    <label>Выданные книги</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Выданные книги" ReadOnly="true" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                              <div class="col-12">
                                  <div class="form-group d-grid gap-3 mb-3">
                                    <label>Описание книги</label>
                                      <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Описание книги" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                  </div>
                              </div>
                        </div>

                        <div class="row">
                     <div class="col-4">
                         <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success w-100" runat="server" Text="Добавить" OnClick="Button1_Click" />
                     </div>
                     <div class="col-4">
                         <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning w-100" runat="server" Text="Обновить" OnClick="Button3_Click" />
                     </div>
                     <div class="col-4">
                         <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger w-100" runat="server" Text="Удалить" OnClick="Button2_Click" />
                     </div>
                  </div>

                    </div>
                </div>

                <br>
                <a href="homepage.aspx"><< Вернуться на главную</a><br>
                <br>
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Список книг</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="true" SortExpression="book_id" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-10">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <span>Автор - </span>
                                                                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                    &nbsp;| 
                                                                    <span><span>&nbsp;</span>Жанр - </span>
                                                                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                    &nbsp;| 
                                                                    <span>Язык -<span>&nbsp;</span>
                                                                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>
                                                                    </span>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    Издатель - <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                    &nbsp;| 
                                                                    Дата издания - <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                                    &nbsp;| 
                                                                    Страниц - <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                                    &nbsp;| 
                                                                    Издание - <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    Цена - <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                    &nbsp;| 
                                                                    Фактический запас - <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                    &nbsp;| 
                                                                    Доступный запас - <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    Описание - <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-2">
                                                            <asp:Image CssClass="img-fluid p-2" ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link")%>' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
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
