/**
 * Students component
 * 
 * @author Junie Perez
 */
component Students extends="DatabaseMethods"{

    /**
     * This is the hint for getting student name function
     *
     * @firstName This is the hint for the param firstname
     * @lastName This is the hint for the param lastname
     
    public function getStudentName(string firstName, string lastName){
       return "Return students name here";
    }
    */

    function get()
    {
        studentQuery = queryExecute("SELECT * FROM students");
        cfloop(query = studentQuery, startRow = 1, endRow = studentQuery.recordCount)
        {
            if( isJson("#subjects#") )
            {
                descsubjects = deserializeJSON("#subjects#");
                subject = "";
                
                descsubjects.each( function(index, element) 
                {
                    subject = subject & (element & ",");
                });
                querySetCell(studentQuery, "subjects", subject, studentQuery.currentRow);
            }
            else
            {
                lg = "#subjects#" == "" ? "no sbjects" : '';
                querySetCell(studentQuery, "subjects", lg, studentQuery.currentRow);
            }
        }
        return studentQuery;
    }
    
    function fetch(string id)
    {
        studentQuery = queryExecute("SELECT * FROM students where id = ?", [id], {});
        return studentQuery;
    }
    
    function add()
    {
        //Removed or unset not needed data from form
        Form.delete('isSubmitted', IsDefined("Form.isSubmitted") ? true : false);
        Form.delete('submit', IsDefined("Form.submit") ? true : false);
        Form.delete('fieldnames', IsDefined("Form.fieldnames") ? true : false);

        courseStruct = structNew("Ordered");

        if(len(Form.course) gt 0)
        {
            courses = listToArray(Form.course,",",false,true);
            courses.each( function( element, index) 
            {
                courseStruct["course#index#"] = element;
            });
            courseStruct = serializeJson(courseStruct); 
        }

        Form.delete('course', IsDefined("Form.course") ? true : false);

        //Insert Query
        insertQuery = queryExecute("insert into students( first_name, middle_name, last_name, address, contact_number, email, course ) 
        values( :firstname, :middlename, :lastname, :address, :contact, :email, :course )",
        {
            firstname: { cfsqltype: "cf_sql_varchar", value: "#Form.first_name#" },
            middlename: { cfsqltype: "cf_sql_varchar", value: "#Form.middle_name#" },
            lastname: { cfsqltype: "cf_sql_varchar", value: "#Form.last_name#" },
            address: { cfsqltype: "cf_sql_varchar", value: "#Form.address#" },
            contact: { cfsqltype: "cf_sql_varchar", value: "#Form.contact_number#" },
            email: { cfsqltype: "cf_sql_varchar", value: "#Form.email#" },
            course: { cfsqltype: "cf_sql_varchar", value: courseStruct }
        },
        {
            result: "insertResult"
        });
        
        return "success";
    }
    
    function update()
    {
    	
    }
    function delete()
    {
    	
    }
} 