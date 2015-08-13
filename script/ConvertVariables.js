/****************************************************************************
**
** The MIT License (MIT)
**
** Copyright (c) 2015 Benjamin Pannell
**
** $BEGIN_LICENSE:MIT$
** Permission is hereby granted, free of charge, to any person obtaining a copy
** of this software and associated documentation files (the "Software"), to deal
** in the Software without restriction, including without limitation the rights
** to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
** copies of the Software, and to permit persons to whom the Software is
** furnished to do so, subject to the following conditions:
**
** The above copyright notice and this permission notice shall be included in
** all copies or substantial portions of the Software.
**
** THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
** IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
** FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
** AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
** LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
** OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
** SOFTWARE.
**
** $END_LICENSE$
**
****************************************************************************/

var fs = require('fs'),
	path = require('path');

var sourceFile = process.argv[2],
	destFile = process.argv[3];

if(path.extname(sourceFile) !== '.less') throw new Error("Expected the input to be a FontAwesome variables.less file");
if(path.extname(destFile) !== '.qml') throw new Error("Expected the output to be a QML file");

fs.readFile(sourceFile, 'utf8', function(err, sourceData) {
	if(err) throw err;

	var icons = 0;

	var targetData = [
		"/****************************************************************************",
		"**",
		"** The MIT License (MIT)",
		"**",
		"** Copyright (c) 2015 Benjamin Pannell",
		"**",
		"** $BEGIN_LICENSE:MIT$",
		"** Permission is hereby granted, free of charge, to any person obtaining a copy",
		"** of this software and associated documentation files (the \"Software\"), to deal",
		"** in the Software without restriction, including without limitation the rights",
		"** to use, copy, modify, merge, publish, distribute, sublicense, and/or sell",
		"** copies of the Software, and to permit persons to whom the Software is",
		"** furnished to do so, subject to the following conditions:",
		"**",
		"** The above copyright notice and this permission notice shall be included in",
		"** all copies or substantial portions of the Software.",
		"**",
		"** THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR",
		"** IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,",
		"** FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE",
		"** AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER",
		"** LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,",
		"** OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE",
		"** SOFTWARE.",
		"**",
		"** $END_LICENSE$",
		"**",
		"****************************************************************************/",
		"",
		"import QtQuick 2.0",
		"",
		"QtObject {"
	].join('\n');

	sourceData.replace(/@fa-var-([^:]+): "\\([a-f0-9]+)";/g, function(line, name, code) {
		icons++;
		name = 'fa-' + name;
		targetData += "\n\treadonly property string " + name.replace(/-/g, '_') + ": \"\\u" + code + "\""
	});

	targetData += "\n}";

	fs.writeFile(destFile, targetData, { encoding: 'utf8' }, function(err) {
		if(err) throw err;
		console.log("Wrote new QML variables file with %d icons.", icons);
	});
});