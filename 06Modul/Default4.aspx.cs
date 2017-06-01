using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _06Modul_Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public IEnumerable<kunden> rptListe_GetData()
    {
        var kundenListe = new List<kunden>();
        var connection = new SqlConnection(
            ConfigurationManager.ConnectionStrings["northwindConnectionString1"].ConnectionString);

        using (connection)
        {
            SqlCommand command = new SqlCommand(
              "SELECT        Customers.CustomerID, Customers.CompanyName, Customers.ContactName, COUNT(Orders.OrderID) AS AnzOrders " +
              "FROM            Customers INNER JOIN " +
                "Orders ON Customers.CustomerID = Orders.CustomerID " +
                "   GROUP BY Customers.CustomerID, Customers.CompanyName, Customers.ContactName",
              connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                kundenListe.Add(new kunden()
                {
                    CustomerID = reader["CustomerID"].ToString(),
                    CompanyName = reader["CompanyName"].ToString(),
                    ContactName = reader["ContactName"].ToString(),
                    AnzOrders = (int)reader["AnzOrders"]

                });
            }
            reader.Close();
        }

        return kundenListe;
    }
}