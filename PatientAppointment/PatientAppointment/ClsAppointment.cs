using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace PatientAppointment
{
    public class ClsAppointment
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-0MCE4J6\\SQLEXPRESS01;Initial Catalog=Appoinment;Integrated Security=True");

        public string Name { get; set; }
        public int Age { get; set; }
        public string DOB { get; set; }
        public string BloodGroup { get; set; }
        public string Address { get; set; }
        public string MobileNo { get; set; }
        public string Email { get; set; }
        public string AppointmentDate { get; set; }
        public string PatientReport { get; set; }

        public ClsAppointment()
        {


        }
        public ClsAppointment(string name, int age, DateTime dob, string bloodgroup, string address, string mobileno, string email, DateTime appointmentDate, string patientreport)

        {
            Name = name;
            Age = age;
            DOB = dob.ToString();
            BloodGroup = bloodgroup;
            Address = address;
            MobileNo = mobileno;
            Email = email;
            AppointmentDate = appointmentDate.ToString();
            PatientReport = patientreport;


        }

     
        public void SaveAppointment()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into TblPatient values ('"+Name+ "','"+Age+ "','"+DOB+ "','"+BloodGroup+ "','"+Address+ "','"+MobileNo+ "','"+Email+ "','"+AppointmentDate+ "','"+PatientReport+"')",con);
            cmd.ExecuteNonQuery();
            con.Close();
        }


        public DataTable Showlist()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Doctor", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "ShowList");
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();
        }

}

}
    
