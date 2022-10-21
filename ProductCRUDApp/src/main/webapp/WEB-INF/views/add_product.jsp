<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="base.jsp"%>
</head>
<body
	style="background: linear-gradient(to bottom, #ff99cc 11%, #ffffff 75%);">
	<div class="container">
		<div class="row mt-2">

			<div class="col-md-6 offset-3">

				<h1 class="text-center p-2">Fill The Product Details</h1>
				<div class="form-group">
					<form action="show" method="post">

						<label class="mt-2" for="name">Product Name</label> <input
							type="text" id="name" name="name" class="form-control"
							placeholder="enter product name here...">
							
							
							 <label
							class="mt-2" for="desc">Product Description</label>
							
							
						<textarea rows="6" class="form-control" id="desc"
							name="description"
							placeholder="enter product description here...">
							
							
							</textarea>


						<label class="mt-2" for="price">Product Price</label> <input
							type="text" id="price" name="price" class="form-control"
							placeholder="enter product name here...">
						<div class="text-center mt-2">
							<a href="${pageContext.request.servletContext.contextPath}/"
								class="btn btn-outline-danger">Back</a>
							<button type="submit" class="btn btn-outline-success">Submit</button>

						</div>

					</form>
				</div>
			</div>



		</div>

	</div>

</body>
</html>