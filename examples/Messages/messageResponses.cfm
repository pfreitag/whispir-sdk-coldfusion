<a href="../../"><h4>Examples index</h4></a>
<cfoutput>
	<cfscript>
		// Get all messages
		m = Application.WhispirClient.getMessages();
		//writeDump( var = m, label = "All available messages");

		if ( arrayLen(m) ){

			Options = { query: { view : "summary" }};
			result = m[1].getMessageResponses(Options);
			writeDump( var = result, label = "First message response" );
		} else {
			writeOutput( 'No message send so far');
		}
		
	</cfscript>
</cfoutput>