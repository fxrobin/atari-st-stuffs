
./build/main.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_timerA_Routine>:
   0:	4e56 0000      	linkw %fp,#0
   4:	2039 0000 0c34 	movel c34 <_currentFrame>,%d0
   a:	5280           	addql #1,%d0
   c:	23c0 0000 0c34 	movel %d0,c34 <_currentFrame>
  12:	2239 0000 0c34 	movel c34 <_currentFrame>,%d1
  18:	2039 0000 0000 	movel 0 <_timerA_Routine>,%d0
  1e:	b081           	cmpl %d1,%d0
  20:	6d00 0092      	bltw b4 <.L1>
  24:	42b9 0000 0c3c 	clrl c3c <_j>
  2a:	607a           	bras a6 <.L3>

0000002c <.L4>:
  2c:	203c 00ff 8800 	movel #16746496,%d0
  32:	2239 0000 0c3c 	movel c3c <_j>,%d1
  38:	1201           	moveb %d1,%d1
  3a:	2040           	moveal %d0,%a0
  3c:	1081           	moveb %d1,%a0@
  3e:	2039 0000 0c3c 	movel c3c <_j>,%d0
  44:	d080           	addl %d0,%d0
  46:	d080           	addl %d0,%d0
  48:	223c 0000 0000 	movel #0,%d1
  4e:	2240           	moveal %d0,%a1
  50:	2031 1800      	movel %a1@(0000000000000000,%d1:l),%d0
  54:	2040           	moveal %d0,%a0
  56:	1010           	moveb %a0@,%d0
  58:	13c0 0000 0c38 	moveb %d0,c38 <_data>
  5e:	203c 00ff 8802 	movel #16746498,%d0
  64:	1239 0000 0c38 	moveb c38 <_data>,%d1
  6a:	2240           	moveal %d0,%a1
  6c:	1281           	moveb %d1,%a1@
  6e:	2039 0000 0c3c 	movel c3c <_j>,%d0
  74:	2200           	movel %d0,%d1
  76:	d280           	addl %d0,%d1
  78:	d281           	addl %d1,%d1
  7a:	41f9 0000 0000 	lea 0 <_timerA_Routine>,%a0
  80:	2230 1800      	movel %a0@(0000000000000000,%d1:l),%d1
  84:	2041           	moveal %d1,%a0
  86:	5288           	addql #1,%a0
  88:	d080           	addl %d0,%d0
  8a:	d080           	addl %d0,%d0
  8c:	223c 0000 0000 	movel #0,%d1
  92:	2240           	moveal %d0,%a1
  94:	2388 1800      	movel %a0,%a1@(0000000000000000,%d1:l)
  98:	2039 0000 0c3c 	movel c3c <_j>,%d0
  9e:	5280           	addql #1,%d0
  a0:	23c0 0000 0c3c 	movel %d0,c3c <_j>

000000a6 <.L3>:
  a6:	2039 0000 0c3c 	movel c3c <_j>,%d0
  ac:	720d           	moveq #13,%d1
  ae:	b280           	cmpl %d0,%d1
  b0:	6c00 ff7a      	bgew 2c <.L4>

000000b4 <.L1>:
  b4:	4e5e           	unlk %fp
  b6:	4e75           	rts

000000b8 <_handler>:
  b8:	4e56 0000      	linkw %fp,#0
  bc:	48e7 c0c0      	moveml %d0-%d1/%a0-%a1,%sp@-
  c0:	2039 0000 0c34 	movel c34 <_currentFrame>,%d0
  c6:	5280           	addql #1,%d0
  c8:	23c0 0000 0c34 	movel %d0,c34 <_currentFrame>
  ce:	42b9 0000 0c3c 	clrl c3c <_j>
  d4:	606c           	bras 142 <.L6>

000000d6 <.L7>:
  d6:	203c 00ff 8800 	movel #16746496,%d0
  dc:	2239 0000 0c3c 	movel c3c <_j>,%d1
  e2:	1201           	moveb %d1,%d1
  e4:	2040           	moveal %d0,%a0
  e6:	1081           	moveb %d1,%a0@
  e8:	223c 00ff 8802 	movel #16746498,%d1
  ee:	2039 0000 0c3c 	movel c3c <_j>,%d0
  f4:	d080           	addl %d0,%d0
  f6:	d080           	addl %d0,%d0
  f8:	41f9 0000 0000 	lea 0 <_timerA_Routine>,%a0
  fe:	2030 0800      	movel %a0@(0000000000000000,%d0:l),%d0
 102:	2240           	moveal %d0,%a1
 104:	1011           	moveb %a1@,%d0
 106:	2041           	moveal %d1,%a0
 108:	1080           	moveb %d0,%a0@
 10a:	2039 0000 0c3c 	movel c3c <_j>,%d0
 110:	2200           	movel %d0,%d1
 112:	d280           	addl %d0,%d1
 114:	d281           	addl %d1,%d1
 116:	41f9 0000 0000 	lea 0 <_timerA_Routine>,%a0
 11c:	2230 1800      	movel %a0@(0000000000000000,%d1:l),%d1
 120:	2041           	moveal %d1,%a0
 122:	5288           	addql #1,%a0
 124:	d080           	addl %d0,%d0
 126:	d080           	addl %d0,%d0
 128:	223c 0000 0000 	movel #0,%d1
 12e:	2240           	moveal %d0,%a1
 130:	2388 1800      	movel %a0,%a1@(0000000000000000,%d1:l)
 134:	2039 0000 0c3c 	movel c3c <_j>,%d0
 13a:	5280           	addql #1,%d0
 13c:	23c0 0000 0c3c 	movel %d0,c3c <_j>

00000142 <.L6>:
 142:	2039 0000 0c3c 	movel c3c <_j>,%d0
 148:	720d           	moveq #13,%d1
 14a:	b280           	cmpl %d0,%d1
 14c:	6c88           	bges d6 <.L7>
 14e:	223c ffff fa0f 	movel #-1521,%d1
 154:	203c ffff fa0f 	movel #-1521,%d0
 15a:	2040           	moveal %d0,%a0
 15c:	1010           	moveb %a0@,%d0
 15e:	0200 ffdf      	andib #-33,%d0
 162:	2241           	moveal %d1,%a1
 164:	1280           	moveb %d0,%a1@
 166:	4cdf 0303      	moveml %sp@+,%d0-%d1/%a0-%a1
 16a:	4e5e           	unlk %fp
 16c:	4e73           	rte

0000016e <_initPlayer>:
 16e:	4e56 fff8      	linkw %fp,#-8
 172:	202e 0008      	movel %fp@(8),%d0
 176:	2040           	moveal %d0,%a0
 178:	2028 0004      	movel %a0@(4),%d0
 17c:	5980           	subql #4,%d0
 17e:	4878 000e      	pea e <_timerA_Routine+0xe>
 182:	2f00           	movel %d0,%sp@-
 184:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 18a:	508f           	addql #8,%sp
 18c:	23c0 0000 0000 	movel %d0,0 <_timerA_Routine>
 192:	202e 0008      	movel %fp@(8),%d0
 196:	2240           	moveal %d0,%a1
 198:	2011           	movel %a1@,%d0
 19a:	2200           	movel %d0,%d1
 19c:	5881           	addql #4,%d1
 19e:	2d41 fff8      	movel %d1,%fp@(-8)
 1a2:	42ae fffc      	clrl %fp@(-4)
 1a6:	6032           	bras 1da <.L9>

