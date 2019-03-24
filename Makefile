obj-m += onechar.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/${shell uname -r)/build M=${PWD) clean
load:
	insmod ./onechar.ko
unload:
	rmmod ./onechar.ko
