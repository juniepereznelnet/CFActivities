<cfif structKeyExists(form, "id" ) && len(Form.id) gt 0>

    <!--- updating record script here --->

<cfelse>

    <!--- inserting record script here --->
    <cfif IsDefined("Form.isSubmitted")>
        <cfscript>
            factory = createObject("component", "components.FactoryProducer");
            studentsFactory =  factory.getFactory('Students');
            getMethods = createObject("component", "components.StudentsFactory");
            addRecords = getMethods.getMethod().add();
            if(addRecords EQ "success")
            {
                location("./pages/dashboard.cfm", "false", "301");
            }
            else
            {
                writeDump("#Form#");
            }
        </cfscript>

    <cfelse>

        <!--- deleting record script here --->

    </cfif>

</cfif> 