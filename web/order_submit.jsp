<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		<!DOCTYPE html>
		<html>

		<head>
			<title>Checkout</title>
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
			<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
			<link type="text/css" rel="stylesheet" href="css/style.css">
			<script type="text/javascript" src="js/jquery.min.js"></script>
			<script type="text/javascript" src="js/bootstrap.min.js"></script>
			<script type="text/javascript" src="layer/layer.js"></script>
			<script type="text/javascript" src="js/cart.js"></script>
		</head>

		<body>







			<!--header-->
			<jsp:include page="header.jsp"></jsp:include>
			<!--//header-->

			<div class="cart-items">
				<div class="container">
					<h2>Confirm Shipping Information</h2>
					<form class="form-horizontal" action="/order_confirm" method="post" id="payform">
						<div class="row">
							<label class="control-label col-md-1">Receiver</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="name" value="${user.name }"
									style="height:auto;padding:10px;" placeholder="Enter receiver name"
									required="required"><br>
							</div>
						</div>
						<div class="row">
							<label class="control-label col-md-1">Phone</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="phone" value="${user.phone }"
									style="height:auto;padding:10px;" placeholder="Enter phone number"
									required="required"><br>
							</div>
						</div>
						<div class="row">
							<label class="control-label col-md-1">Address</label>
							<div class="col-md-6">
								<input type="text" class="form-control" name="address" value="${user.address }"
									style="height:auto;padding:10px;" placeholder="Enter address"
									required="required"><br>
							</div>
						</div>

						<br>
						<hr><br>

						<h2>Select Payment Method</h2>
						<h3>Payment Amount: ${order.total }</h3><br><br>


						<div class="col-sm-6 col-md-4 col-lg-3 ">
							<label>
								<div class="thumbnail">
									<input type="radio" name="paytype" value="1" checked="checked" />
									<img src="images/wechat.jpg" alt="Wechat Pay">
								</div>
							</label>
						</div>
						<div class="col-sm-6 col-md-4 col-lg-3 ">
							<label>
								<div class="thumbnail">
									<input type="radio" name="paytype" value="2" />
									<img src="images/alipay.jpg" alt="Alipay">
								</div>
							</label>
						</div>
						<div class="col-sm-6 col-md-4 col-lg-3 ">
							<label>
								<div class="thumbnail">
									<input type="radio" name="paytype" value="3" />
									<img src="images/offline.jpg" alt="Cash on delivery">
								</div>
							</label>
						</div>
						<div class="clearfix"> </div>
						<div class="register-but text-center">
							<input type="submit" value="Confirm Order">
							<div class="clearfix"> </div>
						</div>
					</form>
				</div>
			</div>





			<!--footer-->
			<jsp:include page="footer.jsp"></jsp:include>
			<!--//footer-->


			<script type="text/javascript">
				function dopay(paytype) {
					$("#paytype").val(paytype);
					$("#payform").submit();
				}
			</script>

		</body>

		</html>