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
    public partial class EducationDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            EducationDetailsModel educationDetailobj = new EducationDetailsModel
            {
                CourseType = CourseTypeTextBox.Text,
                YearOfPass = YearOfPassTextBox.Text,
                CourseSpecialization = CourseSpecializationTextBox.Text,
                EmployeeId = Convert.ToInt32(EmployeeIdTextBox.Text)
            };

            EmployeeDataAccessLayer educationDataAccessobj = new EmployeeDataAccessLayer();
            long RowsAffected = educationDataAccessobj.EducationSqlConnection(educationDetailobj);

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
            CourseTypeTextBox.Text = "";
            YearOfPassTextBox.Text = "";
            CourseSpecializationTextBox.Text = "";
            EmployeeIdTextBox.Text = "";
        }
    }
}