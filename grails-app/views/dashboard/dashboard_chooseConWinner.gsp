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
	<!-- AdminLTE Skins. We have chosen the skin-blue for this starter
          page. However, you can choose any other skin. Make sure you
          apply the skin class to the body tag so the changes take effect.
    -->
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
									<div class="col-xs-4 text-center"> <a href="${createLink(controller: 'tips')}">Tips</a>
									</div>
									<div class="col-xs-4 text-center"> <a href="${createLink(controller: 'help')}">Help</a>
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
									<div class="pull-left"> <a href="${createLink(controller: 'login', action: 'accountSettings')}" class="btn btn-default btn-flat">Settings</a>
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
					<li>
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
							<li><a href="${createLink(controller: 'Dashboard', action: 'sendTxt')}">Compose Text</a>
							</li>
							<li><a href="${createLink(controller: 'Dashboard', action: 'secheduledTxt')}">Secheduled Text</a>
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
					<li class="active" class="treeview"> <a href="#"><i class="fa fa-inbox"></i> <span>Keywords</span> <i class="fa fa-angle-left pull-right"></i></a>
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
            Contest
            <small>Winner Select</small>
          </h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Keywords</a>
					</li>
					<li>Winner Select</li>
				</ol>
			</section>
			<!-- Main content -->
			<section class="content">
				<!-- Horizontal Form -->
				<div class="box box-info" style="max-width: 540px;">
					<div class="box-header with-border">
						<h3 class="box-title">Winner Selection: <b>${keyword.keyword}</b></h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<g:form id="txtForm" class="form-horizontal" controller="Dashboard" action="contestSelect" style="margin: auto;" enctype="multipart/form-data">
						<input type="hidden" name="promotionID" value="${keyword.promotionID}">
						<div class="box-body" style="margin: auto; max-width: 800px;">
							<g:if test="${keyword.replys < 1}">
								<div id="ModalAlert" class="alert alert-warning  alert-dismissable">
									<h4><i class="icon fa fa-exclamation-circle"></i>Warning</h4>
									<p id="ModalAlertText">This contest has <b>(0)</b> receipts. You will not be able to select winners at this time. Try to advertise your contest and share it with friends or customers!</p>
								</div>
							</g:if>
							<div id="ModalAlert" style="display: none;" class="alert alert-danger alert-dismissable">
								<h4><i class="icon fa fa-exclamation-circle"></i>Fix needed</h4>
								<p id="ModalAlertText"></p>
							</div>
							<div class="form-group" style="margin: auto; width: 100%;">
								<label>How many winners?</label>
								<select name="winnerAmt" class="form-control">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
								</select>
								<label style="margin-top: 7px;">Message to winner/s</label>
								<textarea placeholder="Message" id="compose-textarea" name="body" class="form-control" style=" height: 80px;"></textarea>
								<p style="margin: 0px;" id='charCount' class="help-block">0/260 characters</p>
								<g:if test="${keyword.replys > 0}">
									<button onClick="return validateMainForm()" value="Send" action="contestSelect" style="margin-top: 8px; width: 100%;" class="btn btn-info " id="selectWinnerBtn">Select Random Winners</button>
								</g:if>
								<g:else>
									<button onClick="return validateMainForm()" disabled="true" style="margin-top: 8px; width: 100%;" class="btn btn-info ">Select Random Winners</button>
								</g:else>
							</div>
							<hr>Randomly selecting winners will end the contest and receipts will no longer be able to text in this keyword. Winning receipts will be notifed immediately after submiting the above form.</div>
						<!-- /.box-body -->
						<div class="box-footer"> <a href="${createLink(controller: 'Dashboard', action: 'dashboard')}" type="submit" class="btn btn-default">Cancel</a>
							<a href="${createLink(controller: 'Dashboard', action: 'details', params: [conType: 'keyword',  promotionID:keyword.promotionID])}" type="submit" class="btn btn-default">Keyword Details</a>
						</div>
						<!-- /.box-footer -->
					</g:form>
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
		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Create the tabs -->
			<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
				<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a>
				</li>
				<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a>
				</li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<!-- Home tab content -->
				<div class="tab-pane active" id="control-sidebar-home-tab">
					<h3 class="control-sidebar-heading">Recent Activity</h3>
					<ul class="control-sidebar-menu">
						<li>
							<a href="javascript::;"> <i class="menu-icon fa fa-birthday-cake bg-red"></i>
								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>
									<p>Will be 23 on April 24th</p>
								</div>
							</a>
						</li>
					</ul>
					<!-- /.control-sidebar-menu -->
					<h3 class="control-sidebar-heading">Tasks Progress</h3>
					<ul class="control-sidebar-menu">
						<li>
							<a href="javascript::;">
								<h4 class="control-sidebar-subheading">
                    Custom Template Design
                    <span class="label label-danger pull-right">70%</span>
                  </h4>
								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-danger" style="width: 70%"></div>
								</div>
							</a>
						</li>
					</ul>
					<!-- /.control-sidebar-menu -->
				</div>
				<!-- /.tab-pane -->
				<!-- Stats tab content -->
				<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
				<!-- /.tab-pane -->
				<!-- Settings tab content -->
				<div class="tab-pane" id="control-sidebar-settings-tab">
					<form method="post">
						<h3 class="control-sidebar-heading">General Settings</h3>
						<div class="form-group">
							<label class="control-sidebar-subheading">Report panel usage
								<input type="checkbox" class="pull-right" checked>
							</label>
							<p>Some information about this general settings option</p>
						</div>
						<!-- /.form-group -->
					</form>
				</div>
				<!-- /.tab-pane -->
			</div>
		</aside>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->
	<!-- REQUIRED JS SCRIPTS -->
	<!-- jQuery 2.1.4 -->
	<g:javascript src="dashboard/plugins/jQuery/jQuery-2.1.4.min.js" />
	<!-- Bootstrap 3.3.5 -->
	<g:javascript src="dashboard/bootstrap/js/bootstrap.min.js" />
	<!-- AdminLTE App -->
	<g:javascript src="dashboard/app.min.js" />
	<g:javascript src="dashboard/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" />
	<g:javascript src="dashboard/plugins/select2/select2.full.min.js" />
	<g:javascript src="tagsinput/dist/bootstrap-tagsinput.min.js" />
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
	<!-- FastClick -->
	<g:javascript src="dashboard/plugins/fastclick/fastclick.min.js" />
	<!-- JQUERY UI -->
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
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
</body>
<script>
	function validateMainForm() {		  
		  var error = false;
		 // var desc = $('#desc').val();
		  var coupCode = $('#coupCode').val();
	      var cs = $("#compose-textarea").val().length;
	
		  	//Clear old values
		  	errors = [];
			$("#ModalAlertText").html("");  
					
		  	if (coupCode.length < 3) {
				error = true;
				errors.push("Please enter a coupon code.");			
			} 
	
		  	if ($("#compose-textarea").val().length < 10) {
				error = true;
				errors.push("Please enter a message longer than 10 characters.");			
		  	}
	
			
		  	if ($("#compose-textarea").val().length > 260) {
				error = true;
				errors.push("Your message can not be longer than 260 characters.");			
		  	}
	
			if (error){
				for (i = 0; i < errors.length; i++) { 
					$("#ModalAlertText").append("*" + errors[i] + "<br/>");		
				}			
				$("#ModalAlert").slideDown();
				return false;
			} else {
				$("#ModalAlert").css("display","none");		
				return true;
			}
				
	  }
	
	 
	
	
	  $('#compose-textarea').keyup(updateCount);
	  $('#compose-textarea').keydown(updateCount);
	  function updateCount() {
	      var cs = $("#compose-textarea").val().length;
	      $('#charCount').text(cs + '/260 characters');
	  }
</script>

</html>