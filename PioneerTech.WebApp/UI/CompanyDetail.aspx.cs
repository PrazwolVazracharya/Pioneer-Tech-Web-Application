using PioneerTech.Consultancy.Model;
using PioneerTech.Consultancy.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PioneerTech.WebApp.UI
{
    public partial class CompanyDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Save_Click(object sender, EventArgs e)
        {
            CompanyDetailsModel companyDetailobj = new CompanyDetailsModel
            {
                EmployerName = EmployerNameTextBox.Text,
                ContactNumber = Convert.ToInt64(ContactNumberTextBox.Text),
                Location = LocationTextBox.Text,
                Website = WebsiteTextBox.Text,
                EmployeeId = Convert.ToInt32(EmployeeIDTextBox.Text)
            };

            EmployeeDataAccessLayer companyDataAccessobj = new EmployeeDataAccessLayer();
            int RowsAffected = companyDataAccessobj.CompanySqlConnection(companyDetailobj);

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

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}