folder = system("echo $FOLDER")
if (strlen(folder) == 0) {
    folder = "data"
}

set xlabel "Field [mT]"
#set xlabel "$\\mu h_{\\text{ext,z}}$ [mT]"
set ylabel "M_z"
set grid
set key bottom right
set terminal png

# Infinite loop to keep updating the plot
#while (1) {
    set output "plt_compare_k.png"
    plot "datsweep_korg.dat" u 1:5 w l lw 2title "m_z signal (k1=korg)", \
         "datsweep_korg_1.2.dat" u 1:5 w l lw 2title "m_z signal (k1=korg*1.2)", \
         "datsweep_korg_1.3.dat" u 1:5 w l lw 2title "m_z signal (k1=korg*1.3)", \
         "datsweep_korg_0.8.dat" u 1:5 w l lw 2title "m_z signal (k1=korg*0.8)", \
	 "1dmin_bxsweep_M2_1nm.dat" u 1:2 w p lw 2 title "m_z signal (single spin: PDE)", \
	 "expt_bxsweep_M2_1nm.dat" u 1:2 w p lw 2 title "m_z signal (expt.)"
	 
set terminal x11 
    plot "datsweep_korg.dat" u 1:5 w l lw 2title "m_z signal (k1=korg)", \
         "datsweep_korg_1.2.dat" u 1:5 w l lw 2title "m_z signal (k1=korg*1.2)", \
         "datsweep_korg_1.3.dat" u 1:5 w l lw 2title "m_z signal (k1=korg*1.3)", \
         "datsweep_korg_0.8.dat" u 1:5 w l lw 2title "m_z signal (k1=korg*0.8)", \
	 "1dmin_bxsweep_M2_1nm.dat" u 1:2 w p lw 2 title "m_z signal (single spin: PDE)", \
	 "expt_bxsweep_M2_1nm.dat" u 1:2 w p lw 2 title "m_z signal (expt.)"
pause -1
