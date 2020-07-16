10 J=1
20 FOR period=1 TO 4095 STEP 10
30  channel = 1 '1 to 3
40  ' period from 0 and 4095 = period=(62,500/frequency)
50  duration = 10 ' 1/100 sec
60  volume = 10
70  envolume = 0
80  enfrequancy = 0
90  noize = 0
95  SOUND 2, period, duration-5, volume-5 , envolume,enfrequancy, noize
100  SOUND channel, period, duration, volume , envolume,enfrequancy, noize
105  SOUND 2, period, duration-5, volume-5 , envolume,enfrequancy, noize
106  SOUND 2, period, duration-5, 0 , envolume,enfrequancy, noize
110  'IF J = 5 THEN SOUND 2,400,30,5,15,15,0 : j=0
120  ' J = J+1
130  cls
140  print period
150 NEXT period