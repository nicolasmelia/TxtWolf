<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" fcontent="IE=edge">
    <title>AdminLTE 2 | Starter</title>
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
    
    <link rel="stylesheet" type="text/css" href="<g:resource dir='js' file='dashboard/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css'/>">
    
    <link rel="stylesheet" type="text/css" href="<g:resource dir='js' file='dashboard/plugins/select2/select2.min.css'/>">
      
    <link rel="stylesheet" type="text/css" href="<g:resource dir='js' file='tagsinput/dist/bootstrap-tagsinput.css'/>">
    
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
        <a href="index2.html" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>W</b>olf</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Txt</b>Wolf</span>
        </a>

        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <!-- Navbar Right Menu -->
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- Messages: style can be found in dropdown.less-->
              <li class="dropdown messages-menu">
                <!-- Menu toggle button -->
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-envelope-o"></i>
                  <span class="label label-success">0</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 0 messages</li>
                  <li>
                    <!-- inner menu: contains the messages -->
                    <ul class="menu">
                      <li><!-- start message -->
                        <a href="#">
                          <div class="pull-left">
                            <!-- User Image -->
                            <img src="${resource(dir: 'images', file: 'dashboard/default_avatar.png')}" class="img-circle" alt="User Image">
                          </div>
                          <!-- Message title and timestamp -->
                          <h4>
                            Support Team
                            <small><i class="fa fa-clock-o"></i> 5 mins</small>
                          </h4>
                          <!-- The message -->
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li><!-- end message -->
                    </ul><!-- /.menu -->
                  </li>
                  <li class="footer"><a href="#">See All Messages</a></li>
                </ul>
              </li><!-- /.messages-menu -->

              <!-- Notifications Menu -->
              <li class="dropdown notifications-menu">
                <!-- Menu toggle button -->
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-bell-o"></i>
                  <span class="label label-warning">0</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 0 notifications</li>
                  <li>
                    <!-- Inner Menu: contains the notifications -->
                    <ul class="menu">
                      <li><!-- start notification -->
                        <a href="#">
                          <i class="fa fa-users text-aqua"></i> 5 new members joined today
                        </a>
                      </li><!-- end notification -->
                    </ul>
                  </li>
                  <li class="footer"><a href="#">View all</a></li>
                </ul>
              </li>   

              <!-- User Account Menu -->
              <li class="dropdown user user-menu">
                <!-- Menu Toggle Button -->
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <!-- The user image in the navbar-->
                  <img src="${resource(dir: 'images', file: 'dashboard/default_avatar.png')}" class="user-image" alt="User Image">
                  <!-- hidden-xs hides the username on small devices so only the image appears. -->
                  <span class="hidden-xs">${session.firstName} ${session.lastName}</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- The user image in the menu -->
                  <li class="user-header">
                    <img src="${resource(dir: 'images', file: 'dashboard/default_avatar.png')}" class="img-circle" alt="User Image">
                    <p>
                      ${session.firstName} ${session.lastName} - Admin
                      <small>Member since <g:formatDate format="yyyy" date="${session.signUpDate}"/></small>
                    </p>
                  </li>
                  <!-- Menu Body -->
                  <li class="user-body">
                    <div class="col-xs-4 text-center">
                      <a href="${createLink(controller: 'Home')}">Home</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Blog</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Help</a>
                    </div>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                    <!--  <a href="#" class="btn btn-default btn-flat">Profile</a> -->
                    </div>
                    <div class="pull-right">
                      <a href="${createLink(controller: 'login', action: 'logout')}" class="btn btn-default btn-flat">Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
              <!-- Control Sidebar Toggle Button -->
              <li>
                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
              </li>
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
              <!-- Status -->
              <a href="#"><i class="fa fa-circle text-success"></i> Active</a>
            </div>
          </div>

          <!-- search form (Optional) -->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search Contacts...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->

          <!-- Sidebar Menu -->
          <ul class="sidebar-menu">
            <li class="header">Tools</li>
            <!-- Optionally, you can add icons to the links -->
            
            
            <li class="active">
              <a href="#"><i class="fa fa-book"></i> <span>Address Book</span> <i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="#">Contacts</a></li> 
                <li><a href="#">Groups</a></li>                
                <li><a href="#">New Contact</a></li>    
              </ul>
            </li>

       
             <li class="treeview">
              <a href="#"><i class="fa fa-comment"></i> <span>Send Text</span> <i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="${createLink(controller: 'Dashboard', action: 'sendTxt')}">Compose Text</a></li>
                <li><a href="#">Scheduled Text</a></li>       
              </ul>
            </li>
       
             <li class="treeview">
              <a href="#"><i class="fa fa-ticket"></i> <span>Promotions</span> <i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="#">View Promotions</a></li>
                <li><a href="#">Validate Promo Code</a></li>       
                <li><a href="#">Create Promotion</a></li>
              </ul>
            </li>
       

            
          </ul><!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            New Contact
            <small>Add</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Address Book</a></li>
            <li class="active">New Contact</li>
          </ol>
        </section>

        <!-- Main content -->
  <section class="content">
       
       
    <!-- Horizontal Form -->
              <div class="box box-info" style = "max-width: 600px;">
                <div class="box-header with-border">
                  <h3 class="box-title">Add New Contact</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
               <g:form id = "txtForm" class="form-horizontal" controller="Dashboard" action="addNewContact" enctype="multipart/form-data" >
                
                  <div class="box-body">
                  
                  
                  <div id = "ModalAlert"  style = "display: none;"  class="alert alert-danger alert-dismissable">
                    <h4><i class="icon fa fa-exclamation-circle"></i>Fix needed</h4>
                    <p id = "ModalAlertText"></p>
                  </div>
                 
                  
                    <div class="form-group">
                      <label for="inputEmail3" class="col-sm-2 control-label">Phone</label>
                      <div class="col-sm-10">
                    <div class="input-group">
                      <div class="input-group-addon">
                        <i class="fa fa-phone"></i>
                      </div>
                      <input  name = "phoneNumber" placeholder="Required" id = "customNumber" type="text" class="form-control" data-inputmask='"mask": "(999) 999-9999"' data-mask>
                    </div><!-- /.input group -->                     
                     </div>
                    </div>


                  
                    <div class="form-group">
                      <label for="inputEmail3" class="col-sm-2 control-label">First Name</label>
                      <div class="col-sm-10">
                        <input  name = "firstName"  id  = "firstName" type="text" class="form-control" placeholder="Required">
                      </div>
                    </div>
                  
                    <div class="form-group">
                      <label for="inputEmail3" class="col-sm-2 control-label">Last Name</label>
                      <div class="col-sm-10">
                        <input name = "lastName"  id = "lastName" type="text" class="form-control" placeholder="Required">
                      </div>
                    </div>

				<hr>
				
                    <div class="form-group">
                      <label for="inputEmail3" class="col-sm-2 control-label">Address</label>
                      <div class="col-sm-10">
                        <input name = 'address' type="text" class="form-control" id="address" placeholder="Not Required">
                      </div>
                    </div>
                  
                    <div class="form-group">
                      <label for="inputEmail3" class="col-sm-2 control-label">City</label>
                      <div class="col-sm-10">
                        <input name = "city"  type="text" class="form-control" placeholder="Not Required">
                      </div>
                    </div>

                  
                    <div class="form-group">
                      <label for="inputEmail3" class="col-sm-2 control-label">State</label>
                      <div class="col-sm-10">
                        <input name = "state"  id  = "state"  type="text" class="form-control" placeholder="Not Required">
                      </div>
                    </div>
                    
                    
                  
                    <div class="form-group">
                      <label for="inputEmail3" class="col-sm-2 control-label">Zip</label>
                      <div class="col-sm-10">
                        <input name = "zip"  type="text" class="form-control" id="zip" placeholder="Not Required">
                      </div>
                    </div>


                    
                  </div><!-- /.box-body -->
                  <div class="box-footer">
                   <button  onClick = "return validateMainForm()" class="btn btn-info pull-right" id = "submitBtn" value = "Send"  action = "addNewContact"/>Add</button>	
                    <a href = "#" type="submit" class="btn btn-default">Cancel</a>
                  </div><!-- /.box-footer -->
                  
                  
                              <!-- hidden to hide ro send via modal! --> 
                
               </g:form>
                
                
                
                
              </div><!-- /.box -->
       
       
       
       
  </section><!-- /.content -->
        
      </div><!-- /.content-wrapper -->


      <!-- Main Footer -->
      <footer class="main-footer">
        <!-- To the right -->
        <div class="pull-right hidden-xs">
          Anything you want
        </div>
        <!-- Default to the left -->
        <strong>Copyright &copy; 2015 <a href="#">Company</a>.</strong> All rights reserved.
      </footer>
      
      <!-- Control Sidebar -->
      <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
          <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
          <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
          <!-- Home tab content -->
          <div class="tab-pane active" id="control-sidebar-home-tab">
            <h3 class="control-sidebar-heading">Recent Activity</h3>
            <ul class="control-sidebar-menu">
              <li>
                <a href="javascript::;">
                  <i class="menu-icon fa fa-birthday-cake bg-red"></i>
                  <div class="menu-info">
                    <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>
                    <p>Will be 23 on April 24th</p>
                  </div>
                </a>
              </li>
            </ul><!-- /.control-sidebar-menu -->

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
            </ul><!-- /.control-sidebar-menu -->

          </div><!-- /.tab-pane -->
          <!-- Stats tab content -->
          <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div><!-- /.tab-pane -->
          <!-- Settings tab content -->
          <div class="tab-pane" id="control-sidebar-settings-tab">
            <form method="post">
              <h3 class="control-sidebar-heading">General Settings</h3>
              <div class="form-group">
                <label class="control-sidebar-subheading">
                  Report panel usage
                  <input type="checkbox" class="pull-right" checked>
                </label>
                <p>
                  Some information about this general settings option
                </p>
              </div><!-- /.form-group -->
            </form>
          </div><!-- /.tab-pane -->
        </div>
      </aside><!-- /.control-sidebar -->
      <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
      <div class="control-sidebar-bg"></div>
    </div><!-- ./wrapper -->


    <!-- REQUIRED JS SCRIPTS -->

    <!-- jQuery 2.1.4 -->
    <g:javascript src="dashboard/plugins/jQuery/jQuery-2.1.4.min.js" /> 
    
    <!-- Bootstrap 3.3.5 -->
    <g:javascript src="dashboard/bootstrap/js/bootstrap.min.js" /> 
    
    <!-- AdminLTE App -->
    <g:javascript src="dashboard/app.min.js" /> 
    
    <g:javascript src="dashboard/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" /> 

    <g:javascript src="dashboard/plugins/select2/select2.full.min.js" /> 
    
    <g:javascript src="tagsinput/dist/bootstrap-tagsinput.min.js"/>
    
      
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
    
    <!-- SlimScroll 1.3.0 -->
    <g:javascript src="dashboard/plugins/slimScroll/jquery.slimscroll.min.js" /> 
    
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
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 id = "modalHeading" class="modal-title">Modal Default</h4>
                  </div>
                  <div class="modal-body">
                  
 				 <a class="btn btn-app" style = "margin-bottom:0px;" >
                    <i class="fa fa-comment"></i> Send Text
                  </a>
                  <a class="btn btn-app" style = "margin-bottom:0px;">
                    <i class="fa fa-users"></i> Add to Group
                  </a>
                  <a class="btn btn-app" style = "margin-bottom:0px;">
                    <i class="fa fa-edit"></i> Edit
                  </a>
                    
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" >Close</button>
                  </div>
                </div><!-- /.modal-content -->
              </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->

         
  </body>
  
  <script>

  $("[data-mask]").inputmask();
  
  function test(number) {
	  $("#modalHeading").text(number);
	}


  function validateMainForm() {		  
	  var error = false;
	  var number = $('#customNumber').val();
	  var firstName = $('#firstName').val();
	  var lastName = $('#lastName').val();
	  var address = $('#address').val();
	  var city = $('#city').val();
	  var state = $('#state').val();
	  var zip = $('#zip').val();

	  	//Clear old values
	  	errors = [];
		$("#ModalAlertText").html("");  
		
		
	  	if (number.length < 10) {
			error = true;
			errors.push("Please enter a valid phone number.");			
		} else if (number.replace(/[^0-9]/g,"").length < 10) {
			error = true;
			errors.push("Please enter a valid phone number ");					
		}
		
	  	if (firstName.length < 2) {
			error = true;
			errors.push("Please enter a valid first name.");			
	  	}
	  	
	  	if (lastName.length < 2) {
			error = true;
			errors.push("Please enter a valid last name.");			
	  	}

	  	if (address.length > 0 || city.length > 0 || state.length > 0 || zip.length > 0) {
		  	if (!address.length > 0 && !city.length > 0 && !state.length > 0 && !zip.length > 0) {
				errors.push("If you are entering an adress you must enter all address fields.");			
		  	}		  	
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


  </script>
  
  
</html>

