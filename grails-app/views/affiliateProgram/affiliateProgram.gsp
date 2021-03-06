<!DOCTYPE HTML>
<!--
	Frequency by Pixelarity
	pixelarity.com @pixelarity
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>TxtWolf - Blog</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="icon" href="${resource(dir: 'images', file: 'dashboard/default_avatar.png')}">
		<link rel="stylesheet" type="text/css" href="<g:resource dir='css' file='main.boot.css'/>">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
		
		<!--[if lte IE 8]><g:javascript src="ie/html5shiv.js" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" type="text/css" href="<g:resource dir='css' file='ie8.css'/>"><![endif]-->
	
		<script>
		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
		  ga('create', 'UA-89949087-1', 'auto');
		  ga('send', 'pageview');
		</script>
	
		<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
			ga('create', 'UA-89949087-1', 'auto');
			ga('send', 'pageview');
		</script>
		
	</head>
	
	<body>

		<!-- Header -->
			<header id="header" class="">
				<h1 id="logo"><a href="${createLink(controller: 'Home')}">TxtWolf</a></h1>
				<nav id="nav">
					<ul>
						<li><a href="${createLink(controller: 'Home')}">Home</a></li>				
						<li><a href="${createLink(controller: 'blog', params: [blogID: '1'])}">Blog</a></li>			
						<li><a href="${createLink(controller: 'Home', action: 'pricing')}">Pricing</a></li>
						
						<g:if test="${session.userID}">
							<li><a href="${createLink(controller: 'Dashboard')}">Dashboard</a></li>				
						</g:if>
						<g:else>
							<li><a href="${createLink(controller: 'login')}">Login</a></li>
						</g:else>
						
						<g:if test="${session.userID}">
							<li><a href="${createLink(controller: 'Login', action: 'logout')}" class="button alt">Sign Out</a></li>
						</g:if>
						<g:else>
							<li><a href="${createLink(controller: 'login', action: 'newAccount')}" class="button alt">Sign Up</a></li>
						</g:else>						
					</ul>
				</nav>
			</header>


		<!-- Main -->
			<section id="main" class="wrapper style1">
				<div class="container box big bordered">
					<header class="major special">
						<h2>Affiliate Program</h2>
						<p>Convince Your Workplace/s To Use TxtWolf SMS. Get Paid.</p>
					</header>
					<div class="row 200%">
						<div class="4u 12u$(medium)">

							<!-- Sidebar -->
								<section id="sidebar">
									<section>			
										<h3>Growing With TxtWolf</h3>
										<p>Using a web-based program, you can send mass texts to subscribing customers, set up campaigns and collect customer data.</p>
										<footer>
											<ul class="actions">
												<li><a href="${createLink(controller: 'blog', params: [blogID: '2'])}" class="button small alt">Learn More</a></li>
											</ul>
										</footer>
									</section>
									<hr />
									<section>
										<a href="#" class="image fit"><img src="${resource(dir: 'images', file: 'blog/keywords/blog4Thumbnail.jpg')}"  alt="" /></a>
										<h3>Using Keywords</h3>
										<p>The possibilities when it comes to keyword text messaging are limitless. Learn how to use this to your advantage.</p>
										<footer>
											<ul class="actions">
												<li><a href="${createLink(controller: 'blog', params: [blogID: '2'])}" class="button small alt">Learn More</a></li>
											</ul>
										</footer>
									</section>
								</section>

						</div>
						<div class="8u$ 12u$(medium) important(medium)">

							<!-- Content -->
								<section id="content">
									<div class="image main"><img src="${resource(dir: 'images', file: 'moneyImgBanner.jpg')}" alt="" /></div>
									<h3>The Affiliate Benefit</h3>
									<p>
										Do you think your employer or other businesses you interact with would benefit from using TxtWolf? If so, you should consider becoming a TxtWolf affiliate! By convincing your 
										employer or employers you know to use TxtWolf's useful SMS services you will be paid <b>$40</b> for each business that joins our "Pro" plan.
									</p>	
									
									<h3>Signing Up</h3>
									<p>
									Signing up is free, easy and comes without any obligations. Simply create a normal TxtWolf account, then click on <b>My Settings</b> in the left menu bar. 
									Now, click the <b>Enable</b> button under <i>Affiliate Account</i>. Once enabled, you can go to your Affiliate Dashboard anytime by going to <b>My Settings</b>. 
									</p>
									
									<p> 
									<i>*Go to the <a href = "${createLink(controller: 'login', action: 'newAccount')}" >sign up</a> page to create a free account. </i>
									</p>	
									
									<h3>How do I make money?</h3>
									<p>
										Once you enable your free affiliate account you will see your <b>Affiliate ID</b> on your dashboard. For every business you convince to use TxtWolfs awesome
										features you will need to give them your Affiliate ID <i>(write this down for them)</i> to enter when they signup at TxtWolf.com. Having them do this will save them <b>$5</b> a month, as well as
										add them to your affiliate members under your dashboard. You can now begin to withdraw earnings once you have joined members!
									</p>						
																		
									<h3>What does TxtWolf SMS offer?</h3>
									<ul>														
										<li><b>Bulk Messages</b> Send bulk text messages to all of your contacts at once, without the hassle. Send messages from any browser and ­your recipients will receive your message as quickly as a standard text message. </li>
										<li><b>Custom Auto-Responses</b> Create custom replies that are sent automatically when someone texts in your keyword. Add links to coupons, your website, business info, or anything else you can think of to make the experience more valuable to your customer. </li>													
										<li><b>Send Coupons:</b> Send customers exclusive deals. Uniquely-generated coupon codes prevents non-subscribers from taking advantage of your deal.</li>
										<li><b>Create Groups:</b> Divide customers into groups depending on which keyword they responded to, how they voted in a poll, based on their area code and more. Segmenting your customers lets you send more targeted promotions and coupons.</li>
										<li><b>Sweepstakes Contest:</b> Let customers sign themselves up for a sweepstakes by texting a particular keyword. From the dashboard you can view the list of entered phone numbers and choose one at random.</li>
										<li><b>Sub Keywords:</b> customers can also respond to your messages with sub keywords. For example, sending the phrase “Hours” can trigger a text with business hours and “Stop” can remove them from the list. This gives customers a way to interact with your business and enables them to opt out of your campaign if they wish to stop receiving messages.</li>
									</ul>
									
									<p>
										For more information on what TxtWolf is, read our <a href = "http://TxtWolf.com/blog/index?blogID=2">blogs</a>, or go home to <a href = "http://TxtWolf.com">TxtWolf.com</a>, to learn more or create a free account.
									</p>	
									
								</section>

						</div>
					</div>
				</div>
			</section>

		<!-- Footer -->
			<div id="footer">
				<div class="container">
					<div class="row 200% uniform">
						<section class="4u 12u$(medium) 12u$(xsmall) footer-info">
							<h2>Affiliate Program</h2>
							<p>
								Do you think your employer or other businesses you interact with would benefit from using TxtWolf? If so, you should consider becoming a TxtWolf affiliate! 
								Earn money for each business that joins our "Pro" plan.
							</p>
							<ul class="actions">
								<li><a href="${createLink(controller: 'affiliateProgram')}" class="button alt">Learn more</a></li>
							</ul>
						</section>
						<section class="4u 6u(medium) 12u$(xsmall)">
							<h3>Recent Blogs</h3>
							<ul class="updates">
								<li>
									<p><a href="${createLink(controller: 'blog', params: [blogID: '1'])}" >The possibilities when it comes to keyword text messaging are limitless. Learn how to use this to your advantage.</a></p>
									<span class="timestamp">- TxtWolf Blogs</span>
								</li>
								<li>
									<p><a href="${createLink(controller: 'blog', params: [blogID: '2'])}" >Using a web-based program, you can send mass texts to subscribing customers, set up campaigns and collect customer data.</a></p>
									<span class="timestamp">- TxtWolf Blogs</span>
								</li>
							</ul>
						</section>
						<section class="4u$ 6u$(medium) 12u$(xsmall)">
							<h3>Contact Us</h3>
							<ul class="labeled-icons">
								<li>
									<h4 class="icon fa-home"><span class="label">Address</span></h4>
									Cleveland, OH<br />
								</li>
								<li>
									<h4 class="icon fa-phone"><span class="label">Phone</span></h4>
									(330) 540-8023
								</li>
								<li>
									<h4 class="icon fa-envelope"><span class="label">Email</span></h4>
									<a href="mailto:Support@TxtWolf.com">Support@TxtWolf.com </a>
								</li>
								<li>
									<h4 class="icon fa-facebook"><span class="label">Facebook</span></h4>
									<a href="https://www.facebook.com/TxtWolf">www.facebook.com/TxtWolf</a>
								</li>
							</ul>
						</section>
					</div>
				</div>
				<div class="copyright">
					&copy; 2017, TxtWolf LLC.
				</div>
			</div>

		<!-- Scripts -->
		<g:javascript src="jquery.min.js" />  
		<g:javascript src="jquery.dropotron.min.js" /> 	
		<g:javascript src="jquery.scrollgress.min.js" />  
		<g:javascript src="skel.min.js" />  
		<g:javascript src="util.js" /> 
		<g:javascript src="main.js" /> 
		<g:javascript src="jquery.scrolly.min.js" /> 
		<!--[if lte IE 8]><g:javascript src="ie/respond.min.js" /><![endif]-->

	</body>
</html>