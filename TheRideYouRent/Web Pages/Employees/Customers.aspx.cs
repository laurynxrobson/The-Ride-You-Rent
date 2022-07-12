using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheRideYouRent.Web_Pages.Employees
{
    public partial class Drivers : System.Web.UI.Page
    {
        private void Add()
        {
            try
            {
                SqlConnection connection = new SqlConnection("Data Source=dbs-vc-cldv6211-st10091607.database.windows.net;Initial Catalog=DB_VC_CLDV6211_ST10091607;Persist Security Info=True;User ID=dbs-vc-cldv6211-st10091607;Password=WkMq7zXbEEDmGdu");
                SqlCommand command = new SqlCommand(@"INSERT INTO Driver_ST10091607 ([Driver], [Name], [Address] ,[Email], [Mobile]) VALUES  ('" + txtDriverID.Text + "', '" + txtDriver.Text + "','" + txtAddress.Text + "','" + txtEmail.Text + "','" + txtMobile.Text + "')", connection);
                connection.Open();
                command.ExecuteNonQuery();
                Response.Write("Data inserted!");
                connection.Close();
            }
            catch (Exception)
            {

            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void AddBtn_Click(object sender, EventArgs e)
        {
            Add();
        }
    }
}