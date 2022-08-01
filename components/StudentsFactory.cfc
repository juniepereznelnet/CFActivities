/**
 * StudentsFactory component
 * 
 * @author Junie Perez 
 */
component StudentsFactory extends="AbstractFactory" {
    DatabaseMethods function getMethod(){
        return new Students();
    }
} 