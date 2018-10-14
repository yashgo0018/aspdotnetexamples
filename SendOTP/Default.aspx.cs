using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Net;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Random random = new Random();
        int value = random.Next(1001, 9999);
        string destinationaddr = "91" + TextBox1.Text;
        string message = "Your OTP Number is " + value + " ( Sent By :Your Name:-------)";
        //Label3.Text = message;
        String message1 = HttpUtility.UrlEncode(message);

        using (var wb = new WebClient())
        {
            byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "FammnpFW0Ks-868 cgcjggcnke2nG9447474747430NkDbbl4jUV4elK"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
            string result = System.Text.Encoding.UTF8.GetString(response);
            Session["otp"] = value;
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == Session["otp"].ToString())
        {
            Panel2.Visible = false;
            Label3.Text = "Your Mobile Number Has Been Verified Successfully - Thanks";
        }
        else
        {
            Label3.Text = "OTP Number is Not Correct : Your Mobile Number not Verified";
            Panel2.Visible = true;
        }

    }
}