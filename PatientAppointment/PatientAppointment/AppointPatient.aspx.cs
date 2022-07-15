using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PatientAppointment
{
    public partial class AppointPatient : System.Web.UI.Page
    {

        public string Name;
        public int Age;
        public DateTime DOB;
        public string BloodGroup;
        public string Address;
        public string MobileNo;
        public string Email;
        public DateTime AppointmentDate;
        public string PatientReport;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Name = txtName.Text;
            Age = Convert.ToInt32(txtage.Text);
            DOB = Convert.ToDateTime(txtdob.Text);
            BloodGroup = drpbloodgroup.SelectedItem.Text;
            Address = txtaddress.Text;
            MobileNo = txtmobileno.Text;
            Email = txtemail.Text;
            AppointmentDate = Convert.ToDateTime(txtdateofappointment.Text);

            if(filepatientreport.HasFile)
            {
                PatientReport = filepatientreport.PostedFile.FileName;
            }

            ClsAppointment obj = new ClsAppointment(Name,Age,DOB,BloodGroup,Address,MobileNo,Email,AppointmentDate,PatientReport);
            obj.SaveAppointment();
            Response.Write("Appointment saved....!!!");


        }
    }
    }
