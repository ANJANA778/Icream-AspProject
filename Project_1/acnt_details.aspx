<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="acnt_details.aspx.cs" Inherits="Project_1.acnt_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .top-bar {
            background-color: #ffccdd;
            padding: 10px 0;
            text-align: right;
            color: white;
        }
        .top-bar a {
            color: white;
            margin: 0 15px;
            text-decoration: none;
        }
        .navbar {
            background-color: white;
            padding: 10px 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .navbar .logo {
            font-size: 24px;
            font-weight: bold;
            color: #ff6699;
        }
        .navbar .logo span {
            color: #00aaff;
        }
        .navbar ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
        }
        .navbar ul li {
            margin: 0 15px;
        }
        .navbar ul li a {
            text-decoration: none;
            color: #333;
            font-size: 16px;
        }
        .social-icons {
            display: flex;
            align-items: center;
        }
        .social-icons a {
            margin: 0 5px;
            color: #333;
            text-decoration: none;
        }
        </style> <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .top-bar {
            background-color: #ffccdd;
            padding: 10px 0;
            text-align: right;
            color: white;
        }
        .top-bar a {
            color: white;
            margin: 0 15px;
            text-decoration: none;
        }
        .navbar {
            background-color: white;
            padding: 10px 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .navbar .logo {
            font-size: 24px;
            font-weight: bold;
            color: #ff6699;
        }
        .navbar .logo span {
            color: #00aaff;
        }
        .navbar ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
        }
        .navbar ul li {
            margin: 0 15px;
        }
        .navbar ul li a {
            text-decoration: none;
            color: #333;
            font-size: 16px;
        }
        .social-icons {
            display: flex;
            align-items: center;
        }
        .social-icons a {
            margin: 0 5px;
            color: #333;
            text-decoration: none;
        }
        .auto-style1 {
            width: 394px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="top-bar">
        <a href="#">FAQs</a> |
        <a href="#">Help</a> |
        <a href="#">Support</a>
        <div class="social-icons">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-linkedin-in"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-youtube"></i></a>
        </div>
    </div>
    <div class="navbar">
        <div class="logo"><span>i</span>CREAM</div>
       
    </div>
            <table class="auto-style2">
                  <tr>
                      <td>&nbsp;</td>
                      <td class="auto-style1">&nbsp;</td>
                      <td class="auto-style4">&nbsp;</td>
                      <td class="auto-style3">Account Details</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td class="auto-style1">&nbsp;</td>
                      <td class="auto-style4">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td class="auto-style1">&nbsp;</td>
                      <td class="auto-style4">Account Number:</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                      </td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td class="auto-style1">&nbsp;</td>
                      <td class="auto-style4">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td class="auto-style1">&nbsp;</td>
                      <td class="auto-style4">&nbsp;Account&nbsp; Holder:</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                      </td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td class="auto-style1">&nbsp;</td>
                      <td class="auto-style4">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td class="auto-style1">&nbsp;</td>
                      <td class="auto-style4">IFSC Code:</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                      </td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td class="auto-style1">&nbsp;</td>
                      <td class="auto-style4">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td class="auto-style1">&nbsp;</td>
                      <td class="auto-style4">Enter Balance Amount:</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                      </td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td class="auto-style1">&nbsp;</td>
                      <td class="auto-style4">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td class="auto-style1">&nbsp;</td>
                      <td class="auto-style4">&nbsp;</td>
                      <td class="auto-style3">
                          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit Details" />
                      </td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td class="auto-style1">&nbsp;</td>
                      <td class="auto-style4">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td class="auto-style1">&nbsp;</td>
                      <td class="auto-style4">&nbsp;</td>
                      <td class="auto-style3">
                          <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                      </td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td class="auto-style1">&nbsp;</td>
                      <td class="auto-style4">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td class="auto-style1">&nbsp;</td>
                      <td class="auto-style4">&nbsp;</td>
                      <td class="auto-style3">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                  </tr>
              </table>

        </div>
    </form>
</body>
</html>
