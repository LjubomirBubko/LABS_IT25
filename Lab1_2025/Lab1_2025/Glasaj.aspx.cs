using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1_2025
{
    public partial class Contact : Page
    {
        string[] professorsDB = new string[]
        {
            "вонр. проф. д-р Весна Димитрова",
            "доц. д-р Гоце Арменски",
            "доц. д-р Слободан Калајџиски"
        };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string[] subjectsDB = new string[]
                {
                    "Дигитална Форензика",
                    "Интернет Технологии",
                    "Бази на податоци"
                };

                string[] creditsDB = new string[]
                {
                    "6",
                    "3",
                    "7"
                };

                for (int i = 0; i < subjectsDB.Length; i++)
                {
                    listSubjects.Items.Add(new ListItem(subjectsDB[i], i.ToString()));
                    listCredits.Items.Add(new ListItem(creditsDB[i], i.ToString()));
                }

                listSubjects.SelectedIndex = 0;
                listCredits.SelectedIndex = 0;
                lblProfessor.Text = professorsDB[0]; // Поставување на почетен професор
            }

        }

        protected void listSubjects_SelectedIndexChanged(object sender, EventArgs e)
        {
            listCredits.SelectedIndex = listSubjects.SelectedIndex;

            if (listSubjects.SelectedIndex >= professorsDB.Length)
            {
                lblProfessor.Text = "проф. по " + listSubjects.SelectedItem.Text;
            }
            else
            {
                lblProfessor.Text = professorsDB[listSubjects.SelectedIndex];
            }
        }

        protected void listCredits_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnVote_Click(object sender, EventArgs e)
        {
            Response.Redirect("UspeshnoGlasanje.aspx");
        }
    }
}