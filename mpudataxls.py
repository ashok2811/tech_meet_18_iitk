from mpu6050 import mpu6050
import xlwt
import time

sensor= mpu6050(0x68)

book = xlwt.Workbook(encoding="utf-8")

sheet1 = book.add_sheet("Sheet 1")

i=0

sumgx=0
sumgy=0
sumgz=0
sumx=0
sumy=0
sumz=0

for a in range(200):
        print i
	i = i+1
	b=sensor.get_accel_data()
	c=sensor.get_gyro_data()
	sumgx=sumgx+c[0]
        sumgy=sumgy+c[1]
        sumgz=sumgz+c[2]
        sumx=sumx+b[0]
        sumy=sumy+b[1]
        sumz=sumz+b[2]
	
	sheet1.write(i, 0, b[0]+0.2628684)
	sheet1.write(i, 1, b[1]-0.0197483)
	sheet1.write(i, 2, b[2]+0.365771)
	sheet1.write(i, 3, c[0]+2.8002778626)
	sheet1.write(i, 4, c[1]-1.73670839695)
	sheet1.write(i, 5, c[2]-0.537832061069)
	

book.save("d40.xls")

