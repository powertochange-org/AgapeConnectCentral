Author: Sam Jones
Date: July 31, 2014

Regarding: Mobile version of Carmel skin package

Notes:
In making this skin mobile responsive, I modified the 'Gravity' skin from the default DNN 7 installation. This skin appears to have include some custom css and js files that work with Bootstrap css and js files.
The main custom files include the bootstrapNav folder and the js/script.js file. In particular, the script.js file has code for the dropdown menu functionality when in a mobile view. I added a function there to remove some classes from element when moving out of a mobile view. 
This should only really apply when changing screen sizes on a desktop. It should all work fine in a mobile screen.