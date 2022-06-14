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
    public partial class reservation : System.Web.UI.Page
    {
        SqlConnection sc = new SqlConnection(@"Data Source=DESKTOP-UCDNTIG\SQLEXPRESS;Initial Catalog=v1_regio;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ( (date) date1.Value.ToString() < (date) date2.Value.ToString())

            int id_jour =  int.Parse( DropDownList1.SelectedValue.ToString()) ;
            int montant = 0;
            sc.Open();
            SqlCommand cmd = new SqlCommand("select prodduit_nuit from jour where id_jour=" + id_jour, sc);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read() )
        }
    }
}