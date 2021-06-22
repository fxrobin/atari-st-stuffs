
./build/main.o:     file format a.out-zero-big


Disassembly of section .text:

00000000 <_initPlayer>:
   0:	4e56 0000      	linkw %fp,#0
   4:	202e 0008      	movel %fp@(8),%d0
   8:	2040           	moveal %d0,%a0
   a:	2028 0004      	movel %a0@(4),%d0
   e:	5980           	subql #4,%d0
  10:	4878 000e      	pea e <_initPlayer+0xe>
  14:	2f00           	movel %d0,%sp@-
  16:	4eb9 0000 0000 	jsr 0 <_initPlayer>
  1c:	508f           	addql #8,%sp
  1e:	23c0 0000 0adc 	movel %d0,adc <_totalMusicFrames>
  24:	202e 0008      	movel %fp@(8),%d0
  28:	2040           	moveal %d0,%a0
  2a:	2010           	movel %a0@,%d0
  2c:	5880           	addql #4,%d0
  2e:	23c0 0000 0000 	movel %d0,0 <_initPlayer>
  34:	4e5e           	unlk %fp
  36:	4e75           	rts

00000038 <_soundOff>:
  38:	4e56 fffc      	linkw %fp,#-4

0000003c <.LBB2>:
  3c:	422e ffff      	clrb %fp@(-1)
  40:	601a           	bras 5c <.L3>

00000042 <.L4>:
  42:	203c 00ff 8800 	movel #16746496,%d0
  48:	2040           	moveal %d0,%a0
  4a:	10ae ffff      	moveb %fp@(-1),%a0@
  4e:	203c 00ff 8802 	movel #16746498,%d0
  54:	2040           	moveal %d0,%a0
  56:	4210           	clrb %a0@
  58:	522e ffff      	addqb #1,%fp@(-1)

0000005c <.L3>:
  5c:	0c2e 000d ffff 	cmpib #13,%fp@(-1)
  62:	63de           	blss 42 <.L4>

00000064 <.LBE2>:
  64:	4e5e           	unlk %fp
  66:	4e75           	rts

00000068 <_timerA_Routine_C>:
  68:	4e56 fff8      	linkw %fp,#-8
  6c:	48e7 e0c0      	moveml %d0-%d2/%a0-%a1,%sp@-
  70:	2239 0000 0ae0 	movel ae0 <_currentMusicFrame>,%d1
  76:	2039 0000 0adc 	movel adc <_totalMusicFrames>,%d0
  7c:	b081           	cmpl %d1,%d0
  7e:	635a           	blss da <.L6>

00000080 <.LBB3>:
  80:	2239 0000 0000 	movel 0 <_initPlayer>,%d1
  86:	2039 0000 0ae0 	movel ae0 <_currentMusicFrame>,%d0
  8c:	2401           	movel %d1,%d2
  8e:	d480           	addl %d0,%d2
  90:	2d42 fffc      	movel %d2,%fp@(-4)
  94:	5280           	addql #1,%d0
  96:	23c0 0000 0ae0 	movel %d0,ae0 <_currentMusicFrame>

0000009c <.LBB4>:
  9c:	42ae fff8      	clrl %fp@(-8)
  a0:	6030           	bras d2 <.L7>

000000a2 <.L8>:
  a2:	203c 00ff 8800 	movel #16746496,%d0
  a8:	222e fff8      	movel %fp@(-8),%d1
  ac:	1201           	moveb %d1,%d1
  ae:	2040           	moveal %d0,%a0
  b0:	1081           	moveb %d1,%a0@
  b2:	203c 00ff 8802 	movel #16746498,%d0
  b8:	222e fffc      	movel %fp@(-4),%d1
  bc:	2241           	moveal %d1,%a1
  be:	1211           	moveb %a1@,%d1
  c0:	2040           	moveal %d0,%a0
  c2:	1081           	moveb %d1,%a0@
  c4:	2039 0000 0adc 	movel adc <_totalMusicFrames>,%d0
  ca:	d1ae fffc      	addl %d0,%fp@(-4)
  ce:	52ae fff8      	addql #1,%fp@(-8)

000000d2 <.L7>:
  d2:	700d           	moveq #13,%d0
  d4:	b0ae fff8      	cmpl %fp@(-8),%d0
  d8:	6cc8           	bges a2 <.L8>

000000da <.L6>:
  da:	203c ffff fa0f 	movel #-1521,%d0
  e0:	223c ffff fa0f 	movel #-1521,%d1
  e6:	2241           	moveal %d1,%a1
  e8:	1411           	moveb %a1@,%d2
  ea:	3042           	moveaw %d2,%a0
  ec:	1239 0000 0ad8 	moveb ad8 <_END_OF_INTERRUPT_TIMER_A>,%d1
  f2:	3408           	movew %a0,%d2
  f4:	c202           	andb %d2,%d1
  f6:	2040           	moveal %d0,%a0
  f8:	1081           	moveb %d1,%a0@
  fa:	4cdf 0307      	moveml %sp@+,%d0-%d2/%a0-%a1
  fe:	4e5e           	unlk %fp
 100:	4e73           	rte

00000102 <.LC0>:
 102:	1b59 2563      	moveb %a1@+,%a5@(9571)
 106:	
00000109 <.LC1>:
 109:	616e           	bsrs 179 <.LC5+0x8>
 10b:	636f           	blss 17c <.LC5+0xb>
 10d:	6f6c           	bles 17b <.LC5+0xa>
 10f:	312e 796d      	movew %fp@(31085),%a0@-
	...

00000114 <.LC2>:
 114:	5475 6e65      	addqw #2,%a5@(0000000000000065,%d6:l:8)
 118:	2066           	moveal %fp@-,%a0
 11a:	696c           	bvss 188 <.LC5+0x17>
 11c:	6520           	bcss 13e <.LC3+0xd>
 11e:	2e2e 2e2e      	movel %fp@(11822),%d7
 122:	2e2e 2e2e      	movel %fp@(11822),%d7
 126:	2e2e 2e20      	movel %fp@(11808),%d7
 12a:	3a20           	movew %a0@-,%d5
 12c:	
00000131 <.LC3>:
 131:	4275 6666      	clrw %a5@(0000000000000066,%d6:w:8)
 135:	6572           	bcss 1a9 <.LC6+0x1b>
 137:	2073 697a 6520 	moveal %a3@(0000000065202e2e)@(0000000000002e2e),%a0
 13d:	2e2e 2e2e 
 141:	2e2e 2e2e      	movel %fp@(11822),%d7
 145:	2e20           	movel %a0@-,%d7
 147:	3a20           	movew %a0@-,%d5
 149:	2564 2062      	movel %a4@-,%a2@(8290)
 14d:	7974           	.short 0x7974
 14f:	6573           	bcss 1c4 <.LC7+0x15>
 151:	
