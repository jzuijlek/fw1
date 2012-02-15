<cfcomponent extends="org.corfield.framework"><cfscript>
	variables.framework = structNew();
	// setting framework.base so the application will work when there is a non-empty context root:
	variables.root = getDirectoryFromPath( CGI.SCRIPT_NAME );
	if ( len( getContextRoot() ) ) variables.root = replace( getDirectoryFromPath( CGI.SCRIPT_NAME ), getContextRoot(), '' );
	variables.framework.base = variables.root & 'cfml';
	variables.framework.cfcbase = replace( right( variables.root, len( variables.root ) - 1 ), '/', '.', 'all' ) & 'cfcs';
</cfscript></cfcomponent>
