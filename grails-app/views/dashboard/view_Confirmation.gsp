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
						<g:if test="${conType == 'AddContact' || conType == 'editContact' || conType == 'AddContactToGroupSuccess'}">				
							<li class="active"> <a href="#"><i class="fa fa-book"></i> <span>Address Book</span> <i class="fa fa-angle-left pull-right"></i></a>
						</g:if>
						<g:else>
							<li> <a href="#"><i class="fa fa-book"></i> <span>Address Book</span> <i class="fa fa-angle-left pull-right"></i></a>
						</g:else>	
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
					<g:if test="${conType == 'Message'}">				
						<li class="active" class="treeview"> <a href="#"><i class="fa fa-comment"></i> <span>Send Text</span> <i class="fa fa-angle-left pull-right"></i></a>
					</g:if>
					<g:else>
						<li class="treeview"> <a href="#"><i class="fa fa-comment"></i> <span>Send Text</span> <i class="fa fa-angle-left pull-right"></i></a>
					</g:else>
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
						<g:if test="${conType == 'addKeyword' || conType == 'reactivateKeyword'}">				
							<li  class="active" class="treeview"> <a href="#"><i class="fa fa-inbox"></i> <span>Keywords</span> <i class="fa fa-angle-left pull-right"></i></a>
						</g:if>
						<g:else>
							<li class="treeview"> <a href="#"><i class="fa fa-inbox"></i> <span>Keywords</span> <i class="fa fa-angle-left pull-right"></i></a>
						</g:else>				
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
            Confirmation
            <small>Recent</small>
          </h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Confirmation</a>
					</li>
					<li class="active">Recent</li>
				</ol>
			</section>
			<!-- Main content -->
			<section class="content">
				<g:if test="${params.conType == 'Message'}">
					<!-- MESSAGE SENT SUCCESS -->
					<div class="box box-info">
						<div class="box-header with-border"> <i class="fa fa-bell-o"></i>
							<h3 class="box-title">Success!</h3>
						</div>
						<div class="box-body">
							<div class="callout callout-info" style="margin: 0px;">
								<h4>Message sent</h4>
								<p>Your message has been successfully sent to <b>${params.totalRecp}</b> recipient(s). View detailed information about this message by clicking "Details" below.</p>
							</div>
							<div style="margin: 10px 0px 5px 0px;"> <a href="${createLink(controller: 'Dashboard', action: 'sendTxt')}" class="btn btn-default">New Message</a>
								<g:link class="btn btn-default" action="details" params="[conType: 'Message', messageID: params.messageID]" type="button">Details</g:link>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
					<!-- MESSAGE SENT SUCCESS -->
				</g:if>
				<g:elseif test="${conType == 'AddContact'}">
					<!-- Contact added SUCCESS -->
					<div class="box box-info">
						<div class="box-header with-border"> <i class="fa fa-bell-o"></i>
							<h3 class="box-title">Success!</h3>
						</div>
						<div class="box-body">
							<div class="callout callout-info" style="margin: 0px;">
								<h4>Contact added</h4>
								<p>${params.name} has been successfully added to your address book. Click "Details" to view detailed information on your new contact.</p>
							</div>
							<div style="margin: 10px 0px 5px 0px;">
								<g:link class="btn btn-default" action="sendTxt" params="[contactID: params.contactID]" type="button">Send New Text</g:link>
								<g:link class="btn btn-default" action="details" params="[contactID: params.contactID, conType: 'Contact']" type="button">Details</g:link>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
					<!-- Contact added SUCCESS -->
				</g:elseif>
				<g:elseif test="${conType == 'editContact'}">
					<!-- Contact added SUCCESS -->
					<div class="box box-info">
						<div class="box-header with-border"> <i class="fa fa-bell-o"></i>
							<h3 class="box-title">Success!</h3>
						</div>
						<div class="box-body">
							<div class="callout callout-info" style="margin: 0px;">
								<h4>Contact edit saved</h4>
								<p>${params.name} has been successfully edited. Click "Details" to view detailed information on this contact.</p>
							</div>
							<div style="margin: 10px 0px 5px 0px;"> 
								<g:link class="btn btn-default" action="sendTxt" params="[contactID: params.contactID]" type="button">Send Text</g:link>
								<g:link class="btn btn-default" action="details" params="[contactID: params.contactID, conType: 'Contact']" type="button">Details</g:link>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
					<!-- Contact added SUCCESS -->
				</g:elseif>
				<g:elseif test="${conType == 'FAILEDAddContact'}">
					<!-- Contact added FAILED -->
					<div class="box box-info">
						<div class="box-header with-border"> <i class="fa fa-warning"></i>
							<h3 class="box-title">Failed</h3>
						</div>
						<div class="box-body">
							<div class="callout callout-warning" style="margin: 0px;">
								<h4>Contact Already Exist</h4>
								<p>It looks like this contact already exist in your address book. Please go back or view your adress book for more information.</p>
							</div>
							<div style="margin: 10px 0px 5px 0px;"> <a href="${createLink(controller: 'Dashboard', action: 'contacts')}" class="btn btn-default">Address Book</a>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
					<!-- Contact added SUCCESS -->
				</g:elseif>
				<g:elseif test="${conType == 'FAILEDtext'}">
					<!-- Text sent FAILED -->
					<div class="box box-info">
						<div class="box-header with-border"> <i class="fa fa-warning"></i>
							<h3 class="box-title">FAILED!</h3>
						</div>
						<div class="box-body">
							<div class="callout callout-warning" style="margin: 0px;">
								<h4>Message failed.</h4>
								<p>Your message has failed to send to all recipients. Please go back and try again. If this error does not get resolved please contact support at Support@TxtWolf.com</p>
							</div>
							<div style="margin: 10px 0px 5px 0px;">	<a href="${createLink(controller: 'Dashboard', action: 'sendTxt')}" class="btn   btn-default">New Message</a>
								<a href="${createLink(controller: 'Dashboard')}" class="btn btn-default">Details</a>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
					<!-- Contact added SUCCESS -->
				</g:elseif>
				<g:elseif test="${conType == 'addGroup'}">
					<!-- SUCCESS -->
					<div class="box box-info">
						<div class="box-header with-border"> <i class="fa fa-warning"></i>
							<h3 class="box-title">Success!</h3>
						</div>
						<div class="box-body">
							<div class="callout callout-info" style="margin: 0px;">
								<h4>Group Added.</h4>
								<p>${params.name} has been successfully added as a group. Click "Details" to view detailed information on this group.</p>
							</div>
							<div style="margin: 10px 0px 5px 0px;">	<a href="${createLink(controller: 'Dashboard', action: 'contacts')}" class="btn btn-default">Contacts</a>
								<g:link class="btn btn-default" action="detailedGroup" params="[groupID: params.groupID]" type="button">Details</g:link>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
					<!-- Contact added SUCCESS -->
				</g:elseif>
				<g:elseif test="${conType == 'FAILEDaddGroup'}">
					<!-- SUCCESS -->
					<div class="box box-info">
						<div class="box-header with-border"> <i class="fa fa-warning"></i>
							<h3 class="box-title">Failed</h3>
						</div>
						<div class="box-body">
							<div class="callout callout-warning" style="margin: 0px;">
								<h4>Group already exist.</h4>
								<p>${params.name} already exist as a group. Click "Details" to view detailed information on this group.</p>
							</div>
							<div style="margin: 10px 0px 5px 0px;">	<a href="${createLink(controller: 'Dashboard', action: 'sendTxt')}" class="btn btn-default">New Message</a>
								<g:link class="btn btn-default" action="details" params="[groupID: params.groupID]" type="button">Details</g:link>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
					<!-- Contact added SUCCESS -->
				</g:elseif>
				<g:elseif test="${conType == 'AddContactToGroupSuccess'}">
					<!-- SUCCESS -->
					<div class="box box-info">
						<div class="box-header with-border"> <i class="fa fa-bell-o"></i>
							<h3 class="box-title">Success!</h3>
						</div>
						<div class="box-body">
							<div class="callout callout-info" style="margin: 0px;">
								<h4>Member added to group.</h4>
								<p>	<b>${params.name}</b> has successfully been added to <b>"${params.groupName}"</b> 
								</p>
							</div>
							<div style="margin: 10px 0px 5px 0px;">	<a href="${createLink(controller: 'Dashboard', action: 'groups')}" class="btn btn-default">Groups</a>
								<a href="${createLink(controller: 'Dashboard', action: 'contacts')}" class="btn btn-default">Address Book</a>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
						<!-- Contact added SUCCESS -->
				</g:elseif>
				<g:elseif test="${conType == 'AddContactToGroupFail'}">
					<!-- SUCCESS -->
					<div class="box box-info">
						<div class="box-header with-border"> <i class="fa fa-warning"></i>
							<h3 class="box-title">Failed</h3>
						</div>
						<div class="box-body">
							<div class="callout callout-warning" style="margin: 0px;">
								<h4>Member already exist.</h4>
								<p>${params.name} already exist in group <b>"${params.groupName}"</b>.</p>
							</div>
							<div style="margin: 10px 0px 5px 0px;">	<a href="${createLink(controller: 'Dashboard', action: 'groups')}" class="btn btn-default">Groups</a>
								<a href="${createLink(controller: 'Dashboard')}" class="btn btn-default">Contact List</a>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
						<!-- Contact added SUCCESS -->
				</g:elseif>
				<g:elseif test="${conType == 'addKeyword'}">
					<!-- SUCCESS -->
					<div class="box box-info">
						<div class="box-header with-border"> <i class="fa fa-bell-o"></i>
							<h3 class="box-title">Success!</h3>
						</div>
						<div class="box-body">
							<div class="callout callout-info" style="margin: 0px;">
								<h4>Keyword Created</h4>
								<p>	<b>${params.keyword}</b> has successfully been regestered! You can now have people text	<b>"${params.keyword}"</b> to <b>${number.number}</b> to participate in your campaign.
									<g:if test="${params.endless == 'true'}">Your campaign is effective <b>${params.dateEff}</b> and will not end untill you expire it. </g:if>
									<g:else>Your campaign is effective <b>${params.dateEff}</b> to <b>${params.dateExp}</b>.</g:else>Click "Detailed View" to view more information on your new keyword.</p>
								<h4>Keyword Tips!</h4>
								<p>Learn how to effectively use your keyword to engage and build a list of customers by visiting the <a href="${createLink(controller: 'blog', params: [blogID: '1'])}">Keyword Tips Page.</a>
								</p>
							</div>
							<div style="margin: 10px 0px 5px 0px;">
								<g:link action="details" params="[conType:'keyword', promotionID: params.promotionID]" class="btn btn-default">Detailed View</g:link>	<a href="${createLink(controller: 'Dashboard', action: 'keywords')}" class="btn btn-default">All Keywords</a>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
						<!-- Contact added SUCCESS -->
				</g:elseif>
				<g:elseif test="${conType == 'suspendKeyword'}">
					<!-- SUCCESS -->
					<div class="box box-info">
						<div class="box-header with-border"> <i class="fa fa-bell-o"></i>
							<h3 class="box-title">Success!</h3>
						</div>
						<div class="box-body">
							<div class="callout callout-info" style="margin: 0px;">
								<h4>Keyword Suspended</h4>
								<p>People are no longer able to send your keyword "<b>${params.keyword}</b>" into your promotion. You can re-enable this keyword anytime. Click "Detailed View" to view more information on your keyword.</p>
							</div>
							<div style="margin: 10px 0px 5px 0px;">
								<g:link action="details" params="[conType:'keyword', promotionID:params.promotionID]" class="btn btn-default">Detailed View</g:link>	<a href="${createLink(controller: 'Dashboard', action: 'keywords')}" class="btn btn-default">All Keywords</a>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
						<!-- Contact added SUCCESS -->
				</g:elseif>
				<g:elseif test="${conType == 'reactivateKeyword'}">
					<!-- SUCCESS -->
					<div class="box box-info">
						<div class="box-header with-border"> <i class="fa fa-bell-o"></i>
							<h3 class="box-title">Success!</h3>
						</div>
						<div class="box-body">
							<div class="callout callout-info" style="margin: 0px;">
								<h4>Keyword Reactivated</h4>
								<p>	<b>${params.keyword}</b> has successfully been reactivated! You can now have people text	<b>${params.keyword}</b> to <b>${params.phoneNumber}</b> to participate in your campaign. Your campaign is effective on <b>${params.dateEff}</b>. Click "Detailed View" to view more information on your new keyword.</p>
								<h4>Keyword Tips!</h4>
								<p>Learn how to use your kwey erojwelfkjasd fdskf idsafjisdfj i;sadl ${params.promotionID}</p>
							</div>
							<div style="margin: 10px 0px 5px 0px;">
								<g:link action="details" params="[conType:'keyword', promotionID: params.promotionID]" class="btn btn-default">Detailed View</g:link>	<a href="${createLink(controller: 'Dashboard')}" class="btn btn-default">All Keywords</a>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
						<!-- Contact added SUCCESS -->
				</g:elseif>
				<g:elseif test="${conType == 'suspendKeyword'}">
					<!-- SUCCESS -->
					<div class="box box-info">
						<div class="box-header with-border"> <i class="fa fa-bell-o"></i>
							<h3 class="box-title">Success!</h3>
						</div>
						<div class="box-body">
							<div class="callout callout-info" style="margin: 0px;">
								<h4>Keyword Suspended</h4>
								<p>People are no longer able to send your keyword "<b>${params.keyword}</b>" into your promotion. You can re-enable this keyword anytime. Click "Detailed View" to view more information on your keyword.</p>
							</div>
							<div style="margin: 10px 0px 5px 0px;">
								<g:link action="details" params="[conType:'keyword', promotionID:params.promotionID]" class="btn btn-default">Detailed View</g:link>	<a href="${createLink(controller: 'Dashboard', action: 'keywords')}" class="btn btn-default">All Keywords</a>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
						<!-- Contact added SUCCESS -->
				</g:elseif>
				<g:elseif test="${conType == 'passwordChangeSuccess'}">
					<!-- SUCCESS -->
					<div class="box box-info">
						<div class="box-header with-border"> <i class="fa fa-bell-o"></i>
							<h3 class="box-title">Success!</h3>
						</div>
						<div class="box-body">
							<div class="callout callout-info" style="margin: 0px;">
								<h4>Password Changed</h4>
								<p>	Your password has been updated succesfully! This change will become effective on your <b>next</b> login.</p>

							</div>
							<div style="margin: 10px 0px 5px 0px;">
								 <a href="${createLink(controller: 'Dashboard', action: 'dashboard')}" class="btn btn-default">Home</a>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
						<!-- Contact added SUCCESS -->
				</g:elseif>
				<g:elseif test="${conType == 'passwordChangeFail'}">
					<!-- SUCCESS -->
					<div class="box box-info">
						<div class="box-header with-border"> <i class="fa fa-warning"></i>
							<h3 class="box-title">Failed</h3>
						</div>
						<div class="box-body">
							<div class="callout callout-warning" style="margin: 0px;">
								<h4>Password update failed.</h4>
								<p>Your current password was incorrect. Please go back and try again.</p>
							</div>
							<div style="margin: 10px 0px 5px 0px;">
								 <a style = "margin-right: 5px;" href="${createLink(controller: 'Dashboard', action: 'dashboard')}" class="btn btn-default">Home</a>
								 <a href="${createLink(controller: 'Dashboard', action: 'changePassword')}" class="btn btn-default">Change Password</a>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
						<!-- Contact added SUCCESS -->
				</g:elseif>
				
				
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