00000154 <.LC4>:
 154:	4e75           	rts
 156:	6d62           	blts 1ba <.LC7+0xb>
 158:	6572           	bcss 1cc <.LC7+0x1d>
 15a:	206f 6620      	moveal %sp@(26144),%a0
 15e:	6461           	bccs 1c1 <.LC7+0x12>
 160:	7461           	moveq #97,%d2
 162:	2066           	moveal %fp@-,%a0
 164:	7261           	moveq #97,%d1
 166:	6d65           	blts 1cd <.LC7+0x1e>
 168:	7320           	.short 0x7320
 16a:	3a20           	movew %a0@-,%d5
 16c:	2564 0d0a      	movel %a4@-,%a2@(3338)
	...

00000171 <.LC5>:
 171:	4d75           	.short 0x4d75
 173:	7369           	.short 0x7369
 175:	6320           	blss 197 <.LC6+0x9>
 177:	6461           	bccs 1da <.LC8+0xa>
 179:	7461           	moveq #97,%d2
 17b:	2061           	moveal %a1@-,%a0
 17d:	6464           	bccs 1e3 <.LC8+0x13>
 17f:	7265           	moveq #101,%d1
 181:	7373           	.short 0x7373
 183:	202e 2e20      	movel %fp@(11808),%d0
 187:	3a20           	movew %a0@-,%d5
 189:	2558 0d0a      	movel %a0@+,%a2@(3338)
	...

0000018e <.LC6>:
 18e:	594d           	subqw #4,%a5
 190:	3231 3439      	movew %a1@(0000000000000039,%d3:w:4),%d1
 194:	4620           	notb %a0@-
 196:	5245           	addqw #1,%d5
 198:	4749           	.short 0x4749
 19a:	5354           	subqw #1,%a4@
 19c:	4552           	.short 0x4552
 19e:	2061           	moveal %a1@-,%a0
 1a0:	6464           	bccs 206 <_displayInfo+0x1c>
 1a2:	7265           	moveq #101,%d1
 1a4:	7373           	.short 0x7373
 1a6:	203a 2025      	movel %pc@(21cd <_currentMusicFrame+0x16ed>),%d0
 1aa:	5820           	addqb #4,%a0@-
 1ac:	
000001af <.LC7>:
 1af:	594d           	subqw #4,%a5
 1b1:	3231 3439      	movew %a1@(0000000000000039,%d3:w:4),%d1
 1b5:	4620           	notb %a0@-
 1b7:	4441           	negw %d1
 1b9:	5441           	addqw #2,%d1
 1bb:	2020           	movel %a0@-,%d0
 1bd:	2020           	movel %a0@-,%d0
 1bf:	2061           	moveal %a1@-,%a0
 1c1:	6464           	bccs 227 <_displayInfo+0x3d>
 1c3:	7265           	moveq #101,%d1
 1c5:	7373           	.short 0x7373
 1c7:	203a 2025      	movel %pc@(21ee <_currentMusicFrame+0x170e>),%d0
 1cb:	5820           	addqb #4,%a0@-
 1cd:	
000001d0 <.LC8>:
 1d0:	4672 616d 6520 	notw %a2@(0000000000006520)@(0000000000000000)
 1d6:	5b5f           	subqw #5,%sp@+
 1d8:	5f5f           	subqw #7,%sp@+
 1da:	5f5f           	subqw #7,%sp@+
 1dc:	5f5f           	subqw #7,%sp@+
 1de:	5d20           	subqb #6,%a0@-
 1e0:	2f20           	movel %a0@-,%sp@-
 1e2:	5b25           	subqb #5,%a5@-
 1e4:	3037 645d      	movew %sp@(000000000000005d,%d6:w:4),%d0
	...

000001ea <_displayInfo>:
 1ea:	4e56 0000      	linkw %fp,#0
 1ee:	4878 0020      	pea 20 <_initPlayer+0x20>
 1f2:	4878 0022      	pea 22 <_initPlayer+0x22>
 1f6:	487a ff0a      	pea %pc@(102 <.LC0>)
 1fa:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 200:	4fef 000c      	lea %sp@(12),%sp
 204:	487a ff03      	pea %pc@(109 <.LC1>)
 208:	487a ff0a      	pea %pc@(114 <.LC2>)
 20c:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 212:	508f           	addql #8,%sp
 214:	202e 0008      	movel %fp@(8),%d0
 218:	2040           	moveal %d0,%a0
 21a:	2028 0004      	movel %a0@(4),%d0
 21e:	2f00           	movel %d0,%sp@-
 220:	487a ff0f      	pea %pc@(131 <.LC3>)
 224:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 22a:	508f           	addql #8,%sp
 22c:	2039 0000 0adc 	movel adc <_totalMusicFrames>,%d0
 232:	2f00           	movel %d0,%sp@-
 234:	487a ff1e      	pea %pc@(154 <.LC4>)
 238:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 23e:	508f           	addql #8,%sp
 240:	2039 0000 0000 	movel 0 <_initPlayer>,%d0
 246:	2f00           	movel %d0,%sp@-
 248:	487a ff27      	pea %pc@(171 <.LC5>)
 24c:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 252:	508f           	addql #8,%sp
 254:	4878 0020      	pea 20 <_initPlayer+0x20>
 258:	4878 0026      	pea 26 <_initPlayer+0x26>
 25c:	487a fea4      	pea %pc@(102 <.LC0>)
 260:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 266:	4fef 000c      	lea %sp@(12),%sp
 26a:	2f3c 00ff 8800 	movel #16746496,%sp@-
 270:	487a ff1c      	pea %pc@(18e <.LC6>)
 274:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 27a:	508f           	addql #8,%sp
 27c:	2f3c 00ff 8802 	movel #16746498,%sp@-
 282:	487a ff2b      	pea %pc@(1af <.LC7>)
 286:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 28c:	508f           	addql #8,%sp
 28e:	4878 003c      	pea 3c <.LBB2>
 292:	4878 002a      	pea 2a <_initPlayer+0x2a>
 296:	487a fe6a      	pea %pc@(102 <.LC0>)
 29a:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 2a0:	4fef 000c      	lea %sp@(12),%sp
 2a4:	2039 0000 0adc 	movel adc <_totalMusicFrames>,%d0
 2aa:	2f00           	movel %d0,%sp@-
 2ac:	487a ff22      	pea %pc@(1d0 <.LC8>)
 2b0:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 2b6:	508f           	addql #8,%sp
 2b8:	4e5e           	unlk %fp
 2ba:	4e75           	rts

