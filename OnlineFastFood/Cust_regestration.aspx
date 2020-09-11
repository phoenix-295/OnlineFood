<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cust_regestration.aspx.cs" Inherits="OnlineFastFood.Cust_regestration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/font-awesome.css">
	<link rel="stylesheet" href="css/animate.css">
	<link href="css/style.css" rel="stylesheet" />	
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .auto-style1 {
            width: 192px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
	<header>
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="navigation">
				<div class="container">					
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<div class="navbar-brand">
							<a href="HomePage1.aspx"><h1>Online Fast Food</h1></a>
						</div>
					</div>
					
					<div class="navbar-collapse collapse">							
						<div class="menu">
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation"><a href="HomePage.aspx" class="active">Home</a></li>
								<li role="presentation"><a href="Admin/AdminHome.aspx">Admin</a></li>
								<li role="presentation"><a href="Customer/CustomerHome.aspx">Customer</a></li>																
								<%--<li role="presentation"><a href="LoginPage.aspx">Contact</a></li>--%>						
							</ul>
						</div>
					</div>						
				</div>
			</div>	
		</nav>			
	</header>
	
	 <div id="home">
		<div class="slider">
			<div class="">
				<div id="about-slider">
					<div id="carousel-slider" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators visible-xs">
							<li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-slider" data-slide-to="1"></li>
							<li data-target="#carousel-slider" data-slide-to="2"></li>
						</ol>

						<div class="carousel-inner">
							<div class="item active">
								<img src="img/3.jpg" class="img-responsive" alt=""> 
						   </div>
						   <div class="item">
								<img src="img/3.jpg" class="img-responsive" alt=""> 
						   </div> 
						   <div class="item">
								<img src="img/3.jpg" class="img-responsive" alt=""> 
						   </div> 
						</div>
						
						<a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
							<i class="fa fa-angle-left"></i> 
						</a>
						
						<a class=" right carousel-control hidden-xs"href="#carousel-slider" data-slide="next">
							<i class="fa fa-angle-right"></i> 
						</a>
					</div> <!--/#carousel-slider-->
				</div><!--/#about-slider-->
			</div>
		</div>
	</div>
	
	<section id="about">
        <div class="container">
           

            <table class="nav-justified">
                <tr>
                    <td class="auto-style1">
                        CreateUserWizard1<asp:CreateUserWizard ID="CreateUserWizard1" runat="server" style="color: #000000" Font-Size="Medium" Height="258px" OnCreatedUser="CreateUserWizard1_CreatedUser" Width="367px">
                    <WizardSteps>
                        <asp:WizardStep runat="server" Title="Reg">
                            <table class="style11">
                            <tr>
                                <td>
                                    FirstName</td>
                                <td>
                                    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtfname" ErrorMessage="First Name Shouldnt Be Blank" 
                                        ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    Middle Name:</td>
                                <td class="style12">
                                    <asp:TextBox ID="txtmname" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="txtmname" ErrorMessage="Enter Middle Name" ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    Last Name:</td>
                                <td class="style12">
                                    <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="txtlastname" ErrorMessage="Enter Last Name" ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Contact No:</td>
                                <td>
                                    <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                        ControlToValidate="txtcontact" ErrorMessage="Please Enter Conact Number" 
                                        ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Adress:</td>
                                <td>
                                    <asp:TextBox ID="txtadress" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                        ControlToValidate="txtadress" ErrorMessage="Please Enter Adress" 
                                        ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Location:</td>
                                <td>
                                    <asp:TextBox ID="txtloc" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                        ControlToValidate="txtloc" ErrorMessage="Please Enter Location" ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style15">
                                    City :</td>
                                <td class="style15">
                                    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                        ControlToValidate="txtcity" ErrorMessage="Please Enter City" 
                                        ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Email Id:</td>
                                <td>
                                    <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ControlToValidate="txtmail" ErrorMessage="Enter Valid Email Adress" 
                                        ForeColor="Red" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Pin :</td>
                                <td>
                                    <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                        ControlToValidate="txtpin" ErrorMessage="Please Enter Pin" ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                        </asp:WizardStep>
                        <asp:CreateUserWizardStep runat="server" />
                        <asp:CompleteWizardStep runat="server" />
                    </WizardSteps>
                </asp:CreateUserWizard>

                        </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
           

        </div><!--/.container-->
    </section><!--/#about-->
	
	
	
	
			
	

	<footer>
		<div class="container">
			<div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
				<h4>About Us</h4>
				<p>Anyar is tellus ac cursus commodo, mauesris condime ntum nibh, ut fermentum mas justo sitters.</p>						
				<div class="contact-info">
					<ul>
						<li><i class="fa fa-home fa"></i>Suite 54 Elizebth Street, Victoria State Newyork, USA </li>
						<li><i class="fa fa-phone fa"></i> +38 000 129900</li>
						<li><i class="fa fa-envelope fa"></i> info@domain.net</li>
					</ul>
				</div>
			</div>
			
			<div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">				
				<div class="text-center">
					<h4>Photo Gallery</h4>
					<ul class="sidebar-gallery">
						<li><a href="#"><img src="img/gallery1.png" alt="" /></a></li>
						<li><a href="#"><img src="img/gallery2.png" alt="" /></a></li>
						<li><a href="#"><img src="img/gallery3.png" alt="" /></a></li>
						<li><a href="#"><img src="img/gallery4.png" alt="" /></a></li>
						<li><a href="#"><img src="img/gallery5.png" alt="" /></a></li>
						<li><a href="#"><img src="img/gallery6.png" alt="" /></a></li>					
					</ul>
				</div>
			</div>
			
			<div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms">				
				<div class="">
					<h4>Newsletter Registration</h4>
					<p>Subscribe today to receive the latest Corpboot news via email. You may unsubscribe from this service at any time</p>
						<div class="form-group">		
							<input type="email" class="form-control" id="exampleInputEmail3" placeholder="Enter your Email...">
						</div>
						<button type="submit" class="btn btn-default">Subscribe</button>
				</div>
			</div>
			
		</div>	
	</footer>
	
	<div class="sub-footer">
		<div class="container">
			<div class="social-icon">
				<div class="col-md-4">
					<ul class="social-network">
						<li><a href="#" class="fb tool-tip" title="Facebook"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#" class="twitter tool-tip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#" class="gplus tool-tip" title="Google Plus"><i class="fa fa-google-plus"></i></a></li>
						<li><a href="#" class="linkedin tool-tip" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#" class="ytube tool-tip" title="You Tube"><i class="fa fa-youtube-play"></i></a></li>
					</ul>	
				</div>
			</div>
			
			<div class="col-md-4 col-md-offset-4">
				<div class="copyright">
					&copy; Anyar 2015 All Rights Reserved | <a href="http://bootstraptaste.com/">Bootstrap Themes</a> by BootstrapTaste
                    <!-- 
                        All links in the footer should remain intact. 
                        Licenseing information is available at: http://bootstraptaste.com/license/
                        You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=Anyar
                    -->
				</div>
			</div>						
		</div>				
	</div>
	
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery.js"></script>	
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/jquery.easing.min.js"></script>	
	<script src="js/jquery.isotope.min.js"></script> 
	<script src="js/functions.js"></script>
    </form>
</body>
</html>

