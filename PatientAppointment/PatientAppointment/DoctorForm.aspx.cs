using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PatientAppointment
{
    public partial class DoctorForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClsAppointment cs = new ClsAppointment();
            DataTable dt = new DataTable();
            dt = cs.Showlist();
            GridView1.DataSource = dt;
            GridView1.DataBind();
     
            
        }

       
    }
}