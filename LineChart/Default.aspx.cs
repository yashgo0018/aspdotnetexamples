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
        decimal[] marks = new decimal[4];
        String[] subject = new string[4];
        String mycon = "Data Source=DESKTOP-1J9A7O4; Initial Catalog=pieChart; Integrated Security=True";
        String myquery = "Select * from StudentData where rollno='" + DropDownList1.Text + "'";
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

            marks[0] = Convert.ToInt16(ds.Tables[0].Rows[0]["hindi"].ToString());
            marks[1] = Convert.ToInt16(ds.Tables[0].Rows[0]["english"].ToString());
            marks[2] = Convert.ToInt16(ds.Tables[0].Rows[0]["computer"].ToString());
            marks[3] = Convert.ToInt16(ds.Tables[0].Rows[0]["science"].ToString());
            subject[0] = "Hindi";
            subject[1] = "English";
            subject[2] = "Computer";
            subject[3] = "Science";
        }
        con.Close();
        BarChart1.Series.Add(new AjaxControlToolkit.BarChartSeries { Data = marks });
        BarChart1.CategoriesAxis = string.Join(",", subject);
        BarChart1.ChartTitle = "Student Annual Performance 2017 (Result)";
    }
}