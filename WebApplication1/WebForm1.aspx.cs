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

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4Request_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:1445/RequestDiesel.aspx");
        }

        protected void Button4request_Permit_Click(object sender, EventArgs e)
        {
            //DELETE FROM PENDING ONLY WHEN
            //THE DATA AFTER FILLING IS ADDED
            Response.Redirect("http://localhost:1445/PendingReq.aspx");


        }
    }
}