000002bc <.LC9>:
 2bc:	5665           	addqw #3,%a5@-
 2be:	7279           	moveq #121,%d1
 2c0:	2053           	moveal %a3@,%a0
 2c2:	6d61           	blts 325 <.LBB5+0x17>
 2c4:	6c6c           	bges 332 <.LBB6+0x4>
 2c6:	2059           	moveal %a1@+,%a0
 2c8:	4d20           	chkl %a0@-,%d6
 2ca:	506c 6179      	addqw #8,%a4@(24953)
 2ce:	6572           	bcss 342 <.LBB6+0x14>
 2d0:	2028 594d      	movel %a0@(22861),%d0
 2d4:	3321           	movew %a1@-,%a1@-
 2d6:	2920           	movel %a0@-,%a4@-
 2d8:	6279           	bhis 353 <.LBE6+0x5>
 2da:	2046           	moveal %d6,%a0
 2dc:	5820           	addqb #4,%a0@-
 2de:	6874           	bvcs 354 <.LBE6+0x6>
 2e0:	7470           	moveq #112,%d2
 2e2:	733a           	.short 0x733a
 2e4:	2f2f 7777      	movel %sp@(30583),%sp@-
 2e8:	772e           	.short 0x772e
 2ea:	6678           	bnes 364 <.LC10>
 2ec:	6a61           	bpls 34f <.LBE6+0x1>
 2ee:	7661           	moveq #97,%d3
 2f0:	6465           	bccs 357 <.LBE6+0x9>
 2f2:	7662           	moveq #98,%d3
 2f4:	6c6f           	bges 365 <.LC10+0x1>
 2f6:	672e           	beqs 326 <.LBB5+0x18>
 2f8:	6672           	bnes 36c <.LC10+0x8>
 2fa:	2028 3036      	movel %a0@(12342),%d0
 2fe:	2f32 3032      	movel %a2@(0000000000000032,%d3:w),%sp@-
 302:	3129 0d00      	movew %a1@(3328),%a0@-

00000306 <_displayGreetings>:
 306:	4e56 fff8      	linkw %fp,#-8
 30a:	48e7 3020      	moveml %d2-%d3/%a2,%sp@-

0000030e <.LBB5>:
 30e:	3d7c 0005 fffe 	movew #5,%fp@(-2)
 314:	3d7c 000e fffc 	movew #14,%fp@(-4)
 31a:	302e fffe      	movew %fp@(-2),%d0
 31e:	362e fffc      	movew %fp@(-4),%d3
 322:	3f03           	movew %d3,%sp@-
 324:	3f00           	movew %d0,%sp@-
 326:	3f3c 0003      	movew #3,%sp@-
 32a:	4e4d           	trap #13
 32c:	5c8f           	addql #6,%sp

0000032e <.LBB6>:
 32e:	3d7c 0005 fffa 	movew #5,%fp@(-6)
 334:	3d7c 000f fff8 	movew #15,%fp@(-8)
 33a:	302e fffa      	movew %fp@(-6),%d0
 33e:	362e fff8      	movew %fp@(-8),%d3
 342:	3f03           	movew %d3,%sp@-
 344:	3f00           	movew %d0,%sp@-
 346:	3f3c 0003      	movew #3,%sp@-
 34a:	4e4d           	trap #13
 34c:	5c8f           	addql #6,%sp

0000034e <.LBE6>:
 34e:	487a ff6c      	pea %pc@(2bc <.LC9>)
 352:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 358:	588f           	addql #4,%sp
 35a:	4cee 040c ffec 	moveml %fp@(-20),%d2-%d3/%a2
 360:	4e5e           	unlk %fp
 362:	4e75           	rts

00000364 <.LC10>:
 364:	5265           	addqw #1,%a5@-
 366:	6d6f           	blts 3d7 <.LC12+0x41>
 368:	7669           	moveq #105,%d3
 36a:	6e67           	bgts 3d3 <.LC12+0x3d>
 36c:	204b           	moveal %a3,%a0
 36e:	4559           	.short 0x4559
 370:	434c           	.short 0x434c
 372:	4943           	.short 0x4943
 374:	4b20           	chkl %a0@-,%d5
 376:	536f 756e      	subqw #1,%sp@(30062)
 37a:	
0000037c <.LC11>:
 37c:	5469 6d65      	addqw #2,%a1@(28005)
 380:	7220           	moveq #32,%d1
 382:	4120           	chkl %a0@-,%d0
 384:	726f           	moveq #111,%d1
 386:	7574           	.short 0x7574
 388:	696e           	bvss 3f8 <.LC13+0x1a>
 38a:	6520           	bcss 3ac <.LC12+0x16>
 38c:	696e           	bvss 3fc <.LC13+0x1e>
 38e:	7374           	.short 0x7374
 390:	616c           	bsrs 3fe <.LC13+0x20>
 392:	6c65           	bges 3f9 <.LC13+0x1b>
 394:	
00000396 <.LC12>:
 396:	7c20           	moveq #32,%d6
 398:	414c           	.short 0x414c
 39a:	207c 2041 4820 	moveal #541149216,%a0
 3a0:	7c20           	moveq #32,%d6
 3a2:	424c           	.short 0x424c
 3a4:	207c 2042 4820 	moveal #541214752,%a0
 3aa:	7c20           	moveq #32,%d6
 3ac:	434c           	.short 0x434c
 3ae:	207c 2043 4820 	moveal #541280288,%a0
 3b4:	7c20           	moveq #32,%d6
 3b6:	4e46           	trap #6
 3b8:	207c 204d 4320 	moveal #541934368,%a0
 3be:	7c20           	moveq #32,%d6
 3c0:	4141           	.short 0x4141
 3c2:	207c 2042 4120 	moveal #541212960,%a0
 3c8:	7c20           	moveq #32,%d6
 3ca:	4341           	.short 0x4341
 3cc:	207c 2045 4820 	moveal #541411360,%a0
 3d2:	7c20           	moveq #32,%d6
 3d4:	454c           	.short 0x454c
 3d6:	207c 2045 5320 	moveal #541414176,%a0
 3dc:	7c00           	moveq #0,%d6

