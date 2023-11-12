build/%.bin: src/%.asm
	nasm $< -o $@

build/master.img: build/boot.bin build/core.bin build/c17-1.bin build/c17-2.bin
ifeq ("$(wildcard build/master.img)", "")
	bximage -q -hd=16 -func=create -sectsize=512 -imgmode=flat $@
endif
	dd if=build/boot.bin of=$@ bs=512 count=1 conv=notrunc
	dd if=build/core.bin of=$@ bs=512 count=8 conv=notrunc seek=1
	dd if=build/c17-1.bin of=$@ bs=512 count=3 conv=notrunc seek=50
	dd if=build/c17-2.bin of=$@ bs=512 count=4 conv=notrunc seek=100


.PHONY:bochs
bochs: build/master.img
	rm -rf build/bx_enh_dbg.ini
	cd build && bochs -q -unlock

.PHONY:clean
clean:
	 rm -rf build/bx_enh_dbg.ini
	 rm -rf build/master.img
	 rm -rf build/*.bin