000001a8 <.L10>:
 1a8:	2039 0000 0000 	movel 0 <_timerA_Routine>,%d0
 1ae:	2f2e fffc      	movel %fp@(-4),%sp@-
 1b2:	2f00           	movel %d0,%sp@-
 1b4:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 1ba:	508f           	addql #8,%sp
 1bc:	206e fff8      	moveal %fp@(-8),%a0
 1c0:	d1c0           	addal %d0,%a0
 1c2:	202e fffc      	movel %fp@(-4),%d0
 1c6:	d080           	addl %d0,%d0
 1c8:	d080           	addl %d0,%d0
 1ca:	223c 0000 0000 	movel #0,%d1
 1d0:	2240           	moveal %d0,%a1
 1d2:	2388 1800      	movel %a0,%a1@(0000000000000000,%d1:l)
 1d6:	52ae fffc      	addql #1,%fp@(-4)

000001da <.L9>:
 1da:	700d           	moveq #13,%d0
 1dc:	b0ae fffc      	cmpl %fp@(-4),%d0
 1e0:	6cc6           	bges 1a8 <.L10>
 1e2:	4e5e           	unlk %fp
 1e4:	4e75           	rts

000001e6 <_soundOff>:
 1e6:	4e56 fffc      	linkw %fp,#-4
 1ea:	422e ffff      	clrb %fp@(-1)
 1ee:	601a           	bras 20a <.L12>

000001f0 <.L13>:
 1f0:	203c 00ff 8800 	movel #16746496,%d0
 1f6:	2040           	moveal %d0,%a0
 1f8:	10ae ffff      	moveb %fp@(-1),%a0@
 1fc:	203c 00ff 8802 	movel #16746498,%d0
 202:	2040           	moveal %d0,%a0
 204:	4210           	clrb %a0@
 206:	522e ffff      	addqb #1,%fp@(-1)

0000020a <.L12>:
 20a:	0c2e 000d ffff 	cmpib #13,%fp@(-1)
 210:	63de           	blss 1f0 <.L13>
 212:	4e5e           	unlk %fp
 214:	4e75           	rts

00000216 <.LC0>:
 216:	1b59 2563      	moveb %a1@+,%a5@(9571)
 21a:	2563       	movel %a3@-,%a2@(97)

0000021d <.LC1>:
 21d:	616e           	bsrs 28d <.LC5+0x8>
 21f:	636f           	blss 290 <.LC5+0xb>
 221:	6f6c           	bles 28f <.LC5+0xa>
 223:	312e 796d      	movew %fp@(31085),%a0@-
	...

00000228 <.LC2>:
 228:	5475 6e65      	addqw #2,%a5@(0000000000000065,%d6:l:8)
 22c:	2066           	moveal %fp@-,%a0
 22e:	696c           	bvss 29c <.LC5+0x17>
 230:	6520           	bcss 252 <.LC3+0xd>
 232:	2e2e 2e2e      	movel %fp@(11822),%d7
 236:	2e2e 2e2e      	movel %fp@(11822),%d7
 23a:	2e2e 2e20      	movel %fp@(11808),%d7
 23e:	3a20           	movew %a0@-,%d5
 240:	2573 0d0a  	movel %a3@(0000000000000000,%d0:l:4)@(0000000000000042),%a2@(30054)
 246:	 

00000245 <.LC3>:
 245:	4275 6666      	clrw %a5@(0000000000000066,%d6:w:8)
 249:	6572           	bcss 2bd <.LC6+0x17>
 24b:	2073 697a 6520 	moveal %a3@(0000000065202e2e)@(0000000000002e2e),%a0
 251:	2e2e 2e2e 
 255:	2e2e 2e2e      	movel %fp@(11822),%d7
 259:	2e20           	movel %a0@-,%d7
 25b:	3a20           	movew %a0@-,%d5
 25d:	2564 2062      	movel %a4@-,%a2@(8290)
 261:	7974           	.short 0x7974
 263:	6573           	bcss 2d8 <.LC7+0x11>
 265:	0d0a       	movepw %a2@(78),%d6

00000268 <.LC4>:
 268:	4e75           	rts
 26a:	6d62           	blts 2ce <.LC7+0x7>
 26c:	6572           	bcss 2e0 <_displayInfo>
 26e:	206f 6620      	moveal %sp@(26144),%a0
 272:	6461           	bccs 2d5 <.LC7+0xe>
 274:	7461           	moveq #97,%d2
 276:	2066           	moveal %fp@-,%a0
 278:	7261           	moveq #97,%d1
 27a:	6d65           	blts 2e1 <_displayInfo+0x1>
 27c:	7320           	.short 0x7320
 27e:	3a20           	movew %a0@-,%d5
 280:	2564 0d0a      	movel %a4@-,%a2@(3338)
	...

00000285 <.LC5>:
 285:	594d           	subqw #4,%a5
 287:	3231 3439      	movew %a1@(0000000000000039,%d3:w:4),%d1
 28b:	4620           	notb %a0@-
 28d:	5245           	addqw #1,%d5
 28f:	4749           	.short 0x4749
 291:	5354           	subqw #1,%a4@
 293:	4552           	.short 0x4552
 295:	2061           	moveal %a1@-,%a0
 297:	6464           	bccs 2fd <_displayInfo+0x1d>
 299:	7265           	moveq #101,%d1
 29b:	7373           	.short 0x7373
 29d:	203a 2025      	movel %pc@(22c4 <_j+0x1688>),%d0
 2a1:	5820           	addqb #4,%a0@-
 2a3:	0d0a       	movepw %a2@(89),%d6

000002a6 <.LC6>:
 2a6:	594d           	subqw #4,%a5
 2a8:	3231 3439      	movew %a1@(0000000000000039,%d3:w:4),%d1
 2ac:	4620           	notb %a0@-
 2ae:	4441           	negw %d1
 2b0:	5441           	addqw #2,%d1
 2b2:	2020           	movel %a0@-,%d0
 2b4:	2020           	movel %a0@-,%d0
 2b6:	2061           	moveal %a1@-,%a0
 2b8:	6464           	bccs 31e <_displayInfo+0x3e>
 2ba:	7265           	moveq #101,%d1
 2bc:	7373           	.short 0x7373
 2be:	203a 2025      	movel %pc@(22e5 <_j+0x16a9>),%d0
 2c2:	5820           	addqb #4,%a0@-
 2c4:	0d0a       	movepw %a2@(70),%d6

000002c7 <.LC7>:
 2c7:	4672 616d 6520 	notw %a2@(0000000000006520)@(0000000000000000)
 2cd:	5b5f           	subqw #5,%sp@+
 2cf:	5f5f           	subqw #7,%sp@+
 2d1:	5f5f           	subqw #7,%sp@+
 2d3:	5f5f           	subqw #7,%sp@+
 2d5:	5d20           	subqb #6,%a0@-
 2d7:	2f20           	movel %a0@-,%sp@-
 2d9:	5b25           	subqb #5,%a5@-
 2db:	3037 645d      	movew %sp@(000000000000005d,%d6:w:4),%d0
	...

