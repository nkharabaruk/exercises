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

    if(isDefined("Form.input")) {
        function splitArray() {
            splittedArray = Form.input.split(' ');
            for(i = 1; i <= arraylen(splittedArray); i++) {
                writeOutput(splittedArray[i]);
                writeOutput(' ');
            }
        }

        writeOutput('Array: ');
        splitArray();
        writeOutput('<br>Pivot number: ');

        function findPivot(required splittedArray) {
            pivot = 1;
            left = 0;
            for (i = 2; i <= arrayLen(splittedArray); i++) {
                right = 0;
                left += splittedArray[i - 1];
                for (j = arrayLen(splittedArray); j > i; j--) {
                    right += splittedArray[j];
                }
                if (left == right) {
                    pivot = i;
                    break;
                }
            }
            if (pivot == 1) {
                writeOutput("There isn`t a pivot number.");
            }
            else
                WriteOutput(splittedArray[pivot]);
        }

        findPivot(splittedArray);
    }

</cfscript>

</body>
</html>