000003de <.LC13>:
 3de:	7c2d           	moveq #45,%d6
 3e0:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 3e4:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 3e8:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 3ec:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 3f0:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 3f4:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 3f8:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 3fc:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 400:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 404:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 408:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 40c:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 410:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 414:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 418:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 41c:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 420:	2d2d 2d2d      	movel %a5@(11565),%fp@-
 424:	7c00           	moveq #0,%d6

00000426 <.LC14>:
 426:	4368           	.short 0x4368
 428:	616e           	bsrs 498 <.LC22+0x7>
 42a:	6e65           	bgts 491 <.LC22>
 42c:	6c20           	bges 44e <.LC17+0x7>
 42e:	310d           	movew %a5,%a0@-
	...

00000431 <.LC15>:
 431:	4368           	.short 0x4368
 433:	616e           	bsrs 4a3 <.LC23+0x1>
 435:	6e65           	bgts 49c <.LC22+0xb>
 437:	6c20           	bges 459 <.LC18+0x6>
 439:	320d           	movew %a5,%d1
	...

0000043c <.LC16>:
 43c:	4368           	.short 0x4368
 43e:	616e           	bsrs 4ae <.LC24+0x6>
 440:	6e65           	bgts 4a7 <.LC23+0x5>
 442:	6c20           	bges 464 <.LC19+0xa>
 444:	330d           	movew %a5,%a1@-
	...

00000447 <.LC17>:
 447:	456e           	.short 0x456e
 449:	762e           	moveq #46,%d3
 44b:	206c 6576      	moveal %a4@(25974),%a0
 44f:	656c           	bcss 4bd <.LC24+0x15>
 451:	0d00           	btst %d6,%d0

00000453 <.LC18>:
 453:	546f 7461      	addqw #2,%sp@(29793)
 457:	6c0d           	bges 466 <.LC19+0xc>
	...

0000045a <.LC19>:
 45a:	2563 2028      	movel %a3@-,%a2@(8232)
 45e:	2564 203a      	movel %a4@-,%a2@(8250)
 462:	2025           	movel %a5@-,%d0
 464:	
00000467 <.LC20>:
 467:	4b42           	.short 0x4b42
 469:	4420           	negb %a0@-
 46b:	2563 2563      	movel %a3@-,%a2@(9571)
 46f:	2563 2563      	movel %a3@-,%a2@(9571)
 473:	2563 2563      	movel %a3@-,%a2@(9571)
 477:	2563 2563      	movel %a3@-,%a2@(9571)
	...

0000047c <.LC21>:
 47c:	5343           	subqw #1,%d3
 47e:	4420           	negb %a0@-
 480:	2563 2563      	movel %a3@-,%a2@(9571)
 484:	2563 2563      	movel %a3@-,%a2@(9571)
 488:	2563 2563      	movel %a3@-,%a2@(9571)
 48c:	2563 2563      	movel %a3@-,%a2@(9571)
	...

00000491 <.LC22>:
 491:	5641           	addqw #3,%d1
 493:	4c53           	.short 0x4c53
 495:	2025           	movel %a5@-,%d0
 497:	3032 5820      	movew %a2@(0000000000000020,%d5:l),%d0
 49b:	3a20           	movew %a0@-,%d5
 49d:	2530 3258      	movel %a0@(0000000000000058,%d3:w:2),%a2@-
	...

000004a2 <.LC23>:
 4a2:	2530 3764 0a00 	movel %a0@(0000000000000a00)@(0000000000000000),%a2@-

000004a8 <.LC24>:
 4a8:	5469 6d65      	addqw #2,%a1@(28005)
 4ac:	7220           	moveq #32,%d1
 4ae:	4120           	chkl %a0@-,%d0
 4b0:	726f           	moveq #111,%d1
 4b2:	7574           	.short 0x7574
 4b4:	696e           	bvss 524 <.LC26+0x2b>
 4b6:	6520           	bcss 4d8 <.LC24+0x30>
 4b8:	7265           	moveq #101,%d1
 4ba:	6d6f           	blts 52b <_Run+0x1>
 4bc:	7665           	moveq #101,%d3
 4be:	6420           	bccs 4e0 <.LC24+0x38>
 4c0:	616e           	bsrs 530 <_Run+0x6>
 4c2:	6420           	bccs 4e4 <.LC24+0x3c>
 4c4:	4b65           	.short 0x4b65
 4c6:	7943           	.short 0x7943
 4c8:	6c69           	bges 533 <_Run+0x9>
 4ca:	636b           	blss 537 <_Run+0xd>
 4cc:	2063           	moveal %a3@-,%a0
 4ce:	6f6e           	bles 53e <_Run+0x14>
 4d0:	6669           	bnes 53b <_Run+0x11>
 4d2:	6775           	beqs 549 <_Run+0x1f>
 4d4:	7261           	moveq #97,%d1
 4d6:	7469           	moveq #105,%d2
 4d8:	6f6e           	bles 548 <_Run+0x1e>
 4da:	
000004e5 <.LC25>:
 4e5:	436c           	.short 0x436c
 4e7:	6561           	bcss 54a <_Run+0x20>
 4e9:	6e69           	bgts 554 <_Run+0x2a>
 4eb:	6e67           	bgts 554 <_Run+0x2a>
 4ed:	206d 656d      	moveal %a5@(25965),%a0
 4f1:	6f72           	bles 565 <_Run+0x3b>
 4f3:	792e           	.short 0x792e
 4f5:	2e2e 0d00      	movel %fp@(3328),%d7

000004f9 <.LC26>:
 4f9:	4669 6e69      	notw %a1@(28265)
 4fd:	7368           	.short 0x7368
 4ff:	6564           	bcss 565 <_Run+0x3b>
 501:	2e20           	movel %a0@-,%d7
 503:	5072 6573 7320 	addqw #8,%a2@(0000000073205b45)@(000000004e544552)
 509:	5b45 4e54 4552 
 50f:	5d20           	subqb #6,%a0@-
 511:	746f           	moveq #111,%d2
 513:	2067           	moveal %sp@-,%a0
 515:	6f20           	bles 537 <_Run+0xd>
 517:	6261           	bhis 57a <_Run+0x50>
 519:	636b           	blss 586 <_Run+0x5c>
 51b:	2074 6f20 4465 	moveal %a4@(0000000000004465,%d6:l:8),%a0
 521:	736b           	.short 0x736b
 523:	746f           	moveq #111,%d2
 525:	702e           	moveq #46,%d0
 527:	0d00           	btst %d6,%d0
	...

