<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
</head>
<body>
	<div class="container mt-3">
        <div class="col-md-6 offset-md-3">
            <h1 class="text-center mb-3">Update Product Details</h1>
            <form action="${pageContext.request.contextPath}/update-product" method="post">
                <div class="form-group">
                	<label for="productid">Product Id</label>
                	<input type="hidden" class="form-control" name="id" id="id" value="${product.id}"/>
                    <label for="name">Product Name</label>
                    <input type="text" 
                        class="form-control" 
                        name="name" 
                        id="name" 
                        placeholder="Enter the product name here" 
                        value="${product.name}"/>
                </div>
                <div class="form-group">
                    <label for="name">Product Name</label>
                    <textarea class="form-control" 
                        name="description" 
                        id="description" 
                        rows="5" 
                        placeholder="Enter the product description">${product.description}
                    </textarea>
                </div>
                <div class="form-group">
                    <label for="price">Product Price</label>
                    <input type="text" 
                        class="form-control" 
                        name="price" 
                        id="price"
                        value="${product.price}"
                    />
                </div>
                <div class="container text-center">
                    <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
                    <button type="submit" class="btn btn-warning">Update</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>