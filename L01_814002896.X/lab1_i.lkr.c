

ACCESSBANK  NAME=accessram  START=0X0   END=0X7F
DATABANK  NAME=gpr0   START=0x90    END=0x380
DATABANK  NAME=gpr1   START=0x381   END=0x5FF

DATABANK NAME=dbgspr START=0x80 	END=0x90 	PROTECTED
ACCESSBANK  NAME=accesssfr  START=0xF80   END=0xFFF   PROTECTED

CODEPAGE NAME=debug START=0x4000 END=0x4512		PROTECTED

STACK SIZE=0x80 RAM=gpr1