0000052a <_Run>:
 52a:	4e56 ffd4      	linkw %fp,#-44
 52e:	48e7 3c20      	moveml %d2-%d5/%a2,%sp@-
 532:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 538:	23c0 0000 0000 	movel %d0,0 <_initPlayer>
 53e:	4eba fdc6      	jsr %pc@(306 <_displayGreetings>)
 542:	487a fbc5      	pea %pc@(109 <.LC1>)
 546:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 54c:	588f           	addql #4,%sp
 54e:	2d40 fffc      	movel %d0,%fp@(-4)
 552:	2f2e fffc      	movel %fp@(-4),%sp@-
 556:	4eba faa8      	jsr %pc@(0 <_initPlayer>)
 55a:	588f           	addql #4,%sp
 55c:	2f2e fffc      	movel %fp@(-4),%sp@-
 560:	4eba fc88      	jsr %pc@(1ea <_displayInfo>)
 564:	588f           	addql #4,%sp
 566:	4878 0020      	pea 20 <_initPlayer+0x20>
 56a:	4878 0029      	pea 29 <_initPlayer+0x29>
 56e:	487a fb92      	pea %pc@(102 <.LC0>)
 572:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 578:	4fef 000c      	lea %sp@(12),%sp
 57c:	487a fde6      	pea %pc@(364 <.LC10>)
 580:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 586:	588f           	addql #4,%sp
 588:	203c 0000 0484 	movel #1156,%d0
 58e:	2040           	moveal %d0,%a0
 590:	1d50 fffb      	moveb %a0@,%fp@(-5)
 594:	203c 0000 0484 	movel #1156,%d0
 59a:	2040           	moveal %d0,%a0
 59c:	4210           	clrb %a0@

0000059e <.LBB7>:
 59e:	3d7c 000d fff8 	movew #13,%fp@(-8)
 5a4:	302e fff8      	movew %fp@(-8),%d0
 5a8:	3f00           	movew %d0,%sp@-
 5aa:	3f3c 001a      	movew #26,%sp@-
 5ae:	4e4e           	trap #14
 5b0:	588f           	addql #4,%sp

000005b2 <.LBB8>:
 5b2:	426e fff6      	clrw %fp@(-10)
 5b6:	3d7c 0007 fff4 	movew #7,%fp@(-12)
 5bc:	3d7c 00f6 fff2 	movew #246,%fp@(-14)
 5c2:	2d7c 0000 0000 	movel #0,%fp@(-18)
 5c8:	ffee 
 5ca:	302e fff6      	movew %fp@(-10),%d0
 5ce:	362e fff4      	movew %fp@(-12),%d3
 5d2:	382e fff2      	movew %fp@(-14),%d4
 5d6:	2a2e ffee      	movel %fp@(-18),%d5
 5da:	2f05           	movel %d5,%sp@-
 5dc:	3f04           	movew %d4,%sp@-
 5de:	3f03           	movew %d3,%sp@-
 5e0:	3f00           	movew %d0,%sp@-
 5e2:	3f3c 001f      	movew #31,%sp@-
 5e6:	4e4e           	trap #14
 5e8:	4fef 000c      	lea %sp@(12),%sp

000005ec <.LBB9>:
 5ec:	3d7c 000d ffec 	movew #13,%fp@(-20)
 5f2:	302e ffec      	movew %fp@(-20),%d0
 5f6:	3f00           	movew %d0,%sp@-
 5f8:	3f3c 001b      	movew #27,%sp@-
 5fc:	4e4e           	trap #14
 5fe:	588f           	addql #4,%sp

00000600 <.LBE9>:
 600:	4878 0020      	pea 20 <_initPlayer+0x20>
 604:	4878 002a      	pea 2a <_initPlayer+0x2a>
 608:	487a faf8      	pea %pc@(102 <.LC0>)
 60c:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 612:	4fef 000c      	lea %sp@(12),%sp
 616:	487a fd64      	pea %pc@(37c <.LC11>)
 61a:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 620:	588f           	addql #4,%sp
 622:	42ae ffe8      	clrl %fp@(-24)
 626:	4878 0020      	pea 20 <_initPlayer+0x20>
 62a:	4878 002c      	pea 2c <_initPlayer+0x2c>
 62e:	487a fad2      	pea %pc@(102 <.LC0>)
 632:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 638:	4fef 000c      	lea %sp@(12),%sp
 63c:	487a fd58      	pea %pc@(396 <.LC12>)
 640:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 646:	588f           	addql #4,%sp
 648:	4878 0020      	pea 20 <_initPlayer+0x20>
 64c:	4878 002d      	pea 2d <_initPlayer+0x2d>
 650:	487a fab0      	pea %pc@(102 <.LC0>)
 654:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 65a:	4fef 000c      	lea %sp@(12),%sp
 65e:	487a fd7e      	pea %pc@(3de <.LC13>)
 662:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 668:	588f           	addql #4,%sp
 66a:	4878 0020      	pea 20 <_initPlayer+0x20>
 66e:	4878 0030      	pea 30 <_initPlayer+0x30>
 672:	487a fa8e      	pea %pc@(102 <.LC0>)
 676:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 67c:	4fef 000c      	lea %sp@(12),%sp
 680:	487a fda4      	pea %pc@(426 <.LC14>)
 684:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 68a:	588f           	addql #4,%sp
 68c:	487a fda3      	pea %pc@(431 <.LC15>)
 690:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 696:	588f           	addql #4,%sp
 698:	487a fda2      	pea %pc@(43c <.LC16>)
 69c:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 6a2:	588f           	addql #4,%sp
 6a4:	487a fda1      	pea %pc@(447 <.LC17>)
 6a8:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 6ae:	588f           	addql #4,%sp
 6b0:	487a fda1      	pea %pc@(453 <.LC18>)
 6b4:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 6ba:	588f           	addql #4,%sp
 6bc:	1d7c 0001 ffe7 	moveb #1,%fp@(-25)
 6c2:	6000 030a      	braw 9ce <.L12>

000006c6 <.L47>:
 6c6:	3f3c 000b      	movew #11,%sp@-
 6ca:	4e41           	trap #1
 6cc:	548f           	addql #2,%sp

000006ce <.LBE11>:
 6ce:	3000           	movew %d0,%d0
 6d0:	4a40           	tstw %d0
 6d2:	6760           	beqs 734 <.L13>

