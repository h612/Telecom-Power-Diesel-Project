using System;
using System.Drawing;
//using System.Windows.Forms;
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
using Excel = Microsoft.Office.Interop.Excel;
using System.Data.OleDb;


namespace WebApplication1
{
    public partial class RequestDiesel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime dt=new DateTime();
            String.Format("{0:MM/dd/yyyy}", dt);

            TextBox4Date_for_Requesting_Diesel.Text = DateTime.Now.Date.ToShortDateString();
            DateTime d = DateTime.Now.AddDays(2);
            TextBox4ExpectedRefilDate.Text = d.Date.ToShortDateString();
            TextBox4UniqueFormCode.Text = string.Concat(ListBox4Site_ID.SelectedValue.ToString(), dt.Day.ToString(),dt.Month.ToString());

            OleDbConnection MyConnection = new OleDbConnection("provider=Microsoft.ACE.OLEDB.12.0;Data Source='C:\\Documents and Settings\\Administrator\\Desktop\\assignments\\ProjectDiesel_rar\\ProjectDiesel\\ProjectDiesel\\Basic Information.xlsx';Extended Properties=Excel 12.0;");
            string sql = null;
            sql = "Select Distinct Region from [Sheet1$]";
            OleDbCommand myCommand = new OleDbCommand(sql, MyConnection);
            MyConnection.Open();

            OleDbDataAdapter da = new OleDbDataAdapter(myCommand);
            DataSet ds = new DataSet();
            da.Fill(ds, "Reg");
            DropDownList4Region.DataSource = ds;
            DropDownList4Region.DataTextField = "Region";
            DropDownList4Region.DataValueField = "Region";
            DropDownList4Region.DataBind();
            MyConnection.Close();
            
            
            
            

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button4ReqSubmit_Click(object sender, EventArgs e)
        {

                 OleDbConnection MyConnection;
                OleDbCommand myCommand = new OleDbCommand();
                string sql = null;
                MyConnection = new OleDbConnection("provider=Microsoft.ACE.OLEDB.12.0;Data Source='C:\\Documents and Settings\\Administrator\\Desktop\\ReqFormData.xlsx';Extended Properties=Excel 12.0;");
                MyConnection.Open();
                myCommand.Connection = MyConnection;
                sql = "INSERT INTO [Sheet1$]([Region],[Site ID],[Available Quantity],[Expected Refil Date],[Required Quantity],[Contractor Name]) values('" + 
                    DropDownList4Region.SelectedValue.ToString() + "','" + ListBox4Site_ID.SelectedValue.ToString() +
                    "','" + TextBox4AvailableQty.Text.ToString() + "','" + TextBox4ExpectedRefilDate.Text.ToString() +
                    "','" + TextBox4RequiredQty.Text.ToString() + "','" + TextBox4ContractorName.Text.ToString() +                    
                    "')";

            //add last filled date from old database
                myCommand.CommandText = sql;
                myCommand.ExecuteNonQuery();
                MyConnection.Close();
            
                string sql2 = "INSERT INTO [Sheet1$] ([Date]) VALUES (?)";
                OleDbCommand cmd = new OleDbCommand(sql2, MyConnection);
                cmd.Parameters.AddWithValue("",Label4todaysdate.Text );
                MyConnection.Open();
                cmd.ExecuteNonQuery();
                MyConnection.Close();
            
            

        }

        protected void DropDownList4Region_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            OleDbConnection MyConnection = new OleDbConnection("provider=Microsoft.ACE.OLEDB.12.0;Data Source='C:\\Documents and Settings\\Administrator\\Desktop\\assignments\\ProjectDiesel_rar\\ProjectDiesel\\ProjectDiesel\\Basic Information.xlsx';Extended Properties=Excel 12.0;");
            string sql = null;
            sql = "SELECT [SiteID] FROM [Sheet1$] WHERE [Region]='"+DropDownList4Region.SelectedValue+"'";
            OleDbCommand myCommand = new OleDbCommand(sql, MyConnection);
            MyConnection.Open();

            OleDbDataAdapter da = new OleDbDataAdapter(myCommand);
            DataSet ds = new DataSet();
            
            da.Fill(ds);
            ListBox4Site_ID.DataSource=ds;
            ListBox4Site_ID.DataTextField = "SiteID";
            ListBox4Site_ID.DataValueField = "SiteID";
            ListBox4Site_ID.DataBind();
            MyConnection.Close();
        }

        protected void ListBox4Site_ID_SelectedIndexChanged(object sender, EventArgs e)
        {
            //OleDbConnection MyConnection = new OleDbConnection("provider=Microsoft.ACE.OLEDB.12.0;Data Source='C:\\Documents and Settings\\Administrator\\Desktop\\assignments\\ProjectDiesel_rar\\ProjectDiesel\\ProjectDiesel\\Basic Information.xlsx';Extended Properties=Excel 12.0;");
            //string sql = null;
            //sql = "SELECT [SiteID] FROM [Sheet1$] WHERE [Region]='" + DropDownList4Region.SelectedValue + "'";
            //OleDbCommand myCommand = new OleDbCommand(sql, MyConnection);
            //MyConnection.Open();

            //OleDbDataAdapter da = new OleDbDataAdapter(myCommand);
            TextBox4LastFilledDate.Text = "0/0/0";


        }
    }
}
