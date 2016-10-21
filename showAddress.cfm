<html>
<head>
    <title>Create user</title>
</head>
<body>

<cfscript>
    operations = createObject("component", "exercises.operations");
    select1 = operations.select();
    if (isDefined("Form.submitted")) {
        insert1 = operations.insert();
    }
</cfscript>

<cfform name="myform" action="operations.cfc?method=insert">
    <table>
        <tr>
            <td>Name:</td>
            <td><cfinput type="text" name="name" value="#Form.name#"></td>
        </tr>
        <tr>
            <td>Date of Birth:</td>
            <td><cfinput type="date" name="date_of_birth" value="#Form.date_of_birth#"></td>
        </tr>
        <tr>
            <td>Post code:</td>
            <td><cfinput type="text" name="post_code" value="#Form.post_code#"></td>
        </tr>
        <tr>
            <td>House number:</td>
            <td><cfinput type="text" name="house_number" value="#Form.house_number#"></td>
        </tr>
        <tr>
            <td>Country:</td>
            <td><cfinput type="text" name="country" value="#select1.country#"></td>
        </tr>
        <tr>
            <td>City:</td>
            <td><cfinput type="text" name="city" value="#select1.city#"></td>
        </tr>
        <tr>
            <td>Street:</td>
            <td><cfinput type="text" name="street" value="#select1.street#"></td>
        </tr>
        <tr style="height: 40px">
            <td></td>
            <td><input type="submit" value="Create user"></td>
        </tr>
    </table>
</cfform>

</body>
</html>