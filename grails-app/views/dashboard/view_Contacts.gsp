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
    
	<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-89949087-1', 'auto');
		ga('send', 'pageview');
	</script>
    
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
					<li>
						<a href="${createLink(controller: 'Dashboard', action: 'Dashboard')}"> <i class="fa fa-home"></i>  <span>Home</span>
						</a>
					</li>
					<li class="active" > <a href="#"><i class="fa fa-book"></i> <span>Address Book</span> <i class="fa fa-angle-left pull-right"></i></a>
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
            Contacts
            <small>All</small>
          </h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Address Book</a>
					</li>
					<li class="active">View Contacts</li>
				</ol>
			</section>
			<!-- Main content -->
			<section class="content">
				<g:if test="${clientCount == 0}">
					<div class="callout callout-info" style="margin-bottom: 10px!important;">
						<h4><i class="fa fa-paw"></i> Welcome to TxtWolf!</h4>
						It looks like you dont have any contacts yet. Get started by adding some below!</div>
				</g:if>
				<input id='searchQueryHiddenField' type="hidden" name="searchQueryHidden" value="${searchQueryHidden}">
				<input id='offset' type="hidden" value="${offset}">
				<input id='clientCount' type="hidden" value="${clientCount}">
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header"> <a href="${createLink(controller: 'Dashboard', action: 'newContact')}"><b> <span class = "fa fa-plus-square"></span> New Contact</b></a>
								<g:form id="searchForm" controller="Dashboard" action="dashboard" enctype="multipart/form-data">
									<div class="input-group margin" style="width: 250px; margin: 10px 0px 0px 0px;">
										<input id="seachQueryInput" name="searchQuery" placeholder="Name, address..." type="text" class="form-control"> <span class="input-group-btn">
                      <g:actionSubmit  action="contacts" class="btn btn-info btn-flat" type="button" value = "Search"></g:actionSubmit>             
                    </span> 
									</div>
									<!-- /input-group -->
								</g:form>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<table id="example1" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>Name</th>
											<th>Number</th>
											<th>Location</th>
											<th>Subbed</th>
										</tr>
									</thead>
									<tbody>
										<g:if test="${clientCount > 0 || offset > 0}">
											<g:if test="${contacts != 'NONE'}">
												<g:each in="${contacts}">
													<tr data-toggle="modal" data-target="#myModal${it.contactID}" class="pointer">
													<g:if test="${it.firstName == 'Unknown'}">
															<td><a href="#"><b>${it.firstName}</b></a></td>	
														</g:if>
														<g:else>
															<td><a href="#"><b>${it.firstName} ${it.lastName}</b></a></td>
														</g:else>
														<td>${it.phoneNumber}</td>
														<g:if test="${it.city}">
															<td>${it.city,}, ${it.state}</td>
														</g:if>
														<g:else>
															<td>None</td>
														</g:else>
														<g:if test="${it.subbed.toBoolean()}">
															<td><span style="color: green;"><b>Yes</b></span>
															</td>
														</g:if>
														<g:else>
															<td><span style="color: purple;">No</span></td>
														</g:else>
													</tr>
												</g:each>
											</g:if>
											<g:else>
												<g:if test="${isSearch}">
													<tr onclick="document.location = '${createLink(controller: 'Dashboard')}';" class="pointer">
														<td><a href="#"><b>No Results, try another search or go back.</b></a>
														</td>
														<td>-</td>
														<td>-</td>
														<td>-</td>
													</tr>
												</g:if>
												<g:else>
													<tr class="pointer">
														<td><a href="#"><b>-</b></a>
														</td>
														<td>-</td>
														<td>-</td>
														<td>-</td>
													</tr>
												</g:else>
											</g:else>
										</g:if>
										<g:else>
											<g:if test="${isSearch}">
												<tr onclick="document.location = '${createLink(controller: 'Dashboard')}';" class="pointer">
													<td><a href="#"><b>No Results, try another search or go back.</b></a>
													</td>
													<td>-</td>
													<td>-</td>
													<td>-</td>
												</tr>
											</g:if>
											<g:else>
												<tr onclick="document.location = '${createLink(controller: 'Dashboard', action: 'newContact')}';" class="pointer">
													<td><a href="#"><b>Click here to add your first contact!</b></a>
													</td>
													<td>-</td>
													<td>-</td>
													<td>-</td>
												</tr>
											</g:else>
										</g:else>
									</tbody>
									<tfoot></tfoot>
								</table>
							</div>
							<!-- /.box-body -->
							<div class="btn-group" style="margin: 0px 0px 10px 10px; ">
								<g:if test="${offset > 0}">
									<g:link action="contacts" params="[offset: offset, up: 'false', searchQueryHidden: searchQueryHidden]" type="button" class="btn btn-default">Back</g:link>
								</g:if>
								<g:else>
									<button disabled type="button" class="btn btn-default">Back</button>
								</g:else>
								<g:if test="${offset <= clientCount}">
									<g:link action="contacts" params="[offset: offset, up: 'true', searchQueryHidden: searchQueryHidden]" type="button" class="btn btn-default">Next</g:link>
								</g:if>
								<g:else>
									<button disabled type="button" class="btn btn-default">Next</button>
								</g:else>
							</div>
							<p style="float: right; text-align: right; margin: 15px; display: inline-block;"> <span id="pageInfo">${currentPage} of 0</span>
							</p>
						</div>
						<!-- /.box -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</section>
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
	<g:if test="${contacts && contacts != 'NONE'}">
		<g:each in="${contacts}">
			<div class="modal" id="myModal${it.contactID}" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
							</button>
							<h4 id="modalHeading" class="modal-title">Select an option:
							 <b>
							<g:if test="${it.firstName == 'Unknown'}">
								${it.firstName}
							</g:if>
							<g:else>
							${it.firstName} ${it.lastName}
							</g:else>							 							 				 
							 </b>
							 </h4>
						</div>
						<div class="modal-body" style="padding-top: 0px;">
							<g:link style="margin-bottom:0px; margin-top: 15px; " action="sendTxt" params="[contactID: it.contactID]" type="button" class="btn btn-app">	<i class="fa fa-envelope-o"></i>Send Text</g:link>
							<a href=""></a>
							<g:link style="margin-bottom:0px; margin-top: 15px; " action="editContact" params="[contactID: it.contactID]" type="button" class="btn btn-app"> <i class="fa fa-edit"></i> Edit Contact</g:link>
							<g:link style="margin-bottom:0px; margin-top: 15px; " action="details" params="[contactID: it.contactID, conType: 'Contact']" type="button" class="btn btn-app"> <i class="fa fa-user"></i> Contact Details</g:link>
							<g:link style="margin-bottom:0px; margin-top: 15px; " action="groups" params="[contactID: it.contactID, addToGroup: 'True']" type="button" class="btn btn-app"> <i class="fa fa-users"></i> Add to Group</g:link>
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
		</g:each>
	</g:if>
	<!-- REQUIRED JS SCRIPTS -->
	<!-- jQuery 2.1.4 -->
	<g:javascript src="dashboard/plugins/jQuery/jQuery-2.1.4.min.js" />
	<!-- Bootstrap 3.3.5 -->
	<g:javascript src="dashboard/bootstrap/js/bootstrap.min.js" />
	<!-- AdminLTE App -->
	<g:javascript src="dashboard/app.min.js" />
	<!-- Optionally, you can add Slimscroll and FastClick plugins.
         Both of these plugins are recommended to enhance the
         user experience. Slimscroll is required when using the
         fixed layout. -->
</body>
<script>
	$( document ).ready(function() {
		  if($("#searchQueryHiddenField").val() != "") {
				$("#seachQueryInput").val($("#searchQueryHiddenField").val().toString());
			}
	
			// Set pageinfo
			var totalClientCount = $("#clientCount").val();
			var offset = $("#offset").val();
			var offsetTop = (parseInt(offset) + 10);
			$("#pageInfo").html("Viewing " + offset + "-" + offsetTop + " of " + totalClientCount);
			
		});
	
	  function test(number) {
		  return true;
		}
</script>

</html>