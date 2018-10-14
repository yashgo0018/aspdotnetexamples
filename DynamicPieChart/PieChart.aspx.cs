using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class PieChart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        decimal[] marks = new decimal[4];
        String[] subject = new string[4];
        String mycon = "Data Source=DESKTOP-1J9A7O4; Initial Catalog=PieChart; Integrated Security=True";
        String myquery = "Select * from StudentData where rollno=" + DropDownList1.Text;
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

        PieChart1.PieChartValues.Add(new AjaxControlToolkit.PieChartValue { Data = marks[0], Category = subject[0], PieChartValueColor = "GREEN" });
        PieChart1.PieChartValues.Add(new AjaxControlToolkit.PieChartValue { Data = marks[1], Category = subject[1], PieChartValueColor = "RED" });
        PieChart1.PieChartValues.Add(new AjaxControlToolkit.PieChartValue { Data = marks[2], Category = subject[2], PieChartValueColor = "BLUE" });
        PieChart1.PieChartValues.Add(new AjaxControlToolkit.PieChartValue { Data = marks[3], Category = subject[3], PieChartValueColor = "YELLOW" });
        PieChart1.ChartTitle = "Student Result 2017 :: " + ds.Tables[0].Rows[0]["name"].ToString();
    }
}