000002e0 <_displayInfo>:
 2e0:	4e56 0000      	linkw %fp,#0
 2e4:	4878 0020      	pea 20 <_timerA_Routine+0x20>
 2e8:	4878 0022      	pea 22 <_timerA_Routine+0x22>
 2ec:	487a ff28      	pea %pc@(216 <.LC0>)
 2f0:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 2f6:	4fef 000c      	lea %sp@(12),%sp
 2fa:	487a ff21      	pea %pc@(21d <.LC1>)
 2fe:	487a ff28      	pea %pc@(228 <.LC2>)
 302:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 308:	508f           	addql #8,%sp
 30a:	202e 0008      	movel %fp@(8),%d0
 30e:	2040           	moveal %d0,%a0
 310:	2028 0004      	movel %a0@(4),%d0
 314:	2f00           	movel %d0,%sp@-
 316:	487a ff2d      	pea %pc@(245 <.LC3>)
 31a:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 320:	508f           	addql #8,%sp
 322:	2039 0000 0000 	movel 0 <_timerA_Routine>,%d0
 328:	2f00           	movel %d0,%sp@-
 32a:	487a ff3c      	pea %pc@(268 <.LC4>)
 32e:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 334:	508f           	addql #8,%sp
 336:	4878 0020      	pea 20 <_timerA_Routine+0x20>
 33a:	4878 0026      	pea 26 <_timerA_Routine+0x26>
 33e:	487a fed6      	pea %pc@(216 <.LC0>)
 342:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 348:	4fef 000c      	lea %sp@(12),%sp
 34c:	2f3c 00ff 8800 	movel #16746496,%sp@-
 352:	487a ff31      	pea %pc@(285 <.LC5>)
 356:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 35c:	508f           	addql #8,%sp
 35e:	2f3c 00ff 8802 	movel #16746498,%sp@-
 364:	487a ff40      	pea %pc@(2a6 <.LC6>)
 368:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 36e:	508f           	addql #8,%sp
 370:	4878 003c      	pea 3c <.L4+0x10>
 374:	4878 002a      	pea 2a <_timerA_Routine+0x2a>
 378:	487a fe9c      	pea %pc@(216 <.LC0>)
 37c:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 382:	4fef 000c      	lea %sp@(12),%sp
 386:	2039 0000 0000 	movel 0 <_timerA_Routine>,%d0
 38c:	2f00           	movel %d0,%sp@-
 38e:	487a ff37      	pea %pc@(2c7 <.LC7>)
 392:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 398:	508f           	addql #8,%sp
 39a:	4e5e           	unlk %fp
 39c:	4e75           	rts

0000039e <.LC8>:
 39e:	2056           	moveal %fp@,%a0
 3a0:	6572           	bcss 414 <.LC9+0x16>
 3a2:	7920           	.short 0x7920
 3a4:	536d 616c      	subqw #1,%a5@(24940)
 3a8:	6c20           	bges 3ca <.LC8+0x2c>
 3aa:	594d           	subqw #4,%a5
 3ac:	2050           	moveal %a0@,%a0
 3ae:	6c61           	bges 411 <.LC9+0x13>
 3b0:	7965           	.short 0x7965
 3b2:	7220           	moveq #32,%d1
 3b4:	2859           	moveal %a1@+,%a4
 3b6:	4d33 2129 2062 	chkl %a3@(0000000000002062,%d2:w)@(0000000000000000),%d6
 3bc:	7920           	.short 0x7920
 3be:	4658           	notw %a0@+
 3c0:	2068 7474      	moveal %a0@(29812),%a0
 3c4:	7073           	moveq #115,%d0
 3c6:	3a2f 2f77      	movew %sp@(12151),%d5
 3ca:	7777           	.short 0x7777
 3cc:	2e66           	moveal %fp@-,%sp
 3ce:	786a           	moveq #106,%d4
 3d0:	6176           	bsrs 448 <.LC11+0x13>
 3d2:	6164           	bsrs 438 <.LC11+0x3>
 3d4:	6576           	bcss 44c <.LC11+0x17>
 3d6:	626c           	bhis 444 <.LC11+0xf>
 3d8:	6f67           	bles 441 <.LC11+0xc>
 3da:	2e66           	moveal %fp@-,%sp
 3dc:	7220           	moveq #32,%d1
 3de:	2830 362f      	movel %a0@(000000000000002f,%d3:w:8),%d4
 3e2:	3230 3231      	movew %a0@(0000000000000031,%d3:w:2),%d1
 3e6:	290d           	movel %a5,%a4@-
	...

000003ea <_displayGreetings>:
 3ea:	4e56 0000      	linkw %fp,#0
 3ee:	487a ffae      	pea %pc@(39e <.LC8>)
 3f2:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 3f8:	588f           	addql #4,%sp
 3fa:	4e5e           	unlk %fp
 3fc:	4e75           	rts

000003fe <.LC9>:
 3fe:	2430 3030      	movel %a0@(0000000000000030,%d3:w),%d2
 402:	3030 3438      	movew %a0@(0000000000000038,%d3:w:4),%d0
 406:	3420           	movew %a0@-,%d2
 408:	3a20           	movew %a0@-,%d5
 40a:	2563 2563      	movel %a3@-,%a2@(9571)
 40e:	2563 2563      	movel %a3@-,%a2@(9571)
 412:	2563 2563      	movel %a3@-,%a2@(9571)
 416:	2563 2563      	movel %a3@-,%a2@(9571)
	...

0000041b <.LC10>:
 41b:	5469 6d65      	addqw #2,%a1@(28005)
 41f:	7220           	moveq #32,%d1
 421:	4120           	chkl %a0@-,%d0
 423:	726f           	moveq #111,%d1
 425:	7574           	.short 0x7574
 427:	696e           	bvss 497 <.LC12+0x1a>
 429:	6520           	bcss 44b <.LC11+0x16>
 42b:	696e           	bvss 49b <.LC12+0x1e>
 42d:	7374           	.short 0x7374
 42f:	616c           	bsrs 49d <.LC12+0x20>
 431:	6c65           	bges 498 <.LC12+0x1b>
 433:	6400       	bccw 8055 <_j+0x7419>

00000435 <.LC11>:
 435:	7c20           	moveq #32,%d6
 437:	414c           	.short 0x414c
 439:	207c 2041 4820 	moveal #541149216,%a0
 43f:	7c20           	moveq #32,%d6
 441:	424c           	.short 0x424c
 443:	207c 2042 4820 	moveal #541214752,%a0
 449:	7c20           	moveq #32,%d6
 44b:	434c           	.short 0x434c
 44d:	207c 2043 4820 	moveal #541280288,%a0
 453:	7c20           	moveq #32,%d6
 455:	4e46           	trap #6
 457:	207c 204d 4320 	moveal #541934368,%a0
 45d:	7c20           	moveq #32,%d6
 45f:	4141           	.short 0x4141
 461:	207c 2042 4120 	moveal #541212960,%a0
 467:	7c20           	moveq #32,%d6
 469:	4341           	.short 0x4341
 46b:	207c 2045 4820 	moveal #541411360,%a0
 471:	7c20           	moveq #32,%d6
 473:	454c           	.short 0x454c
 475:	207c 2045 5320 	moveal #541414176,%a0
 47b:	7c00           	moveq #0,%d6

