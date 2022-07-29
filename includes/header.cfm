<!---  Header contents --->
<cfparam name="loginUser" default="Test Student">
<div class="row bg-dark">
    <div class="container text-center text-white">
        <div class="col-12 p-4">
            <h3>
            	<!--- Displays application name from component --->
                <cfscript>
                    appname = createObject("component", "CFActivities.components.Global");
                    writeOutput(appname.getAppName());
                </cfscript>
            </h3>
        </div>
        <nav class="navbar navbar-expand-sm navbar-light bg-light">
        	
            <div class="container-fluid">
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                
                <div id="navbarCollapse" class="collapse navbar-collapse">
                	<ul class="nav navbar-nav">
                		<!--- Displays application menus from component --->
                        <cfscript>
                        	appmenus = createObject("component", "CFActivities.components.global");
                        	menuitems = appmenus.getAppMenus();
                        	
                        	//Loop enabled menu items
                        	menuitems.each( function( element, index)
                        	{
                        		writeOutput("<li class='nav-item'><a href='' class='nav-link'>#element.menu#</a></li>");
                        	});
                        </cfscript>
                	</ul>
                	
                	
                    <ul class="nav navbar-nav ms-auto">
                        <li class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><cfoutput>#loginUser#</cfoutput></a>
                            <div class="dropdown-menu dropdown-menu-end">
                                <a href="#" class="dropdown-item">Reports</a>
                                <a href="#" class="dropdown-item">Settings</a>
                                <div class="dropdown-divider"></div>
                                <a href="#" class="dropdown-item">Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
                
            </div>
            
        </nav>     
    </div>
</div>