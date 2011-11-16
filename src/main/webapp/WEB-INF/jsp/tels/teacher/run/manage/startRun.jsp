<%@ include file="../include.jsp"%>
<!--
  * Copyright (c) 2006 Encore Research Group, University of Toronto
  * 
  * This library is free software; you can redistribute it and/or
  * modify it under the terms of the GNU Lesser General Public
  * License as published by the Free Software Foundation; either
  * version 2.1 of the License, or (at your option) any later version.
  *
  * This library is distributed in the hope that it will be useful,
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  * Lesser General Public License for more details.
  *
  * You should have received a copy of the GNU Lesser General Public
  * License along with this library; if not, write to the Free Software
  * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
-->

<!-- $Id: startRun.jsp 2687 2010-01-27 23:53:30Z shadowtorn $ -->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "XHTML1-s.dtd" />
<html xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />

<link href="../../../<spring:theme code="globalstyles"/>" media="screen" rel="stylesheet"  type="text/css" />
<link href="../../../<spring:theme code="teacherrunstylesheet"/>" media="screen" rel="stylesheet"  type="text/css" />
<link href="../../../<spring:theme code="stylesheet"/>" media="screen" rel="stylesheet"  type="text/css" />
    
<script type="text/javascript" src="./javascript/tels/general.js"></script>
    
<title><spring:message code="teacher.run.manage.startrun.1"/></title>
</head>

<body>

<h1><spring:message code="teacher.run.manage.startrun.1"/></h1>

<!-- Support for Spring errors object -->
<spring:bind path="startRunParameters.*">
  <c:forEach var="error" items="${status.errorMessages}">
    <b>
      <br /><c:out value="${error}"/>
    </b>
  </c:forEach>
</spring:bind>

<form:form method="post" action="startRun.html" commandName="startRunParameters" id="startRun" autocomplete='off'>
  <div><label for="runId"><spring:message code="teacher.run.manage.archiverun.5"/></label>
      <form:input disabled="true" path="runId" id="runId"/>
      <form:errors path="runId" />
  </div>

<div id="responseButtons">
	<input type="submit" name="cancelarchive" value="Reactivate Project Run" />
	<input type="reset" onclick="javascript:window.close()" name="cancelarchive" value="Cancel" />
</div>

</form:form>

</body>
</html>