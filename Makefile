all: gbahack.elf
gbahack.elf: *.go
	tinygo build -o gbahack.elf -target gameboy-advance .
gbahack.gba: gbahack.elf
	arm-none-eabi-objcopy -v -O binary gbahack.elf gbahack.gba
run: gbahack.gba
	mgba-qt gbahack.gba
clean:
	rm -f gbahack.gba gbahack.elf gbahack.sav
