<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" fcontent="IE=edge">
	<title>TxtWolf</title>
	<link rel="icon" href="${resource(dir: 'images', file: 'dashboard/default_avatar.png')}">
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- Bootstrap 3.3.5 -->
	<link rel="stylesheet" type="text/css" href="<g:resource dir='css' file='dashboard/bootstrap/css/bootstrap.min.css'/>">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" type="text/css" href="<g:resource dir='css' file='dashboard/AdminLTE.min.css'/>">
	<link rel="stylesheet" type="text/css" href="<g:resource dir='css' file='dashboard/CustomCSS.css'/>">
	<link rel="stylesheet" type="text/css" href="<g:resource dir='js' file='dashboard/plugins/iCheck/all.css'/>">
	
	<!-- AdminLTE Skins. We have chosen the skin-blue for this starter
          page. However, you can choose any other skin. Make sure you
          apply the skin class to the body tag so the changes take effect.
    -->
       
    <!-- DATE RANGE PICKER  -->
   	<link rel="stylesheet" type="text/css" href="<g:resource dir='js' file='dashboard/plugins/timepicker/bootstrap-timepicker.css'/>">
    <link rel="stylesheet" type="text/css" href="<g:resource dir='js' file='dashboard/plugins/select2/select2.min.css'/>">
    <link rel="stylesheet" type="text/css" href="<g:resource dir='js' file='dashboard/plugins/daterangepicker/daterangepicker-bs3.css'/>">
    
	<link rel="stylesheet" type="text/css" href="<g:resource dir='css' file='dashboard/skins/skin-purple.min.css'/>">
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="hold-transition skin-purple sidebar-mini">
	<div class="wrapper">
		<!-- Main Header -->
		<header class="main-header">
			<!-- Logo -->
			<a href="${createLink(controller: 'Dashboard', action: 'dashboard')}" class="logo">
				<!-- mini logo for sidebar mini 50x50 pixels --> <span class="logo-mini"><b>W</b>olf</span>
				<!-- logo for regular state and mobile devices --> <span class="logo-lg"><b>Txt</b>Wolf</span>
			</a>
			<!-- Header Navbar -->
			<nav class="navbar navbar-static-top" role="navigation">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button"> <span class="sr-only">Toggle navigation</span>
				</a>
				<!-- Navbar Right Menu -->
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Notifications Menu -->
						<li class="dropdown notifications-menu">
							<!-- Menu toggle button -->
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-envelope-o"></i>
								<span class="label label-success">${notiCount}</span>
							</a>
							<ul class="dropdown-menu">
								<li class="header">Keyword Inbox (Recent)</li>
								<li>
									<!-- Inner Menu: contains the notifications -->
									<ul class="menu">
										<li>
											<!-- start notification -->
											<g:if test="${keywordsIn != 'NONE'}">
												<g:each in="${keywordsIn}">
													<a href="${createLink(controller: 'Dashboard', action: 'keywordInbox')}"> <i class="fa fa-paw text-aqua"></i>  <b>${it.keyword}</b>: ${it.phoneNumber}, <i><g:formatDate format="MM-dd-yyyy" date="${it.date}"/> </i> 
													</a>
												</g:each>
											</g:if>
											<g:else>
												<a href="${createLink(controller: 'Dashboard', action: 'keywordInbox')}"> <i class="fa fa-paw text-aqua"></i> 0 new keywords recieved.</a>
											</g:else>
										</li>
										<!-- end notification -->
									</ul>
								</li>
								<li class="footer"> <a href="${createLink(controller: 'Dashboard', action: 'keywordInbox')}">View all</a>
								</li>
							</ul>
						</li>
						<!-- User Account Menu -->
						<li class="dropdown user user-menu">
							<!-- Menu Toggle Button -->
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<!-- The user image in the navbar--> <i class="fa fa-question-circle"></i>
								<!-- hidden-xs hides the username on small devices so only the image appears. --> <span class="hidden-xs">Help</span>
							</a>
							<ul class="dropdown-menu">
								<!-- The user image in the menu -->
								<li style="height: 90px;" class="user-header">
									<p>Help? Give us a call.
										<br>(330) 540-8023</p>
								</li>
								<!-- Menu Body -->
								<li class="user-body">
									<div class="col-xs-4 text-center"> <a href="${createLink(controller: 'dashboard')}">Home</a>
									</div>
									<div class="col-xs-4 text-center"> <a href="${createLink(controller: 'Blog')}">Tips</a>
									</div>
									<div class="col-xs-4 text-center"> <a href="${createLink(controller: 'dashboard', action: 'help')}">Help</a>
									</div>
								</li>
								<!-- Menu Footer-->
							</ul>
						</li>
						<!-- Control Sidebar Toggle Button -->
						<!-- User Account Menu -->
						<li class="dropdown user user-menu">
							<!-- Menu Toggle Button -->
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<!-- The user image in the navbar-->
								<img src="${resource(dir: 'images', file: 'dashboard/default_avatar.png')}" class="user-image" alt="User Image">
								<!-- hidden-xs hides the username on small devices so only the image appears. --> <span class="hidden-xs">My Account</span>
							</a>
							<ul class="dropdown-menu">
								<!-- The user image in the menu -->
								<li class="user-header">
									<img src="${resource(dir: 'images', file: 'dashboard/default_avatar.png')}" class="img-circle" alt="User Image">
									<p>${session.firstName} ${session.lastName} - Admin <small>Member since <g:formatDate format="yyyy" date="${session.signUpDate}"/></small>
									</p>
								</li>
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left">
										<!--  <a href="#" class="btn btn-default btn-flat">Profile</a> -->
									</div>
									<div class="pull-left"> <a href="${createLink(controller: 'dashboard', action: 'accountSettings')}" class="btn btn-default btn-flat">Settings</a>
									</div>
									<div class="pull-right"> <a href="${createLink(controller: 'login', action: 'logout')}" class="btn btn-default btn-flat">Sign out</a>
									</div>
								</li>
							</ul>
						</li>
						<!-- Control Sidebar Toggle Button -->
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel">
					<div class="pull-left image">
						<img src="${resource(dir: 'images', file: 'dashboard/default_avatar.png')}" class="img-circle" alt="User Image">
					</div>
					<div class="pull-left info">
						<p>${session.firstName} ${session.lastName}</p>
						<!-- Status --> <a href="#"><i class="fa fa-circle text-success"></i> Active</a>
					</div>
				</div>
				<!-- search form (Optional) -->
				<g:form controller="Dashboard" action="contacts" enctype="multipart/form-data" class="sidebar-form">
					<div class="input-group">
						<input type="text" name="searchQuery" class="form-control" placeholder="Search Contacts..."> <span class="input-group-btn">
              <button action="contacts" name="search" id="search-btn" class="btn btn-flat" ><i class="fa fa-search"></i></button>
              </span>
					</div>
				</g:form>
				<!-- /.search form -->
				<!-- Sidebar Menu -->
				<ul class="sidebar-menu">
					<li class="header">Menu</li>
					<!-- Optionally, you can add icons to the links -->
					<li class="active">
						<a href="${createLink(controller: 'Dashboard', action: 'Dashboard')}"> <i class="fa fa-home"></i>  <span>Home</span>
						</a>
					</li>
					<li> <a href="#"><i class="fa fa-book"></i> <span>Address Book</span> <i class="fa fa-angle-left pull-right"></i></a>
						<ul class="treeview-menu">
							<li><a class="" href="${createLink(controller: 'Dashboard', action: 'newContact')}"><b>New Contact</b></a>
							</li>
							<li>
								<a class="" href="${createLink(controller: 'Dashboard', action: 'createGroup')}"> <b>New Group</b>
								</a>
							</li>
							<li><a href="${createLink(controller: 'Dashboard', action: 'contacts')}">View Contacts</a>
							</li>
							<li><a href="${createLink(controller: 'Dashboard', action: 'groups')}">View Groups</a>
							</li>
						</ul>
					</li>
					<li class="treeview"> <a href="#"><i class="fa fa-comment"></i> <span>Send Text</span> <i class="fa fa-angle-left pull-right"></i></a>
						<ul class="treeview-menu">
							<li><a href="${createLink(controller: 'Dashboard', action: 'sendTxt')}"><b>Compose Text</b></a>
							</li>
							<li><a href="${createLink(controller: 'Dashboard', action: 'newDraft')}"><b>Compose Draft</b></a>
							</li>
							<li><a href="${createLink(controller: 'Dashboard', action: 'drafts')}">View Drafts</a>
							</li>
							<li><a href="${createLink(controller: 'Dashboard', action: 'secheduledTxt')}">View Secheduled</a>
							</li>
							<li> <a href="#">Quick Tools (External) <i class="fa fa-angle-left pull-right"></i></a>
								<ul class="treeview-menu">
									<li> <a href="${createLink(controller: 'Dashboard', action: 'tips')}">TxtWolf Tips</a>
									</li>
									<li><a href="http://www.dictionary.com/" target="_blank">Dictionary</a>
									</li>
									<li><a href="http://www.thesaurus.com/" target="_blank">Thesaurus</a>
									</li>
									<li><a href="https://goo.gl/" target="_blank">Google Link Shortner</a>
									</li>
									<li><a href="https://maps.google.com" target="_blank">Google Maps</a>
									</li>
									<li><a href="https://wordcounter.net/" target="_blank">Word Counter</a>
									</li>
								</ul>
							</li>
						</ul>
					</li>
					<li class="active"  class="treeview"> <a href="#"><i class="fa fa-inbox"></i> <span>Keywords</span> <i class="fa fa-angle-left pull-right"></i></a>
						<ul class="treeview-menu">
							<li><a href="${createLink(controller: 'Dashboard', action: 'newKeyWord')}"><b>New Keyword</b></a>
							</li>
							<li><a href="${createLink(controller: 'Dashboard', action: 'keywords')}">View Keywords</a>
							</li>
							<li><a href="${createLink(controller: 'Dashboard', action: 'keywordInbox')}">Keyword Inbox</a>
							</li>
							<li><a href="${createLink(controller: 'Dashboard', action: 'validateCoup')}">Validate Coupon Code</a>
							</li>
							<li><a href="${createLink(controller: 'Dashboard', action: 'keywords', params: [type: 'contestSelect'])}">Contest Winner Select</a>
							</li>
						</ul>
					</li>
					<li class="treeview"> <a href="#"><i class="fa fa-paw"></i> <span>Account</span> <i class="fa fa-angle-left pull-right"></i></a>
						<ul class="treeview-menu">
							<li><a href="${createLink(controller: 'Dashboard', action: 'balance')}">My Balance</a>
							</li>
							<li><a href="${createLink(controller: 'Dashboard', action: 'history')}">My Activity</a>
							</li>
							<li><a href="${createLink(controller: 'Dashboard', action: 'accountSettings')}">My Settings</a>
							</li>
						</ul>
					</li>
				</ul>
				<!-- /.sidebar-menu -->
			</section>
			<!-- /.sidebar -->
		</aside>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
            TxtWolf
            <small>Home</small>
          </h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> TxtWolf</a>
					</li>
					<li class="active">Home</li>
				</ol>
			</section>
			<!-- Main content -->
			<section class="content">
				<!-- Horizontal Form -->
				<div class="box box-info" style="max-width: 600px;">
					<div class="box-header with-border">
						<h3 class="box-title">Create a keyword</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<g:form id="txtForm" class="form-horizontal" controller="Dashboard" action="newKeyWord" enctype="multipart/form-data">
						<div class="box-body">
							<div id="ModalAlert" style="display: none;" class="alert alert-danger alert-dismissable">
								<h4><i class="icon fa fa-exclamation-circle"></i>Fix needed</h4>
								<p id="ModalAlertText"></p>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">Keyword</label>
								<div class="col-sm-10">
									<input name="keyword" id="keyword" type="text" class="form-control" placeholder="Required">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">Description</label>
								<div class="col-sm-10">
									<textarea name="desc" id="Desc" type="text" class="form-control" placeholder="Not Required"></textarea>
								</div>
							</div>
							<hr>
							<!-- Date range -->
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">Date Range</label>
								<div class="input-group" style="width:60%;">
									<div class="col-sm-10" style="width:100%;">
										<input placeholder="Click to select range" name="dateRange" style="width:100%;" type="text" class="form-control" id="reservation">
									</div>
								</div>
								<!-- /.input group -->
							</div>
							<!-- /.form group -->
							<!-- Date range -->
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">Never End</label>
								<div class="input-group">
									<div class="col-sm-10" style="width:100%;">
										<label>
											<input name="endless" id="endlessChkBox" type="checkbox" class="minimal">
										</label> <i>(Campaign will not end until you expire it) </i>
									</div>
								</div>
								<!-- /.input group -->
							</div>					
							
							<!-- /.form group -->
							<hr>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">Campaign Type</label>
								<div class="col-sm-10">
									<select name="campaignSelected" id="campaignSelected" class="form-control">
										<option value="cust">Custom</option>
										<option value="coup">Coupon</option>
										<option value="con">Contest</option>
									</select>
								</div>
							</div>
							<div class="callout callout-default" style="margin-bottom: 10px!important;">
								<h4><i class="fa fa-flag-o"></i><span id = "campaignType" > Campaign: <b>Normal</b></span></h4>
								<span id="campaignDesc">    It looks like you dont have any contacts yet. Get started by adding clients below! </span>
							</div>
							<!--************* Camp type *************-->
							<div class="form-group" id="text" style="display:none;">
								<label for="inputEmail3" class="col-sm-2 control-label">Response Text</label>
								<div class="col-sm-10">
									<textarea name="responceText" id="responceText" type="text" class="form-control" placeholder="Required"></textarea>
									<p id='charCount' class="help-block">0/200 characters</p>
								</div>
							</div>
							<div class="form-group" id="couponChkBox" style="display:none;">
								<label for="inputEmail3" class="col-sm-2 control-label">Multi-Use</label>
								<div class="input-group">
									<div class="col-sm-10" style="width:100%;">
										<label>
											<input name="couponChkBox" id="endlessChkBox" type="checkbox" class="minimal">
										</label> <i> (Allows for unlimited uses of this coupon) </i>
									</div>
								</div>
								<!-- /.input group -->
							</div>
						
							<hr>
							
							<div class="callout callout-default" style="margin-bottom: 10px!important;">
								<h4><i class="fa fa-users"></i><span id = "campaignType" > Add <b>incoming</b> numbers to a group</span></h4>
								<span id="campaignDesc">  Manage contacts who reply to this keyword easier by automatically adding them to one of your groups. </span>
							</div>
													
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">Group</label>
								<div class="col-sm-10">
									<select name="incomingGroup" id="campaignSelected" class="form-control">
										<option value="None">None</option>
										<g:each in="${groups}">
											<option value="${it.groupID}">${it.groupName}</option>
										</g:each>
									</select>
								</div>
							</div>	
							
							<!-- /.form group -->
							<!--************* Camp type *************-->
							<hr>Keyword Phone Number: <b>${number.number}</b> 
							<br>	<i>You can view your keyword number info from your account <a href = "${createLink(controller: 'Dashboard', action: 'balance')}" >balance page</a>.</i>
						</div>
						<!-- /.box-body -->
						<button style="display:none;" class="btn btn-info pull-right" id="submitBtn" value="Send" action="newKeyWord" />Submit Button</button>
					</g:form>
					<div class="box-footer">
						<button onClick="submitCheck('${createLink(controller: 'Dashboard', action: 'keywordAvalCheck')}')" class="btn btn-info pull-right" id="preButton" />Create</button> <a href="${createLink(controller: 'Dashboard', action: 'dashboard')}" type="submit" class="btn btn-default">Cancel</a>
					</div>
					<!-- /.box-footer -->
				</div>
				<!-- /.box -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<!-- Main Footer -->
		<footer class="main-footer">
			<!-- To the right -->
			<div class="pull-right hidden-xs">Powered by TxtWolf</div>
			<!-- Default to the left --> <strong>Copyright &copy; 2017 <a href="http://www.TxtWolf.com">TxtWolf LLC</a>.</strong>
		</footer>

	</div>
	<!-- ./wrapper -->
	<!-- Optionally, you can add Slimscroll and FastClick plugins.
         Both of these plugins are recommended to enhance the
         user experience. Slimscroll is required when using the
         fixed layout. -->
	<div class="modal" id="myModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
					</button>
					<h4 id="modalHeading" class="modal-title">Modal Default</h4>
				</div>
				<div class="modal-body">
					<a class="btn btn-app" style="margin-bottom:0px;"> <i class="fa fa-comment"></i> Send Text</a>
					<a class="btn btn-app" style="margin-bottom:0px;"> <i class="fa fa-users"></i> Add to Group</a>
					<a class="btn btn-app" style="margin-bottom:0px;"> <i class="fa fa-edit"></i> Edit</a>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<div class="modal" id="keywordCheckModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 id="modalHeading" class="modal-title">Validation Check</h4>
				</div>
				<div class="modal-body">
					<div style="width: 100%; margin-top: 15px; text-align: center;"> <i style="font-size: 55px; color: #605ca8;" class="fa fa-spinner fa-pulse"></i>
					</div>
					<p style=" margin-top: 20px; width: 100%; font-size: 16px; text-align: center; ">Checking keyword availability...</p>
				</div>
				<div style="text-align: left;" class="modal-footer">Proccessed by TxtWolf.</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
