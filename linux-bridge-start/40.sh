 sudo qemu-system-x86_64 -vnc :40 \
		-enable-kvm -smp 8 -m 16384 \
		-drive file=/home/chix/kvm/image/image-40.img,if=virtio \
		-net nic,macaddr=00:00:00:00:10:40,vlan=1 \
		-net tap,vhost=on,id=vnic1,script=/home/chix/kvm/lb-if-script/lb-ifup1,downscript=/home/chix/kvm/lb-if-script/lb-ifdown1,vlan=1 \
		-net nic,macaddr=00:00:00:00:11:40,vlan=2 \
		-net tap,vhost=on,id=vnic2,script=/home/chix/kvm/lb-if-script/lb-ifup2,downscript=/home/chix/kvm/lb-if-script/lb-ifdown2,vlan=2
