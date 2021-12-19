TOOLCHAIN=~/project/github/vcpkg/scripts/buildsystems/vcpkg.cmake
rm -rf build
mkdir -p build &&  cd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN -DTEST_DLIB=ON -DTEST_OPENCV=ON
make
./test_dlib
./test_opencv
./test_version