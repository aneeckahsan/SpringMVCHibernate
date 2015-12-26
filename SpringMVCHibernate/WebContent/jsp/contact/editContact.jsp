<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="../fragments/header.jsp" />

<body>
	<div class="container">

		<form:form class="form-horizontal" action="updateContact.do"
			method="post" commandName="editContact">

			<div class="form-group">
				<label class="col-sm-2 control-label">Id</label>
				<div class="col-sm-10">
					<form:input path="id" type="text" class="form-control " id="id"
						placeholder="Id" readonly="true" />
					<form:errors path="name" class="control-label" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Name</label>
				<div class="col-sm-10">
					<form:input path="name" type="text" class="form-control " id="name"
						placeholder="Name" />
					<form:errors path="name" class="control-label" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Email</label>
				<div class="col-sm-10">
					<form:input path="email" class="form-control" id="email"
						placeholder="Email" />
					<form:errors path="email" class="control-label" />
				</div>
			</div>

			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">dob</label>
				<div class="col-sm-10">
					<form:input path="dob" class="form-control" id="dob"
						placeholder="dob" />
					<form:errors path="dob" class="control-label" />
				</div>
			</div>

			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Mobile</label>
				<div class="col-sm-10">
					<form:input path="mobile" class="form-control" id="mobile"
						placeholder="mobile" />
					<form:errors path="mobile" class="control-label" />
				</div>
			</div>
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Address</label>
				<div class="col-sm-10">
					<form:input path="address" class="form-control" id="address"
						placeholder="address" />
					<form:errors path="address" class="control-label" />
				</div>
			</div>
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Sex</label>
				<div class="col-sm-10">
					<form:select path="gender" class="form-control">
						<form:option value="M" label="Male" />
						<form:option value="F" label="Female" />
					</form:select>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<input class="btn btn-primary" type="button" value="Delete"
						onclick="javascript:deleteContact('deleteContact.do?id=${editContact.id}');">
					<input class="btn btn-primary" type="submit" name="" value="Save">
					<input class="btn btn-primary" type="button" value="Back"
						onclick="javascript:go('viewAllContacts.do');">
				</div>
			</div>

		</form:form>
	</div>
</body>
<jsp:include page="../fragments/footer.jsp" />
</html>