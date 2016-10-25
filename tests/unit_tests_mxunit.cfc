component extends="mxunit.framework.TestCase" {

	public void function beforeTests() {
		pivot = createObject("component", "exercises.pivot");
		splittedArray = [5, 9, 7, 17, 6, 5, 4, 6];
		pivotNumber = 17;
	}

	public void function dummyTest() {
		$assert.isEqual( "1", true);
		$assert.isEqual(0, false);
	}

	public void function arrayTypeTest() {
		$assert.typeOf('array', splittedArray, "Variable splittedArray should be array.");
		$assert.notTypeOf('boolean', splittedArray, "Variable splittedArray should not be boolean.");
		$assert.notTypeOf('string', splittedArray, "Variable splittedArray should not be string.");
		$assert.notTypeOf('query', splittedArray, "Variable splittedArray should not be query.");
		$assert.notTypeOf('component', splittedArray, "Variable splittedArray should not be component.");
	}

	public void function arrayCorrectTest() {
		// $assert.includes(splittedArray, pivot, "splittedArray should have pivot number inside.");
	}

	public void function splitArrayTest() {
		$assert.isEqual(pivot.splitArray("5 9 7 17 6 5 4 6"), splittedArray, "String should be splitted to array");
		$assert.isEqual(pivot.findPivot(splittedArray), pivotNumber, "Pivot number should be 17");
	}
}