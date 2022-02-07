@echo off
echo Marking precedend builds for clean up...
@echo on

ren checked-out_sources checked-out_sources_old
ren dist dist_old
mkdir checked-out_sources
cd checked-out_sources
git clone --branch master --depth 1 --single-branch https://git.vaudoise.ch/scm/~sio/timbrage-against-the-machine.git
cd timbrage-against-the-machine

@echo off
echo INSTALLING PACKAGES...
@echo on

call npm i

@echo off
echo done.
echo BUILDING DIST PACKAGE...
@echo on

call ng build --output-path ../../dist

cd ../..

@echo off
echo Cleaning up precedend builds...
@echo on
rmdir /s /q checked-out_sources_old
rmdir /s /q dist_old