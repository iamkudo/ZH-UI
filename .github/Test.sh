echo "- Chạy thử nghiệm lệnh"
echo

sudo apt-get update > /dev/null
sudo apt-get install zstd binutils e2fsprogs erofs-utils simg2img img2simg > /dev/null
pip3 install protobuf bsdiff4 six crypto construct google docopt pycryptodome > /dev/null

echo "pycryptodome
docopt
protobuf<=3.20.1" > requirements.txt
pip3 install -r requirements.txt > /dev/null

Cuphap() { 
lpmake 
resize2fs
e2fsck
make_ext4fs
zstd --help 
hexdump --help
tune2fs
fsck.erofs
mkfs.erofs
7z
java 
simg2img | tee 1.txt
rimg2sdat | tee 1.txt
img2simg | tee 1.txt
sdat2img | tee 1.txt
mount --help | tee 1.txt
magiskboot 2>&1 | tee 1.txt 
}

TOME="$GITHUB_WORKSPACE" 

Taotaptin() { 
echo " Thử ngiệm"
ls /
sudo mkdir -p /mnt/s
ls /mnt
echo " Tạo nơi chứa"
mkdir -p $TOME/tmp
mkdir -p $TOME/Apk
touch $TOME/Apk/test.txt
echo " Tạo ext4"
make_ext4fs -J -T 0 -l 4532M -a system -L test $TOME/tmp/test.img $TOME/Apk
ls $TOME/tmp/test.img 
echo "Mount tập tin"
sudo mount -o rw,loop $TOME/tmp/test.img /mnt/s
sudo touch /mnt/s/tam.md 
ls /mnt/s
echo "Bỏ mount"
sudo umount /mnt/s
echo "Kiểm tra thư mục"
ls /mnt/s
echo " Kết thúc"
} 
