
CIFFI = 0
LIND = 0
LIND4 = 0
ISISXL = 0
ISISXL512 = 0
LINDLUX = 0
PROCXSLT = 0
_FILE_OFFSET_BITS = 0
_LARGEFILE64_SOURCE = 0
SIXTY_FOUR = 0
SUPERISIS = 0
MAXMFRL=0

CICONF1 = -DCIFFI=$(CIFFI) -DLIND=$(LIND) -DLIND4=$(LIND4) -DISISXL=$(ISISXL) -DISISXL512=$(ISISXL512) -DLINDLUX=$(LINDLUX) -DPROCXSLT=$(PROCXSLT) -D_FILE_OFFSET_BITS=$(_FILE_OFFSET_BITS) -D_LARGEFILE64_SOURCE=$(_LARGEFILE64_SOURCE) -DSIXTY_FOUR=$(SIXTY_FOUR) -DSUPERISIS=$(SUPERISIS) -DMAXMFRL=$(MAXMFRL)
#CICONF1 = -DCIFFI=$(CIFFI) -DLIND=$(LIND) -DISISXL=$(ISISXL) -DISISXL512=$(ISISXL512) -DLINDLUX=$(LINDLUX)
CICONF2 = -DCIWTF=0 -DINCPROCX=0 -DINCPRECX=0 -DEXCFMCGI=1 -DEXCFMXML=1 -D_GLIBC_VERSIONED_SOURCE

CC = cc
CCFLAGS = -funsigned-char -Wall
CCLIBS = -lm
CCOPTS = -c $(CCFLAGS) $(CICONF1) $(CICONF2)

decs9b: decs9b.o cidbx.o cigiz.o cirec.o ciupd.o citrm.o ciutl.o ciutf8.o
	echo ld decs9b..
	$(CC) -o decs9b decs9b.o cidbx.o cigiz.o cirec.o ciupd.o citrm.o ciutl.o ciutf8.o $(CCLIBS)

decs9b.o: decs9b.c cisis.h
	echo decs9b..
	$(CC) $(CCOPTS) decs9b.c

ciutf8.o: ciutf8.c cisis.h
	 echo ciutf8..
	$(CC) $(CCOPTS) ciutf8.c 

cidbx.o: cidbx.c cisis.h
	echo cidbx..
	$(CC) $(CCOPTS) cidbx.c

cigiz.o: cigiz.c cisis.h
	 echo cigiz..
	 $(CC) $(CCOPTS) cigiz.c

cirec.o: cirec.c cisis.h
	 echo cirec..
	 $(CC) $(CCOPTS) cirec.c

ciupd.o: ciupd.c cisis.h
	 echo ciupd..
	 $(CC) $(CCOPTS) ciupd.c

citrm.o: citrm.c cisis.h
	 echo citrm..
	 $(CC) $(CCOPTS) citrm.c

ciutl.o: ciutl.c cisis.h
	 echo ciutl..
	 $(CC) $(CCOPTS) ciutl.c
