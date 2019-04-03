<%@ Page Title="Admin Page" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Sistoso_MidtermLabExam.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="limiter">
		<div class="container-login100">
			<div class="none">
				
					<span class="login100-form-title p-b-32">
						All Loan Applications
					</span>

                    <asp:GridView ID="ForLoan" runat="server">
                    </asp:GridView>
					
					
					<span class="txt1 p-b-11">
						Approve Loan
					</span>
					<div class="wrap-input100 validate-input m-b-12" data-validate = "Password is required">
						
						<input class="input100" type="text" name="email" placeholder="Input email here"/ >
						<span class="focus-input100"></span>
					</div>
                    
					<div class="container-login100-form-btn">
						<asp:Button class="login100-form-btn" ID="btnApprove" runat="server" Text="Approve" OnClick="btnApprove_Click"/>
						
					</div>
                <br />
                <span class="login100-form-title p-b-32">
						Approved Loans
					</span>

                    <asp:GridView ID="ApproveLoan" runat="server"></asp:GridView>

                <br />
                <div class="container-login100-form-btn">
						<asp:Button class="login100-form-btn" ID="Logout" runat="server" Text="LOGOUT" OnClick="Logout_Click"/>
						
					</div>
                </div>
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
</asp:Content>
