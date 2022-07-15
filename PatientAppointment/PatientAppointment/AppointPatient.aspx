<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppointPatient.aspx.cs" Inherits="PatientAppointment.AppointPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 64%;
            height:667px;
        }
        .auto-style2 {
            width: 414px;
        }
        .auto-style3{
            height:79px;
        }
        .auto-style4{
            width:414px;
            height:53px;
        }
         .auto-style5{
            height:53px;
        }
         .containet
         {
             height:700px;
             width:700px;
             background-color:lightgreen;
             margin-left:400px;
             border:3px solid;
             border-radius:50px;
         }
         #heading
         {
             position:relative;
             font-size:30px;
             color:black;
             font-weight:bold;
             text-align:center;

         }
         .btns
         {
             background-color:lightcoral;
             width:100px;
             color:white;
             height:30px;

         }
         .btns
         {
             background-color:blue;
             width:100px;
             color:white;
             height:30px;
         }
         .btnc
         {
             background-color:lightgray;
             width:100px;
             color:white;
             height:30px;
         }
         .main{
             height:650px;
             width:400px;
             background-color:transparent;
             position:absolute;
             margin-left:170px;
         }

         td{
             font-size:20px;
             font-weight:bold;
         }
        
    </style>
</head>
<body>
    <div class="container">
        
    <form id="form1" runat="server">

        <div class="main">

        <table class="auto-style1">
            <tr>
                <td class="auto-style3"colspan="2" id="heading">Doctors Appointment Form</td>
            </tr>
            <tr>
                <td  class="auto-style2">Name</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Age</td>
                <td>
                    <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">DOB</td>
                <td>
                    <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Blood Group</td>
               
                <td>
                    <asp:DropDownList ID="drpbloodgroup" runat="server" Height="16px" Width="106px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Address</td>
                <td>
                    <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Mobile Number</td>
                <td>
                    <asp:TextBox ID="txtmobileno" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Date Of Appointment</td>
                <td>
                    <asp:TextBox ID="txtdateofappointment" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Patient Report</td>
                <td>
                    <asp:FileUpload ID="filepatientreport" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnsave" runat="server" OnClick="Button1_Click" Text="Save" />

                    <asp:Button ID="btnclear" runat="server" OnClick="Button1_Click" Text="Clear" />
                </td>
            </tr>
        </table>
           
        </div>
    </form>
        </div>
</body>
</html>
