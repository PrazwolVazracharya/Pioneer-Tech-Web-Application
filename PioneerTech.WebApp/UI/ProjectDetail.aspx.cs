using PioneerTech.Consultancy.DAL;
using PioneerTech.Consultancy.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {

        }   

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            ProjectNameTextBox.Text = "";
            ClientNameTextBox.Text = "";
            Location_TextBox.Text = "";
            RolesTextBox.Text = "";
            ProjectEmployeeDropDownList1.Text = "";
        }

        protected void SaveButton_Click1(object sender, EventArgs e)
        {
                ProjectDetailsModel projectDetailobj = new ProjectDetailsModel
                {
                    ProjectName = ProjectNameTextBox.Text,
                    ClientName = ClientNameTextBox.Text,
                    Location = Location_TextBox.Text,
                    Roles = RolesTextBox.Text,
                    EmployeeId = Convert.ToInt32(ProjectEmployeeDropDownList1.Text)
                };

                EmployeeDataAccessLayer projectDataAccessobj = new EmployeeDataAccessLayer();
                long RowsAffected = projectDataAccessobj.ProjectSqlConnection(projectDetailobj);

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

        protected void EditButton_Click(object sender, EventArgs e)
        {
            ProjectDetailsModel model = new ProjectDetailsModel
            {
                ProjectName = ProjectNameTextBox.Text,
                ClientName = ClientNameTextBox.Text,
                Location = Location_TextBox.Text,
                Roles = RolesTextBox.Text,
                //EmployeeId = Convert.ToInt32(EmployeeId_TextBox.Text)
                EmployeeId = Convert.ToInt32(ProjectEmployeeDropDownList1.Text)
            };

            int EditEmployeeId = Convert.ToInt32(Project_Edit_DropDownList1.Text);
            SqlConnection mysqlconnection = new SqlConnection();
            mysqlconnection.ConnectionString = "Data Source = DESKTOP-6T65F42;" +
                         "database = PioneerTechConsultancy_Database;Integrated security = SSPI";

            SqlCommand projectDetail_cmd = new SqlCommand("UPDATE [ProjectDetail] SET[ProjectName] = " +
                            "'" + model.ProjectName + "',[ClientName] = '" + model.ClientName + "',[Location] = '" + model.Location + "',[Roles] =' " + model.Roles +
                            "'WHERE EmployeeID = " + EditEmployeeId, mysqlconnection);
           
            mysqlconnection.Open();

            int result = projectDetail_cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "Operation was", "alert(' Project Details SUCCESSFULLY Edited');", true);

        }

        protected void Project_DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
    
}