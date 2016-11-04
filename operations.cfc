<cfcomponent>
    <cffunction name="insert" access="remote">
        <cftry>
            <cfquery name="insert" datasource="userSource">
                INSERT INTO users(name, date_of_birth, post_code, house_number, country, city, street)
                VALUES (<cfqueryparam value="#Form.name#"
                        CFSQLType="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#Form.date_of_birth#"
                        CFSQLType="CF_SQL_DATE">,
                    <cfqueryparam value="#Form.post_code#"
                        CFSQLType="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#Form.house_number#"
                        CFSQLType="CF_SQL_INTEGER">,
                    <cfqueryparam value="#Form.country#"
                        CFSQLType="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#Form.city#"
                        CFSQLType="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#Form.street#"
                        CFSQLType="CF_SQL_VARCHAR">)
	        </cfquery>
            <cfcatch type = "database">
                <h3>You've Thrown a Database <b>Error</b></h3>
                <cfdump var="#cfcatch#">
            </cfcatch>
            <cfcatch type="Any">
                <cfdump var="#form#">
                <cfdump var="#cfcatch#">
                <cfabort>
            </cfcatch>
        </cftry>
    </cffunction>


    <cffunction name="select" access="remote" returntype="query">
        <cftry>
            <cfquery name="select" datasource="userSource">
                SELECT *
                FROM addresses
                WHERE post_code = <cfqueryparam
                                value="#Form.post_code#"
                                CFSQLType="CF_SQL_VARCHAR">
            </cfquery>
            <cfcatch type="Any">
                <cfthrow message="There was a database error">
            </cfcatch>
        </cftry>
        <cfreturn select>
    </cffunction>

</cfcomponent>