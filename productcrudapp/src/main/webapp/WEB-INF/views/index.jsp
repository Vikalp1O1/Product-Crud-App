<html>
<head>
<%@ include file="./base.jsp" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <style>
        body {
            background-image: url('${pageContext.request.contextPath}/resources/image/Background.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        h1 {
            color: white;
        }

        table {
            width: 100%;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background */
            border-radius: 8px;
            margin-top: 20px;
        }

        th, td {
            padding: 15px;
            border: 1px solid #ddd;
            color: #333; /* Dark text for readability */
            text-align: center;
        }

        .container {
            margin-top: 30px;
        }

        .btn-outline-primary {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="container mt-3">
   <div class="row">
   
       <div class="col-md-12">
        <h1 class="text-center mb-3 text-white">Welcome to Product App</h1>
           <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Product Name</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
       <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${product }" var="p">
    <tr>
      <th scope="row">TECH${p.id }</th>
      <td>${p.name }</td>
      <td>${p.description }</td>
      <td class="font-weight-bold">&#8377 ${p.price }</td>
       <td>
     <a href="delete/${p.id }"><i class="fa-solid fa-trash fa-fade" style="color: #fb0404;"></i></a>
    
     <a href="update/${p.id }"><i class="fa-solid fa-pen-to-square fa-fade" style="color: #74C0FC;"></i></a>
    
    </td>
    </tr>
   
    
    </c:forEach>
  </tbody>
</table>
<div class="container text-center">
  <a href="addProduct" class="btn btn-success">Add Product</a>
</div>

       </div>
   
   </div>
</div>
</body>
</html>
