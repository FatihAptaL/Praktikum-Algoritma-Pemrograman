print("----------------- Program Kasir Ankringan -----------------")
pembeli = input("Masukkan nama Pembeli: ")
print ("Nama Pembeli :", pembeli)
alamat = input("Masukan Alamat : ")
handphone = input("Masukan No Handphone : ")
import datetime
x = datetime.datetime.now()


def fungsimakanan():
   global totalmkn
   global porsi
   global mkn
   print ("\n----------------- Menu Makanan -----------------")
   print("1. Nasi Kucing - Rp 3000")
   print("2. Sate usus - Rp 2500")
   print("3. Sate Ampela - Rp 2500")
   nomor=int(input("Masukan Pilihan: "))
   porsi= int(input("Berapa Porsi: "))
   
   if nomor==1:
       totalmkn=porsi*3000
       print (porsi," porsi Nasi Kucing = Rp", totalmkn)
       mkn=("Nasi Kucing")
   elif nomor==2:
       totalmkn=porsi*2500
       print (porsi," porsi Sate Usus = Rp", totalmkn)
       mkn=("Sate Usus")
   elif nomor==3:
       totalmkn=porsi*2500
       print (porsi, " porsi Sate Ampela = Rp", totalmkn)
       mkn=("Sate Ampela")
   else:
      print("Pilihan tidak ada, silahkan masukan lagi!!")
      fungsimakanan()

def fungsiminuman():
   global totalmnm
   global mnm
   global gelas
   print("\n----------------- Menu Minuman -----------------")
   print("1. Es teh - Rp 3000")
   print("2. Es jeruk - Rp 4000")
   print("3. Es kopi - Rp 3000")
   nomor=int(input("Masukan Pilihan: "))
   gelas= int(input("Berapa Gelas: "))

   if nomor==1:
       totalmnm=gelas*3000
       print (gelas," Es Teh = Rp", totalmnm)
       mnm=(" Gelas Es Teh")
   elif nomor==2:
       totalmnm=gelas*4000
       print (gelas, " Gelas Es Jeruk = Rp", totalmnm)
       mnm=("Es Jeruk")
   elif nomor==3:
       totalmnm=gelas*3000
       print (gelas, " Gelas Es Kopi = Rp", totalmnm)
       mnm=("Es Kopi")
   else:
      print("Pilihan tidak ada, silahkan masukan lagi!!")
      fungsiminuman()

fungsimakanan()
fungsiminuman()
totalsemua=totalmkn+totalmnm

print("\nTotal harus Dibayar: Rp",totalsemua)
uang=int(input("Uang Tunai Pembeli: Rp "))
kembalian=int(uang-totalsemua)
print("Kembalian :",kembalian)

print("\n==================================")
print("========== S T R U K   B E L I =========")
print("==================================")
print ("Nama\t\t:",pembeli)
print ("Alamat\t\t:",alamat)
print ("No Handphone\t:",handphone)
print ("Tanggal\t\t:", x)
print ("Beli\t\t:",porsi,mkn,"( Rp", totalmkn,")")
print ("\t\t ",gelas,mnm,"( Rp", totalmnm,")")
print ("Tagihan\t\t: Rp",totalsemua)
print ("Dibayar\t\t: Rp",uang)
print ("Kembalian\t: Rp",kembalian)
print("==================================")
print("==================================")