using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace AdminForm
{
    public partial class index : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\SchoolDistrict.mdf;Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            DisplayData();

        }

        public void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into district values ('" + id.Text + "','" + name.Text + "', '" + irn.Text + "')";
            cmd.ExecuteNonQuery();


            id.Text = "";
            name.Text = "";
            irn.Text = "";

            DisplayData();

        }

        public void DisplayData()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from district where name = '"+ name.Text +"'";
            cmd.ExecuteNonQuery();

           

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }

        public void Button2_Click(object sender, EventArgs e)
        {

            DisplayData();

        }
    }
}