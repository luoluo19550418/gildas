#ipython averms.py '0495+050_05040811L_900.dat'
import numpy as np
import sys

# dif beamsize bur rms ave
filename=sys.argv[1]
rms=[]
with open(filename,'r') as fr:
  lines=fr.readlines()
  for line in lines:
    value=[float(s) for s in line.split( )]
    rms.append(value[0])
with open ('rms.dat','a') as fw:
  averms=np.mean(rms)
  fw.write(str(averms))
  fw.write('\n')
fw.close

