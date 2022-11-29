using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using IT331ProjectBLayer;

namespace IT331_Project
{    public partial class WebForm2 : System.Web.UI.Page
    {
        //Declear Business object

        CLSBussLayer objBLL = new CLSBussLayer();

        protected void Page_Load(object sender, EventArgs e) {

            GridView1.DataSource = objBLL.SelectWeightData(Session["username"].ToString(), 0, DateTime.Now);
            GridView1.DataBind();
        }
        

        protected void recordButton_Click(object sender, EventArgs e)
        {
           CLSBussLayer objBLL = new CLSBussLayer();

           objBLL.InsertUserWieght(Session["username"].ToString(), Convert.ToInt32(newWeight.Value), DateTime.Now);

            Response.Redirect("TrackingWeight.aspx");

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}