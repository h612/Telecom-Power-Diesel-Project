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
using System.Data.OleDb;

namespace WebApplication1
{
    public partial class DataAfterFilling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4FillingDetails_Click(object sender, EventArgs e)
        {
            OleDbConnection MyConnection;
            OleDbCommand myCommand = new OleDbCommand();
            string sql = null;
            MyConnection = new OleDbConnection("provider=Microsoft.ACE.OLEDB.12.0;Data Source='C:\\Documents and Settings\\Administrator\\Desktop\\assignments\\ProjectDiesel_rar\\ProjectDiesel\\ProjectDiesel\\FillingData.xlsx';Extended Properties=Excel 12.0;");
            MyConnection.Open();
            myCommand.Connection = MyConnection;

            sql = "INSERT INTO [Sheet1$]([Site ID],[Card ID],[Card Serial Number],[Filling Date],[Crrent Filled Qty],[Last Available Qty],[Last Meter Reading],[Current Meter Reading],[Last Filled Qty]) values('" +
             TextBox4SiteID.Text.ToString() + "','" + TextBox4CardID.Text.ToString() +
                "','" + TextBox4CardSerialNumber.Text.ToString() + "','" + TextBox4FillingDate.Text.ToString() +
                "','" +  TextBox4FilledQty.Text.ToString() + "','" + TextBox4LastAvailableQty.Text.ToString() +
                "','" + TextBox4LastMeterReading.Text.ToString()+"','"+TextBox4CurrentMeterReading.Text.ToString()+
                "','" +TextBox4LastFilledQty.Text.ToString() +
                "')";

            //add last filled date from old database
            myCommand.CommandText = sql;
            myCommand.ExecuteNonQuery();
            MyConnection.Close();
            
        }
    }
}
