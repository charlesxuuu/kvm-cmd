 sudo qemu-system-x86_64 -vnc :36 \
		-enable-kvm -smp 8 -m 16384 \
		-drive file=/home/chix/kvm/image/image-36.img,if=virtio \
		-net nic,macaddr=00:00:00:00:10:36,vlan=1 \
		-net tap,vhost=on,id=vnic1,script=/home/chix/kvm/ovs-if-script/ovs-ifup1,downscript=/home/chix/kvm/ovs-if-script/ovs-ifdown1,vlan=1 \
		-net nic,macaddr=00:00:00:00:11:36,vlan=2 \
		-net tap,vhost=on,id=vnic2,script=/home/chix/kvm/ovs-if-script/ovs-ifup2,downscript=/home/chix/kvm/ovs-if-script/ovs-ifdown2,vlan=2
