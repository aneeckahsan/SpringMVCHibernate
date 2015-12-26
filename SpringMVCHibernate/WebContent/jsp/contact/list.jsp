<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="../fragments/header.jsp" />

<body>

	<div class="container">

		<form action="searchContacts.do" method="post">
			<table class="table table-striped">
				<tr>
					<td>Enter Contact Name</td>
					<td>
						<input type="text" class="form-control " id="name" name="name"
							placeholder="Name" /><td>
						<input class="btn btn-info" type="submit" value="Search" /><td> 
						<input type="button" class="btn btn-info" value="New Contact"
						onclick="javascript:go('saveContact.do');" />
						</td>
				</tr>
			</table>
		</form>
		<br>
		<table class="table table-striped">
			<thead>
				<tr bgcolor="lightblue">
					<th>Id</th>
					<th>Name</th>
					<th>Address</th>
					<th>Mobile</th>
					<th></th>
				</tr>
			</thead>
			<c:if test="${empty SEARCH_CONTACTS_RESULTS_KEY}">
				<tr>
					<td colspan="4">No Results found</td>
				</tr>
			</c:if>
			<c:if test="${! empty SEARCH_CONTACTS_RESULTS_KEY}">
				<c:forEach var="contact" items="${SEARCH_CONTACTS_RESULTS_KEY}">
					<tr>
						<td><c:out value="${contact.id}"></c:out></td>
						<td><c:out value="${contact.name}"></c:out></td>
						<td><c:out value="${contact.address}"></c:out></td>
						<td><c:out value="${contact.mobile}"></c:out></td>
						<td>&nbsp;<a class="btn btn-primary"
							href="updateContact.do?id=${contact.id}">Edit</a> &nbsp;&nbsp;<a
							class="btn btn-danger"
							href="javascript:deleteContact('deleteContact.do?id=${contact.id}');">Delete
								</button></td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>



</body>
<jsp:include page="../fragments/footer.jsp" />
</html>