0000047d <.LC12>:
 47d:	7c2d           	moveq #45,%d6
 47f:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 483:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 487:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 48b:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 48f:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 493:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 497:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 49b:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 49f:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 4a3:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 4a7:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 4ab:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 4af:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 4b3:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 4b7:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 4bb:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 4bf:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 4c3:	7c00           	moveq #0,%d6

000004c5 <.LC13>:
 4c5:	2563 2028      	movel %a3@-,%a2@(8232)
 4c9:	2564 203a      	movel %a4@-,%a2@(8250)
 4cd:	2025           	movel %a5@-,%d0
 4cf:	5829       	addqb #4,%a1@(75)

000004d2 <.LC14>:
 4d2:	4b42           	.short 0x4b42
 4d4:	4420           	negb %a0@-
 4d6:	2563 2563      	movel %a3@-,%a2@(9571)
 4da:	2563 2563      	movel %a3@-,%a2@(9571)
 4de:	2563 2563      	movel %a3@-,%a2@(9571)
 4e2:	2563 2563      	movel %a3@-,%a2@(9571)
	...

000004e7 <.LC15>:
 4e7:	5343           	subqw #1,%d3
 4e9:	4420           	negb %a0@-
 4eb:	2563 2563      	movel %a3@-,%a2@(9571)
 4ef:	2563 2563      	movel %a3@-,%a2@(9571)
 4f3:	2563 2563      	movel %a3@-,%a2@(9571)
 4f7:	2563 2563      	movel %a3@-,%a2@(9571)
	...

000004fc <.LC16>:
 4fc:	5641           	addqw #3,%d1
 4fe:	4c53           	.short 0x4c53
 500:	2025           	movel %a5@-,%d0
 502:	3032 5820      	movew %a2@(0000000000000020,%d5:l),%d0
 506:	3a20           	movew %a0@-,%d5
 508:	2530 3258      	movel %a0@(0000000000000058,%d3:w:2),%a2@-
	...

0000050d <.LC17>:
 50d:	2530 3764 0a00 	movel %a0@(0000000000000a00)@(0000000000000000),%a2@-

00000513 <.LC18>:
 513:	2025           	movel %a5@-,%d0
 515:	3032 5820      	movew %a2@(0000000000000020,%d5:l),%d0
 519:	7c00           	moveq #0,%d6

0000051b <.LC19>:
 51b:	5469 6d65      	addqw #2,%a1@(28005)
 51f:	7220           	moveq #32,%d1
 521:	4120           	chkl %a0@-,%d0
 523:	726f           	moveq #111,%d1
 525:	7574           	.short 0x7574
 527:	696e           	bvss 597 <_Run+0x1f>
 529:	6520           	bcss 54b <.LC21+0x1>
 52b:	7265           	moveq #101,%d1
 52d:	6d6f           	blts 59e <_Run+0x26>
 52f:	7665           	moveq #101,%d3
 531:	640d           	bccs 540 <.LC20+0xb>
 533:	0a00       	eorib #108,%d0

00000535 <.LC20>:
 535:	436c           	.short 0x436c
 537:	6561           	bcss 59a <_Run+0x22>
 539:	6e69           	bgts 5a4 <_Run+0x2c>
 53b:	6e67           	bgts 5a4 <_Run+0x2c>
 53d:	206d 656d      	moveal %a5@(25965),%a0
 541:	6f72           	bles 5b5 <_Run+0x3d>
 543:	792e           	.short 0x792e
 545:	2e2e 0d0a      	movel %fp@(3338),%d7
	...

0000054a <.LC21>:
 54a:	4669 6e69      	notw %a1@(28265)
 54e:	7368           	.short 0x7368
 550:	6564           	bcss 5b6 <_Run+0x3e>
 552:	205b           	moveal %a3@+,%a0
 554:	5072 6573 7320 	addqw #8,%a2@(000000007320456e)@(0000000074657220)
 55a:	456e 7465 7220 
 560:	746f           	moveq #111,%d2
 562:	2067           	moveal %sp@-,%a0
 564:	6f20           	bles 586 <_Run+0xe>
 566:	6261           	bhis 5c9 <_Run+0x51>
 568:	636b           	blss 5d5 <_Run+0x5d>
 56a:	2074 6f20 4465 	moveal %a4@(0000000000004465,%d6:l:8),%a0
 570:	736b           	.short 0x736b
 572:	746f           	moveq #111,%d2
 574:	705d           	moveq #93,%d0
 576:	0d00           	btst %d6,%d0

00000578 <_Run>:
 578:	4e56 ffd0      	linkw %fp,#-48
 57c:	48e7 3c20      	moveml %d2-%d5/%a2,%sp@-
 580:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 586:	23c0 0000 0000 	movel %d0,0 <_timerA_Routine>
 58c:	4eba fe5c      	jsr %pc@(3ea <_displayGreetings>)
 590:	487a fc8b      	pea %pc@(21d <.LC1>)
 594:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 59a:	588f           	addql #4,%sp
 59c:	2d40 fff8      	movel %d0,%fp@(-8)
 5a0:	2f2e fff8      	movel %fp@(-8),%sp@-
 5a4:	4eba fbc8      	jsr %pc@(16e <_initPlayer>)
 5a8:	588f           	addql #4,%sp
 5aa:	2f2e fff8      	movel %fp@(-8),%sp@-
 5ae:	4eba fd30      	jsr %pc@(2e0 <_displayInfo>)
 5b2:	588f           	addql #4,%sp
 5b4:	4878 0020      	pea 20 <_timerA_Routine+0x20>
 5b8:	4878 0034      	pea 34 <.L4+0x8>
 5bc:	487a fc58      	pea %pc@(216 <.LC0>)
 5c0:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 5c6:	4fef 000c      	lea %sp@(12),%sp
 5ca:	203c 0000 0484 	movel #1156,%d0
 5d0:	2040           	moveal %d0,%a0
 5d2:	1010           	moveb %a0@,%d0
 5d4:	1000           	moveb %d0,%d0
 5d6:	0280 0000 00ff 	andil #255,%d0
 5dc:	7201           	moveq #1,%d1
 5de:	c081           	andl %d1,%d0
 5e0:	1000           	moveb %d0,%d0
 5e2:	4a00           	tstb %d0
 5e4:	6704           	beqs 5ea <.L17>
 5e6:	7a31           	moveq #49,%d5
 5e8:	6002           	bras 5ec <.L18>

000005ea <.L17>:
 5ea:	7a30           	moveq #48,%d5

000005ec <.L18>:
 5ec:	203c 0000 0484 	movel #1156,%d0
 5f2:	2040           	moveal %d0,%a0
 5f4:	1010           	moveb %a0@,%d0
 5f6:	1000           	moveb %d0,%d0
 5f8:	0280 0000 00ff 	andil #255,%d0
 5fe:	7202           	moveq #2,%d1
 600:	c081           	andl %d1,%d0
 602:	4a80           	tstl %d0
 604:	6704           	beqs 60a <.L19>
 606:	7831           	moveq #49,%d4
 608:	6002           	bras 60c <.L20>

0000060a <.L19>:
 60a:	7830           	moveq #48,%d4

