using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using IT331ProjectBLayer;

namespace IT331_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        CLSBussLayer objBLL = new CLSBussLayer();
        protected void Page_Load(object sender, EventArgs e) { }

        //Sign in
        protected void oldButton_Click(object sender, EventArgs e)
        {
            Session["username"] = oldUsername.Value;

            if (objBLL.SignIn(Session ["username"].ToString(), oldPassword.Value) == true)
            {
                 Response.Redirect("TrackingWeight.aspx");
            }// End of if

            else
            { Response.Write("<script>alert('Sorry! the username or password is invalid')</script>");  }// End of else
        }//End of oldButton_Click

        //Sign up function:
        protected void NewButton_Click(object sender, EventArgs e)
        {
            CLSBussLayer objBLL = new CLSBussLayer();

            objBLL.InsertUserData(newUsername.Value, newEmail.Value, newPassword.Value);

            Session["username"] = newUsername.Value;

            Response.Redirect("TrackingWeight.aspx");

        }// End of Sign up
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e) {}
       
    }//End of Sign in 

    }
