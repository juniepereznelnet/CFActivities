/**
 * Global component
 *
 * @SITE_NAME
 * @SITE_MENUS
 * 
 * @author Junie Perez  
 */
component global{

    //Static Constructor
    static.SITE_NAME  = "Test Student Information System";
    static.SITE_MENUS = 
    [{"menu"="Dashboard", "enabled"=true},
    {"menu"="Profile", "enabled"=true},
    {"menu"="Courses", "enabled"=true},
    {"menu"="Contact", "enabled"=false}];

    //Method for getting app name
    public function getAppName()
    {
        return static.SITE_NAME;
    }
    
    //Method for getting app menus
    public function getAppMenus()
    {
    	//filters to return only enabled menu items
    	filteredMenus = arrayFilter(static.SITE_MENUS, function(item){
    		return item.enabled == true;
    	});
    	
    	return filteredMenus;
    }
} 