0000060c <.L20>:
 60c:	203c 0000 0484 	movel #1156,%d0
 612:	2040           	moveal %d0,%a0
 614:	1010           	moveb %a0@,%d0
 616:	1000           	moveb %d0,%d0
 618:	0280 0000 00ff 	andil #255,%d0
 61e:	7204           	moveq #4,%d1
 620:	c081           	andl %d1,%d0
 622:	4a80           	tstl %d0
 624:	6704           	beqs 62a <.L21>
 626:	7631           	moveq #49,%d3
 628:	6002           	bras 62c <.L22>

0000062a <.L21>:
 62a:	7630           	moveq #48,%d3

0000062c <.L22>:
 62c:	203c 0000 0484 	movel #1156,%d0
 632:	2040           	moveal %d0,%a0
 634:	1010           	moveb %a0@,%d0
 636:	1000           	moveb %d0,%d0
 638:	0280 0000 00ff 	andil #255,%d0
 63e:	7208           	moveq #8,%d1
 640:	c081           	andl %d1,%d0
 642:	4a80           	tstl %d0
 644:	6704           	beqs 64a <.L23>
 646:	7431           	moveq #49,%d2
 648:	6002           	bras 64c <.L24>

0000064a <.L23>:
 64a:	7430           	moveq #48,%d2

0000064c <.L24>:
 64c:	203c 0000 0484 	movel #1156,%d0
 652:	2040           	moveal %d0,%a0
 654:	1010           	moveb %a0@,%d0
 656:	1000           	moveb %d0,%d0
 658:	0280 0000 00ff 	andil #255,%d0
 65e:	7210           	moveq #16,%d1
 660:	c081           	andl %d1,%d0
 662:	4a80           	tstl %d0
 664:	6706           	beqs 66c <.L25>
 666:	327c 0031      	moveaw #49,%a1
 66a:	6004           	bras 670 <.L26>

0000066c <.L25>:
 66c:	327c 0030      	moveaw #48,%a1

00000670 <.L26>:
 670:	203c 0000 0484 	movel #1156,%d0
 676:	2040           	moveal %d0,%a0
 678:	1010           	moveb %a0@,%d0
 67a:	1000           	moveb %d0,%d0
 67c:	0280 0000 00ff 	andil #255,%d0
 682:	7220           	moveq #32,%d1
 684:	c081           	andl %d1,%d0
 686:	4a80           	tstl %d0
 688:	6706           	beqs 690 <.L27>
 68a:	307c 0031      	moveaw #49,%a0
 68e:	6004           	bras 694 <.L28>

00000690 <.L27>:
 690:	307c 0030      	moveaw #48,%a0

00000694 <.L28>:
 694:	203c 0000 0484 	movel #1156,%d0
 69a:	2440           	moveal %d0,%a2
 69c:	1012           	moveb %a2@,%d0
 69e:	1000           	moveb %d0,%d0
 6a0:	0280 0000 00ff 	andil #255,%d0
 6a6:	7240           	moveq #64,%d1
 6a8:	c081           	andl %d1,%d0
 6aa:	4a80           	tstl %d0
 6ac:	6704           	beqs 6b2 <.L29>
 6ae:	7231           	moveq #49,%d1
 6b0:	6002           	bras 6b4 <.L30>

000006b2 <.L29>:
 6b2:	7230           	moveq #48,%d1

000006b4 <.L30>:
 6b4:	203c 0000 0484 	movel #1156,%d0
 6ba:	2440           	moveal %d0,%a2
 6bc:	1012           	moveb %a2@,%d0
 6be:	4a00           	tstb %d0
 6c0:	6c04           	bges 6c6 <.L31>
 6c2:	7031           	moveq #49,%d0
 6c4:	6002           	bras 6c8 <.L32>

000006c6 <.L31>:
 6c6:	7030           	moveq #48,%d0

000006c8 <.L32>:
 6c8:	2f05           	movel %d5,%sp@-
 6ca:	2f04           	movel %d4,%sp@-
 6cc:	2f03           	movel %d3,%sp@-
 6ce:	2f02           	movel %d2,%sp@-
 6d0:	2f09           	movel %a1,%sp@-
 6d2:	2f08           	movel %a0,%sp@-
 6d4:	2f01           	movel %d1,%sp@-
 6d6:	2f00           	movel %d0,%sp@-
 6d8:	487a fd24      	pea %pc@(3fe <.LC9>)
 6dc:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 6e2:	4fef 0024      	lea %sp@(36),%sp
 6e6:	203c 0000 0484 	movel #1156,%d0
 6ec:	2040           	moveal %d0,%a0
 6ee:	4210           	clrb %a0@
 6f0:	3d7c 000d fff6 	movew #13,%fp@(-10)
 6f6:	302e fff6      	movew %fp@(-10),%d0
 6fa:	3f00           	movew %d0,%sp@-
 6fc:	3f3c 001a      	movew #26,%sp@-
 700:	4e4e           	trap #14
 702:	588f           	addql #4,%sp
 704:	426e fff4      	clrw %fp@(-12)
 708:	3d7c 0007 fff2 	movew #7,%fp@(-14)
 70e:	3d7c 00f6 fff0 	movew #246,%fp@(-16)
 714:	2d7c 0000 0000 	movel #0,%fp@(-20)
 71a:	ffec 
 71c:	302e fff4      	movew %fp@(-12),%d0
 720:	362e fff2      	movew %fp@(-14),%d3
 724:	382e fff0      	movew %fp@(-16),%d4
 728:	2a2e ffec      	movel %fp@(-20),%d5
 72c:	2f05           	movel %d5,%sp@-
 72e:	3f04           	movew %d4,%sp@-
 730:	3f03           	movew %d3,%sp@-
 732:	3f00           	movew %d0,%sp@-
 734:	3f3c 001f      	movew #31,%sp@-
 738:	4e4e           	trap #14
 73a:	4fef 000c      	lea %sp@(12),%sp
 73e:	3d7c 000d ffea 	movew #13,%fp@(-22)
 744:	302e ffea      	movew %fp@(-22),%d0
 748:	3f00           	movew %d0,%sp@-
 74a:	3f3c 001b      	movew #27,%sp@-
 74e:	4e4e           	trap #14
 750:	588f           	addql #4,%sp
 752:	4878 0020      	pea 20 <_timerA_Routine+0x20>
 756:	4878 002a      	pea 2a <_timerA_Routine+0x2a>
 75a:	487a faba      	pea %pc@(216 <.LC0>)
 75e:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 764:	4fef 000c      	lea %sp@(12),%sp
 768:	487a fcb1      	pea %pc@(41b <.LC10>)
 76c:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 772:	588f           	addql #4,%sp
 774:	42ae ffe6      	clrl %fp@(-26)
 778:	4878 0020      	pea 20 <_timerA_Routine+0x20>
 77c:	4878 002c      	pea 2c <.L4>
 780:	487a fa94      	pea %pc@(216 <.LC0>)
 784:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 78a:	4fef 000c      	lea %sp@(12),%sp
 78e:	487a fca5      	pea %pc@(435 <.LC11>)
 792:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 798:	588f           	addql #4,%sp
 79a:	4878 0020      	pea 20 <_timerA_Routine+0x20>
 79e:	4878 002d      	pea 2d <.L4+0x1>
 7a2:	487a fa72      	pea %pc@(216 <.LC0>)
 7a6:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 7ac:	4fef 000c      	lea %sp@(12),%sp
 7b0:	487a fccb      	pea %pc@(47d <.LC12>)
 7b4:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 7ba:	588f           	addql #4,%sp
 7bc:	4878 0020      	pea 20 <_timerA_Routine+0x20>
 7c0:	4878 0030      	pea 30 <.L4+0x4>
 7c4:	487a fa50      	pea %pc@(216 <.LC0>)
 7c8:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 7ce:	4fef 000c      	lea %sp@(12),%sp
 7d2:	1d7c 0001 ffe5 	moveb #1,%fp@(-27)
 7d8:	6000 035c      	braw b36 <.L33>

