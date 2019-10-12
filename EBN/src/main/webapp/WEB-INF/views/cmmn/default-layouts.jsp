<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"  prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<tiles:insertAttribute name="header"/>
	</head>
	<body>
	<tiles:insertAttribute name="nav"/>
	<div>
		<!-- Sidebar -->
		<tiles:insertAttribute name="left"/>
		<div>
			<tiles:insertAttribute name="content"/>
			<!-- /.container-fluid -->
			<!-- Sticky Footer -->
			<tiles:insertAttribute name="footer"/>
		</div>
		<!-- /.content-wrapper -->
	</div>
		<tiles:insertAttribute name="scripts"/>
	</body>
</html>
		