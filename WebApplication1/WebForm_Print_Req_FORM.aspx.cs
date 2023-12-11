using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Drawing;
using System.Drawing.Printing;
using System.Data.OleDb;

using System.Data.SqlClient;


namespace WebApplication1
{
    public partial class WebForm_Print_Req_FORM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string u = Request.QueryString["SiteID"];
            TextBox4SiteID.Text = u;
            OleDbConnection MyConnection = new OleDbConnection("provider=Microsoft.ACE.OLEDB.12.0;Data Source='C:\\Documents and Settings\\Administrator\\Desktop\\assignments\\ProjectDiesel_rar\\ProjectDiesel\\ProjectDiesel\\Basic Information.xlsx';Extended Properties=Excel 12.0;");
            string sql = null;
            sql = "SELECT [DG Type] FROM [Sheet1$] WHERE [SiteID]='" + u + "'";
            OleDbCommand myCommand = new OleDbCommand(sql, MyConnection);
            MyConnection.Open();
            OleDbDataReader rdr = myCommand.ExecuteReader();
            while (rdr.Read())
            {
                this.TextBox4GensetTYpe.Text = rdr["DG Type"].ToString();
            }
            if (rdr != null)
            {
                rdr.Close();
            }
            if (MyConnection != null)
            {
                MyConnection.Close();
            }

           // OleDbDataAdapter da = new OleDbDataAdapter(myCommand);
           // DataSet ds = new DataSet();

           // da.Fill(ds,"DG Type");
           //TextBox4GensetTYpe.Text=da.
           // MyConnection.Close();

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void IESEL_READING_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button4PrintRequest_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "key", "window.print()", true);

        }
    }
}
