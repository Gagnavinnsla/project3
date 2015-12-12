import pandas as pd 
import psycopg2
import getpass


host = 'localhost'
dbname = 'gagnasafn'

username = 'postgres'
pw = 'postgres'
conn_string = "host='{}' dbname='{}' user='{}' password='{}'".format(host, dbname, username, pw)

print("Connecting to database {}.{} as {}".format(host, dbname, username))

conn = psycopg2.connect(conn_string)

cursor = conn.cursor()

print("Connected!\n")

mannfjoldaspa = pd.read_csv('mannfjoldspa2065.csv', sep=',',encoding='utf-8') #
erlendirfar = pd.read_csv('erlendirfar2003.csv', sep=',',encoding='utf-8') #
haskolanam= pd.read_csv('nemendurihaskola.csv', sep=',',encoding='utf-8') 
fasteignaverd = pd.read_csv('Soluverdibudir.csv', sep=';',encoding='utf-8') #
fasteignaverd[fasteignaverd.columns[2]]=fasteignaverd[fasteignaverd.columns[2]].str[:-4].str.replace('.','')#
laun = pd.read_csv('laun1998.csv', sep=';',encoding='utf-8')#
mannfjoldi = pd.read_csv('mannfjoldi.csv', sep=';',encoding='utf-8')#
utskrifadir= pd.read_csv('utskrifadirhaskola.csv', sep=',',encoding='utf-8') #
byggdaribudir = pd.read_csv('Byggdar_ibudir.csv', sep=';',encoding='utf-8') #
for i in range(len(fasteignaverd)):
	command="""insert into fasteignaverd (ibudir, timi, kostnm2) values ('{}', '{}', '{}')\n""".format(fasteignaverd.iloc[i,3],fasteignaverd.iloc[i,0],fasteignaverd.iloc[i,2])
	cursor.execute(command)
for i in range(len(mannfjoldaspa)):
	command="""insert into mannfjoldaspa (timi, spa) values ('{}', '{}')\n""".format(mannfjoldaspa.iloc[i,0],mannfjoldaspa.iloc[i,1])
	cursor.execute(command)
for i in range(len(erlendirfar)):
	command="""insert into erlendirferda (fjoldi, timi) values ('{}', '{}')\n""".format(erlendirfar.iloc[i,1],erlendirfar.iloc[i,0])
	cursor.execute(command)
for i in range(len(mannfjoldi)):
	command="""insert into mannfjoldi (timi, mannfjoldi) values ('{}', '{}')\n""".format(mannfjoldi.iloc[i,0],mannfjoldi.iloc[i,1])
	cursor.execute(command)
for i in range(len(haskolanam)):
	command="""insert into haskolanam (fjoldi,timi) values ('{}', '{}')\n""".format(haskolanam.iloc[i,1],haskolanam.iloc[i,0])
	cursor.execute(command)
for i in range(len(utskrifadir)):
	command="""insert into utskrifadirhaskola (timi,yngri,aldur20til21ara, aldur22til24ara,aldur25til29) values ('{}', '{}', '{}','{}','{}')\n""".format(utskrifadir.iloc[i,0],utskrifadir.iloc[i,0],utskrifadir.iloc[i,2],utskrifadir.iloc[i,3],utskrifadir.iloc[i,4])
	cursor.execute(command)
for i in range(len(laun)):
	command="""insert into laun ( timi, regluleglaun) values ('{}', '{}')\n""".format(laun.iloc[i,0],laun.iloc[i,5])
	cursor.execute(command)
for i in range(len(byggdaribudir)):
	command="""insert into ibudirfullgerdar (timi, fjoldi) values ('{}', '{}')\n""".format(byggdaribudir.iloc[i,0],byggdaribudir.iloc[i,1])
	cursor.execute(command)

conn.commit()
cursor.close()
conn.close()