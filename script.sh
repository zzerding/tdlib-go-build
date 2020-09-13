git clone https://github.com/tdlib/td.git
cd td
Remove-Item build -Force -Recurse -ErrorAction SilentlyContinue
mkdir build
cd build
cmake -A x64 -DCMAKE_INSTALL_PREFIX:PATH=../tdlib -DCMAKE_TOOLCHAIN_FILE:FILEPATH=../vcpkg/scripts/buildsystems/vcpkg.cmake ..
cmake --build . --target install --config Release
cd ..
cd ..
