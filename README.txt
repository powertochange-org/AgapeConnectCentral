These are central modules for AgapeConnect - and are is a prerequisite for all other modules.

SETTING UP YOUR DEVELOPMENT ENVIRONMENT

1. Install the latest version of DNN (From WebMatrix)

2. Ensure that this repository is checkout into a separate directory (outside your DNN environment)

3. Open a command prompt as Administrator and navigate to this repository. Run
"install-RunMeAsAdministrator.bat". This must be run as administrator by right-clicking and 
selecting "Run as Administator" (or by running command prompt as an administrator). You will be 
prompted to enter the location where you installed DNN. The installation script creates symlinks
between this repository and your DNN installation - in effect installing the files into DotNetNuke.
There is no harm in re-running this script at any point in the future.

4. Install the modules in DotNetNuke - logging into your site as Host and going to Host->Extensions.
On the second tab (Available Extensions), install all of the AgapeConnect modules.

5. Finally: install the AgapeConnect template, by going to Admin->SiteWizard.

