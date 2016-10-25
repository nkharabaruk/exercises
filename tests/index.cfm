<cfset r = new TestBox.system.TestBox(directory = { mapping = "myTests.tests",recurse = true})>
<cfoutput>#r.run()#</cfoutput>