</body>

<!-- REQUIRED JS SCRIPTS -->
<!-- jQuery 2.1.4 -->
<g:javascript src="dashboard/plugins/jQuery/jQuery-2.1.4.min.js" />

<!-- JQUERY UI -->
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>

<!-- Bootstrap 3.3.5 -->
<g:javascript src="dashboard/bootstrap/js/bootstrap.min.js" />
<!-- AdminLTE App -->
<g:javascript src="dashboard/app.min.js" />
<g:javascript src="dashboard/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" />
<g:javascript src="dashboard/plugins/select2/select2.full.min.js" />
<g:javascript src="tagsinput/dist/bootstrap-tagsinput.min.js" />
<g:javascript src="dataAccess.js" />
<!-- InputMask -->
<g:javascript src="dashboard/plugins/input-mask/jquery.inputmask.js" />
<g:javascript src="dashboard/plugins/input-mask/jquery.inputmask.date.extensions.js" />
<g:javascript src="dashboard/plugins/input-mask/jquery.inputmask.extensions.js" />
<!-- date-range-picker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
<g:javascript src="dashboard/plugins/daterangepicker/daterangepicker.js" />
<!-- bootstrap color picker -->
<g:javascript src="dashboard/plugins/colorpicker/bootstrap-colorpicker.min.js" />
<!-- bootstrap time picker -->
<g:javascript src="dashboard/plugins/timepicker/bootstrap-timepicker.min.js" />
<!-- iCheck 1.0.1 -->
<g:javascript src="dashboard/plugins/iCheck/icheck.min.js" />


