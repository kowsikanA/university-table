<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ page import="org.json.* ,java.util.List, ca.seneca.UniServlet" %>
	<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>Universities in Canada</title>
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
		
	<style>
		.delete{
			color: red;
		}
		
		th{
			border-style: solid;
			border-color: black;
		}
		.table .thead-dark th{
			background-color: #dadfe2;
			}
	</style>
	</head>
	<body>
		<div class="container mt-5">
			<h1 class="text-center mb-4">Universities in Canada</h1>
			<% JSONArray universities =(JSONArray) request.getAttribute("universities"); %>
			<table class="table table-striped">
				<thead class="thead-dark">
					<tr>
						<th scope="col">University/College Name</th>
						<th scope="col">State/Province</th>
						<th scope="col">Website</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
					<%
					 for (int i = 0; i < universities.length(); i++) {
						 JSONArray web_pages = universities.getJSONObject(i).getJSONArray("web_pages");
					%>  
					 
					<tr>
						<td><%= universities.getJSONObject(i).getString("name")%></td>
						<td><%= universities.getJSONObject(i).optString("state-province", "N/A") %>
						<td><%= web_pages.get(0) %></td>
						<td class="delete">Delete</td>
					</tr>
					<%} %>
					
				</tbody>
			</table>
		</div>
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	</body>
	</html>
	