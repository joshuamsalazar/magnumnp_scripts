## xsweep.sh

Linux script for repeating the simulation of an standard `run.py` magnumnp script. 

The xsweep.sh file takes three arguments: 

`$ ./xsweep.sh run.py init_h_ext final_h_ext incr`

Where, `run.py` is the python magnumno main script, `init_h_ext` is the initial value of the external field amplitude desired for the sweep, `final_h_ext` is the final field amplitude value and `incr` is the integer change in amplitude desired.

z.B.

`$ ./xsweep.sh relax.py -10 10 2` 

This instruction would call `relax.py` changing automatically the external field amplitude by 2 mT for each relaxation, starting from -10 mT until it reaches 10 mT

![Simple call of xsweep.sh](../../../assets/xsweep_001.png)


Then, it stores the data of the simulation into an extra folder for each external field amplitude applied. 


The last script call would generate the following folders:

