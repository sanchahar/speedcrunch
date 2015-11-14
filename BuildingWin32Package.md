# Introduction #

We want a compact static build without unneeded Qt features. The resulting binary will not have dependencies on the dynamic Microsoft run time libraries. [UPX](http://upx.sourceforge.net/) will squeeze the last bit of air out of it. [InnoSetup](http://www.jrsoftware.org/isinfo.php) will make the installation easy.
Qmake is used here, rather than cmake.

# Details #

## Patching the MkSpec ##
In order to statically link against Microsofts libraries, we patch the file _(qtdir)\mkspecs\win32-msvcXYZ\qmake.conf_
```
QMAKE_CFLAGS_RELEASE	= -O2 -MD
QMAKE_CFLAGS_DEBUG	= -Zi -MDd
```
to
```
QMAKE_CFLAGS_RELEASE	= -O2 -MT
QMAKE_CFLAGS_DEBUG	= -Zi -MTd
```

## Building Qt ##
```
@Rem Configuring Qt
configure -static -release -fast -no-exceptions -no-stl -no-webkit -no-xmlpatterns -no-phonon -no-qt3support -no-opengl -no-style-cde -no-style-cleanlooks -no-style-motif -no-style-plastique -no-sql-sqlite -no-openssl
 
@Rem Building Qt libs
pushd src
jom
popd
 
@Rem Building lrelease
pushd tools\linguist\lrelease
jom
popd


```

## Creating the installer package ##
```
@Rem Preparing build
git clean -dxf
lrelease speedcrunch.pro

@Rem Building Speedcrunch
qmake
jom

@Rem Packing the .exe
upx --best release\speedcrunch.exe

@Rem Building the installer package
ISCC.exe winsetup.iss


```