<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="ELibManagement.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img src="imgs/home-back.jpg" class="img-fluid" />
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Наши особенности</h2>
                        <p><b>Почему вам стоит попробовать?</b></p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/digital-inventory.png" />
                        <h4>Цифровой список книг</h4>
                        <p style="text-align: justify;">Веб-приложение библиотеки может предложить множество преимуществ, таких как легкий доступ к просмотру коллекции книг с любого устройства.</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/search-online.png" />
                        <h4>Поиск книг</h4>
                        <p style="text-align: justify;">Вы можете воспользоваться нашим умным поиском для ускорения процесса выбора книги. Найдите нужную вам книгу в течечение пары секунд.</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/defaulters-list.png" />
                        <h4>Список задолжников</h4>
                        <p style="text-align: justify;">С помощью базы данных администратору намного удобнее отслеживать читателей у которых истёк срок сдачи взятых книг.</p>
                    </center>
                </div>
            </div>
        </div>
    </section>

    <section>
        <img src="imgs/in-homepage-banner-back.jpg" class="img-fluid"/>
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Наши процессы</h2>
                        <p><b>У нас есть 3 простых этапа</b></p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/sign-up.png" />
                        <h4>Вход пользователя</h4>
                        <p style="text-align: justify;">Система входа гарантирует, что только авторизованные пользователи могут получить доступ к возможностям веб-приложения.</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/search-online.png" />
                        <h4>Уведомление о задолженности</h4>
                        <p style="text-align: justify;">В профиле пользователя отображается список взятых книг, если пришло время вернуть книгу, то строка будет подсвечена красным цветом</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/library.png" />
                        <h4>Посети нас</h4>
                        <p style="text-align: justify;">Мы подстраиваемся под современные реалии, делая комфортное взаимодействие администратора и читателя. Ждём вас!</p>
                    </center>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
