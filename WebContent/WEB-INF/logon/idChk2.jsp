<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${result>0 }">
	다른 아이디를 사용하십시오
</c:if>
<c:if test="${result == 0 }">
	사용 가능한 아이디입니다
</c:if>
