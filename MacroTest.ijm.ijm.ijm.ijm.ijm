#**
** Danuta Sastre
* ZidasTest
* 20090623
*/

run("HeLa Cells (1.3M, 48-bit RGB)");
run("Split Channels");
selectWindow("C3-hela-cells.tif");
setOption("ScaleConversions", true);
run("8-bit");setAutoThreshold("Default dark no-reset");
//run("Threshold...");
setAutoThreshold("Triangle dark no-reset");
//setThreshold(20, 255);
setOption("BlackBackground", true);
run("Convert to Mask");
run("Set Measurements...", "area mean min centroid redirect=C3-hela-cells.tif decimal=3");
run("Analyze Particles...", "  show=Outlines display exclude clear add");
selectWindow("Drawing of C3-hela-cells.tif");
selectWindow("C3-hela-cells.tif");
selectWindow("Drawing of C3-hela-cells.tif");
