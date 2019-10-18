<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"  prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<tiles:insertAttribute name="header"/>
		<tiles:insertAttribute name="scripts"/>
	</head>
	<body>
		<div>
			<tiles:insertAttribute name="content"/>		
		</div>
	</body>
</html>
		