<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="data" value="${sessionScope.subCategoryList }"></c:set>
<c:set var="i" value="${f:length(data) }"></c:set>

[

	<c:forEach items="${sessionScope.subCategoryList }" var="i" varStatus="j">
	
	{
	
		"id" : ${i.id },
		"subcategoryName" : ${i.subcategoryName },
		"fileName" : ${i.fileName },
		"price" : ${i.pice }
	
	}
	
	<c:if test="${j.count ne 1 }">
		,
	</c:if>
	
	</c:forEach>


]