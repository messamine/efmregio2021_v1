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
    public partial class inscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection sc = new SqlConnection(@"Data Source=DESKTOP-UCDNTIG\SQLEXPRESS;Initial Catalog=v1_regio;Integrated Security=True");


        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            

            sc.Open();
            SqlCommand cdm = new SqlCommand("select id_client from client where id_client  = '" + args.Value + "'", sc);
            SqlDataReader dr = cdm.ExecuteReader();
            if (dr.Read())
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }



            sc.Close();

        }

    }
}
