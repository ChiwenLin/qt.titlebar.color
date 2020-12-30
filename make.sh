mkdir -p build
cd build
rm -rf .qmake.stash .moc .obj .rcc .ui .xcode *.xcodeproj moc_* ui_* qrc_*
qmake ../test.pro -spec macx-xcode CONFIG+=x86_64
