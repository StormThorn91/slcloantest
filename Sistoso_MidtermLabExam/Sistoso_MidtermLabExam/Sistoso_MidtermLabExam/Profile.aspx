<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Sistoso_MidtermLabExam.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PROFILE</title>
        <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
				
					<span class="login100-form-title p-b-32">
						YOUR INFO</span><span class="txt1 p-b-11">Email
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Email is required">
						&nbsp;<span class="focus-input100"></span><span class="txt1 p-b-11"><asp:TextBox ID="txtEmail" runat="server" Height="55px" ReadOnly="True" Width="1138px"></asp:TextBox>
					</span>
					</div>

                    <span class="txt1 p-b-11">
						Full Name
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Full Name is required">

					<span class="txt1 p-b-11">
						<asp:TextBox ID="txtName" runat="server" Height="55px" ReadOnly="True" Width="1138px"></asp:TextBox>
					</span>
					&nbsp;<span class="focus-input100"></span></div>

                    <span class="txt1 p-b-11">
						Basic Salary
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Basic Salary is required">

					<span class="txt1 p-b-11">
						<asp:TextBox ID="txtSal" runat="server" Height="55px" ReadOnly="True" Width="1138px"></asp:TextBox>
					</span>
					&nbsp;<span class="focus-input100"></span></div>

             <span class="txt1 p-b-11">
						Number of Months to Pay
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Number of months is required">
						<input class="input100" type="number" name="numMonths">
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn">
						<asp:Button class="login100-form-btn" ID="Register" runat="server" Text="Apply Loan" OnClick="Apply_Click" />
					</div>
                <br />
                <div class="container-login100-form-btn">
						<asp:Button class="login100-form-btn" ID="Logout" runat="server" Text="LOGOUT" OnClick="Logout_Click"/>
						
					</div>
            </div>
        
			</div>
    </div>
        
        </div>
    </form>
    <!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
</body>
</html>
