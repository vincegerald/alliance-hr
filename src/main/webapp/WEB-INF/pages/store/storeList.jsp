<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Insert title here</title>

<script type="text/javascript">
	function editStore(storeCd) {
		$.ajax({
			type : "GET",
			url : "",
			success : function() {
				console.log("YAY!!")
			}
		});
	}
</script>

</head>

<body>
	<table>
		<tr>
			<th>Store CD</th>
			<th>Store Name</th>
			<th>Store Address</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${storeList}" var="store">
			<tr>
				<td><c:out value="${store.storeCd}" /></td>
				<td><c:out value="${store.storeName}" /></td>
				<td><c:out value="${store.storeAddress}" /></td>
				<td>
					<button onClick="editStore('${store.storeCd}');">Details</button>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>

</html>