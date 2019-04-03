using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistoso_MidtermLabExam
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        #region Connection Setup
        SqlConnection conn = SetupConnection.ConnectDB();
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Reg_Click(object sender, EventArgs e)
        {
            String email = Request.Form["email"];
            String name = Request.Form["name"];
            String pass = Request.Form["pass"];
            Decimal salary = Decimal.Parse(Request.Form["salary"]);

            #region ValidateRegister Initialization
            String toVal = "";
            SqlCommand scval = new SqlCommand("LoginUser", conn);
            scval.CommandType = CommandType.StoredProcedure;
            conn.Open();
            scval.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
            scval.Parameters.Add("@pass", SqlDbType.NVarChar).Value = pass;
            SqlDataReader dr = scval.ExecuteReader();

            while (dr.Read())
            {
                toVal = dr.GetString(0);
            }

            if (toVal.Equals(""))
            {
                dr.Close();
                RegNow(email, name, pass, salary);
                Response.Redirect("LoginPage.aspx");
            }

            else
            {
                Response.Write("Account Exists");
            }
            
            conn.Close();
            #endregion

            
           
        }

        public void RegNow(String email, String name, String pass, Decimal sal)
        {
            SqlCommand sc = new SqlCommand("Register", conn);
            sc.CommandType = CommandType.StoredProcedure;
            sc.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
            sc.Parameters.Add("@name", SqlDbType.NVarChar).Value = name;
            sc.Parameters.Add("@pass", SqlDbType.NVarChar).Value = pass;
            sc.Parameters.Add("@salary", SqlDbType.Decimal).Value = sal;
            sc.Parameters.Add("@hasLoan", SqlDbType.Int).Value = 0;
            sc.Parameters.Add("@status", SqlDbType.Int).Value = 0;
            sc.ExecuteNonQuery();
            conn.Close();


        }
    }
}