000007dc <.L72>:
 7dc:	3f3c 000b      	movew #11,%sp@-
 7e0:	4e41           	trap #1
 7e2:	548f           	addql #2,%sp
 7e4:	3000           	movew %d0,%d0
 7e6:	4a40           	tstw %d0
 7e8:	6760           	beqs 84a <.L34>
 7ea:	3f3c 0007      	movew #7,%sp@-
 7ee:	4e41           	trap #1
 7f0:	548f           	addql #2,%sp
 7f2:	2d40 ffe0      	movel %d0,%fp@(-32)
 7f6:	202e ffe0      	movel %fp@(-32),%d0
 7fa:	1000           	moveb %d0,%d0
 7fc:	0c00 0020      	cmpib #32,%d0
 800:	6606           	bnes 808 <.L35>
 802:	422e ffe5      	clrb %fp@(-27)
 806:	6042           	bras 84a <.L34>

00000808 <.L35>:
 808:	4878 005c      	pea 5c <.L4+0x30>
 80c:	4878 0021      	pea 21 <_timerA_Routine+0x21>
 810:	487a fa04      	pea %pc@(216 <.LC0>)
 814:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 81a:	4fef 000c      	lea %sp@(12),%sp
 81e:	202e ffe0      	movel %fp@(-32),%d0
 822:	1000           	moveb %d0,%d0
 824:	4880           	extw %d0
 826:	3200           	movew %d0,%d1
 828:	48c1           	extl %d1
 82a:	202e ffe0      	movel %fp@(-32),%d0
 82e:	1000           	moveb %d0,%d0
 830:	4880           	extw %d0
 832:	48c0           	extl %d0
 834:	2f01           	movel %d1,%sp@-
 836:	2f00           	movel %d0,%sp@-
 838:	2f2e ffe0      	movel %fp@(-32),%sp@-
 83c:	487a fc87      	pea %pc@(4c5 <.LC13>)
 840:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 846:	4fef 0010      	lea %sp@(16),%sp

0000084a <.L34>:
 84a:	4878 005c      	pea 5c <.L4+0x30>
 84e:	4878 0022      	pea 22 <_timerA_Routine+0x22>
 852:	487a f9c2      	pea %pc@(216 <.LC0>)
 856:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 85c:	4fef 000c      	lea %sp@(12),%sp
 860:	203c 00ff fc02 	movel #16776194,%d0
 866:	2440           	moveal %d0,%a2
 868:	1d52 ffdf      	moveb %a2@,%fp@(-33)
 86c:	102e ffdf      	moveb %fp@(-33),%d0
 870:	0200 007f      	andib #127,%d0
 874:	1d40 ffde      	moveb %d0,%fp@(-34)
 878:	7000           	moveq #0,%d0
 87a:	102e ffdf      	moveb %fp@(-33),%d0
 87e:	7201           	moveq #1,%d1
 880:	c081           	andl %d1,%d0
 882:	1000           	moveb %d0,%d0
 884:	4a00           	tstb %d0
 886:	6704           	beqs 88c <.L36>
 888:	7a31           	moveq #49,%d5
 88a:	6002           	bras 88e <.L37>

0000088c <.L36>:
 88c:	7a30           	moveq #48,%d5

0000088e <.L37>:
 88e:	7000           	moveq #0,%d0
 890:	102e ffdf      	moveb %fp@(-33),%d0
 894:	7202           	moveq #2,%d1
 896:	c081           	andl %d1,%d0
 898:	4a80           	tstl %d0
 89a:	6704           	beqs 8a0 <.L38>
 89c:	7831           	moveq #49,%d4
 89e:	6002           	bras 8a2 <.L39>

000008a0 <.L38>:
 8a0:	7830           	moveq #48,%d4

000008a2 <.L39>:
 8a2:	7000           	moveq #0,%d0
 8a4:	102e ffdf      	moveb %fp@(-33),%d0
 8a8:	7204           	moveq #4,%d1
 8aa:	c081           	andl %d1,%d0
 8ac:	4a80           	tstl %d0
 8ae:	6704           	beqs 8b4 <.L40>
 8b0:	7631           	moveq #49,%d3
 8b2:	6002           	bras 8b6 <.L41>

000008b4 <.L40>:
 8b4:	7630           	moveq #48,%d3

000008b6 <.L41>:
 8b6:	7000           	moveq #0,%d0
 8b8:	102e ffdf      	moveb %fp@(-33),%d0
 8bc:	7208           	moveq #8,%d1
 8be:	c081           	andl %d1,%d0
 8c0:	4a80           	tstl %d0
 8c2:	6704           	beqs 8c8 <.L42>
 8c4:	7431           	moveq #49,%d2
 8c6:	6002           	bras 8ca <.L43>

000008c8 <.L42>:
 8c8:	7430           	moveq #48,%d2

000008ca <.L43>:
 8ca:	7000           	moveq #0,%d0
 8cc:	102e ffdf      	moveb %fp@(-33),%d0
 8d0:	7210           	moveq #16,%d1
 8d2:	c081           	andl %d1,%d0
 8d4:	4a80           	tstl %d0
 8d6:	6706           	beqs 8de <.L44>
 8d8:	327c 0031      	moveaw #49,%a1
 8dc:	6004           	bras 8e2 <.L45>

000008de <.L44>:
 8de:	327c 0030      	moveaw #48,%a1

000008e2 <.L45>:
 8e2:	7000           	moveq #0,%d0
 8e4:	102e ffdf      	moveb %fp@(-33),%d0
 8e8:	7220           	moveq #32,%d1
 8ea:	c081           	andl %d1,%d0
 8ec:	4a80           	tstl %d0
 8ee:	6706           	beqs 8f6 <.L46>
 8f0:	307c 0031      	moveaw #49,%a0
 8f4:	6004           	bras 8fa <.L47>

000008f6 <.L46>:
 8f6:	307c 0030      	moveaw #48,%a0

000008fa <.L47>:
 8fa:	7000           	moveq #0,%d0
 8fc:	102e ffdf      	moveb %fp@(-33),%d0
 900:	7240           	moveq #64,%d1
 902:	c081           	andl %d1,%d0
 904:	4a80           	tstl %d0
 906:	6704           	beqs 90c <.L48>
 908:	7231           	moveq #49,%d1
 90a:	6002           	bras 90e <.L49>

0000090c <.L48>:
 90c:	7230           	moveq #48,%d1

0000090e <.L49>:
 90e:	102e ffdf      	moveb %fp@(-33),%d0
 912:	4a00           	tstb %d0
 914:	6c04           	bges 91a <.L50>
 916:	7031           	moveq #49,%d0
 918:	6002           	bras 91c <.L51>

0000091a <.L50>:
 91a:	7030           	moveq #48,%d0

