<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Project_1.cart" %>

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
        </style>
</head>
<body>
    <form id="form1" runat="server">
         <div>
              <div class="top-bar">
        <a href="home.aspx">Home</a> |
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
        </div>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cart_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
             <Columns>
                 <asp:CommandField ShowEditButton="True" />
                 <asp:CommandField ShowDeleteButton="True" />
                 <asp:ImageField DataImageUrlField="p_photo" HeaderText="Product Image">
                     <ControlStyle Height="140px" Width="130px" />
                 </asp:ImageField>
                 <asp:BoundField DataField="p_name" HeaderText="Product Name" />
                 <asp:BoundField DataField="p_qty" HeaderText="Quantity" />
                 <asp:BoundField DataField="p_price" HeaderText="Total Price" />
             </Columns>
         </asp:GridView>
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buy Products" />
&nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
