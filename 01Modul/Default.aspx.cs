using System;

public partial class _01Modul_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender,EventArgs e)
    {

        Label1.Text = TextBox1.Text + TextBox2.Text;

    }
}