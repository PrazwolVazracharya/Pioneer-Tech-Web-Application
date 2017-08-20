using PioneerTech.Consultancy.DAL;
using PioneerTech.Consultancy.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PioneerTech.WebApp.UI
{
    public partial class TechnicalDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            TechnicalDetailsModel technicalDetailobj = new TechnicalDetailsModel
            {
                UserInterface = UITextBox.Text,
                ProgrammingLanguages = ProgrammingLanguageTextBox.Text,
                Database = DatabaseTextBox.Text,
                EmployeeId = Convert.ToInt32(EmployeeIdTextBox.Text)
            };

            EmployeeDataAccessLayer technicalDataAccessobj = new EmployeeDataAccessLayer();
            long RowsAffected = technicalDataAccessobj.TechnicalSqlConnection(technicalDetailobj);

            if (RowsAffected > 0)
            {
                string display = "Successful!";
                ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert('" + display + "');", true);
            }
            else
            {
                string display = "UnSuccessful!";
                ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert('" + display + "');", true);
            }

        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            UITextBox.Text = "";
            ProgrammingLanguageTextBox.Text = "";
            DatabaseTextBox.Text = "";
            EmployeeIdTextBox.Text = "";
        }
    }

}