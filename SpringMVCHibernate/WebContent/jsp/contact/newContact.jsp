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

		<form:form class="form-horizontal" action="saveContact.do"
			method="post" commandName="newContact">

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
				<label class="col-sm-2 control-label">Address</label>
				<div class="col-sm-10">
					<form:input path="address" class="form-control" id="address"
						placeholder="address" />
					<form:errors path="address" class="control-label" />
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">Add</button>
					<button type="reset" class="btn btn-primary">Reset</button>
					<button class="btn btn-primary" type="button"
						onclick="javascript:go('viewAllContacts.do');">Back</button>

				</div>
			</div>

		</form:form>
	</div>
</body>
<jsp:include page="../fragments/footer.jsp" />
</html>