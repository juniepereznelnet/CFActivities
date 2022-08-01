/**
 * A FactoryProducer component
 * 
 * @author Junie Perez
 */
component FactoryProducer {
    AbstractFactory function getFactory(String choice){
        return new StudentsFactory();
    }
} 