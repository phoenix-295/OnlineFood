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
        .auto-style2 {
            color: #FF0000;
        }
        .auto-style3 {
            width: 192px;
            height: 364px;
        }
        .auto-style4 {
            height: 364px;
        }
        .auto-style5 {
            color: #000000;
        }
        .auto-style6 {
            color: #000000;
            width: 192px;
        }
        .auto-style7 {
            font-size: 12pt;
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
								<li role="presentation"><a href="HomePage1.aspx">Home</a></li>
								<li role="presentation"><a href="Admin/AdminHome.aspx">Admin</a></li>
								<li role="presentation"><a href="Customer/Cust_Home.aspx">Customer</a></li>
                                <li role="presentation"><asp:LoginStatus ID="LoginStatus2" runat="server" /> </li>
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
           
            <asp:ScriptManager ID="MainScriptManager" runat="server" />
             <asp:UpdatePanel ID="panel1" runat="server">
            <ContentTemplate>
            <table class="nav-justified">
                <tr>
                    <td class="auto-style3">
                        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Font-Size="Medium" Height="258px" Width="367px" CssClass="auto-style5" OnCreatedUser="CreateUserWizard1_CreatedUser" BackColor="#DAB273" ActiveStepIndex="1">
                    <WizardSteps>
                        <asp:WizardStep runat="server" Title="Reg">
                            <table class="style11">
                            <tr>
                                <td>
                                    <h4>
                                        FirstName
                                    </h4></td>

                                <td>
                                    <asp:TextBox placeholder="First Name" class="form-control" ID="txtfname" runat="server" CssClass="auto-style7"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtfname" ErrorMessage="First Name cannot be empty." 
                                        ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    
                                    <h4>
                                    Middle Name:

                                    </h4>


                                </td>
                                <td class="style12">
                                    <asp:TextBox placeholder="Middle Name" class="form-control" ID="txtmname" runat="server" CssClass="auto-style7"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="txtmname" ErrorMessage="Middle Name cannot be empty." ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    <h4>

                                    Last Name:
                                    </h4>
                                        </td>

                                <td class="style12">
                                    <asp:TextBox placeholder="Last Name" class="form-control" ID="txtlastname" runat="server" CssClass="auto-style7"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="txtlastname" ErrorMessage="Last Name cannot be empty." ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <h4>Mobile No:</h4></td>
                                <td>
                                    <asp:TextBox placeholder="Mobile no." class="form-control" ID="txtcontact" runat="server" CssClass="auto-style7"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                        ControlToValidate="txtcontact" ErrorMessage="Mobile Number cannot be empty." 
                                        ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtcontact" CssClass="auto-style2" ErrorMessage="Please enter a valid mobile number" MaximumValue="9999999999" MinimumValue="0">*</asp:RangeValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtcontact" CssClass="auto-style2" ErrorMessage="Mobile No must be 10 Digit" ValidationExpression="[0-9]{10}">*</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <h4>Address:</h4></td>
                                <td>
                                    <asp:TextBox placeholder="Address" class="form-control" ID="txtadress" runat="server" CssClass="auto-style7"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                        ControlToValidate="txtadress" ErrorMessage="Address cannot be empty." 
                                        ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <h4>Location:</h4></td>
                                <td>
                                    <asp:TextBox placeholder="Location" class="form-control" ID="txtloc" runat="server" CssClass="auto-style7"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                        ControlToValidate="txtloc" ErrorMessage="Location cannot be empty." ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style15">
                                    <h4>City :</h4></td>
                                <td class="style15">
                                    <asp:TextBox placeholder="City" class="form-control" ID="txtcity" runat="server" CssClass="auto-style7"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                        ControlToValidate="txtcity" ErrorMessage="City cannot be empty." 
                                        ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <h4>Pin: </h4></td>
                                <td>
                                    <asp:TextBox placeholder="Pincode" class="form-control" ID="txtpin" runat="server" CssClass="auto-style7"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                        ControlToValidate="txtpin" ErrorMessage="Pin Cannot be empty." ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtpin" CssClass="auto-style2" ErrorMessage="Pin must be 6 digit." ValidationExpression="[0-9]{6}">*</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                        </table>
                        </asp:WizardStep>
                        <asp:CreateUserWizardStep runat="server" >
                            <ContentTemplate>
                                <table style="background-color:#DAB273;font-size:100%;height:258px;width:367px;">
                                    <tr>
                                        <td align="center" colspan="2"><h3>Sign Up for Your New Account</h3></td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="vertical-align:middle">
                                            <h4>
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label></h4>
                                        </td>
                                        <td>          
                                            <asp:TextBox placeholder="UserName" class="form-control" ID="UserName" runat="server" CssClass="auto-style7"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <h4>
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label></h4>
                                        </td>
                                        <td>
                                            <asp:TextBox placeholder="Password" class="form-control" ID="Password" runat="server" CssClass="auto-style7" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <h4><asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label></h4>
                                        </td>
                                        <td>
                                            <asp:TextBox placeholder="Confirm Password" class="form-control" ID="ConfirmPassword" runat="server" TextMode="Password" CssClass="auto-style7"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <h4><asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label></h4>
                                        </td>
                                        <td>
                                            <asp:TextBox placeholder="Email" class="form-control" ID="Email" runat="server" CssClass="auto-style7"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <h4><asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label></h4>
                                        </td>
                                        <td>
                                            <asp:TextBox placeholder="Question" class="form-control" ID="Question" runat="server" CssClass="auto-style7"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ToolTip="Security question is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <h4><asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label></h4>
                                        </td>
                                        <td>
                                            <asp:TextBox placeholder="Answer" class="form-control" ID="Answer" runat="server" CssClass="auto-style7"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <h3>
                                            <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard1"></asp:CompareValidator></h3>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color:Red;">
                                            <h3>
                                            <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal></h3>
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:CreateUserWizardStep>
                        <asp:CompleteWizardStep runat="server" />
                    </WizardSteps>
                </asp:CreateUserWizard>

                        </td>
                    <td class="auto-style4">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <h4>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style2" />
                            </h4>
                        </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
           </ContentTemplate>
</asp:UpdatePanel>


        </div><!--/.container-->
    </section><!--/#about-->
	
	
	
	
			
	

	<footer>
		<div class="container">
			<div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
				<h4>About Us is tellus ac cursus commodo, mauesris condime ntum nibh, ut fermentum mas justo sitters.</p>						
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

