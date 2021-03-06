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
		
		<script type="text/javascript">
		window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
		d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
		_.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute("charset","utf-8");
		$.src="https://v2.zopim.com/?4UBUexrzEbn1D1IOK7cXCttTMqRa1rB7";z.t=+new Date;$.
		type="text/javascript";e.parentNode.insertBefore($,e)})(document,"script");
		</script>
		<!--End of Zendesk Chat Script-->
		
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
						<h2>Success Story</h2>
						<p>Real-world example of how TxtWolf can dramatically increase your customer loyalty and engagement</p>
					</header>
					<div class="row 200%">
						<div class="4u 12u$(medium)">

							<!-- Sidebar -->
								<section id="sidebar">
									<section>
									
										<h3>Engagement 101</h3>
										<p> 
											When a customer sees your advertisement they can send a text message to a keyword, obtaining promotional material from you and...
										</p>
										<footer>
											<ul class="actions">
												<li><a href="${createLink(controller: 'blog', params: [blogID: '3'])}" class="button small alt">Learn More</a></li>
											</ul>
										</footer>
									</section>
									<hr />
									<section>
										<a href="#" class="image fit"><img src="${resource(dir: 'images', file: 'blog/keywords/blog3Thumbnail.jpg')}"  alt="" /></a>
										<h3>Growing with TxtWolf</h3>
										<p>Using a web-based program, you can send mass texts to subscribing customers, set up campaigns and collect customer data.</p>
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
									<div class="image main"><img src="${resource(dir: 'images', file: 'blog/keywords/success1.jpg')}" alt="" /></div>
									<h3>Introducing Myself</h3>
									
									<p>My name is John Elswood and I am the CEO and Founder of a NYC based company, Zooly, LLC. We chose TxtWolf to be our online SMS marketing solution for various reasons. TxtWolf offers an unbeatable web application. Their web based app is incredibly straightforward and self explanitory, and I would be the last one to call myself tech savvy. The application is so easy to use, it becomes strangingly addictive, however, the quick dramatic increase in customer engagement was even more addictive. Another reason why we chose TxtWolf was because of their pricing. We looked all over for an effective and affordable SMS solution, and TxtWolf was 4-5 and even 6 times cheaper than all of the competition! Lastly, the quick and responsive customer service made the purchase of TxtWolf that much easier. 
									</p>
									
															
									<h3>What changed after using TxtWolf?</h3>								
									<p>
										After purchasing a TxtWolf subscription as our SMS marketing solution, we saw a total incrase in customer engagement. Our customers <b>actually</b> cared about what we had to say! Compared to our old email marketing campaign, where 80% of the emails were left unopened, it is night and day. I easily sent out mass texts for my marketing campaigns, and within 10 minutes we could already see a direct positive response from our customers. Joining TxtWolf gave our business the boost in marketing that we really needed, but originally thought we couldn't afford. I have never looked back since.     				
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