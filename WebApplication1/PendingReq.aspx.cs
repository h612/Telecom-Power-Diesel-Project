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
using System.Drawing.Printing;
using System.Net.Mail;

namespace WebApplication1
{
    public partial class PendingReq : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button4SelectAll.Visible = false;
            if (!Page.IsCallback)
                GridView4PendingReq.SelectedIndex=0;      
                
        }

        protected void Button4ViewRequests_Click(object sender, EventArgs e)
        {

           
            OleDbConnection MyConnection;
             string sql = null;
            MyConnection = new OleDbConnection("provider=Microsoft.ACE.OLEDB.12.0;Data Source='C:\\Documents and Settings\\Administrator\\Desktop\\ReqFormData.xlsx';Extended Properties=Excel 12.0;");
            
            sql = "Select * from [Sheet1$]";
            OleDbDataAdapter da = new OleDbDataAdapter(sql,MyConnection);
            DataSet ds = new DataSet();
            MyConnection.Open();         
            da.Fill(ds, "Pending");
            GridView4PendingReq.DataSource = ds.Tables[0].DefaultView;
            //int a=GridView4PendingReq.Columns.Count;
            //GridView4PendingReq.Columns[a].Visible = true;
            GridView4PendingReq.DataBind();
           // GridView4PendingReq.Columns[a].Visible = false;
            MyConnection.Close();
            Button4SelectAll.Visible = true;
        }

        protected void GridView4PendingReq_SelectedIndexChnaged(object sender, EventArgs e)
        {

        }



        //protected void GridView4PendingReq_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    GridView4PendingReq.EditIndex = e.NewEditIndex;
        //    GridView4PendingReq.DataBind();
        //}
        protected void GridView4PendingReq_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView4PendingReq.Rows[index];

            if (e.CommandName.CompareTo("PrintRequest") == 0)
            {                
                string siteID ;
                GridView4PendingReq.SelectedIndex =Convert.ToInt32(e.CommandArgument);
                int index1 = GridView4PendingReq.SelectedIndex;
              
                GridViewRow r = GridView4PendingReq.SelectedRow;
                siteID = r.Cells[4].Text.ToString();
                //siteID = ((Label)GridView4PendingReq.SelectedRow.FindControl("Site ID")).Text;
              
                row.BackColor = System.Drawing.Color.DimGray;
                Response.Redirect("http://localhost:1445/WebForm_Print_Req_FORM.aspx?SiteID="+siteID);
            
               
               
            }
            if (e.CommandName.CompareTo("AddDataAfterFilling") == 0)
            {
                row.Visible = false;
                //UPDATE DATA AFTER FILLING TABLE
                Response.Redirect("http://localhost:1445/DataAfterFilling.aspx");

            }


        }

        protected void Button4SelectAll_Click(object sender, EventArgs e)
        {

            foreach (GridViewRow row in GridView4PendingReq.Rows)
            {
                CheckBox cb = (CheckBox)row.FindControl("SelectReq");
                cb.Checked = true;//Do your operations here.
                row.BackColor = System.Drawing.Color.Aqua;
            
            }


        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
