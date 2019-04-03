<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hasLoan.aspx.cs" Inherits="Sistoso_MidtermLabExam.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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
						LOAN INFO</span><span class="txt1 p-b-11">Email
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Email is required">
						<span class="focus-input100"></span>
					    <asp:TextBox ID="txtE" runat="server" Height="28px" Width="491px" ReadOnly="True"></asp:TextBox>
					</div>

                <span class="txt1 p-b-11">
						Name
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Email is required">
						<span class="focus-input100"></span>
					    <asp:TextBox ID="txtN" runat="server" Height="28px" Width="491px" ReadOnly="True"></asp:TextBox>
					</div>
                <span class="txt1 p-b-11">
						Basic Salary
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Email is required">
						<span class="focus-input100"></span>
					    <asp:TextBox ID="txtSal" runat="server" Height="28px" Width="491px" ReadOnly="True"></asp:TextBox>
					</div>
                 <span class="txt1 p-b-11">
						Number of Months
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Email is required">
						<span class="focus-input100"></span>
					    <asp:TextBox ID="txtNM" runat="server" Height="28px" Width="491px" ReadOnly="True"></asp:TextBox>
					</div>
                 <span class="txt1 p-b-11">
						Loan Amount
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Email is required">
						<span class="focus-input100"></span>
					    <asp:TextBox ID="txtLA" runat="server" Height="28px" Width="491px" ReadOnly="True"></asp:TextBox>
					</div>
                 <span class="txt1 p-b-11">
						Interest
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Email is required">
						<span class="focus-input100"></span>
					    <asp:TextBox ID="txtI" runat="server" Height="28px" Width="491px" ReadOnly="True"></asp:TextBox>
					</div>
                <span class="txt1 p-b-11">
						Interest Rate
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Email is required">
						<span class="focus-input100"></span>
					    <asp:TextBox ID="txtIR" runat="server" Height="28px" Width="491px" ReadOnly="True"></asp:TextBox>
					</div>
                <span class="txt1 p-b-11">
						Take Home Loan
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Email is required">
						<span class="focus-input100"></span>
					    <asp:TextBox ID="txtTHL" runat="server" Height="28px" Width="491px" ReadOnly="True"></asp:TextBox>
					</div>
                <span class="txt1 p-b-11">
						Service Charge
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Email is required">
						<span class="focus-input100"></span>
					    <asp:TextBox ID="txtSC" runat="server" Height="28px" Width="491px" ReadOnly="True"></asp:TextBox>
					</div>
                <span class="txt1 p-b-11">
						Monthly Amortization
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Email is required">
						<span class="focus-input100"></span>
					    <asp:TextBox ID="txtMA" runat="server" Height="28px" Width="491px" ReadOnly="True"></asp:TextBox>
					</div>
                <span class="txt1 p-b-11">
						Status
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Email is required">
						
					    <asp:Label ID="txtS" runat="server" ForeColor="Yellow" Text="Label"></asp:Label>
						
					</div>
					
					

					<div class="container-login100-form-btn">
						<asp:Button class="login100-form-btn" ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click"/>
					
					</div>
                </div>

				
			</div>
		
	</div>
	

	<div id="dropDownSelect1"></div>
	
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
    </div>
    </form>
</body>
</html>
