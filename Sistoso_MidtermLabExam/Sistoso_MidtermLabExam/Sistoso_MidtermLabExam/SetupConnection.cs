using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Sistoso_MidtermLabExam
{
    public class SetupConnection
    {
        public static SqlConnection ConnectDB()
        {
            String conn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            //return new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\College\Senior Files\2nd Sem\ASP Lab\Sistoso_MidtermLabExam\Sistoso_MidtermLabExam\Sistoso_MidtermLabExam\App_Data\SalaryLoan.mdf;Integrated Security=True");
            return new SqlConnection(conn);
        }
    }
}