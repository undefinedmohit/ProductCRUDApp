<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container">

		<div class="text-center mt-2">
			<h1>All Product Details</h1>
		</div>
		<div class="row mt-3">

			<div class="col-md-12">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Product Description</th>
							<th scope="col">Product Price</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="p" items="${products}">
							<tr>
								<th scope="row">${p.id}</th>
								<td>${p.name }</td>
								<td>${p.description}</td>
								<td>${p.price}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div class="text-center">
					<a href="${pageContext.request.servletContext.contextPath}/add-product/"
						class="btn btn-outline-success">Add Product</a>
				</div>

			</div>

		</div>


	</div>
</body>
</html>
