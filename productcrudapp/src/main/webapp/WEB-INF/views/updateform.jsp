<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="./base.jsp" %>
  <style>
    body {
        background-image: url('${pageContext.request.contextPath}/resources/image/Background.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }

    .container {
        background-color: rgba(255, 255, 255, 0.85); /* Semi-transparent white background */
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow for better contrast */
    }

    h1 {
        color: #333; /* Dark text color for the heading */
    }

    label {
        color: #333; /* Dark text color for labels */
    }

    .form-control {
        margin-bottom: 15px;
    }

    .btn-primary, .btn-danger {
        margin-top: 20px;
    }
</style>
  
</head>
<body>  
<div class="container mt-3" >
   <div class="row">
     <div class="col-md-12">
  
   
   <form action="${pageContext.request.contextPath }/handleproduct" method="post">
     <h1 class="text-center mb-3">Change the Product Details</h1>
     <div class="form-group ">
      <input type="hidden" value="${product.id }"  name="id"  ></div>
     <div class ="form-group">
      <lable for="name">Product Name</lable>
      <input type="text" class="form-control" id="name"
      aria-describedby="emailHelp" name="name" placeholder="Enter Product Name"
      value="${product.name }">
     </div>
   
     <div class ="form-group">
      <lable for="description">Product Description</lable>
      <textarea class="form-control" id="description"
      aria-describedby="emailHelp" name="description"
      rows="5" placeholder="Enter the Product Description">${product.description }</textarea>
     </div>
   
     <div class ="form-group">
      <lable for="price">Product Price</lable>
      <input type="text" class="form-control" id="price"
      aria-describedby="emailHelp" name="price"  placeholder="Enter Product Price" value="${product.price }">
     </div>
   

      <div class="container text-center">
      <a href="${pageContext.request.contextPath }/"
      class="btn btn-outline-danger">Back</a> 
      <button type="submit" class="btn btn-outline-success">Update</button>
   
     </div>
   
   </form>
  </div>

</div>
</div>


</body>
</html>