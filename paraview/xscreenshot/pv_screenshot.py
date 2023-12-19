from paraview.simple import *
import os, sys

# Check if the correct number of arguments are provided
if len(sys.argv) < 3:
    print("Usage: pvpython script_name.py <path_to_vti_file> <field_name>")
    print("Example: pvpython script_name.py data.vti Temperature")
    sys.exit(1)

# Open a VTI file
data = OpenDataFile( str(sys.argv[1]) )

# Set the active view to RenderView for visualization
view = GetActiveViewOrCreate('RenderView')

# Set visualization parameters
# This includes setting the color map and other view settings
# Replace 'YourFieldName' with the actual field name you want to color by
ColorBy(GetDisplayProperties(data), ('POINTS', str(sys.argv[2])) )

# Set the coloring to surface (adjust as needed)
dp = GetDisplayProperties(data)
dp.Representation = 'Surface'

# Take a screenshot
SaveScreenshot('screenshot.png', view)

