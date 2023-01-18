cd ../../..
set TL_LIBRARIES_PATH=%CD%

mkdir %TL_LIBRARIES_PATH%\_build\win64\abseil & cd %TL_LIBRARIES_PATH%\_build\win64\abseil
cmake -G "Visual Studio 16 2019" -A x64 ^
 -DCMAKE_INSTALL_PREFIX=%TL_LIBRARIES_PATH%/output/abseil ^
 -DCMAKE_INSTALL_LIBDIR="lib/win64/$<$<CONFIG:Debug>:Debug>$<$<CONFIG:Release>:Release>" ^
 -DCMAKE_INSTALL_CMAKEDIR=lib/win64/cmake ^
 -DCMAKE_POLICY_DEFAULT_CMP0091=NEW -DCMAKE_MSVC_RUNTIME_LIBRARY=MultiThreadedDLL ^
 %TL_LIBRARIES_PATH%/Source/abseil/abseil
cmake --build . --target INSTALL --config Debug
cmake --build . --target INSTALL --config Release 