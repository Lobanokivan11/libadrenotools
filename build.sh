cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK_HOME/build/cmake/android.toolchain.cmake -DANDROID_ABI=arm64-v8a -DANDROID_NATIVE_API_LEVEL=28
cd build
make
cd ..
mkdir -p prebuilt/lib
mkdir -p prebuilt/include
cp build/libadrenotools.a prebuilt/lib
cp build/lib/linkernsbypass/liblinkernsbypass.a prebuilt/lib
cp build/src/hook/*.so prebuilt/lib
cp -rf include/* prebuilt/include
cp lib/linkernsbypass/android_linker_ns.h prebuilt/include
zip -r prebuilt.zip prebuilt
