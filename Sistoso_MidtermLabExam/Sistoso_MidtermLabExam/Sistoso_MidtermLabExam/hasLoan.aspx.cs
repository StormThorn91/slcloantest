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
    public partial class WebForm6 : System.Web.UI.Page
    {
        #region Connection Setup
        SqlConnection conn = SetupConnection.ConnectDB();
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            int stat = 0;
            SqlCommand sc = new SqlCommand("ReadLoan", conn);
            sc.CommandType = CommandType.StoredProcedure;
            conn.Open();
            sc.Parameters.Add("@email", SqlDbType.NVarChar).Value = Session["email"];
            SqlDataReader dr = sc.ExecuteReader();
            while (dr.Read())
            {
               txtE.Text = dr.GetString(dr.GetOrdinal("email"));
               txtN.Text = dr.GetString(dr.GetOrdinal("name"));
               txtNM.Text = dr.GetInt32(dr.GetOrdinal("numMonths")).ToString();
               txtSal.Text = dr.GetDecimal(dr.GetOrdinal("salary")).ToString();
               txtLA.Text = dr.GetDecimal(dr.GetOrdinal("LoanAmount")).ToString();
               txtI.Text = dr.GetDecimal(dr.GetOrdinal("Interest")).ToString();
               txtIR.Text = dr.GetDecimal(dr.GetOrdinal("InterestRate")).ToString();
               txtTHL.Text = dr.GetDecimal(dr.GetOrdinal("TakeHomeLoan")).ToString();
               txtSC.Text = dr.GetDecimal(dr.GetOrdinal("ServiceCharge")).ToString();
               txtMA.Text = dr.GetDecimal(dr.GetOrdinal("MonthlyAmortization")).ToString();
               
                
            }
            dr.Close();

            SqlCommand sc1 = new SqlCommand("ReadUserData", conn);
            sc1.CommandType = CommandType.StoredProcedure;
            sc1.Parameters.Add("@email", SqlDbType.NVarChar).Value = Session["email"];
            SqlDataReader dr1 = sc1.ExecuteReader();
            while (dr1.Read())
            {
                stat = dr1.GetInt32(dr1.GetOrdinal("status"));
            }

            dr1.Close();
            if (stat == 1)
            {
                txtS.Text = "Pending";
            }
            else if (stat == 2)
            {
                txtS.Text = "Approved";
                txtS.ForeColor = System.Drawing.Color.Green;

            }

            conn.Close();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}