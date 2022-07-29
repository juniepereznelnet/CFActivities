/**
 * A FactoryProducer component
 * 
 * @author Junie Perez
 */
component FactoryProducer {
    AAbstractFactory function getFactory(String choice){
        return new StudentsFactory();
    }
} 