<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer Manager</title>
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
</head>
<body>

<h2>Welcome to Customer manager</h2>

<div style="padding: 25px">
    <a href="add" class="btn btn-primary">Add Customer</a>
    <a href="list" class="btn btn-success">View Customers</a>
</div>
<div class="col-md-12">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h4 class="text-center">Bootstrap Editable Table <span class="fa fa-edit pull-right bigicon"></span></h4>
        </div>
        <div class="panel-body text-center">            
            <div id="grid"></div>
        </div>
    </div>
</div>

<!-- you need to include the shieldui css and js assets in order for the grids to work -->
<link rel="stylesheet" type="text/css" href="http://prepbootstrap.com/Content/shieldui-lite/dist/css/light/all.min.css" />
<script type="text/javascript" src="http://prepbootstrap.com/Content/shieldui-lite/dist/js/shieldui-lite-all.min.js"></script>

<script type="text/javascript" src="http://prepbootstrap.com/Content/data/shortGridData.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $("#grid").shieldGrid({
            dataSource: {
                data: gridData,
                schema: {
                    fields: {
                        id: { path: "id", type: Number },
                        age: { path: "age", type: Number },
                        name: { path: "name", type: String },
                        company: { path: "company", type: String },
                        month: { path: "month", type: Date },
                        isActive: { path: "isActive", type: Boolean },
                        email: { path: "email", type: String },
                        transport: { path: "transport", type: String }
                    }
                }
            },
            sorting: {
                multiple: true
            },
            rowHover: false,
            columns: [
                { field: "name", title: "Person Name", width: "120px" },
                { field: "age", title: "Age", width: "80px" },
                { field: "company", title: "Company Name" },
                { field: "month", title: "Date of Birth", format: "{0:MM/dd/yyyy}", width: "120px" },
                { field: "isActive", title: "Active" },
                { field: "email", title: "Email Address", width: "250px" },
                { field: "transport", title: "Custom Editor", width: "120px" },                
                {
                    width: 150,
                    title: "Update/Delete Column",
                    buttons: [
                        { commandName: "edit", caption: "Edit" },
                        { commandName: "delete", caption: "Delete" }
                    ]
                }
            ],
            editing: {
                enabled: true,
                mode: "popup",
                confirmation: {
                    "delete": {
                        enabled: true,
                        template: function (item) {
                            return "Delete row with ID = " + item.id
                        }
                    }
                }
            }            
        });

       
    });
</script>

<style type="text/css">
    .sui-button-cell
    {
        text-align: center;
    }

    .sui-checkbox
    {
        font-size: 17px !important;
        padding-bottom: 4px !important;
    }

    .deleteButton img
    {
        margin-right: 3px;
        vertical-align: bottom;
    }

    .bigicon
    {
        color: #5CB85C;
        font-size: 20px;
    }
</style>

</body>
</html>
