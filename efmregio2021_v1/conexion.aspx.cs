using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace efmregio2021_v1
{
    public partial class conexion : System.Web.UI.Page
    {
        SqlConnection sc = new SqlConnection(@"Data Source=DESKTOP-UCDNTIG\SQLEXPRESS;Initial Catalog=v1_regio;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            sc.Open();
            SqlCommand cmd = new SqlCommand("select email ,pass from client where email  ='" + TextBox1.Text + "' and pass = '" + TextBox2.Text + "'", sc);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["user"] = dr[0]   ;
                Response.Redirect("reservation.aspx");
            }
            


            sc.Close();
        }
    }
}