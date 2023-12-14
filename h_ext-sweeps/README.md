# External field sweeps 

For performing external field sweeps you can use the scripts contained in here.


## xsweep.sh

Linux script for repeating the simulation of an standard `run.py` magnumnp script. 

The xsweep.sh file takes three arguments: 

`$ ./xsweep.sh run.py init_h_ext final_h_ext incr`

Where, `run.py` is the python magnumno main script, `init_h_ext` is the initial value of the external field amplitude desired for the sweep, `final_h_ext` is the final field amplitude value and `incr` is the integer change in amplitude desired.

z.B.

`$ ./xsweep.sh relax.py -10 10 2` 

This instruction would call `relax.py` changing automatically the external field amplitude by 2 mT for each relaxation, starting from -10 mT until it reaches 10 mT

## xdatsweep.sh

This linux script will extract the final state for every external field amplitude simulated (average \( \vec{m}\) and fields) and create a new file `datsweep.dat` for plotting the field sweep. Just calling the script within the simulation folder will generate the dat file.

`$ ./xdatsweep.sh`

# Plotting with gnuplot
This scripts generate plots automatically from within the main folder of the simulation, following the scrutcure of `run.py`.

## gbzsweep.gp

Creates a plot with the file generated from each sweep `datsweep.dat` and plots the m_z component vs. h_ext

# P.D. 

The scripts are constructed in such a way they can be called at anytime of the simulation, to check in live the progress of your simulations.
