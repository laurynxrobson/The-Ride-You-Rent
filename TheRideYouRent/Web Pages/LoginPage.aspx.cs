using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheRideYouRent.Web_Pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private void Login()
        {
            try
            {
                SqlConnection connection = new SqlConnection("Data Source=dbs-vc-cldv6211-st10091607.database.windows.net;Initial Catalog=DB_VC_CLDV6211_ST10091607;Persist Security Info=True;User ID=dbs-vc-cldv6211-st10091607;Password=WkMq7zXbEEDmGdu");
                SqlDataAdapter adapter = new SqlDataAdapter(@"SELECT * FROM Inspector_ST10091607 WHERE Inspector_no= '" + txtInspectorID.Text + "' AND Name= '" + txtName.Text + "'", connection);
                DataTable dataTable = new DataTable();
                connection.Open();
                adapter.Fill(dataTable);
                if(dataTable.Rows.Count > 0)
                {
                    Response.Redirect("Employees/InspectorsHomePage.aspx");
                }
                else
                {
                    Response.Write("Please enter the correct ID and Name.");
                }
                connection.Close();
            }
            catch (Exception)
            {

            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Login_Click(object sender, EventArgs e)
        {
            Login();

        }
    }
}