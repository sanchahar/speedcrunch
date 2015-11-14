How to build the OSX package from scratch. Version 0.10.1 was built with Qt 4.4.0 using CMake 2.6 (2.4 has a few issues with Qt 4.2.x+ and OSX).

## Characteristics of a nice OSX package ##
  * Universal binary for ppc and i386
  * Static linking against Qt. _Compact binaries, faster application startup_
  * Disabled unneded Qt features. _Even more compact binaries, faster build of Qt_
  * One application bundle that can be dropped into the applications folder
  * Packaged and shipped as compressed disk image (.dmg)

## Configuring and compiling Qt ##
```
configure -static -release -universal -prefix $PWD -no-exceptions -no-stl -no-webkit -no-xmlpatterns -no-phonon -no-qt3support -no-opengl -D QT_NO_STYLE_CDE -D QT_NO_STYLE_CLEANLOOKS -D QT_NO_STYLE_MOTIF -D QT_NO_STYLE_PLASTIQUE -D QT_NO_COLORDIALOG -D QT_NO_ERRORMESSAGE -D QT_NO_FONTDIALOG -D QT_NO_PRINTDIALOG -D QT_NO_TABDIALOG -D QT_NO_DATAWIDGETMAPPER -D QT_NO_COLUMNVIEW -D QT_NO_XMLSTREAM -D QT_NO_COP -D QT_NO_HOSTINFO -D QT_NO_NETWORKPROXY -D QT_NO_UDPSOCKET -D QT_NO_URLINFO -D QT_NO_DIRECTPAINTER -D QT_NO_PAINTONSCREEN -D QT_NO_PICTURE -D QT_NO_COMPLETER -D QT_NO_UNDOCOMMAND -D QT_NO_LCDNUMBER -D QT_NO_FONTCOMBOBOX -D QT_NO_DIAL -D QT_NO_GRAPHICSVIEW -D QT_NO_MDIAREA -D QT_NO_TOOLBOX -nomake examples -nomake demos -confirm-license
```
These configure options assume that we are on an Intel. If we were in ppc, we also had to specify -SDK with the 10.4u Sdk location. The "-prefix" option is needed if we don't want to install this Qt build.

## Compiling SpeedCrunch ##
First we add the bin directory of the fresh Qt build to PATH and set the QTDIR.
The binary translation files need to be generated:
```
lrelease speedcrunch.pro
```
Then, just to be sure that the ppc part also runs on OSX 10.3.9 (although it is most probably not needed) we export:
```
export MACOSX_DEPLOYMENT_TARGET=10.3
```
Now, we just cd into the src/ folder and build the package in order to get the application bundle:
```
cmake .
make
```
Stripping shapes the size of the binary down:
```
strip SpeedCrunch.app/Contents/MacOS/SpeedCrunch
```

## Packaging Speedcrunch ##
We copy the SpeedCrunch.app bundle (with subfolders!) and a few READMEs into a folder:
```
mkdir -p deployment/SpeedCrunch.app
cp -r SpeedCrunch.app/ deployment/SpeedCrunch.app/
cp ../COPYING ../README ../LISEZMOI deployment/
```
Then, we generate the disk image:
```
hdiutil create -volname "SpeedCrunch" -ov -format UDZO -imagekey zlib-level=9 -srcfolder "deployment" "SpeedCrunch-0.10.1.dmg"
```
Enjoy :)