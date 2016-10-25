<html>
<head>
    <title>Task № 1</title>
</head>
<body>
    <form action="task_1.cfm" method="post">
        <table>
            <tr>
                <td>Write array of numbers:</td>
            </tr>
            <tr>
                <td><input type="text" name="input"></td>
            </tr>
            <tr>
        </table>
    </form>


<cfscript>
    pivot = createObject("component", "exercises.pivot");
    if (isDefined("Form.input")) {
        writeOutput('Array: ');
        mySplitArray = pivot.splitArray(Form.input);
        for(i = 1; i <= arraylen(mySplitArray); i++) {
            writeOutput(mySplitArray[i]);
            writeOutput(' ');
        }
        writeOutput('<br>Pivot number: ');
        myFindPivot = pivot.findPivot(mySplitArray);
        writeOutput(myFindPivot);
    }
</cfscript>

</body>
</html>