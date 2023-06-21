clear
sleep 0.5
echo "Halo user, siapa namamu?";
echo -e -n "Nama mu > ";read nama
sleep 1
echo "verification..."
sleep 1
clear
echo "Halo $nama!";
echo "Perkenalkan Namaku Robert";
sleep 2
menu(){
clear
echo "Jadi $nama, Apa yang kamu inginkan?"
sleep 1
echo "1.Jalankan Project Saya";
sleep 0.5
echo "2.Hapus File";
sleep 0.5
echo "3.Buat File Project";
sleep 0.5
echo "4.Keluar"
sleep 0.5
echo "?";
sleep 1
echo -e -n "Yang kamu inginkan> ";read pil

if [[ $pil == "1" ]]; then
	echo "Baiklah, tunggu sebentar ya!"
	sleep 1
	echo "tunggu, apa nama projectmu?"
	echo -e -n "Nama Projectmu> ";read np
	sleep 0.5
	echo "ekstensi nya?"
	echo -e -n "ekstensi> ";read eks
	sleep 1
	echo "selesai!!!"
	sleep 0.5
	bash $np.$eks
	menu
elif [[ $pil == "2" ]]; then
	echo "Baiklah, tunggu sebentar ya!"
	sleep 1
	echo "apa nama file nya?"
	echo -e -n "Nama File> ";read np
	echo "apa ekstensi nya?"
	echo -e -n "ekstensi> ";read eks
	sleep 1
	echo "selesai!!!"
	sleep 0.5
	rm $np.$eks
	menu
elif [[ $pil == "3" ]]; then
	echo "Baiklah, tunggu sebentar ya!"
	sleep 1
	echo "apa nama file yang mau kamu buat?"
	echo -e -n "Nama File> ";read np
	echo "apa ekstensi nya?"
	echo -e -n "ekstensi> ";read eks
	sleep 1
	echo "selesai!!!"
	sleep 0.5
	touch $np.$eks
	menu
elif [[ $pil == "4" ]]; then
	echo "tunggu sebentar"
	sleep 1
	bash Kata.sh
else 
	echo "ups, aku tidak menemukan perintah itu, maaf"
	menu
fi
}
menu