000006d4 <.LBB12>:
 6d4:	3f3c 0007      	movew #7,%sp@-
 6d8:	4e41           	trap #1
 6da:	548f           	addql #2,%sp

000006dc <.LBE12>:
 6dc:	2d40 ffe2      	movel %d0,%fp@(-30)
 6e0:	202e ffe2      	movel %fp@(-30),%d0
 6e4:	1000           	moveb %d0,%d0
 6e6:	0c00 0020      	cmpib #32,%d0
 6ea:	6606           	bnes 6f2 <.L14>
 6ec:	422e ffe7      	clrb %fp@(-25)
 6f0:	6042           	bras 734 <.L13>

000006f2 <.L14>:
 6f2:	4878 005c      	pea 5c <.L3>
 6f6:	4878 0021      	pea 21 <_initPlayer+0x21>
 6fa:	487a fa06      	pea %pc@(102 <.LC0>)
 6fe:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 704:	4fef 000c      	lea %sp@(12),%sp
 708:	202e ffe2      	movel %fp@(-30),%d0
 70c:	1000           	moveb %d0,%d0
 70e:	4880           	extw %d0
 710:	3200           	movew %d0,%d1
 712:	48c1           	extl %d1
 714:	202e ffe2      	movel %fp@(-30),%d0
 718:	1000           	moveb %d0,%d0
 71a:	4880           	extw %d0
 71c:	48c0           	extl %d0
 71e:	2f01           	movel %d1,%sp@-
 720:	2f00           	movel %d0,%sp@-
 722:	2f2e ffe2      	movel %fp@(-30),%sp@-
 726:	487a fd32      	pea %pc@(45a <.LC19>)
 72a:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 730:	4fef 0010      	lea %sp@(16),%sp

00000734 <.L13>:
 734:	4878 005c      	pea 5c <.L3>
 738:	4878 0022      	pea 22 <_initPlayer+0x22>
 73c:	487a f9c4      	pea %pc@(102 <.LC0>)
 740:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 746:	4fef 000c      	lea %sp@(12),%sp
 74a:	203c 00ff fc02 	movel #16776194,%d0
 750:	2040           	moveal %d0,%a0
 752:	1d50 ffe1      	moveb %a0@,%fp@(-31)
 756:	102e ffe1      	moveb %fp@(-31),%d0
 75a:	0200 007f      	andib #127,%d0
 75e:	1d40 ffe0      	moveb %d0,%fp@(-32)
 762:	7000           	moveq #0,%d0
 764:	102e ffe1      	moveb %fp@(-31),%d0
 768:	7201           	moveq #1,%d1
 76a:	c081           	andl %d1,%d0
 76c:	1000           	moveb %d0,%d0
 76e:	4a00           	tstb %d0
 770:	6704           	beqs 776 <.L15>
 772:	7a31           	moveq #49,%d5
 774:	6002           	bras 778 <.L16>

00000776 <.L15>:
 776:	7a30           	moveq #48,%d5

00000778 <.L16>:
 778:	7000           	moveq #0,%d0
 77a:	102e ffe1      	moveb %fp@(-31),%d0
 77e:	7202           	moveq #2,%d1
 780:	c081           	andl %d1,%d0
 782:	4a80           	tstl %d0
 784:	6704           	beqs 78a <.L17>
 786:	7831           	moveq #49,%d4
 788:	6002           	bras 78c <.L18>

0000078a <.L17>:
 78a:	7830           	moveq #48,%d4

0000078c <.L18>:
 78c:	7000           	moveq #0,%d0
 78e:	102e ffe1      	moveb %fp@(-31),%d0
 792:	7204           	moveq #4,%d1
 794:	c081           	andl %d1,%d0
 796:	4a80           	tstl %d0
 798:	6704           	beqs 79e <.L19>
 79a:	7631           	moveq #49,%d3
 79c:	6002           	bras 7a0 <.L20>

0000079e <.L19>:
 79e:	7630           	moveq #48,%d3

000007a0 <.L20>:
 7a0:	7000           	moveq #0,%d0
 7a2:	102e ffe1      	moveb %fp@(-31),%d0
 7a6:	7208           	moveq #8,%d1
 7a8:	c081           	andl %d1,%d0
 7aa:	4a80           	tstl %d0
 7ac:	6704           	beqs 7b2 <.L21>
 7ae:	7431           	moveq #49,%d2
 7b0:	6002           	bras 7b4 <.L22>

000007b2 <.L21>:
 7b2:	7430           	moveq #48,%d2

000007b4 <.L22>:
 7b4:	7000           	moveq #0,%d0
 7b6:	102e ffe1      	moveb %fp@(-31),%d0
 7ba:	7210           	moveq #16,%d1
 7bc:	c081           	andl %d1,%d0
 7be:	4a80           	tstl %d0
 7c0:	6706           	beqs 7c8 <.L23>
 7c2:	327c 0031      	moveaw #49,%a1
 7c6:	6004           	bras 7cc <.L24>

000007c8 <.L23>:
 7c8:	327c 0030      	moveaw #48,%a1

000007cc <.L24>:
 7cc:	7000           	moveq #0,%d0
 7ce:	102e ffe1      	moveb %fp@(-31),%d0
 7d2:	7220           	moveq #32,%d1
 7d4:	c081           	andl %d1,%d0
 7d6:	4a80           	tstl %d0
 7d8:	6706           	beqs 7e0 <.L25>
 7da:	307c 0031      	moveaw #49,%a0
 7de:	6004           	bras 7e4 <.L26>

000007e0 <.L25>:
 7e0:	307c 0030      	moveaw #48,%a0

000007e4 <.L26>:
 7e4:	7000           	moveq #0,%d0
 7e6:	102e ffe1      	moveb %fp@(-31),%d0
 7ea:	7240           	moveq #64,%d1
 7ec:	c081           	andl %d1,%d0
 7ee:	4a80           	tstl %d0
 7f0:	6704           	beqs 7f6 <.L27>
 7f2:	7231           	moveq #49,%d1
 7f4:	6002           	bras 7f8 <.L28>

000007f6 <.L27>:
 7f6:	7230           	moveq #48,%d1

000007f8 <.L28>:
 7f8:	102e ffe1      	moveb %fp@(-31),%d0
 7fc:	4a00           	tstb %d0
 7fe:	6c04           	bges 804 <.L29>
 800:	7031           	moveq #49,%d0
 802:	6002           	bras 806 <.L30>

00000804 <.L29>:
 804:	7030           	moveq #48,%d0

