using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace D16Sample1
{

    public partial class Sample : System.Web.UI.Page
    {
        DataView dv;
        protected void Page_Load(object sender, EventArgs e)
        {
            dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            prid.Text = dv[0]["ProductId"].ToString();
            product_text.Text = dv[0]["productname"].ToString();
            price_text.Text = dv[0]["price"].ToString();
            quantity_text.Text = dv[0]["quantity"].ToString();
        }

        protected void product_text_TextChanged(object sender, EventArgs e)
        {

        }
        static int counter;
        protected void btn_next_Click(object sender, EventArgs e)
        {
            if(counter<dv.Count)
            {
                counter++;
                prid.Text = dv[counter]["ProductId"].ToString();
                product_text.Text = dv[counter]["productname"].ToString();
                price_text.Text = dv[counter]["price"].ToString();
                quantity_text.Text = dv[counter]["quantity"].ToString();
            }
        }

        protected void btn_previous_Click(object sender, EventArgs e)
        {
            if(counter>0)
            {
                counter--;
                prid.Text = dv[counter]["ProductId"].ToString();
                product_text.Text = dv[counter]["productname"].ToString();
                price_text.Text = dv[counter]["price"].ToString();
                quantity_text.Text = dv[counter]["quantity"].ToString();
            }
        }

        protected void btn_insert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
        }
    }
}