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

<body class="hold-transition skin-purple sidebar-mini" style = "min-width: 500px;">
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
					<li>
						<a href="${createLink(controller: 'Dashboard', action: 'Dashboard')}"> <i class="fa fa-home"></i>  <span>Home</span>
						</a>
					</li>
					<li class="treeview" > <a href="#"><i class="fa fa-book"></i> <span>Address Book</span> <i class="fa fa-angle-left pull-right"></i></a>
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
					<li class="treeview"> <a href="#"><i class="fa fa-inbox"></i> <span>Keywords</span> <i class="fa fa-angle-left pull-right"></i></a>
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
					<li class="active"> <a href="#"><i class="fa fa-paw"></i> <span>Account</span> <i class="fa fa-angle-left pull-right"></i></a>
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
            Affiliate
            <small>Dashboard</small>
          </h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Affiliate </a>
					</li>
					<li class="active">Program</li>
				</ol>
			</section>
						
			<!-- Main content -->
			<section class="content">			
				<g:if test="${memberCount == 0}">
					<div class="callout callout-info" style="margin-bottom: 10px!important;">
						<h4><i class="fa fa-paw"></i> Welcome ${session.firstName}! </h4>
						It looks like you don't have any members signed up yet! Get started by reading the offical TxtWolf Affiliate 
						start guide <a href="${createLink(controller: 'AffiliateProgram')}" ><b>here</b></a>. You can begin to withdraw earnings once you have joined members!
						</div>
				</g:if>
						
				<!-- Horizontal Form -->
				<div class="box" style="">
					<div class="box-header with-border">
							<h4 class="box-title" style = "margin-bottom: 3px;">Affiliate Info: <a href="${createLink(controller: 'AffiliateProgram')}" ><b>Start Guide</b></a></h4>					
								<table id="" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>Account Holder</th>
											<th>Your Affiliate ID</th>
											<th>Available Earnings</th>
											<th>Total Earned</th>
										</tr>
									</thead>
									<tbody>
									
									<tr>								
										<td>
											${session.firstName} ${session.lastName}
										</td>
										<td>
											<b>${AAI.affiliateID}</b>
										</td>
										<td>
											${AAI.avalEarnings} USD
										</td>
										<td>
											${AAI.totalEarned} USD
										</td>									
									</tr>
									
									</tbody>
									
									</table>
									
					<a href="${createLink(controller: 'Dashboard', action: 'dashboard')}" type="submit" style = "margin-top: -7px;" class="btn btn-default disabled">Withdraw Earnings</a>
					<a href="${createLink(controller: 'Dashboard', action: 'dashboard')}" type="submit" style = "margin-top: -7px; margin-left: 5px;" class="btn btn-default disabled">Recent Payouts</a>
									
					</div>
					
					
					<!-- /.box-header -->	
							<div class="box-body">
								<h4 class="box-title" style = "margin-bottom: 6px;">Your Members: <b>${memberCount}</b></h4>				
								<table id="" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>Email</th>
											<th>Date</th>
											<th>Paid</th>
											<th>Status</th>
										</tr>
									</thead>
									<tbody>
								<g:each in="${members}">								
									<tr>									
										<td>
											${it.memberEmail}
										</td>
										<td>
											${it.joinDate}
										</td>
										<td>
										<g:if test="${it.paid.toBoolean()}">
										 	<span style="color: green;"><b>Yes</b></span>
										</g:if>
										<g:else>
											<span style="color: purple;"><b>No</b></span>
										</g:else>	
										</td>
										<td>
											${it.status}
										</td>									
									</tr>
									</g:each>
									
									<g:if test="${memberCount == 0}">
										<td> - </td>
										<td> - </td>
										<td> - </td>
										<td> - </td>
									</g:if>
									
									</tbody>
									
									</table>
									
				
				</div>
																				
							<div class="btn-group" style="margin: 0px 0px 10px 10px; ">
								<g:if test="${true}">
									<button disabled type="button" class="btn btn-default">Back</button>
								</g:if>
								<g:else>
									<button disabled type="button" class="btn btn-default">Back</button>
								</g:else>
								<g:if test="${false}">
									<g:link disabled action="contacts" params="[offset: offset, up: 'true', searchQueryHidden: searchQueryHidden]" type="button" class="btn btn-default">Next</g:link>
								</g:if>
								<g:else>
									<button disabled type="button" class="btn btn-default">Next</button>
								</g:else>
							</div>
							<p style="float: right; text-align: right; margin: 15px; display: inline-block;"> <span id="pageInfo">0 - 10 of ${memberCount}</span>
							</p>
							
						<hr>
						
							
							
							
						</div>
						
						
						
				
				
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
	  
	  function test(number) {
		  $("#modalHeading").text(number);
		}

</script>

</html>