00000806 <.L30>:
 806:	2f05           	movel %d5,%sp@-
 808:	2f04           	movel %d4,%sp@-
 80a:	2f03           	movel %d3,%sp@-
 80c:	2f02           	movel %d2,%sp@-
 80e:	2f09           	movel %a1,%sp@-
 810:	2f08           	movel %a0,%sp@-
 812:	2f01           	movel %d1,%sp@-
 814:	2f00           	movel %d0,%sp@-
 816:	487a fc4f      	pea %pc@(467 <.LC20>)
 81a:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 820:	4fef 0024      	lea %sp@(36),%sp
 824:	4878 005c      	pea 5c <.L3>
 828:	4878 0023      	pea 23 <_initPlayer+0x23>
 82c:	487a f8d4      	pea %pc@(102 <.LC0>)
 830:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 836:	4fef 000c      	lea %sp@(12),%sp
 83a:	7000           	moveq #0,%d0
 83c:	102e ffe0      	moveb %fp@(-32),%d0
 840:	7201           	moveq #1,%d1
 842:	c081           	andl %d1,%d0
 844:	1000           	moveb %d0,%d0
 846:	4a00           	tstb %d0
 848:	6704           	beqs 84e <.L31>
 84a:	7a31           	moveq #49,%d5
 84c:	6002           	bras 850 <.L32>

0000084e <.L31>:
 84e:	7a30           	moveq #48,%d5

00000850 <.L32>:
 850:	7000           	moveq #0,%d0
 852:	102e ffe0      	moveb %fp@(-32),%d0
 856:	7202           	moveq #2,%d1
 858:	c081           	andl %d1,%d0
 85a:	4a80           	tstl %d0
 85c:	6704           	beqs 862 <.L33>
 85e:	7831           	moveq #49,%d4
 860:	6002           	bras 864 <.L34>

00000862 <.L33>:
 862:	7830           	moveq #48,%d4

00000864 <.L34>:
 864:	7000           	moveq #0,%d0
 866:	102e ffe0      	moveb %fp@(-32),%d0
 86a:	7204           	moveq #4,%d1
 86c:	c081           	andl %d1,%d0
 86e:	4a80           	tstl %d0
 870:	6704           	beqs 876 <.L35>
 872:	7631           	moveq #49,%d3
 874:	6002           	bras 878 <.L36>

00000876 <.L35>:
 876:	7630           	moveq #48,%d3

00000878 <.L36>:
 878:	7000           	moveq #0,%d0
 87a:	102e ffe0      	moveb %fp@(-32),%d0
 87e:	7208           	moveq #8,%d1
 880:	c081           	andl %d1,%d0
 882:	4a80           	tstl %d0
 884:	6704           	beqs 88a <.L37>
 886:	7431           	moveq #49,%d2
 888:	6002           	bras 88c <.L38>

0000088a <.L37>:
 88a:	7430           	moveq #48,%d2

0000088c <.L38>:
 88c:	7000           	moveq #0,%d0
 88e:	102e ffe0      	moveb %fp@(-32),%d0
 892:	7210           	moveq #16,%d1
 894:	c081           	andl %d1,%d0
 896:	4a80           	tstl %d0
 898:	6706           	beqs 8a0 <.L39>
 89a:	327c 0031      	moveaw #49,%a1
 89e:	6004           	bras 8a4 <.L40>

000008a0 <.L39>:
 8a0:	327c 0030      	moveaw #48,%a1

000008a4 <.L40>:
 8a4:	7000           	moveq #0,%d0
 8a6:	102e ffe0      	moveb %fp@(-32),%d0
 8aa:	7220           	moveq #32,%d1
 8ac:	c081           	andl %d1,%d0
 8ae:	4a80           	tstl %d0
 8b0:	6706           	beqs 8b8 <.L41>
 8b2:	307c 0031      	moveaw #49,%a0
 8b6:	6004           	bras 8bc <.L42>

000008b8 <.L41>:
 8b8:	307c 0030      	moveaw #48,%a0

000008bc <.L42>:
 8bc:	7000           	moveq #0,%d0
 8be:	102e ffe0      	moveb %fp@(-32),%d0
 8c2:	7240           	moveq #64,%d1
 8c4:	c081           	andl %d1,%d0
 8c6:	4a80           	tstl %d0
 8c8:	6704           	beqs 8ce <.L43>
 8ca:	7231           	moveq #49,%d1
 8cc:	6002           	bras 8d0 <.L44>

000008ce <.L43>:
 8ce:	7230           	moveq #48,%d1

000008d0 <.L44>:
 8d0:	102e ffe0      	moveb %fp@(-32),%d0
 8d4:	4a00           	tstb %d0
 8d6:	6c04           	bges 8dc <.L45>
 8d8:	7031           	moveq #49,%d0
 8da:	6002           	bras 8de <.L46>

000008dc <.L45>:
 8dc:	7030           	moveq #48,%d0

