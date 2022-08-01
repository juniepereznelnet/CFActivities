/**
 * StudentsFactory component
 * 
 * @author Paul Gatchalian  
 */
component StudentsFactory extends="AAbstractFactory" {
    ADatabaseMethods function getMethod(){
        return new Students();
    }
} 