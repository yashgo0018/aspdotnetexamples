using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }    

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        if (e.Authenticated)
        {
            Response.Redirect("AdminHome.aspx");
        }
        if (ValidateUser(Login1.UserName, Login1.Password))
        {
            Response.Redirect("AdminHome.aspx");
        }
        else
        {
            e.Authenticated = false;
        }
    }

    private bool ValidateUser(String username, String password)
    {
        bool status;
        String mycon = "Data Source=DESKTOP-1J9A7O4;Initial Catalog=UserControl;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select * from LoginDetail";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String uname;
        String pass;

        uname = ds.Tables[0].Rows[0]["uname"].ToString();
        pass = ds.Tables[0].Rows[0]["upass"].ToString();
        scon.Close();

        if (uname == username && pass == password)
        {
            Session["username"] = uname;
            status = true;
        }
        else
        {
            status = false;
        }
        return status;
    }
}