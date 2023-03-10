<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
      <div class="fruit_container">
      <c:forEach var="dto" items="${list }">
      	<div class="box">
          <img src="${root }/images/${dto.store_img }" alt="${dto.store_name }">
          <div class="link_box">
            <h5>
              ${dto.store_name }
            </h5>
            <h6>
              ★ ${dto.score }
            </h6>
            <h6>
              ${dto.store_category }
            </h6>
            <h6>
              ${dto.addr }
            </h6>
            <a href="./StoreInfo.st?store_no=${dto.store_no }">
              상세 정보
            </a>
          </div>
        </div>
      </c:forEach>
      </div>

</html>