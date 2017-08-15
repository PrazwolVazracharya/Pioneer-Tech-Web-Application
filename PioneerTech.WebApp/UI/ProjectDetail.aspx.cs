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
    public partial class ProjectDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            ProjectDetailsModel projectDetailobj = new ProjectDetailsModel
            {
                ProjectName = ProjectNameTextBox.Text,
                ClientName = ClientNameTextBox.Text,
                Location = Location_TextBox.Text,
                Roles = RolesTextBox.Text,
                EmployeeId = Convert.ToInt32(EmployeeId_TextBox.Text)
            };

            EmployeeDataAccessLayer projectDataAccessobj = new EmployeeDataAccessLayer();
            int RowsAffected = projectDataAccessobj.ProjectSqlConnection(projectDetailobj);

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
            ProjectNameTextBox.Text = "";
            ClientNameTextBox.Text = "";
            Location_TextBox.Text = "";
            RolesTextBox.Text = "";
            EmployeeId_TextBox.Text = "";
        }
    }
}