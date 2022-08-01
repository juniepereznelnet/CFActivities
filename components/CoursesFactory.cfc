/**
 * CoursesFactory component
 * 
 * @author Junie Perez
 */
component CoursesFactory extends="AbstractFactory" {
    DatabaseMethods function getMethod(){
        return new Courses();
    }
}