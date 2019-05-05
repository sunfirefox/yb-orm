set BAT_DIR=%~dp0
call %BAT_DIR%..\bin\yborm_env.bat

set BAT_DIR=%~dp0
cmake -G "MinGW Makefiles" -D CMAKE_CXX_FLAGS="-m32 -Wno-deprecated-declarations" CMAKE_C_FLAGS="-m32" -D CMAKE_INSTALL_PREFIX:PATH=%BAT_DIR%.. -D DEP_LIBS_ROOT:PATH=%DEP_LIBS_ROOT% -D BOOST_ROOT:PATH=%BOOST_ROOT% -D Boost_ARCHITECTURE="-x32" -D USE_QT:STRING=%USE_QT% -D YBORM_ROOT:PATH=%BAT_DIR%.. %BAT_DIR%..\src\examples\tutorial
mingw32-make && mingw32-make install
