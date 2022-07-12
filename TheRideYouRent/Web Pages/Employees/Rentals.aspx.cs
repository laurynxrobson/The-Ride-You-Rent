using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheRideYouRent.Web_Pages.Employees
{
    public partial class Rental : System.Web.UI.Page
    {
        private void Add()
        {
            try
            {
                SqlConnection connection = new SqlConnection("Data Source=dbs-vc-cldv6211-st10091607.database.windows.net;Initial Catalog=DB_VC_CLDV6211_ST10091607;Persist Security Info=True;User ID=dbs-vc-cldv6211-st10091607;Password=WkMq7zXbEEDmGdu");
                SqlCommand command = new SqlCommand(@"INSERT INTO Rental_ST10091607 ([RentalID], [Inspector], [Driver] ,[RentalFee], [StartDate], [EndDate], [CarNo]) VALUES  ('" + txtRentalID.Text + "', '" + txtInspector.Text + "','" + txtDriver.Text + "','" + txtRental.Text + "','" + txtStart.Text + "','" + txtEndDate.Text + "','" + txtCarNo.Text + "')", connection);
                SqlCommand penaltyFee = new SqlCommand("SELECT CarNo, Driver, ReturnDate, GETDATE() AS 'Current Date', DATEDIFF(day, ReturnDate, GETDATE()) AS 'Elapsed Date',(DATEDIFF(day, Returndate, GETDATE()) * 500) AS 'Fine Amount'FROM ReturnTB_ST10091607 ORDER BY CarNo", connection);
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