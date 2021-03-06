<%--

    Copyright (c) 1997, 2018 Oracle and/or its affiliates. All rights reserved.

    This program and the accompanying materials are made available under the
    terms of the Eclipse Public License v. 2.0, which is available at
    http://www.eclipse.org/legal/epl-2.0.

    This Source Code may also be made available under the following Secondary
    Licenses when the conditions for such availability set forth in the
    Eclipse Public License v. 2.0 are satisfied: GNU General Public License,
    version 2 with the GNU Classpath Exception, which is available at
    https://www.gnu.org/software/classpath/license.html.

    SPDX-License-Identifier: EPL-2.0 OR GPL-2.0 WITH Classpath-exception-2.0

--%>

<%@ page contentType="text/html" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@ taglib prefix="s" uri="/WEB-INF/taglib.tld" %>

<f:view>
<html>
<head>
<title>jstl-if-02</title>
</head>
<body>
<h:outputText value="[First]"/>
<c:if test="${param.component}">
  <s:facets id="comp" value="Second">
    <c:if test="${param.header}">
      <f:facet name="header">
        <h:outputText id="head" value="Header"/>
      </f:facet>
    </c:if>
    <c:if test="${param.footer}">
      <f:facet name="footer">
        <h:outputText id="foot" value="Footer"/>
      </f:facet>
    </c:if>
  </s:facets>
</c:if>
<h:outputText value="[Third]"/>
</body>
</html>
</f:view>
