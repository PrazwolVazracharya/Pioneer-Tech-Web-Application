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
    public partial class EmployeeDetail : System.Web.UI.Page
    {
        public object MessageBox { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Save_Click(object sender, EventArgs e)
        {
            EmployeeDetailsModel employeeDetailobj = new EmployeeDetailsModel
            {
                FirstName = FirstNameTextBox.Text,
                LastName = LastNameTextBox.Text,
                EmailId = EmailIDTextBox3.Text,
                PhoneNumber = Convert.ToInt64(MobileNumberTextBox.Text),
                AlternatePhoneNumber = Convert.ToInt64(AlternateMobileNumberTextBox.Text),
                Address1 = Address1TextBox.Text,
                Address2 = Address2TextBox.Text,
                HomeCountry = HomeCountryTextBox.Text,
                CurrentCountry = CurrentCountryTextBox.Text,
                ZipCode = Convert.ToInt64(ZipCodeTextBox.Text)
            };
            EmployeeDataAccessLayer employeeDataAccessobj = new EmployeeDataAccessLayer();
            int RowsAffected = employeeDataAccessobj.EmployeeSqlConnection(employeeDetailobj);

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

        protected void clear_Click(object sender, EventArgs e)
        {
            FirstNameTextBox.Text = "";
            LastNameTextBox.Text = "";
            EmailIDTextBox3.Text = "";
            MobileNumberTextBox.Text = "";
            AlternateMobileNumberTextBox.Text = "";
            Address1TextBox.Text = "";
            Address2TextBox.Text = "";
            HomeCountryTextBox.Text = "";
            CurrentCountryTextBox.Text = "";
            ZipCodeTextBox.Text = "";
        }
    }
}