using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ODS.PROJECT.Class;
using System.Data;


namespace ODS.PROJECT
{
    public partial class TestMySQL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            clsDB conn = new clsDB();
            DataTable dt;
            String sql;
            sql = "Select * from Account";
            dt = conn.ExecuteDataTable(sql);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            

        }
    }
}