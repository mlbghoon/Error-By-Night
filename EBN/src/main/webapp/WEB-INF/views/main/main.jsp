<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<a id="show-sidebar" class="no-display" style="position:fixed;top:80px;left:5px;z-index:100;">
	<i class="fas fa-plus text-sh"></i>
</a>
<div class="card">
	<div>
		<form class="flex-box">
			<div class="ma-2">
				<select name="what" required>
					<option value="null">Keyword</option>
					<option>Java</option>
					<option>JavaScript</option>
					<option>C++</option>
				</select>
			</div>	
			<div class="ma-2">
				<select name="about" required>
					<option value="null">about</option>
					<option>스터디 그룹</option>
					<option>정보</option>
				</select>
			</div>	
			<div class="mv-auto">
				<input class="btn" type="submit" value="검색">
			</div>
		</form>
		
	</div>
</div>
 <div class="card">
	<P>  The time on the server is ${serverTime}. </P>
</div>