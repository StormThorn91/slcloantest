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
    public partial class WebForm4 : System.Web.UI.Page
    {
        #region Connection Setup
        SqlConnection conn = SetupConnection.ConnectDB();
        #endregion
        String email = "";
        String name = "";
        Decimal sal = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            getData();
        }

        public void getData()
        {
            int hasLoan =  0;
            conn.Open();
            SqlCommand sc1 = new SqlCommand("ReadApprovedLoan", conn);
            sc1.CommandType = CommandType.StoredProcedure;
            sc1.Parameters.Add("@email", SqlDbType.NVarChar).Value = Session["email"];
            SqlDataReader dr1 = sc1.ExecuteReader();
            while (dr1.Read())
            {
                hasLoan = dr1.GetInt32(dr1.GetOrdinal("hasLoan"));
            }
            dr1.Close();

            if (hasLoan == 0)
            {
                SqlCommand sc = new SqlCommand("ReadUserData", conn);
                sc.CommandType = CommandType.StoredProcedure;
                sc.Parameters.Add("@email", SqlDbType.NVarChar).Value = Session["email"];
                SqlDataReader dr = sc.ExecuteReader();
                while (dr.Read())
                {
                    email = dr.GetString(0);
                    name = dr.GetString(1);
                    sal = dr.GetDecimal(2);
                }

                dr.Close();
                txtEmail.Text = email;
                txtName.Text = name;
                txtSal.Text = sal.ToString();
                conn.Close();
            }

            else
            {
                Response.Redirect("hasLoan.aspx");
            }


           
        }

        protected void Apply_Click(object sender, EventArgs e)
        {
            int nm = Convert.ToInt32(Request.Form["numMonths"]);
            ApplyLoan(email, name, sal, nm);
            Response.Redirect("hasLoan.aspx");

        }

        public void ApplyLoan(String email, String name, Decimal sal, int numMonths)
        {
            Decimal NM = Convert.ToDecimal(numMonths);
            Decimal LA = sal * 2.5M;
            Decimal I = 0;
            Decimal IR = 0;

            if (numMonths > 0 && numMonths <= 5)
            {
                IR = 0.62M;
                I = LA * NM * IR;
            }

            else if (numMonths > 5 && numMonths <= 10)
            {
                IR = 0.65M;
                I = LA * NM * IR;
            }

            else if (numMonths > 10 && numMonths <= 15)
            {
                IR = 0.68M;
                I = LA * NM * IR;
            }

            else if (numMonths > 15 && numMonths <= 20)
            {
                IR = 0.75M;
                I = LA * NM * IR;
            }

            else if (numMonths > 20 && numMonths <= 24)
            {
                IR = 0.8M;
                I = LA * NM * IR;
            }
            Decimal SC = LA * 0.2M;
            Decimal TH = LA - (I + SC);
            Decimal MA = LA / NM;

            SqlCommand sc = new SqlCommand("NewLoan", conn);
            sc.CommandType = CommandType.StoredProcedure;
            conn.Open();
            sc.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
            sc.Parameters.Add("@name", SqlDbType.NVarChar).Value = name;
            sc.Parameters.Add("@salary", SqlDbType.Decimal).Value = sal;
            sc.Parameters.Add("@numMonths", SqlDbType.Int).Value = numMonths;
            sc.Parameters.Add("@approved", SqlDbType.Int).Value = 0;
            sc.Parameters.Add("@LoanAmount", SqlDbType.Decimal).Value = LA;
            sc.Parameters.Add("@Interest", SqlDbType.Decimal).Value = I;
            sc.Parameters.Add("@InterestRate", SqlDbType.Decimal).Value = IR;
            sc.Parameters.Add("@TakeHomeLoan", SqlDbType.Decimal).Value = TH;
            sc.Parameters.Add("@ServiceCharge", SqlDbType.Decimal).Value = SC;
            sc.Parameters.Add("@MonthlyAmortization", SqlDbType.Decimal).Value = MA;

            sc.ExecuteNonQuery();

            SqlCommand sc2 = new SqlCommand("ApplyLoan", conn);
            sc2.CommandType = CommandType.StoredProcedure;
            
            sc2.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
            sc2.ExecuteNonQuery();
            conn.Close();

            
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}