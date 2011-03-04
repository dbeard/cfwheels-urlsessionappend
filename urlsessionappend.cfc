<cfcomponent output="false">

    <cffunction name="init">
        <cfset this.version = "1.1,1.1.1,1.1.2">
        <cfreturn this>
    </cffunction>

	<cffunction name="URLFor" returntype="string" access="public" output="false" categories="global,miscellaneous" chapters="request-handling,linking-pages" functions="redirectTo,linkTo,startFormTag">
		<cfargument name="route" type="string" required="false" default="" hint="Name of a route that you have configured in `config/routes.cfm`.">
		<cfargument name="controller" type="string" required="false" default="" hint="Name of the controller to include in the URL.">
		<cfargument name="action" type="string" required="false" default="" hint="Name of the action to include in the URL.">
		<cfargument name="key" type="any" required="false" default="" hint="Key(s) to include in the URL.">
		<cfargument name="params" type="string" required="false" default="" hint="Any additional params to be set in the query string.">
		<cfargument name="anchor" type="string" required="false" default="" hint="Sets an anchor name to be appended to the path.">
		<cfargument name="onlyPath" type="boolean" required="false" hint="If `true`, returns only the relative URL (no protocol, host name or port).">
		<cfargument name="host" type="string" required="false" hint="Set this to override the current host.">
		<cfargument name="protocol" type="string" required="false" hint="Set this to override the current protocol.">
		<cfargument name="port" type="numeric" required="false" hint="Set this to override the current port number.">
		<cfargument name="$URLRewriting" type="string" required="false" default="#application.wheels.URLRewriting#">
			
		<cfreturn URLSessionFormat(core.URLFor(argumentCollection=arguments))/>
	</cffunction>
</cfcomponent>