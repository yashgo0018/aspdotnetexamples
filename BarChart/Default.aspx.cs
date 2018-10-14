using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        decimal[] scores = new decimal[6];
        String[] matches = new string[6];
        String mycon = "Data Source=DESKTOP-1J9A7O4; Initial Catalog=CricketODI; Integrated Security=True";
        String myquery = "Select * from OneDayMatch where CrickterName='" + DropDownList1.Text + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {

            scores[0] = Convert.ToInt16(ds.Tables[0].Rows[0]["Match1Score"].ToString());
            scores[1] = Convert.ToInt16(ds.Tables[0].Rows[0]["Match2Score"].ToString());
            scores[2] = Convert.ToInt16(ds.Tables[0].Rows[0]["Match3Scrore"].ToString());
            scores[3] = Convert.ToInt16(ds.Tables[0].Rows[0]["Match4Score"].ToString());
            scores[4] = Convert.ToInt16(ds.Tables[0].Rows[0]["Match5Score"].ToString());
            scores[5] = Convert.ToInt16(ds.Tables[0].Rows[0]["Match6Score"].ToString());
            matches[0] = "1st";
            matches[1] = "2nd";
            matches[2] = "3rd";
            matches[3] = "4th";
            matches[4] = "5th";
            matches[5] = "6th";
        }
        con.Close();
        LineChart1.Series.Add(new AjaxControlToolkit.LineChartSeries { Data = scores });
        LineChart1.CategoriesAxis = string.Join(",", matches);
        LineChart1.ChartTitle = "Six ODI Matches Performance :" + DropDownList1.SelectedValue;
    }
}