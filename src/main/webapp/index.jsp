<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index</title>
<style type="text/css">
	
	body{
		padding: 0;
		margin: 0;
		background-color: white;
	}
	
	.main_section{
		max-height: 100vh;
		max-width: 100vw;
		position: relative;
		top: 15.2%;
	}
	
	.main_section .section1{
		max-height: 100%;
		max-width: 100%;
		display: flex;
		flex-direction: row;
		justify-content: center;
	}
	
	.section1 .banner{
		background-color: #1daad8;
		width: 60%;
	}
	
	
	.banner {
    	position: relative;
    	overflow: hidden;
	}

	.slider {
   	 	display: flex;
    	width: 500%;
    	animation: slideAnimation 15s infinite;
	}

	.slider>.slide>video,img{
		height: 100%;
		width: 60%;
		position: relative;
		left: 20%;
	}

	.slide {
    	flex: 0 0 20%;
	}

	@keyframes slideAnimation {
    	0% { transform: translateX(0); }
    	20% { transform: translateX(0); }
    	25% { transform: translateX(-20%); }
    	45% { transform: translateX(-20%); }
    	50% { transform: translateX(-40%); }
    	70% { transform: translateX(-40%); }
    	75% { transform: translateX(-60%); }
    	95% { transform: translateX(-60%); }
    	100% { transform: translateX(-80%); }
	}
	
	.section1 .filters{
		background-color: #1daad8;
		width: 20%;
	}
	
	.section1 .advertisements{
		background-color: #1daad8;
		width: 20%;
	}
	
	.main_section .section2{
		max-height: 100%;
		max-width: 100%;
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		margin-top: 100px;
		color: #383b3f;
	}
	
	.section2 .heading{
		font-size: 30px;
		
	}
	
	.section2 .slider_comment{
		width: 100%;
		height: 100%;
		margin-top: 40px;
		display: flex;
		flex-direction: row;
		justify-content: space-between;
    	overflow: hidden;
	}
	
	.slider_comment .comment{		
		display: flex;
		flex-direction: column;
		justify-content: space-between;
		padding: 20px;
		margin: 10px;
		
		flex: 0 0 20%;
    	animation: commentAnimation 10s infinite;
	}
	
	.comment .comment_user{
		font-size: 20px;
		font-style: oblique;
	}
	
	.comment .card{
		margin-top: 10px;
		padding: 10px;
		background-color: #f2fff8;
		font-style: italic;
	}

	@keyframes commentAnimation {
    	0% { transform: translateX(0); }
    	20% { transform: translateX(0); }
    	25% { transform: translateX(-30%); }
    	45% { transform: translateX(-30%); }
    	50% { transform: translateX(-50%); }
    	70% { transform: translateX(-50%); }
    	75% { transform: translateX(-70%); }
    	95% { transform: translateX(-70%); }
    	100% { transform: translateX(-90%); }
	}
	
	.section3{
		height: 100%;
		width: 100%;
		margin-top: 50px;
		padding-top: 20px;
		padding-bottom: 20px;
		overflow: hidden;
		background-color: #1daad8;
	}
	
	.section3 .faq{
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		
	}
	
	.accordian{
		width: 80%;
		margin-bottom: 20px;
		border: 2px solid #e1e1e1;
		border-radius: 5px;
		background-color: #f2fff8; 
	}
	
	.faq .faq_heading{
		color: #383b3f;
		font-size: 25px;
		padding: 15px;
	}
	
	.accordian>summary{
		padding: 20px;
		width: 80%;
		cursor: pointer;
		color: #52616b;
	}
	
	.accordian:hover{
		background-color: #383b3f;
	}
	
	.accordian>summary:hover{
		color: white;
	}
	
	.accordian>p{
		position: relative;
		left: 10px;
		width: 90%;
		color: #757c8d;
	}
	
