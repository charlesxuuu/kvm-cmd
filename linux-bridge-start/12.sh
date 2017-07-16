 sudo qemu-system-x86_64 -vnc :12 \
		-enable-kvm -smp 8 -m 16384 \
		-drive file=/home/chix/kvm/image/image-12.img,if=virtio \
		-net nic,macaddr=00:00:00:00:10:12,vlan=1 \
		-net tap,vhost=on,id=vnic1,script=/home/chix/kvm/lb-if-script/lb-ifup1,downscript=/home/chix/kvm/lb-if-script/lb-ifdown1,vlan=1 \
		-net nic,macaddr=00:00:00:00:11:12,vlan=2 \
		-net tap,vhost=on,id=vnic2,script=/home/chix/kvm/lb-if-script/lb-ifup2,downscript=/home/chix/kvm/lb-if-script/lb-ifdown2,vlan=2