<script>
	$( document ).ready(function() {
		  // Normal preset
			$("#campaignType").html(" Campaign: " + "<b>Custom</b>");
			$("#campaignDesc").html("A <i>'Custom'</i> keyword is not a contest or a coupon, but rather " +
				"allows you to customize its use and need by responding with custom text.");  
			
			$("#couponChkBox").css("display","none")
			$("#text").css("display","block")
			
		});
	
	  $("[data-mask]").inputmask();
	  
	  	// Dont allow form submit with ENTER key
		$(document).on("keypress", "form", function(event) { 
		    return event.keyCode != 13;
		});
	
	
	  $('#campaignSelected').on('change', function() {
			$("#campaignType").html(" Campaign: " + this.value);
		
			switch(this.value) {
		    case "cust":
				$("#campaignType").html(" Campaign: " + "<b>Custom</b>");
				$("#campaignDesc").html("A <i>'Custom'</i> keyword is not a contest or a coupon, but rather " +
						"allows you to customize its use and need by responding with custom text.");  		
				$("#couponChkBox").css("display","none");
				$("#text").css("display","block");   
		        break;
		    case "coup":
				$("#campaignType").html(" Campaign: " + "<b>Coupon</b>");		    
				$("#campaignDesc").html("Enter text below that correlates to the coupon you are offering. " +
				"For example <i>'Use this coupon code for an extra 25% off your next order!'</i>. " +
				"When your customer sends in your keyword they will be sent a coupon code that you can validate in the 'Validate Code' page " +
				"located in the keyword menu.");  
				$("#text").css("display","block")
				$("#couponChkBox").css("display","block");
		        break;
		    case "con":
				$("#campaignType").html(" Campaign: " + "<b>Contest</b>");		    
				$("#campaignDesc").html("Enter text below to notify your customer they have been entered into your contest. For example " + 
				"<i>'You have been entered into our contest for a free cake!'</i>. When your contest ends you can randomly select winners! " +
				"from the 'My Contest' page under the keyword menu.");   
				$("#couponChkBox").css("display","none");
				break;
			};  
		});
		
		function submitCheck(url) {	
			var keyword = $('#keyword').val();
			if (keyword != "") {
				$('#keywordCheckModal').modal('show');	
				$("#preButton").prop("disabled",true);						
				keywordAvalCheck(url, keyword);
			} else {
				validateMainForm(true);
			}		
		}
	
	  function validateMainForm(keyCheck) {		  
		  var error = false;
		  var keyword = $('#keyword').val();
		 	  var dateRange = $('#reservation').val();
			  var responceText = $('#responceText').val();		
		 	 var endlessBox = $('#endlessChkBox').prop('checked');  
		   
		  	//Clear old values
		  	errors = [];
			$("#ModalAlertText").html("");  
	
		  	if (!keyCheck) {
				error = true;
				$("#preButton").prop("disabled",false);		
				errors.push("This keyword has been taken. Try another keyword.");
		  	}
						
		  	if (keyword.length < 2) {
				error = true;
				errors.push("Please enter a valid keyword.");			
			} 
	
		  	if (responceText.length < 4) {
				error = true;
				errors.push("Please enter a valid responce.");			
			} else if (responceText.length > 200) {
				error = true;
				errors.push("Responce can only be up to 200 characters.");			
			}
	
			if (error){
				for (i = 0; i < errors.length; i++) { 
					$("#ModalAlertText").append("*" + errors[i] + "<br/>");		
				}			
				$("#ModalAlert").slideDown();
			    jQuery("html,body").animate({scrollTop: 100}, 1000);
				
				return false;
			} else {
				$("#ModalAlert").css("display","none");		
				return true;
			}
				
	  }
	
	  $(function () {
	 
	      //Initialize Select2 Elements
	      $(".select2").select2();
	
	      //Datemask dd/mm/yyyy
	      $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
	      //Datemask2 mm/dd/yyyy
	      $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
	      //Money Euro
	      $("[data-mask]").inputmask();
	
	      //Date range picker
	      $('#reservation').daterangepicker();
	      //Date range picker with time picker
	      $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
	      //Date range as a button
	      $('#daterange-btn').daterangepicker(
	          {
	            ranges: {
	              'Today': [moment(), moment()],
	              'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
	              'Last 7 Days': [moment().subtract(6, 'days'), moment()],
	              'Last 30 Days': [moment().subtract(29, 'days'), moment()],
	              'This Month': [moment().startOf('month'), moment().endOf('month')],
	              'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
	            },
	            startDate: moment().subtract(29, 'days'),
	            endDate: moment()
	          },
	      function (start, end) {
	        $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
	      }
	      );
		  	
	      //iCheck for checkbox and radio inputs
	      $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
	        checkboxClass: 'icheckbox_minimal-blue',
	        radioClass: 'iradio_minimal-blue'
	      });
	      //Red color scheme for iCheck
	      $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
	        checkboxClass: 'icheckbox_minimal-red',
	        radioClass: 'iradio_minimal-red'
	      });
	      //Flat red color scheme for iCheck
	      $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
	        checkboxClass: 'icheckbox_flat-green',
	        radioClass: 'iradio_flat-green'
	      });
	
	      //Colorpicker
	      $(".my-colorpicker1").colorpicker();
	      //color picker with addon
	      $(".my-colorpicker2").colorpicker();
	
	      //Timepicker
	      $(".timepicker").timepicker({
	        showInputs: false
	      });
	    });
	
	
	  $('#responceText').keydown(updateCount);
	  $('#responceText').keyup(updateCount);
	  
	  
	  function updateCount() {
	      var cs = $("#responceText").val().length;
	      var count = cs;
	      $('#charCount').text(count + '/200 characters');
	     // $( "#txtForm" ).submit();
	  }
</script>

</html>