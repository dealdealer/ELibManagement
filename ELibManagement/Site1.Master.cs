using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    LinkButton1.Visible = true; // Кнопка входа
                    LinkButton2.Visible = true; // Кнопка регистрации
                    LinkButton3.Visible = false; // Кнопка выхода
                    LinkButton6.Visible = true; // Кнопка входа администратора
                    LinkButton7.Visible = false; // Кнопка "Привет, пользователь"
                    LinkButton8.Visible = false; // Кнопка инвентаризации книг
                    LinkButton9.Visible = false; // Кнопка выдачи книг
                    LinkButton10.Visible = false; // Кнопка управления пользователями
                    LinkButton11.Visible = false; // Кнопка управления авторами
                    LinkButton12.Visible = false; // Кнопка управления издательствами
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // Кнопка входа
                    LinkButton2.Visible = false; // Кнопка регистрации
                    LinkButton3.Visible = true; // Кнопка выхода
                    LinkButton6.Visible = true; // Кнопка входа администратора
                    LinkButton7.Visible = true; // Кнопка "Привет, пользователь"
                    LinkButton7.Text = "Привет, " + Session["username"].ToString();
                    LinkButton8.Visible = false; // Кнопка инвентаризации книг
                    LinkButton9.Visible = false; // Кнопка выдачи книг
                    LinkButton10.Visible = false; // Кнопка управления пользователями
                    LinkButton11.Visible = false; // Кнопка управления авторами
                    LinkButton12.Visible = false; // Кнопка управления издательствами
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // Кнопка входа
                    LinkButton2.Visible = false; // Кнопка регистрации
                    LinkButton3.Visible = true; // Кнопка выхода
                    LinkButton6.Visible = false; // Кнопка входа администратора
                    LinkButton7.Visible = true; // Кнопка "Привет, пользователь"
                    LinkButton7.Text = "Привет, Администратор";
                    LinkButton8.Visible = true; // Кнопка инвентаризации книг
                    LinkButton9.Visible = true; // Кнопка выдачи книг
                    LinkButton10.Visible = true; // Кнопка управления пользователями
                    LinkButton11.Visible = true; // Кнопка управления авторами
                    LinkButton12.Visible = true; // Кнопка управления издательствами
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        // Выход из системы
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; // Кнопка входа
            LinkButton2.Visible = true; // Кнопка регистрации
            LinkButton3.Visible = false; // Кнопка выхода
            LinkButton6.Visible = true; // Кнопка входа администратора
            LinkButton7.Visible = false; // Кнопка "Привет, пользователь"
            LinkButton8.Visible = false; // Кнопка инвентаризации книг
            LinkButton9.Visible = false; // Кнопка выдачи книг
            LinkButton10.Visible = false; // Кнопка управления пользователями
            LinkButton11.Visible = false; // Кнопка управления авторами
            LinkButton12.Visible = false; // Кнопка управления издательствами

            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }
    }
}