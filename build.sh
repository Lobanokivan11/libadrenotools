mkdir -p prebuilt/lib
mkdir -p prebuilt/include
cp libadrenotools.a prebuilt/lib
cp lib/linkernsbypass/liblinkernsbypass.a prebuilt/lib
cp src/hook/*.so prebuilt/lib
cp -rf ../include/* prebuilt/include
cp ../lib/linkernsbypass/android_linker_ns.h prebuilt/include
