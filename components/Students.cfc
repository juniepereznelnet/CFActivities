/**
 * Students component
 * 
 * @author Junie Perez
 */
component Students extends="ADatabaseMethods"{

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
        studentQuery = queryExecute( "SELECT * FROM students");
        cfloop(query = studentQuery, startRow = 1, endRow = studentQuery.recordCount){
            if( isJson("#subjects#") ){
                descsubjects = deserializeJSON("#subjects#");
                subject = "";
                descsubjects.each( function( element, index) 
                {
                    if(index)
                    {
                        subject = subject & (element & ",");
                    }
                });
                querySetCell(studentQuery, "subjects", subject, studentQuery.currentRow);
            }
        }
        return studentQuery;
    }
    
    function add(){}
    function update(){}
    function delete(){}
} 