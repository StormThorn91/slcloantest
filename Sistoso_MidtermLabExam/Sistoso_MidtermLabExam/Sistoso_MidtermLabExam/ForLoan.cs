using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Sistoso_MidtermLabExam
{
    public class ForLoan
    {
        static String connStr = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\College\Senior Files\2nd Sem\ASP Lab\Sistoso_MidtermLabExam\Sistoso_MidtermLabExam\Sistoso_MidtermLabExam\App_Data\SalaryLoan.mdf;Integrated Security=True";
        SqlConnection conn = new SqlConnection(connStr);

        public DataTable LoanAll()
        {
            DataTable dt = new DataTable();
            conn.Close();
            SqlCommand sc = new SqlCommand("AllLoans", conn);
            sc.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(sc);
            dt.Clear();
            da.Fill(dt);
            return dt;
        }

        public DataTable LoanApp()
        {
            DataTable dt = new DataTable();
            conn.Close();
            SqlCommand sc = new SqlCommand("ApprovedLoan", conn);
            sc.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(sc);
            dt.Clear();
            da.Fill(dt);
            return dt;
        }

        
        

    }
}