<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer Manager</title>
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
    <style>
        .error {
            color: #ee0d25;
        }
    </style>

</head>
<body>

<a href="home" class="btn btn-link">Back</a>


<h2>Customer Manager</h2>
<form:form method="post" action="add" commandName="customer" class="form-horizontal">
    <fieldset>
        <legend>Customer Details</legend>
        <div class="form-group">
            <form:label class="col-lg-2 control-label" path="firstname">
                <spring:message code="label.firstname"/>
            </form:label>
            <div class="col-sm-3">
                <form:input path="firstname" placeholder="Firstname" cssClass="form-control"/>
            </div>
            <form:errors path="firstname" cssClass="error"/>
        </div>

        <div class="form-group">
            <form:label class="col-lg-2 control-label" path="lastname">
                <spring:message code="label.lastname"/>
            </form:label>
            <div class="col-sm-3">
                <form:input path="lastname" placeholder="LastName" cssClass="form-control"/>
            </div>
            <form:errors path="lastname" cssClass="error"/>
        </div>
        <legend>Contact Details</legend>
        <div class="form-group">
            <form:label class="col-lg-2 control-label" path="email">
                <spring:message code="label.email"/>
            </form:label>
            <div class="col-md-3">
                <form:input path="email" placeholder="email" cssClass="form-control"/>
            </div>
            <form:errors path="email" cssClass="error"/>
        </div>
        <div class="form-group">
            <form:label class="col-lg-2 control-label" path="telephone">
                <spring:message code="label.telephone"/>
            </form:label>
            <div class="col-lg-3">
                <form:input path="telephone" placeholder="telephone" cssClass="form-control"/>
            </div>
            <form:errors path="telephone" cssClass="error"/>
        </div>
          <div class="control-group ">
          <label class="control-label" for="custom2">2. How did you hear about us?</label>
          <div class="controls">
            <div class="">
              <label class="radio col-xs-12 col-sm-6 col-md-4 col-lg-3">
                <input name="custom2" value="1" checked="checked" type="radio">Newspaper</label>
              <label class="radio col-xs-12 col-sm-6 col-md-4 col-lg-3">
                <input name="custom2" value="2" type="radio">Billboard</label>
              <label class="radio col-xs-12 col-sm-6 col-md-4 col-lg-3">
                <input name="custom2" value="3" type="radio">Yellow Pages</label>
              <label class="radio col-xs-12 col-sm-6 col-md-4 col-lg-3">
                <input name="custom2" value="4" type="radio">Radio</label>
              <label class="radio col-xs-12 col-sm-6 col-md-4 col-lg-3">
                <input name="custom2" value="5" type="radio">Google / Internet</label>
              <label class="radio col-xs-12 col-sm-6 col-md-4 col-lg-3">
                <input name="custom2" value="23" type="radio">White Pages</label>
              <label class="radio col-xs-12 col-sm-6 col-md-4 col-lg-3">
                <input name="custom2" value="7" type="radio">Referral</label>
              <label class="radio col-xs-12 col-sm-6 col-md-4 col-lg-3">
                <input name="custom2" value="8" type="radio">Television</label>
              <label class="radio col-xs-12 col-sm-6 col-md-4 col-lg-3">
                <input name="custom2" value="9" type="radio">Familiar with area</label>
              <label class="radio col-xs-12 col-sm-4 col-md-4 col-lg-3">
                <input name="custom2" value="10" type="radio">Magazine</label>
              <label class="radio col-xs-12 col-sm-6 col-md-4 col-lg-3">
                <input name="custom2" value="21" type="radio">Catalogue</label>
              <label class="radio col-xs-12 col-sm-4 col-md-4 col-lg-3">
                <input name="custom2" value="25" type="radio">Our website</label>
              <!-- Optional: clear the XS cols if their content doesn't match in height -->
              <div class="clearfix visible-sm"></div>
              <label class="radio col-xs-12 col-sm-4 col-md-4 col-lg-3">
                <input name="custom2" value="24" type="radio">1300 Number</label>
            </div>
          </div>
        </div>
        <div class="pull-right">
          <button>SUBMIT</button>
        </div>
    </fieldset>
    <div class="form-group">
        <div class="col-lg-offset-2 col-lg-10">
            <button type="submit" class="btn btn-primary"><spring:message code="label.addcustomer"/></button>
        </div>
    </div>
</form:form>

</body>
</html>
