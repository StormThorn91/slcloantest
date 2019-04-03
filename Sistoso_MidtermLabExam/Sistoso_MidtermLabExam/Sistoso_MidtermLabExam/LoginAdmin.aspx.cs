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
    public partial class WebForm7 : System.Web.UI.Page
    {
        #region Connection Setup
        SqlConnection conn = SetupConnection.ConnectDB();
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            String email = Request.Form["email"];
            String pass = Request.Form["pass"];



            #region Login
            String toVal = "", toVal2 = "";
            SqlCommand scval = new SqlCommand("LoginAdmin", conn);
            scval.CommandType = CommandType.StoredProcedure;
            conn.Open();
            scval.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
            scval.Parameters.Add("@pass", SqlDbType.NVarChar).Value = pass;
            SqlDataReader dr = scval.ExecuteReader();

            while (dr.Read())
            {
                toVal = dr.GetString(0);
                toVal2 = dr.GetString(1);
            }

            if (!toVal.Equals(""))
            {
                dr.Close();
                Session["email"] = toVal;
                Response.Redirect("AdminPage.aspx");


            }

            else
            {
                Response.Write("Account email/password incorrect");
            }

            conn.Close();
            #endregion
        }
    }
}