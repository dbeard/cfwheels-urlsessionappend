<cfcomponent output="false">

    <cffunction name="init">
        <cfset this.version = "1.1,1.1.1">
        <cfreturn this>
    </cffunction>

	<cffunction name="$element" returntype="string" access="public" output="false">
		<cfargument name="name" type="string" required="true">
		<cfargument name="attributes" type="struct" required="false" default="#StructNew()#">
		<cfargument name="content" type="string" required="false" default="">
		<cfargument name="skip" type="string" required="false" default="">
		<cfargument name="skipStartingWith" type="string" required="false" default="">
		<cfscript>
			if(name == "a"){
				if(StructKeyExists(attributes,"href"))
					if(!REFind('http://',attributes.href))
						attributes.href = URLSessionFormat(attributes.href);
			}
			else if(name == "form"){
				if(StructKeyExists(attributes,"action"))
					if(!REFind('http://',attributes.href))
						attributes.action = URLSessionFormat(attributes.action);
			}
		</cfscript>
		<cfreturn core.$element(argumentCollection=arguments)/>
	</cffunction>
	
</cfcomponent>