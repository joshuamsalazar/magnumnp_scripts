### xscreenshot.sh

This script automatically generates an screenshot of a top view of a vti file.

You can call it directly as:

```bash
./xscreenshot.sh 
```

It uses the `pvpython` scripting application to work, so make sure you have Paraview installed and properly set up for you machine. You can find `pvpython` within the paraview\_X.x/bin in your Paraview installation directory.

To test it place it within the bin directory and run:

```bash
pvpython pv_screenshot.py file.vti Field

```

Where `file.vti` is the structure to load, and `Field` is the vector field you want to use for the color display.


