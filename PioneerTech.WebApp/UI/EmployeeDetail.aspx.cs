using PioneerTech.Consultancy.DAL;
using PioneerTech.Consultancy.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data.SqlClient;

namespace PioneerTech.WebApp.UI
{
    public partial class EmployeeDetail : System.Web.UI.Page
    {
        public object MessageBox { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
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
            long RowsAffected = employeeDataAccessobj.EmployeeSqlConnection(employeeDetailobj);

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

        protected void EditButton_Click(object sender, EventArgs e)
        {
            EmployeeDetailsModel model = new EmployeeDetailsModel
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

            long EditEmployeeId = Convert.ToInt32(EmployeeIdDropDownList1.Text);
            SqlConnection mysqlconnection = new SqlConnection();
            mysqlconnection.ConnectionString = "Data Source = DESKTOP-6T65F42;" +
                         "database = PioneerTechConsultancy_Database;Integrated security = SSPI";

            SqlCommand employeeDetail_cmd = new SqlCommand("UPDATE [EmployeeDetail] SET[FirstName] = " +
                            "'" + model.FirstName + "',[LastName] = '" + model.LastName + "',[Email] = '" + model.EmailId+ "',[ContactNumber] = " + model.PhoneNumber + ",[AlternateContactNumber] = " + model.AlternatePhoneNumber + ",[Address] ='" + model.Address1 + "',[AlternateAddress] ='" + model.Address2 + "',[CurrentCountry] ='" + model.CurrentCountry  +"',[HomeCountry] ='" + model.HomeCountry + "',[ZipCode] = " + model.ZipCode +
                            " WHERE EmployeeID = " + EditEmployeeId, mysqlconnection);

            mysqlconnection.Open();

            long result = employeeDetail_cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert(' Employee Details SUCCESSFULLY Edited');", true);
        }
    }
}