</style>
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<section class="main_section">
		<div class="section1">		
			<div class="filters">Filter</div>
			
			<div class="banner">    
    			<div class="slider">
        			<div class="slide" id="slide1"><video autoplay="autoplay" loop="loop" muted="muted" src="images/animated-logo/Minimalist Logo for Hospital and Medical Health.mp4"></video></div>
        			<div class="slide" id="slide2"><img alt="banner1" src="images/banner1.png"></div>
        			<div class="slide" id="slide3"><img alt="banner2" src="images/banner2.png"></div>
        			<div class="slide" id="slide4"><img alt="banner3" src="images/banner3.png"></div>
        			<div class="slide" id="slide5"><img alt="banner4" src="images/banner4.png"></div>
    			</div>
			</div>

			<div class="advertisements">Advertise</div>
		</div>
		
		<div class="section2">
			<div class="heading">What our customers have to say</div>
			<div class="slider_comment">
				<div class="comment">
					<div class="comment_user">Rishi Tiwari</div>
					<div class="card">
						Ordering from MediShop has been a smooth and hassle-free experience. The app has a wide variety of medicines, and their doctor even calls to check if I need any help. Ordering medicines has now become easier. All thanks to MediShop.
					</div>
				</div>
				
				<div class="comment">
					<div class="comment_user">Sonal Khatri</div>
					<div class="card">
						I recently started ordering medicines from MediShop, and I am extremely happy with their service. The fact that you can order via WhatsApp or call is so easy - all I had to do was share my order details and their team took care of everything else. It was so easy. Great job, MediShop!
					</div>
				</div>
				
				<div class="comment">
					<div class="comment_user">Vimla Malhotra</div>
					<div class="card">
						As a long-time user of the MediShop app, I can say that I am very happy with their services overall. The ease of ordering and the availability of medicines has made me a repeat customer. And as a Plus member, I get extra discounts on my orders, as well as free delivery. Thanks MediShop.
					</div>
				</div>
				
				<div class="comment">
					<div class="comment_user">Shakti Menon</div>
					<div class="card">
						As a long-time user of the MediShop app, I can say that I am very happy with their services overall. The ease of ordering and the availability of medicines has made me a repeat customer. And as a Plus member, I get extra discounts on my orders, as well as free delivery. Thanks MediShop.
					</div>
				</div>
				
				<div class="comment">
					<div class="comment_user">Vallabh Thakur</div>
					<div class="card">
						MediShop has been a great help to me as my daughter lives away, and I cannot always go out to buy medicines. I find the app very easy to use, and their quick home delivery is great. I am happy with their offers too. Surely recommend it!
					</div>
				</div>

			</div>
		</div>
		
		<div class="section3">
		<div class="faq">
			<div class="faq_heading">FAQs</div>			
			<details class="accordian">
				<summary>Is buying medicines online safe?</summary>
				<p>-->Absolutely! All our medicines undergo a three-step quality check process to ensure they are of high quality.<br>
				-->We source our products only from licensed retail pharmacies.<br>
				-->PharmEasy is used by 5M+ users across 1.2k+ cities in India incl. Bangalore, Delhi, Mumbai, Kolkata, Hyderabad,<br>   Gurgaon, Noida, Pune, etc. for purchasing medicines online.</p>
			</details>
			
			<details class="accordian">
				<summary>Why choose us for your medicine home delivery?</summary>
				<p>-->Used by 5M+ customers<br>-->Delivery in 24-48* hours.<br>-->Over 1L+ meds and healthcare products for you to select from 3-step quality-checked products.<br>
				-->MediShop Plus subscription with exclusive benefits.<br>-->We deliver in 22k+ pin codes across 1.2k+ cities.<br>-->Scheduled reminders.<br>
				-->Attractive deals and e-wallet cashbacks.<br>-->A highly capable team of experienced pharmacists and healthcare professionals.<br>
				-->Cash-on-delivery available.</p>
			</details>
			
			<details class="accordian">
				<summary>How do I order medicines from MediShop?</summary>
				<p>1. Visit our website on your phone or browser.<br>2. Search from our list of medicines.<br>
				3. Enter the address where you want your package to be delivered.<br>4. Our partner retailer will call you to confirm the order.<br>
				5. The medicine is packed by the pharmacist.<br>6. Our delivery person will deliver the package at your doorstep.</p>
			</details>
			
			<details class="accordian">
				<summary>When will MediShop deliver my medicines?</summary>
				<p>-->Once you purchase your medicines online with us, you will get it within 24-48* hours.<br>   *T&C: The delivery time might vary depending on the delivery location.</p>
			</details>
		</div>
		</div>
		
	<jsp:include page="footer.jsp"></jsp:include>			
	</section>
</body>
</html>