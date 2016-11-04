<html>
<head>
    <title>Create user</title>
</head>
<body>

<cfscript>
    operations = createObject("component", "exercises.operations");
    select1 = operations.select();
</cfscript>

<cfoutput>
<form name="myform" action="task_2.cfm?action=insert" method="post">
    <table>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" value="#Form.name#"></td>
        </tr>
        <tr>
            <td>Date of Birth:</td>
            <td><input type="date" name="date_of_birth" value="#Form.date_of_birth#"></td>
        </tr>
        <tr>
            <td>Post code:</td>
            <td><input type="text" name="post_code" value="#Form.post_code#"></td>
        </tr>
        <tr>
            <td>House number:</td>
            <td><input type="text" name="house_number" value="#Form.house_number#"></td>
        </tr>
        <tr>
            <td>Country:</td>
            <td><input type="text" name="country" value="#select1.country#"></td>
        </tr>
        <tr>
            <td>City:</td>
            <td><input type="text" name="city" value="#select1.city#"></td>
        </tr>
        <tr>
            <td>Street:</td>
            <td><input type="text" name="street" value="#select1.street#"></td>
        </tr>
        <tr style="height: 40px">
            <td></td>
            <td><input type="submit" value="Create user"></td>
            <!---<td><a href="task_2.cfm?action=insert">Create user</a></td>--->
    </tr>
    </table>
</form>
</cfoutput>

</body>
</html>