000008de <.L46>:
 8de:	2f05           	movel %d5,%sp@-
 8e0:	2f04           	movel %d4,%sp@-
 8e2:	2f03           	movel %d3,%sp@-
 8e4:	2f02           	movel %d2,%sp@-
 8e6:	2f09           	movel %a1,%sp@-
 8e8:	2f08           	movel %a0,%sp@-
 8ea:	2f01           	movel %d1,%sp@-
 8ec:	2f00           	movel %d0,%sp@-
 8ee:	487a fb8c      	pea %pc@(47c <.LC21>)
 8f2:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 8f8:	4fef 0024      	lea %sp@(36),%sp
 8fc:	4878 005c      	pea 5c <.L3>
 900:	4878 0024      	pea 24 <_initPlayer+0x24>
 904:	487a f7fc      	pea %pc@(102 <.LC0>)
 908:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 90e:	4fef 000c      	lea %sp@(12),%sp
 912:	7200           	moveq #0,%d1
 914:	122e ffe0      	moveb %fp@(-32),%d1
 918:	7000           	moveq #0,%d0
 91a:	102e ffe1      	moveb %fp@(-31),%d0
 91e:	2f01           	movel %d1,%sp@-
 920:	2f00           	movel %d0,%sp@-
 922:	487a fb6d      	pea %pc@(491 <.LC22>)
 926:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 92c:	4fef 000c      	lea %sp@(12),%sp
 930:	4878 003a      	pea 3a <_soundOff+0x2>
 934:	4878 002a      	pea 2a <_initPlayer+0x2a>
 938:	487a f7c8      	pea %pc@(102 <.LC0>)
 93c:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 942:	4fef 000c      	lea %sp@(12),%sp
 946:	2039 0000 0ae0 	movel ae0 <_currentMusicFrame>,%d0
 94c:	4878 000a      	pea a <_initPlayer+0xa>
 950:	2f00           	movel %d0,%sp@-
 952:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 958:	508f           	addql #8,%sp
 95a:	7207           	moveq #7,%d1
 95c:	c280           	andl %d0,%d1
 95e:	2d41 ffe8      	movel %d1,%fp@(-24)
 962:	202e ffe8      	movel %fp@(-24),%d0
 966:	0680 0000 0ad0 	addil #2768,%d0
 96c:	2040           	moveal %d0,%a0
 96e:	1010           	moveb %a0@,%d0
 970:	4880           	extw %d0
 972:	48c0           	extl %d0
 974:	2f00           	movel %d0,%sp@-
 976:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 97c:	588f           	addql #4,%sp
 97e:	4878 0043      	pea 43 <.L4+0x1>
 982:	4878 002a      	pea 2a <_initPlayer+0x2a>
 986:	487a f77a      	pea %pc@(102 <.LC0>)
 98a:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 990:	4fef 000c      	lea %sp@(12),%sp
 994:	2039 0000 0ae0 	movel ae0 <_currentMusicFrame>,%d0
 99a:	2f00           	movel %d0,%sp@-
 99c:	487a fb04      	pea %pc@(4a2 <.LC23>)
 9a0:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 9a6:	508f           	addql #8,%sp
 9a8:	4878 0020      	pea 20 <_initPlayer+0x20>
 9ac:	4878 002e      	pea 2e <_initPlayer+0x2e>
 9b0:	487a f750      	pea %pc@(102 <.LC0>)
 9b4:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 9ba:	4fef 000c      	lea %sp@(12),%sp
 9be:	4878 007c      	pea 7c <_timerA_Routine_C+0x14>
 9c2:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 9c8:	588f           	addql #4,%sp
 9ca:	422e ffdf      	clrb %fp@(-33)

000009ce <.L12>:
 9ce:	203c 00ff fc02 	movel #16776194,%d0
 9d4:	2040           	moveal %d0,%a0
 9d6:	1010           	moveb %a0@,%d0
 9d8:	0c00 ff81      	cmpib #-127,%d0
 9dc:	6600 fce8      	bnew 6c6 <.L47>

000009e0 <.LBB13>:
 9e0:	426e ffdc      	clrw %fp@(-36)
 9e4:	426e ffda      	clrw %fp@(-38)
 9e8:	426e ffd8      	clrw %fp@(-40)
 9ec:	2d7c 0000 0000 	movel #0,%fp@(-44)
 9f2:	ffd4 
 9f4:	302e ffdc      	movew %fp@(-36),%d0
 9f8:	362e ffda      	movew %fp@(-38),%d3
 9fc:	382e ffd8      	movew %fp@(-40),%d4
 a00:	2a2e ffd4      	movel %fp@(-44),%d5
 a04:	2f05           	movel %d5,%sp@-
 a06:	3f04           	movew %d4,%sp@-
 a08:	3f03           	movew %d3,%sp@-
 a0a:	3f00           	movew %d0,%sp@-
 a0c:	3f3c 001f      	movew #31,%sp@-
 a10:	4e4e           	trap #14
 a12:	4fef 000c      	lea %sp@(12),%sp

00000a16 <.LBE13>:
 a16:	4eba f620      	jsr %pc@(38 <_soundOff>)
 a1a:	203c 0000 0484 	movel #1156,%d0
 a20:	2040           	moveal %d0,%a0
 a22:	10ae fffb      	moveb %fp@(-5),%a0@
 a26:	4878 0020      	pea 20 <_initPlayer+0x20>
 a2a:	4878 0035      	pea 35 <_initPlayer+0x35>
 a2e:	487a f6d2      	pea %pc@(102 <.LC0>)
 a32:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 a38:	4fef 000c      	lea %sp@(12),%sp
 a3c:	487a fa6a      	pea %pc@(4a8 <.LC24>)
 a40:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 a46:	588f           	addql #4,%sp
 a48:	487a fa9b      	pea %pc@(4e5 <.LC25>)
 a4c:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 a52:	588f           	addql #4,%sp
 a54:	2f2e fffc      	movel %fp@(-4),%sp@-
 a58:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 a5e:	588f           	addql #4,%sp
 a60:	487a fa97      	pea %pc@(4f9 <.LC26>)
 a64:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 a6a:	588f           	addql #4,%sp

00000a6c <.LBB14>:
 a6c:	3f3c 0001      	movew #1,%sp@-
 a70:	4e41           	trap #1
 a72:	548f           	addql #2,%sp

00000a74 <.LBE14>:
 a74:	2039 0000 0000 	movel 0 <_initPlayer>,%d0
 a7a:	2f00           	movel %d0,%sp@-
 a7c:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 a82:	588f           	addql #4,%sp
 a84:	2039 0000 0000 	movel 0 <_initPlayer>,%d0
 a8a:	2f00           	movel %d0,%sp@-
 a8c:	4eb9 0000 0000 	jsr 0 <_initPlayer>
 a92:	588f           	addql #4,%sp
 a94:	4cee 043c ffc0 	moveml %fp@(-64),%d2-%d5/%a2
 a9a:	4e5e           	unlk %fp
 a9c:	4e75           	rts

00000a9e <_main>:
 a9e:	4e56 fffc      	linkw %fp,#-4
 aa2:	2f0a           	movel %a2,%sp@-
 aa4:	2f02           	movel %d2,%sp@-
 aa6:	4eb9 0000 0000 	jsr 0 <_initPlayer>

00000aac <.LBB15>:
 aac:	2d7c 0000 052a 	movel #1322,%fp@(-4)
 ab2:	fffc 
 ab4:	202e fffc      	movel %fp@(-4),%d0
 ab8:	2f00           	movel %d0,%sp@-
 aba:	3f3c 0026      	movew #38,%sp@-
 abe:	4e4e           	trap #14
 ac0:	5c8f           	addql #6,%sp

00000ac2 <.LBE15>:
 ac2:	7000           	moveq #0,%d0

00000ac4 <.Ltext2>:
 ac4:	242e fff4      	movel %fp@(-12),%d2
 ac8:	246e fff8      	moveal %fp@(-8),%a2
 acc:	4e5e           	unlk %fp
 ace:	4e75           	rts
