<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorForm.aspx.cs" Inherits="PatientAppointment.DoctorForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 337px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" Height="287px" Width="621px">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Yes" ShowHeader="True" Text="Yes" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
