#++++++3--------10++++++
inputUser=float(input("masukan angka yang bernilai\nkurang dari 3\natau \nlebih besar dari 10\n:"))
#++++++3------#memeriksa angka kurang dari 3
isiKurangDari=input(inputUser<3)
print("Kurang dari 3=",isiKurangDari)
#------10++++++
#memeriksa angka lebih dari 10
isLebihDari=(inputUser>10)
print("Lebih dari 10=",isLebihDari)
#++++++3------10+++++++
#kasus irisan
print("\n",10*"=","\n")
inputUser=float(input("masukan angka bernilai\lebih dari 3\ndan\nkurang dari 10\n:"))
#---3++++++
#lebih dari
isiLebihDari=inputUser>3
print("Lebih dari 3=",isiLebihDari)
#++++++++10-------
#kurang dari 10
isiKurangDari=inputUser<10
print("Kurang dari 10=",isiKurangDari)
#-----3++++++10------
isiCorrect=isiKurangDari and isiLebihDari
print("angka yang anda masukan:",isiCorrect)