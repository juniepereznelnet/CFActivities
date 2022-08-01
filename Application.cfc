component
{
	this.name = "CFActivities";

	// Default Datasource Name
	//this.datasource = "cfsqlserver";
	
	// Get Root Directory
	this.rootDir = getDirectoryFromPath(getCurrentTemplatePath());

    // Map folders
    this.mappings["/components"] = "#this.rootDir#components/";
}