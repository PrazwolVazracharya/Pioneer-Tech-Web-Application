using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PioneerTech.Consultancy.Model;
using System.Data;

namespace PioneerTech.Consultancy.DAL
{
    public class EmployeeDataAccessLayer
    {

        //public long EmployeeSqlConnection(EmployeeDetailsModel EmployeeDetailsmodel)
        //{
        //    SqlConnection mysqlconnection = new SqlConnection();
        //    mysqlconnection.ConnectionString = "Data Source = DESKTOP-6T65F42;" +
        //    "database = PioneerTechConsultancy_Database;Integrated security = SSPI";

        //    mysqlconnection.Open();
        //    SqlCommand EmployeeDetailCommand = new SqlCommand("INSERT INTO EmployeeDetail VALUES(" +
        //                         "'" + EmployeeDetailsmodel.FirstName + "','" + EmployeeDetailsmodel.LastName + "','" + EmployeeDetailsmodel.EmailId + "'," +
        //                         EmployeeDetailsmodel.PhoneNumber + "," + EmployeeDetailsmodel.AlternatePhoneNumber + ",'" + EmployeeDetailsmodel.Address1 + "','" + EmployeeDetailsmodel.Address2 +
        //                         "','" + EmployeeDetailsmodel.HomeCountry + "','" + EmployeeDetailsmodel.CurrentCountry + "'," + EmployeeDetailsmodel.ZipCode + ")", mysqlconnection);

        //    long EmployeeConnection = EmployeeDetailCommand.ExecuteNonQuery();
        //    mysqlconnection.Close();
        //    return EmployeeConnection;

        //}

        public long SaveEmployeeSqlConnection(EmployeeDetailsModel employeeDetail)
        {
            SqlConnection mysqlconnection = new SqlConnection();
            mysqlconnection.ConnectionString = "Data Source = DESKTOP-6T65F42;" +
            "database = PioneerTechConsultancy_Database;Integrated security = SSPI";

            mysqlconnection.Open();

            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.Connection = mysqlconnection;
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "uspSaveEmployeeDetails";

            sqlCommand.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = employeeDetail.FirstName;
            sqlCommand.Parameters.Add("@LastName", SqlDbType.VarChar).Value = employeeDetail.LastName;
            sqlCommand.Parameters.Add("@Email", SqlDbType.VarChar).Value = employeeDetail.EmailId;
            sqlCommand.Parameters.Add("@ContactNumber", SqlDbType.VarChar).Value = employeeDetail.PhoneNumber;
            sqlCommand.Parameters.Add("@AlternateContactNumber", SqlDbType.VarChar).Value = employeeDetail.AlternatePhoneNumber;
            sqlCommand.Parameters.Add("@Address", SqlDbType.VarChar).Value = employeeDetail.Address1;
            sqlCommand.Parameters.Add("@AlternateAddress", SqlDbType.VarChar).Value = employeeDetail.Address2;
            sqlCommand.Parameters.Add("@CurrentCountry", SqlDbType.VarChar).Value = employeeDetail.HomeCountry;
            sqlCommand.Parameters.Add("@HomeCountry", SqlDbType.VarChar).Value = employeeDetail.CurrentCountry;
            sqlCommand.Parameters.Add("@ZipCode", SqlDbType.VarChar).Value = employeeDetail.ZipCode;

            long returnValue = sqlCommand.ExecuteNonQuery();
            sqlCommand.Dispose();
            mysqlconnection.Close();
            return returnValue;

        }


        public long ProjectSqlConnection(ProjectDetailsModel ProjectDetailsmodel)
        {
            SqlConnection mysqlconnection = new SqlConnection();
            mysqlconnection.ConnectionString = "Data Source = DESKTOP-6T65F42;" +
                         "database = PioneerTechConsultancy_Database;Integrated security = SSPI";

            mysqlconnection.Open();
            SqlCommand ProjectDetailCommand = new SqlCommand("INSERT INTO ProjectDetail VALUES(" +
                             "'" + ProjectDetailsmodel.ProjectName + "','" + ProjectDetailsmodel.ClientName + "','" + ProjectDetailsmodel.Location + "','" +
                             ProjectDetailsmodel.Roles + "'," + ProjectDetailsmodel.EmployeeId + ")", mysqlconnection);
            long ProjectConnection = ProjectDetailCommand.ExecuteNonQuery();
            mysqlconnection.Close();
            return ProjectConnection;
        }

        public long CompanySqlConnection(CompanyDetailsModel CompanyDetailsmodel)
        {
            SqlConnection mysqlconnection = new SqlConnection();
            mysqlconnection.ConnectionString = "Data Source = DESKTOP-6T65F42;" +
                         "database = PioneerTechConsultancy_Database;Integrated security = SSPI";

            mysqlconnection.Open();
            SqlCommand CompanyDetailCommand = new SqlCommand("INSERT INTO CompanyDetail VALUES(" +
                                 "'" + CompanyDetailsmodel.EmployerName + "'," + CompanyDetailsmodel.ContactNumber + ",'" + CompanyDetailsmodel.Location + "','" + CompanyDetailsmodel.Website + "'," + CompanyDetailsmodel.EmployeeId + ")", mysqlconnection);
            long CompanyConnection = CompanyDetailCommand.ExecuteNonQuery();
            mysqlconnection.Close();
            return CompanyConnection;
        }

        public long EducationSqlConnection(EducationDetailsModel EducationDetailsmodel)
        {
            SqlConnection mysqlconnection = new SqlConnection();
            mysqlconnection.ConnectionString = "Data Source = DESKTOP-6T65F42;" +
                         "database = PioneerTechConsultancy_Database;Integrated security = SSPI";

            mysqlconnection.Open();
            SqlCommand EducationDetailCommand = new SqlCommand("INSERT INTO EducationDetail VALUES(" +
                             "'" + EducationDetailsmodel.CourseType + "','" + EducationDetailsmodel.YearOfPass + "','" + EducationDetailsmodel.CourseSpecialization + "'," +
                              +EducationDetailsmodel.EmployeeId + ")", mysqlconnection);
            long EducationConnection = EducationDetailCommand.ExecuteNonQuery();
            mysqlconnection.Close();
            return EducationConnection;
        }

        public long TechnicalSqlConnection(TechnicalDetailsModel TechnicalDetailsmodel)
        {
            SqlConnection mysqlconnection = new SqlConnection();
            mysqlconnection.ConnectionString = "Data Source = DESKTOP-6T65F42;" +
                         "database = PioneerTechConsultancy_Database;Integrated security = SSPI";

            mysqlconnection.Open();
            SqlCommand TechnicalDetailCommand = new SqlCommand("INSERT INTO TechnicalDetail VALUES(" +
                                 "'" + TechnicalDetailsmodel.UserInterface + "','" + TechnicalDetailsmodel.ProgrammingLanguages + "','" + TechnicalDetailsmodel.Database + "'," + TechnicalDetailsmodel.EmployeeId + ")", mysqlconnection);
            long TechnicalConnection = TechnicalDetailCommand.ExecuteNonQuery();
            mysqlconnection.Close();
            return TechnicalConnection;

        }
    }

}

