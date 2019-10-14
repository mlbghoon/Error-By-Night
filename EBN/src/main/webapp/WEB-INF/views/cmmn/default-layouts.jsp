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
			<tiles:insertAttribute name="nav"/>
		</div>
		<div id="left-bar" class="inline-block">
			<tiles:insertAttribute name="left"/>
		</div>
		<div id="content" class="inline-block content">
			<tiles:insertAttribute name="content"/>			
			<tiles:insertAttribute name="footer"/>
		</div>
			
	</body>
</html>
		