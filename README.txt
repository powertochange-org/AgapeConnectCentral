These are central modules for AgapeConnect - and are is a prerequisite for all other modules.

SETTING UP YOUR DEVELOPMENT ENVIRONMENT

1. Install the latest version of DNN (From WebMatrix)

2. Ensure that this repository is checkout into a separate directory (outside your DNN environment)

3. Run "install-RunMeAsAdministrator.bat". This must be run as administrator by right-clicking and 
selecting "Run as Administator" (or by running command prompt as an administrator). You will be 
prompted to enter the location where you installed DNN. The installation script creates symlinks
between this repository and your DNN installation - in effect installing the files into DotNetNuke.

4. Add the following text to the compilation section of your web.config

	<codeSubDirectories>
		<add directoryName="StaffBroker" />
		<add directoryName="Account" />
		<add directoryName="casAuth" />
		<add directoryName="tntWebUsers" />
	</codeSubDirectories>

5. Install the modules in DotNetNuke - logging into your site as Host and going to Host->Extensions.
Click install new module from package - and select the AgapeConnect.StaffAdmin.dnn.zip file from this
repository. This will configure the modules on the website - and create the necesary tables in the 
database.