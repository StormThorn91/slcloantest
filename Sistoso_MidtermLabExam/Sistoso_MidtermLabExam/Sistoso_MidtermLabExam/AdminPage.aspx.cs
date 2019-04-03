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
    public partial class WebForm5 : System.Web.UI.Page
    {
        #region Connection Setup
        SqlConnection conn = SetupConnection.ConnectDB();
        #endregion
        ForLoan fl = new ForLoan();
        protected void Page_Load(object sender, EventArgs e)
        {
            ForLoan.DataSource = fl.LoanAll();
            ForLoan.DataBind();

            ApproveLoan.DataSource = fl.LoanApp();
            ApproveLoan.DataBind();
        }

        protected void btnApprove_Click(object sender, EventArgs e)
        {
            String email = Request.Form["email"];
            SqlCommand sc = new SqlCommand("LoanApproval", conn);
            sc.CommandType = CommandType.StoredProcedure;
            conn.Open();
            sc.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
            sc.ExecuteNonQuery();

            SqlCommand sc2 = new SqlCommand("ChangeStat", conn);
            sc2.CommandType = CommandType.StoredProcedure;
            sc2.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
            sc2.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("AdminPage.aspx");

        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}