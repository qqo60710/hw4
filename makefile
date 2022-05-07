VERIOG = iverilog
TARGET = bcd.vcd
TEMP = bcd.vvp
$(TARGET) : bcd.vvp
	vvp bcd.vvp

$(TEMP): bcd_tb.v bcd.v
	$(VERIOG) -o bcd.vvp bcd_tb.v bcd.v
clean:
	-del $(TARGET)
	-del $(TEMP)