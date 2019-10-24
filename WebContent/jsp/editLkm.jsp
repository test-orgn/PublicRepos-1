<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<script src="js/jquery-1.11.0.js" type="text/javascript"></script>

<script type="text/javascript">
	$(function(){
		$("#custId option[value=${editLkm.customer.custId}]").prop("selected",true);
		$("input[name=lkmGender][value=${editLkm.lkmGender}]").attr("checked",true);
// 		$("input:radio[value=${editLkm.lkmGender}]").attr("checked",true);
	});
</script>
</head>
<body>
	<s:debug></s:debug>
	<form action="editLkm" method="post" target="rightFrame">
	<input type="hidden" name="lkmid" value="${editLkm.lkmid}"> 
		<table>
			<tr>
				<td>所属客户：</td>
				<td><select name="customer.custId" id="custId">
						<s:iterator value="customerList" var="cust">
							<option value="${cust.custId }"><s:property
									value="#cust.custName" />
							</option>
						</s:iterator>
				</select></td>
			</tr>
			<tr>
				<td>名字：</td>
				<td><input type="text" name="lkmName" value="${editLkm.lkmName}"></td>
				<td>性别：</td>
				<td>男<input type="radio" name="lkmGender" value="男"> 
				女<input	type="radio" name="lkmGender" value="女"></td>
			</tr>

			<tr>
				<td>手机号码：</td>
				<td><input type="text" name="lkmPhone" value="${editLkm.lkmPhone}"></td>

				<td>职位：</td>
				<td><input type="text" name="lkmPosition" value="${editLkm.lkmPosition}"></td>
			</tr>

			<tr>
				<td><input type="submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>