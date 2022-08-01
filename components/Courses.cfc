/**
 * Courses component
 * 
 * @author Junie Perez
 */
component extends="DatabaseMethods"{

    function get()
    {
        /*coursesQuery = queryExecute("SELECT * FROM courses");
        cfloop(query = coursesQuery, startRow = 1, endRow = coursesQuery.recordCount)
        {
            if( isJson("#description#") )
            {
                descsubjects = deserializeJSON("#description#");
                description = "";
                
                descsubjects.each( function(index, element) 
                {
                    description = description & (element & ",");
                });
                querySetCell(coursesQuery, "descriptions", description, coursesQuery.currentRow);
            }
            else
            {
                lg = "#descriptions#" == "" ? "no description" : '';
                querySetCell(coursesQuery, "description", lg, coursesQuery.currentRow);
            }
        }
        return coursesQuery;*/
    }

    function fetch(){}
    function add(){}
    function update(){}
    function delete(){}

}