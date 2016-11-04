<html>
<head>
    <title>Create user</title>
</head>
<body>

<cfscript>
    operations = createObject("component", "exercises.operations");
    if (isDefined("action")) {
        if (url.action eq "insert") {
            operations.insert();
        }
    }
</cfscript>


<cflayout type="vbox" name="layout1">
    <cflayoutarea>
        <h1>Log in to website</h1>
    </cflayoutarea>

    <cflayoutarea>
        <cfform name="myform" action="showAddress.cfm">
            <table>
                <tr>
                    <td>Name:</td>
                    <td><cfinput type = "text" name = "name"></td>
                </tr>
                <tr>
                    <td>Date of Birth:</td>
                    <td><cfinput type = "date" name = "date_of_birth"></td>
                </tr>
                <tr>
                    <td>Post code:</td>
                    <td><cfinput type = "text" name = "post_code"></td>
                </tr>
                <tr>
                    <td>House number:</td>
                    <td><cfinput type = "text" name = "house_number"></td>
                </tr>
                <tr style="height: 40px">
                    <td></td>
                    <td><input type="submit" value="Submit"></td>
                </tr>
            </table>
        </cfform>
    </cflayoutarea>
</cflayout>

</body>
</html>