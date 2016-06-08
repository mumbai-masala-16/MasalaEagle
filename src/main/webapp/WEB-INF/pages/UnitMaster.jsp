<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Unit Master</title>


<link rel="stylesheet" type="text/css" href="/customerMgr/resources/css/datatable/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="/customerMgr/resources/css/datatable/editor.dataTables.css">
<link rel="stylesheet" type="text/css" href="/customerMgr/resources/css/datatable/buttons.dataTables.css">
<link rel="stylesheet" type="text/css" href="/customerMgr/resources/css/datatable/select.dataTables.css">
<link rel="stylesheet" type="text/css" href="/customerMgr/resources/css/datatable/responsive.dataTables.css">
<link rel="stylesheet" type="text/css" href="/customerMgr/resources/css/datatable/dataTables.jqueryui.css">

<!-- <link rel="stylesheet" type="text/css" href="/customerMgr/resources/css/datatable/buttons.bootstrap.css">
<link rel="stylesheet" type="text/css" href="/customerMgr/resources/css/datatable/buttons.jqueryui.css">
<link rel="stylesheet" type="text/css" href="/customerMgr/resources/css/datatable/dataTables.bootstrap.css">
<link rel="stylesheet" type="text/css" href="/customerMgr/resources/css/datatable/editor.bootstrap.css">
<link rel="stylesheet" type="text/css" href="/customerMgr/resources/css/datatable/editor.jqueryui.css">
<link rel="stylesheet" type="text/css" href="/customerMgr/resources/css/datatable/jquery.dataTables_themeroller.css">
<link rel="stylesheet" type="text/css" href="/customerMgr/resources/css/datatable/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="/customerMgr/resources/css/datatable/responsive.bootstrap.css">
<link rel="stylesheet" type="text/css" href="/customerMgr/resources/css/datatable/responsive.jqueryui.css">
<link rel="stylesheet" type="text/css" href="/customerMgr/resources/css/datatable/select.bootstrap.css">
<link rel="stylesheet" type="text/css" href="/customerMgr/resources/css/datatable/select.jqueryui.css">
 -->

<script type="text/javascript" src="/customerMgr/resources/js/datatable/jquery-2.2.3.js"></script>  
<script type="text/javascript" src="/customerMgr/resources/js/datatable/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/customerMgr/resources/js/datatable/dataTables.editor.js"></script>
<script type="text/javascript" src="/customerMgr/resources/js/datatable/dataTables.buttons.js"></script>
<script type="text/javascript" src="/customerMgr/resources/js/datatable/dataTables.select.js"></script>
<script type="text/javascript" src="/customerMgr/resources/js/datatable/dataTables.jqueryui.js"></script>
<script type="text/javascript" src="/customerMgr/resources/js/datatable/dataTables.responsive.js"></script>


<!-- <script type="text/javascript" src="/customerMgr/resources/js/datatable/buttons.jqueryui.js"></script>
<script type="text/javascript" src="/customerMgr/resources/js/datatable/buttons.bootstrap.js"></script>

<script type="text/javascript" src="/customerMgr/resources/js/datatable/dataTables.bootstrap.js"></script>
<script type="text/javascript" src="/customerMgr/resources/js/datatable/editor.bootstrap.js"></script>
<script type="text/javascript" src="/customerMgr/resources/js/datatable/jquery.dataTables.js"></script>
<script type="text/javascript" src="/customerMgr/resources/js/datatable/responsive.jqueryui.js"></script>
<script type="text/javascript" src="/customerMgr/resources/js/datatable/responsive.bootstrap.js"></script>
 -->


</head>
<script>

var editor; // use a global for the submit and return data rendering in the examples

$(document).ready(function() {
    editor = new $.fn.dataTable.Editor( {
        ajax: {
        	
        	url : "http://localhost:8081/customerMgr/add",
        	type : "POST",
        	datatype:"json",
        	contentType : "application/json",
        	data : function(d){
        		alert(d);
        		return JSON.stringify(d);
        	},
        	success:function(res){
                alert("Data Updated successfully.");
                editor.close();
               // var table = $('#example').dataTable();
               // table.api().ajax.reload();
            },
            error:function(res){
                alert("error occured!");
            }
        },
        table: "#example",
        fields: [ {
                label: "First name:",
                name: "firstname"
            }, {
                label: "Last name:",
                name: "lastname"
            }, {
                label: "Email #:",
                name: "email"
            }, {
                label: "Contact:",
                name: "telephone"
            }
        ]
    } );
 
    $('#example').DataTable( {
        dom: "Bfrtip",
        ajax: {
        	url : "http://localhost:8081/customerMgr/list",
            type: 'GET'
        },
        columns: [
                  {
                      data: null,
                      defaultContent: '',
                      className: 'select-checkbox',
                      orderable: false
                  },
                  { "mData": "firstname" },
                  { "mData": "lastname" },
                  { "mData": "email" },
                  { "mData": "telephone" }
        ],
        select: {
            style:    'os',
            selector: 'td:first-child'
        },
        buttons: [
            { extend: "create", editor: editor },
            { extend: "edit",   editor: editor },
            { extend: "remove", editor: editor }
        ]
    } );
} );
</script>
<body>
	<table id="example" class="display" cellspacing="0" width="100%">
		<thead>
			<tr>
				<th></th>
				<th>First name</th>
				<th>Last name</th>
				<th>Email</th>
				<th>Telephone</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<th></th>
				<th>First name</th>
				<th>Last name</th>
				<th>Email</th>
				<th>Telephone</th>
			</tr>
		</tfoot>
	</table>
</body>

</html>