0000091c <.L51>:
 91c:	2f05           	movel %d5,%sp@-
 91e:	2f04           	movel %d4,%sp@-
 920:	2f03           	movel %d3,%sp@-
 922:	2f02           	movel %d2,%sp@-
 924:	2f09           	movel %a1,%sp@-
 926:	2f08           	movel %a0,%sp@-
 928:	2f01           	movel %d1,%sp@-
 92a:	2f00           	movel %d0,%sp@-
 92c:	487a fba4      	pea %pc@(4d2 <.LC14>)
 930:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 936:	4fef 0024      	lea %sp@(36),%sp
 93a:	4878 005c      	pea 5c <.L4+0x30>
 93e:	4878 0023      	pea 23 <_timerA_Routine+0x23>
 942:	487a f8d2      	pea %pc@(216 <.LC0>)
 946:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 94c:	4fef 000c      	lea %sp@(12),%sp
 950:	7000           	moveq #0,%d0
 952:	102e ffde      	moveb %fp@(-34),%d0
 956:	7201           	moveq #1,%d1
 958:	c081           	andl %d1,%d0
 95a:	1000           	moveb %d0,%d0
 95c:	4a00           	tstb %d0
 95e:	6704           	beqs 964 <.L52>
 960:	7a31           	moveq #49,%d5
 962:	6002           	bras 966 <.L53>

00000964 <.L52>:
 964:	7a30           	moveq #48,%d5

00000966 <.L53>:
 966:	7000           	moveq #0,%d0
 968:	102e ffde      	moveb %fp@(-34),%d0
 96c:	7202           	moveq #2,%d1
 96e:	c081           	andl %d1,%d0
 970:	4a80           	tstl %d0
 972:	6704           	beqs 978 <.L54>
 974:	7831           	moveq #49,%d4
 976:	6002           	bras 97a <.L55>

00000978 <.L54>:
 978:	7830           	moveq #48,%d4

0000097a <.L55>:
 97a:	7000           	moveq #0,%d0
 97c:	102e ffde      	moveb %fp@(-34),%d0
 980:	7204           	moveq #4,%d1
 982:	c081           	andl %d1,%d0
 984:	4a80           	tstl %d0
 986:	6704           	beqs 98c <.L56>
 988:	7631           	moveq #49,%d3
 98a:	6002           	bras 98e <.L57>

0000098c <.L56>:
 98c:	7630           	moveq #48,%d3

0000098e <.L57>:
 98e:	7000           	moveq #0,%d0
 990:	102e ffde      	moveb %fp@(-34),%d0
 994:	7208           	moveq #8,%d1
 996:	c081           	andl %d1,%d0
 998:	4a80           	tstl %d0
 99a:	6704           	beqs 9a0 <.L58>
 99c:	7431           	moveq #49,%d2
 99e:	6002           	bras 9a2 <.L59>

000009a0 <.L58>:
 9a0:	7430           	moveq #48,%d2

000009a2 <.L59>:
 9a2:	7000           	moveq #0,%d0
 9a4:	102e ffde      	moveb %fp@(-34),%d0
 9a8:	7210           	moveq #16,%d1
 9aa:	c081           	andl %d1,%d0
 9ac:	4a80           	tstl %d0
 9ae:	6706           	beqs 9b6 <.L60>
 9b0:	327c 0031      	moveaw #49,%a1
 9b4:	6004           	bras 9ba <.L61>

000009b6 <.L60>:
 9b6:	327c 0030      	moveaw #48,%a1

000009ba <.L61>:
 9ba:	7000           	moveq #0,%d0
 9bc:	102e ffde      	moveb %fp@(-34),%d0
 9c0:	7220           	moveq #32,%d1
 9c2:	c081           	andl %d1,%d0
 9c4:	4a80           	tstl %d0
 9c6:	6706           	beqs 9ce <.L62>
 9c8:	307c 0031      	moveaw #49,%a0
 9cc:	6004           	bras 9d2 <.L63>

000009ce <.L62>:
 9ce:	307c 0030      	moveaw #48,%a0

000009d2 <.L63>:
 9d2:	7000           	moveq #0,%d0
 9d4:	102e ffde      	moveb %fp@(-34),%d0
 9d8:	7240           	moveq #64,%d1
 9da:	c081           	andl %d1,%d0
 9dc:	4a80           	tstl %d0
 9de:	6704           	beqs 9e4 <.L64>
 9e0:	7231           	moveq #49,%d1
 9e2:	6002           	bras 9e6 <.L65>

000009e4 <.L64>:
 9e4:	7230           	moveq #48,%d1

000009e6 <.L65>:
 9e6:	102e ffde      	moveb %fp@(-34),%d0
 9ea:	4a00           	tstb %d0
 9ec:	6c04           	bges 9f2 <.L66>
 9ee:	7031           	moveq #49,%d0
 9f0:	6002           	bras 9f4 <.L67>

000009f2 <.L66>:
 9f2:	7030           	moveq #48,%d0

000009f4 <.L67>:
 9f4:	2f05           	movel %d5,%sp@-
 9f6:	2f04           	movel %d4,%sp@-
 9f8:	2f03           	movel %d3,%sp@-
 9fa:	2f02           	movel %d2,%sp@-
 9fc:	2f09           	movel %a1,%sp@-
 9fe:	2f08           	movel %a0,%sp@-
 a00:	2f01           	movel %d1,%sp@-
 a02:	2f00           	movel %d0,%sp@-
 a04:	487a fae1      	pea %pc@(4e7 <.LC15>)
 a08:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 a0e:	4fef 0024      	lea %sp@(36),%sp
 a12:	4878 005c      	pea 5c <.L4+0x30>
 a16:	4878 0024      	pea 24 <_timerA_Routine+0x24>
 a1a:	487a f7fa      	pea %pc@(216 <.LC0>)
 a1e:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 a24:	4fef 000c      	lea %sp@(12),%sp
 a28:	7200           	moveq #0,%d1
 a2a:	122e ffde      	moveb %fp@(-34),%d1
 a2e:	7000           	moveq #0,%d0
 a30:	102e ffdf      	moveb %fp@(-33),%d0
 a34:	2f01           	movel %d1,%sp@-
 a36:	2f00           	movel %d0,%sp@-
 a38:	487a fac2      	pea %pc@(4fc <.LC16>)
 a3c:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 a42:	4fef 000c      	lea %sp@(12),%sp
 a46:	4878 003a      	pea 3a <.L4+0xe>
 a4a:	4878 002a      	pea 2a <_timerA_Routine+0x2a>
 a4e:	487a f7c6      	pea %pc@(216 <.LC0>)
 a52:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 a58:	4fef 000c      	lea %sp@(12),%sp
 a5c:	2039 0000 0c34 	movel c34 <_currentFrame>,%d0
 a62:	4878 000a      	pea a <_timerA_Routine+0xa>
 a66:	2f00           	movel %d0,%sp@-
 a68:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 a6e:	508f           	addql #8,%sp
 a70:	0280 8000 0007 	andil #-2147483641,%d0
 a76:	4a80           	tstl %d0
 a78:	6c08           	bges a82 <.L68>
 a7a:	5380           	subql #1,%d0
 a7c:	72f8           	moveq #-8,%d1
 a7e:	8081           	orl %d1,%d0
 a80:	5280           	addql #1,%d0

