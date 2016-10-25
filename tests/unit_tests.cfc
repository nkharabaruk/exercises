component extends="testbox.system.BaseSpec" {

	function beforeAll() {

		pivot = createObject("component", "exercises.pivot");

		inputLine = "5 9 7 17 6 5 4 6";
		arrWithPivot = [5, 9, 7, 17, 6, 5, 4, 6];
		arrLen = ArrayLen(arrWithPivot);
		pivotNumber = 17;

		arrWithoutPivot = [5, 2, 8, 7];

		negativeNumInput = "-8 -9 10 -27 10"; 
		arrWithNegativeNumbers = [-8, -9, 10, -27, 10];
		pivotNumber2 = 10;

		emptyArray = [];
		message = "There isn`t a pivot number.";

		nullArray = [0, 0, 0, 0, 0];

		inputElement = "7"; 
		oneElArray = [inputElement];

		badInput = "g d e q s";
		badArray = ['g', 'd', 'e', 'q', 's'];
		message2 = "Input invalid.";
	}

	function dummyTest() {

		$assert.isEqual("1", true);
		$assert.isEqual(0, false);
	}

	function arrayTypeTest() {

		$assert.typeOf('array', arrWithPivot, "Variable arrWithPivot should be array.");
		$assert.typeOf('array', arrWithoutPivot, "Variable arrWithoutPivot should be array.");
		$assert.typeOf('array', arrWithNegativeNumbers, "Variable arrWithNegativeNumbers should be array.");
		$assert.typeOf('array', emptyArray, "Variable emptyArray should be array.");
		$assert.typeOf('array', nullArray, "Variable nullArray should be array.");
		$assert.typeOf('array', oneElArray, "Variable oneElArray should be array.");
		$assert.typeOf('array', badArray, "Variable badArray should be array.");

		$assert.notTypeOf('boolean', arrWithPivot, "Variable arrWithPivot should not be boolean.");
		$assert.notTypeOf('string', arrWithPivot, "Variable arrWithPivot should not be string.");
		$assert.notTypeOf('query', arrWithPivot, "Variable arrWithPivot should not be query.");
		$assert.notTypeOf('component', arrWithPivot, "Variable arrWithPivot should not be component.");
	}

	function arrayCorrectTest() {

		$assert.includes(arrWithPivot, pivotNumber, "arrWithPivot should have pivot number inside.");
		$assert.lengthOf(arrWithPivot, arrLen, "Array should have length of 8.");
		$assert.isNotEmpty(arrWithPivot, "arrWithPivot should not be empty");

		$assert.notIncludes(arrWithoutPivot, pivotNumber, "arrWithoutPivot should not have pivot number inside.");
		$assert.notLengthOf(arrWithoutPivot, 0, "Array should not have length of 0.");
		$assert.isNotEmpty(arrWithoutPivot, "arrWithoutPivot should not be empty");

		$assert.includes(arrWithNegativeNumbers, pivotNumber2, "arrWithNegativeNumbers should have pivot number inside.");
		$assert.notLengthOf(arrWithNegativeNumbers, 0, "Array should not have length of 0.");
		$assert.isNotEmpty(arrWithNegativeNumbers, "arrWithNegativeNumbers should not be empty");

		$assert.lengthOf(emptyArray, 0, "Array should have length of 0.");
		$assert.isEmpty(emptyArray, "emptyArray should be empty");

		$assert.lengthOf(oneElArray, 1, "Array should have length of 1.");
		$assert.isNotEmpty(oneElArray, "oneElArray should not be empty");

		$assert.notLengthOf(badArray, 0, "Array should not have length of 0.");
		$assert.isNotEmpty(badArray, "badArray should not be empty");
	}

	function splitArrayTest() {

		$assert.isEqual(pivot.splitArray(inputLine), arrWithPivot, "String should be splitted to array.");
		$assert.typeOf('array', pivot.splitArray(inputLine), "Variable arrWithPivot should be an array.");

		$assert.isEqual(pivot.splitArray(emptyArray), emptyArray, "Empty array should be empty after splitting.");
		$assert.typeOf('array', pivot.splitArray(emptyArray), "Variable emptyArray should be an array.");

		$assert.isEqual(pivot.splitArray(negativeNumInput), arrWithNegativeNumbers, "String should be splitted to array.");
		$assert.typeOf('array', pivot.splitArray(negativeNumInput), "Variable arrWithNegativeNumbers should be an array.");

		$assert.isEqual(pivot.splitArray(inputElement), oneElArray, "oneElArray should equal element after splitting.");
		$assert.typeOf('array', pivot.splitArray(inputElement), "Variable oneElArray should be an array.");

		$assert.isEqual(pivot.splitArray(badInput), badArray, "badInput should be also splitted to array.");
		$assert.typeOf('array', pivot.splitArray(badInput), "Variable badArray should be an array.");
	}

	function pivotNumberTest() {

		$assert.isEqual(pivot.findPivot(arrWithPivot), pivotNumber, "Pivot number of array should be 17.");
		$assert.typeOf('integer', pivot.findPivot(arrWithPivot), "Type of result of pivot function of array should be an integer.");

		$assert.isNotEqual(pivot.findPivot(arrWithoutPivot), message, "Pivot number should not be found in arrWithoutPivot.");
		$assert.typeOf('string', pivot.findPivot(arrWithoutPivot), "Type of result of pivot function of arrWithoutPivot should be a string.");

		$assert.isEqual(pivot.findPivot(arrWithNegativeNumbers), pivotNumber2, "Pivot number of array should be 10.");
		$assert.typeOf('integer', pivot.findPivot(arrWithNegativeNumbers), "Type of result of pivot function of array should be an integer.");

		$assert.isEqual(pivot.findPivot(emptyArray), message, "Pivot number should not be found in empty erray.");
		$assert.typeOf('string', pivot.findPivot(emptyArray), "Type of result of pivot function of emptyArray should be a string.");

		$assert.isEqual(pivot.findPivot(nullArray), 0, "Pivot number of nullArray should be 0.");
		$assert.typeOf('integer', pivot.findPivot(nullArray), "Type of result of pivot function of nullArray should be an integer.");

		$assert.isEqual(pivot.findPivot(oneElArray), oneElArray[1], "Pivot number of oneElArray should be this element.");
		$assert.typeOf('integer', pivot.findPivot(oneElArray), "Type of result of pivot function of oneElArray should be an integer.");

		$assert.isEqual(pivot.findPivot(badArray), message2, "Pivot number should not be found in badErray.");
		$assert.typeOf('string', pivot.findPivot(badArray), "Type of result of pivot function of badArray should be a string.");
	}
	
}