component {

    remote function splitArray(required line) {
        if (line.isEmpty()) {
            emptyArray = [];
            return(emptyArray);
        }
        else if (line DOES NOT CONTAIN ' ') {
            oneElErray = [line];
            return(oneElErray);
        }
        else {
            splittedArray = listToArray(line," ,",false,false);
            return(splittedArray);
            
        }
    }

    remote function findPivot(required splittedArray) {
        for (i = 1; i <= arraylen(splittedArray); i++) {
            if (!isNumeric(splittedArray[i])) {
                return("Input invalid.");
            }
        }
        if (ArrayLen(splittedArray) == 1) {
            return(splittedArray[1]);
        }
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
            return("There isn`t a pivot number.");
        }
        else
            return(splittedArray[pivot]);
    }
}