00000a82 <.L68>:
 a82:	2d40 ffe6      	movel %d0,%fp@(-26)
 a86:	202e ffe6      	movel %fp@(-26),%d0
 a8a:	0680 0000 0c2c 	addil #3116,%d0
 a90:	2040           	moveal %d0,%a0
 a92:	1010           	moveb %a0@,%d0
 a94:	4880           	extw %d0
 a96:	48c0           	extl %d0
 a98:	2f00           	movel %d0,%sp@-
 a9a:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 aa0:	588f           	addql #4,%sp
 aa2:	4878 0043      	pea 43 <.L4+0x17>
 aa6:	4878 002a      	pea 2a <_timerA_Routine+0x2a>
 aaa:	487a f76a      	pea %pc@(216 <.LC0>)
 aae:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 ab4:	4fef 000c      	lea %sp@(12),%sp
 ab8:	2039 0000 0c34 	movel c34 <_currentFrame>,%d0
 abe:	2f00           	movel %d0,%sp@-
 ac0:	487a fa4b      	pea %pc@(50d <.LC17>)
 ac4:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 aca:	508f           	addql #8,%sp
 acc:	4878 0020      	pea 20 <_timerA_Routine+0x20>
 ad0:	4878 002e      	pea 2e <.L4+0x2>
 ad4:	487a f740      	pea %pc@(216 <.LC0>)
 ad8:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 ade:	4fef 000c      	lea %sp@(12),%sp
 ae2:	4878 007c      	pea 7c <.L4+0x50>
 ae6:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 aec:	588f           	addql #4,%sp
 aee:	42ae fffc      	clrl %fp@(-4)
 af2:	6032           	bras b26 <.L69>

00000af4 <.L70>:
 af4:	202e fffc      	movel %fp@(-4),%d0
 af8:	d080           	addl %d0,%d0
 afa:	d080           	addl %d0,%d0
 afc:	223c 0000 0000 	movel #0,%d1
 b02:	2440           	moveal %d0,%a2
 b04:	2032 1800      	movel %a2@(0000000000000000,%d1:l),%d0
 b08:	2040           	moveal %d0,%a0
 b0a:	1d50 ffdd      	moveb %a0@,%fp@(-35)
 b0e:	7000           	moveq #0,%d0
 b10:	102e ffdd      	moveb %fp@(-35),%d0
 b14:	2f00           	movel %d0,%sp@-
 b16:	487a f9fb      	pea %pc@(513 <.LC18>)
 b1a:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 b20:	508f           	addql #8,%sp
 b22:	52ae fffc      	addql #1,%fp@(-4)

00000b26 <.L69>:
 b26:	700d           	moveq #13,%d0
 b28:	b0ae fffc      	cmpl %fp@(-4),%d0
 b2c:	6cc6           	bges af4 <.L70>
 b2e:	3f3c 0025      	movew #37,%sp@-
 b32:	4e4e           	trap #14
 b34:	548f           	addql #2,%sp

00000b36 <.L33>:
 b36:	2239 0000 0c34 	movel c34 <_currentFrame>,%d1
 b3c:	2039 0000 0000 	movel 0 <_timerA_Routine>,%d0
 b42:	b081           	cmpl %d1,%d0
 b44:	6f12           	bles b58 <.L71>
 b46:	203c 00ff fc02 	movel #16776194,%d0
 b4c:	2040           	moveal %d0,%a0
 b4e:	1010           	moveb %a0@,%d0
 b50:	0c00 ff81      	cmpib #-127,%d0
 b54:	6600 fc86      	bnew 7dc <.L72>

00000b58 <.L71>:
 b58:	426e ffda      	clrw %fp@(-38)
 b5c:	426e ffd8      	clrw %fp@(-40)
 b60:	426e ffd6      	clrw %fp@(-42)
 b64:	2d7c 0000 0000 	movel #0,%fp@(-46)
 b6a:	ffd2 
 b6c:	302e ffda      	movew %fp@(-38),%d0
 b70:	362e ffd8      	movew %fp@(-40),%d3
 b74:	382e ffd6      	movew %fp@(-42),%d4
 b78:	2a2e ffd2      	movel %fp@(-46),%d5
 b7c:	2f05           	movel %d5,%sp@-
 b7e:	3f04           	movew %d4,%sp@-
 b80:	3f03           	movew %d3,%sp@-
 b82:	3f00           	movew %d0,%sp@-
 b84:	3f3c 001f      	movew #31,%sp@-
 b88:	4e4e           	trap #14
 b8a:	4fef 000c      	lea %sp@(12),%sp
 b8e:	4eba f656      	jsr %pc@(1e6 <_soundOff>)
 b92:	4878 0020      	pea 20 <_timerA_Routine+0x20>
 b96:	4878 0030      	pea 30 <.L4+0x4>
 b9a:	487a f67a      	pea %pc@(216 <.LC0>)
 b9e:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 ba4:	4fef 000c      	lea %sp@(12),%sp
 ba8:	487a f971      	pea %pc@(51b <.LC19>)
 bac:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 bb2:	588f           	addql #4,%sp
 bb4:	487a f97f      	pea %pc@(535 <.LC20>)
 bb8:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 bbe:	588f           	addql #4,%sp
 bc0:	2f2e fff8      	movel %fp@(-8),%sp@-
 bc4:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 bca:	588f           	addql #4,%sp
 bcc:	487a f97c      	pea %pc@(54a <.LC21>)
 bd0:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 bd6:	588f           	addql #4,%sp
 bd8:	3f3c 0001      	movew #1,%sp@-
 bdc:	4e41           	trap #1
 bde:	548f           	addql #2,%sp
 be0:	2039 0000 0000 	movel 0 <_timerA_Routine>,%d0
 be6:	2f00           	movel %d0,%sp@-
 be8:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 bee:	588f           	addql #4,%sp
 bf0:	4cee 043c ffbc 	moveml %fp@(-68),%d2-%d5/%a2
 bf6:	4e5e           	unlk %fp
 bf8:	4e75           	rts

00000bfa <_main>:
 bfa:	4e56 fffc      	linkw %fp,#-4
 bfe:	2f0a           	movel %a2,%sp@-
 c00:	2f02           	movel %d2,%sp@-
 c02:	4eb9 0000 0000 	jsr 0 <_timerA_Routine>
 c08:	2d7c 0000 0578 	movel #1400,%fp@(-4)
 c0e:	fffc 
 c10:	202e fffc      	movel %fp@(-4),%d0
 c14:	2f00           	movel %d0,%sp@-
 c16:	3f3c 0026      	movew #38,%sp@-
 c1a:	4e4e           	trap #14
 c1c:	5c8f           	addql #6,%sp
 c1e:	7000           	moveq #0,%d0
 c20:	242e fff4      	movel %fp@(-12),%d2
 c24:	246e fff8      	moveal %fp@(-8),%a2
 c28:	4e5e           	unlk %fp
 c2a:	4e75           	rts

Disassembly of section .data:

00000c2c <_char_anim>:
 c2c:	7c2f           	moveq #47,%d6
 c2e:	2d5c 7c2f      	movel %a4@+,%fp@(31791)
 c32:	
Disassembly of section .bss:

00000c34 <_currentFrame>:
 c34:	0000 0000      	orib #0,%d0

00000c38 <_data>:
 c38:	0000 0000      	orib #0,%d0

00000c3c <_j>:
 c3c:	0000 0000      	orib #0,%d0
