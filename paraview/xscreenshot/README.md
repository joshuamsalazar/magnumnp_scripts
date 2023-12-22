### xscreenshot.sh

This script automatically generates an screenshot of a top view of a vti file.

You can call it directly as:

```bash
./xscreenshot.sh 
```

It uses the `pvpython` scripting application to work, so make sure you have Paraview installed and properly set up for you machine. You can find `pvpython` within the paraview\_X.x/bin in your Paraview installation directory. You may want to add it to your enviroment variables, (How do i do it?)
To test it place it within the bin directory and run:

```bash
pvpython top_screenshot.py file.vti 
```

Where `file.vti` is the structure to load.

![Example of the top view automatic generation](../../assets/xscreenshot_001.png)

Then, the figure is generated based on the name of the file:

![Plot generated automatically](../../assets/xscreenshot_002.png)
