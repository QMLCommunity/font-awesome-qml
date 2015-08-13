# 4.4.0
- Updated to FontAwesome 4.4.0
- Added a Node.js script to simplify updating to newer versions of FontAwesome
    You will need to copy the latest `fontawesome-webfont.ttf` file into `resource` and then run
    `node script/ConvertVariables.js /path/to/fontawesome/less/variables.less controls/Variables.qml`
    which will update the icon list. Finally, bump the version number in `main.cpp` to match the latest
    FontAwesome version number.
