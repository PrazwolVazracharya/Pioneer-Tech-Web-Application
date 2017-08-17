using PioneerTech.Consultancy.Model;
using PioneerTech.Consultancy.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

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
            long RowsAffected = companyDataAccessobj.CompanySqlConnection(companyDetailobj);

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

        protected void EditButton_Click(object sender, EventArgs e)
        {
            CompanyDetailsModel model = new CompanyDetailsModel
            {
                EmployerName = EmployerNameTextBox.Text,
                ContactNumber = Convert.ToInt32(ContactNumberTextBox.Text),
                Location = LocationTextBox.Text,
                Website = WebsiteTextBox.Text,
                EmployeeId = Convert.ToInt32(EmployeeIDTextBox.Text)

            };

            //int Edit_CompanyId = Convert.ToInt32(EmployeeIDDropDownList.Text);
            SqlConnection mysqlconnection = new SqlConnection();
            mysqlconnection.ConnectionString = "Data Source = DESKTOP-6T65F42;" +
                         "database = PioneerTechConsultancy_Database;Integrated security = SSPI";

            SqlCommand companyDetail_cmd = new SqlCommand("UPDATE [CompanyDetail] SET[EmployerName] = " +
                            "'" + model.EmployerName + "',[ContactNumber] = " + model.ContactNumber + ",[Location] = '" + model.Location + "',[Website] =' " +model.Website+
                            "',[EmployeeID] = " + model.EmployeeId + "WHERE CompanyID = " + DropDownList1.Text, mysqlconnection);
            mysqlconnection.Open();

            int result = companyDetail_cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert(' Company Details SUCCESSFULLY Edited');", true);
        }

        protected void EmployeeIDDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList1.DataBind();
        }

        //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //}

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}