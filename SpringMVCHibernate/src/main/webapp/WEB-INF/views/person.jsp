<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Person Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<h1>
	Add a Person
</h1>

<c:url var="addAction" value="/person/add" ></c:url>

<form:form action="${addAction}" commandName="person">
<table>
	<c:if test="${!empty person.name}">
	<tr>
		<td>
			<form:label path="id">
				<spring:message text="ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="id" readonly="true" size="8"  disabled="true" />
			<form:hidden path="id" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="name">
				<spring:message text="Name"/>
			</form:label>
		</td>
		<td>
			<form:input path="name" />
		</td> 
		
	</tr>
	<tr>
		<td>
			<form:label path="city">
				<spring:message text="City"/>
			</form:label>
		</td>
		<td>
			<form:input path="city" />
		</td> 
		
	</tr>
	<tr>
		<td>
			<form:label path="skills">
				<spring:message text="Skills"/>
			</form:label>
		</td>
		<td>
			<form:input path="skills" />
		</td> 
		
	</tr>
	
	<tr>
		<td>
			<form:label path="certifications">
				<spring:message text="Certification"/>
			</form:label>
		</td>
		<td>
			<form:input path="certifications" />
		</td> 
		
	</tr>
	
	
	<tr>
		<td>
			<form:label path="emailId">
				<spring:message text="EmailId"/>
			</form:label>
		</td>
		<td>
			<form:input path="emailId" />
		</td> 
		
	</tr>
	
	<tr>
		<td>
			<form:label path="marksInGrad">
				<spring:message text="MarksInGraduation"/>
			</form:label>
		</td>
		<td>
			<form:input path="marksInGrad" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="markInInter">
				<spring:message text="MarksIn12th"/>
			</form:label>
		</td>
		<td>
			<form:input path="markInInter" />
		</td>
	</tr>
	
	<tr>
		<td>
			<form:label path="marksInHighSchool">
				<spring:message text="MarksInHighSchool"/>
			</form:label>
		</td>
		<td>
			<form:input path="marksInHighSchool" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty person.name}">
				<input type="submit"
					value="<spring:message text="Edit Person"/>" />
			</c:if>
			<c:if test="${empty person.name}">
				<input type="submit"
					value="<spring:message text="Add Person"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>
<h3>Persons List</h3>
<c:if test="${!empty listPersons}">
	<table class="tg">
	<tr>
		<th width="80">ID</th>
		<th width="120">Name</th>
		<th width="120">City</th>
		<th width="120">Skills</th>
		<th width="120">Certifications</th>
		<th width="120">Email</th>
		<th width="120">Marks In Graduations</th>
		<th width="120">Marks In 12th</th>
		<th width="120">Marks In 10th</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listPersons}" var="person">
		<tr>
			<td>${person.id}</td>
			<td>${person.name}</td>
			<td>${person.city}</td>
			<td>${person.skills}</td>
			<td>${person.certifications}</td>
			<td>${person.emailId}</td>
			<td>${person.marksInGrad}</td>
			<td>${person.markInInter}</td>
			<td>${person.marksInHighSchool}</td>
			<td><a href="<c:url value='/edit/${person.id}' />" >Edit</a></td>
			<td><a href="<c:url value='/remove/${person.id}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>
