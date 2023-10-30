➜  c08 git:(main) ✗ bochs -f bochs.disk
========================================================================
                        Bochs x86 Emulator 2.7
              Built from SVN snapshot on August  1, 2021
                Timestamp: Sun Aug  1 10:07:00 CEST 2021
========================================================================
00000000000i[      ] BXSHARE not set. using compile time default '/usr/local/share/bochs'
00000000000i[      ] reading configuration from bochs.disk
------------------------------
Bochs Configuration: Main Menu
------------------------------

This is the Bochs Configuration Interface, where you can describe the
machine that you want to simulate.  Bochs has already searched for a
configuration file (typically called bochsrc.txt) and loaded it if it
could be found.  When you are satisfied with the configuration, go
ahead and start the simulation.

You can also start bochs with the -q option to skip these menus.

1. Restore factory default configuration
2. Read options from...
3. Edit options
4. Save options to...
5. Restore the Bochs state from...
6. Begin simulation
7. Quit now

Please choose one: [6] 
00000000000i[      ] installing x module as the Bochs GUI
00000000000i[      ] using log file bochs.out
Next at t=0
(0) [0x0000fffffff0] f000:fff0 (unk. ctxt): jmpf 0xf000:e05b          ; ea5be000f0
<bochs:1> b 0x07c00
<bochs:2> c
(0) Breakpoint 1, 0x00007c00 in ?? ()
Next at t=17178872
(0) [0x000000007c00] 0000:7c00 (unk. ctxt): mov ax, 0x0000            ; b80000
<bochs:3> n
Next at t=17178873
(0) [0x000000007c03] 0000:7c03 (unk. ctxt): mov ss, ax                ; 8ed0
<bochs:4> 
Next at t=17178874
(0) [0x000000007c05] 0000:7c05 (unk. ctxt): mov sp, ax                ; 89c4
<bochs:5> 
Next at t=17178875
(0) [0x000000007c07] 0000:7c07 (unk. ctxt): mov ax, word ptr cs:0x7cca ; 2ea1ca7c
<bochs:6> 
Next at t=17178876
(0) [0x000000007c0b] 0000:7c0b (unk. ctxt): mov dx, word ptr cs:0x7ccc ; 2e8b16cc7c
<bochs:7> 
Next at t=17178877
(0) [0x000000007c10] 0000:7c10 (unk. ctxt): mov bx, 0x0010            ; bb1000
<bochs:8> r
eax: 0x00000000 0
ebx: 0x00000000 0
ecx: 0x00090000 589824
edx: 0x00000001 1
esp: 0x00000000 0
ebp: 0x00000000 0
esi: 0x000e0000 917504
edi: 0x0000ffac 65452
eip: 0x00007c10
eflags 0x00000082: id vip vif ac vm rf nt IOPL=0 of df if tf SF zf af pf cf
<bochs:9> n
Next at t=17178878
(0) [0x000000007c13] 0000:7c13 (unk. ctxt): div ax, bx                ; f7f3
<bochs:10> 
Next at t=17178879
(0) [0x000000007c15] 0000:7c15 (unk. ctxt): mov ds, ax                ; 8ed8
<bochs:11> r
eax: 0x00001000 4096
ebx: 0x00000010 16
ecx: 0x00090000 589824
edx: 0x00000000 0
esp: 0x00000000 0
ebp: 0x00000000 0
esi: 0x000e0000 917504
edi: 0x0000ffac 65452
eip: 0x00007c15
eflags 0x00000082: id vip vif ac vm rf nt IOPL=0 of df if tf SF zf af pf cf
<bochs:12> n
Next at t=17178880
(0) [0x000000007c17] 0000:7c17 (unk. ctxt): mov es, ax                ; 8ec0
<bochs:13> 
Next at t=17178881
(0) [0x000000007c19] 0000:7c19 (unk. ctxt): xor di, di                ; 31ff
<bochs:14> 
Next at t=17178882
(0) [0x000000007c1b] 0000:7c1b (unk. ctxt): mov si, 0x0064            ; be6400
<bochs:15> 
Next at t=17178883
(0) [0x000000007c1e] 0000:7c1e (unk. ctxt): xor bx, bx                ; 31db
<bochs:16> 
Next at t=17178884
(0) [0x000000007c20] 0000:7c20 (unk. ctxt): call .+83  (0x00007c76)   ; e85300
<bochs:17> s
Next at t=17178885
(0) [0x000000007c76] 0000:7c76 (unk. ctxt): push ax                   ; 50
<bochs:18> n
Next at t=17178886
(0) [0x000000007c77] 0000:7c77 (unk. ctxt): push bx                   ; 53
<bochs:19> 
Next at t=17178887
(0) [0x000000007c78] 0000:7c78 (unk. ctxt): push cx                   ; 51
<bochs:20> 
Next at t=17178888
(0) [0x000000007c79] 0000:7c79 (unk. ctxt): push dx                   ; 52
<bochs:21> 
Next at t=17178889
(0) [0x000000007c7a] 0000:7c7a (unk. ctxt): mov dx, 0x01f2            ; baf201
<bochs:22> 
Next at t=17178890
(0) [0x000000007c7d] 0000:7c7d (unk. ctxt): mov al, 0x01              ; b001
<bochs:23> 
Next at t=17178891
(0) [0x000000007c7f] 0000:7c7f (unk. ctxt): out dx, al                ; ee
<bochs:24> 
Next at t=17178892
(0) [0x000000007c80] 0000:7c80 (unk. ctxt): inc dx                    ; 42
<bochs:25> 
Next at t=17178893
(0) [0x000000007c81] 0000:7c81 (unk. ctxt): mov ax, si                ; 89f0
<bochs:26> r
eax: 0x00001001 4097
ebx: 0x00000000 0
ecx: 0x00090000 589824
edx: 0x000001f3 499
esp: 0x0000fff6 65526
ebp: 0x00000000 0
esi: 0x000e0064 917604
edi: 0x00000000 0
eip: 0x00007c81
eflags 0x00000006: id vip vif ac vm rf nt IOPL=0 of df if tf sf zf af PF cf
<bochs:27> n
Next at t=17178894
(0) [0x000000007c83] 0000:7c83 (unk. ctxt): out dx, al                ; ee
<bochs:28> 
Next at t=17178895
(0) [0x000000007c84] 0000:7c84 (unk. ctxt): inc dx                    ; 42
<bochs:29> 
Next at t=17178896
(0) [0x000000007c85] 0000:7c85 (unk. ctxt): mov al, ah                ; 88e0
<bochs:30> 
Next at t=17178897
(0) [0x000000007c87] 0000:7c87 (unk. ctxt): out dx, al                ; ee
<bochs:31> r
eax: 0x00000000 0
ebx: 0x00000000 0
ecx: 0x00090000 589824
edx: 0x000001f4 500
esp: 0x0000fff6 65526
ebp: 0x00000000 0
esi: 0x000e0064 917604
edi: 0x00000000 0
eip: 0x00007c87
eflags 0x00000002: id vip vif ac vm rf nt IOPL=0 of df if tf sf zf af pf cf
<bochs:32> n
Next at t=17178898
(0) [0x000000007c88] 0000:7c88 (unk. ctxt): inc dx                    ; 42
<bochs:33> 
Next at t=17178899
(0) [0x000000007c89] 0000:7c89 (unk. ctxt): mov ax, di                ; 89f8
<bochs:34> info register
:34: syntax error at 'register'
<bochs:35> info registers
:35: syntax error at 'registers'
<bochs:36> i r
:36: syntax error at 'i'
<bochs:37> info registers
:37: syntax error at 'registers'
<bochs:38> n
Next at t=17178900
(0) [0x000000007c8b] 0000:7c8b (unk. ctxt): out dx, al                ; ee
<bochs:39> 
Next at t=17178901
(0) [0x000000007c8c] 0000:7c8c (unk. ctxt): inc dx                    ; 42
<bochs:40> 
Next at t=17178902
(0) [0x000000007c8d] 0000:7c8d (unk. ctxt): mov al, 0xe0              ; b0e0
<bochs:41> n
Next at t=17178903
(0) [0x000000007c8f] 0000:7c8f (unk. ctxt): or al, ah                 ; 08e0
<bochs:42> 
Next at t=17178904
(0) [0x000000007c91] 0000:7c91 (unk. ctxt): out dx, al                ; ee
<bochs:43> 
Next at t=17178905
(0) [0x000000007c92] 0000:7c92 (unk. ctxt): inc dx                    ; 42
<bochs:44> 
Next at t=17178906
(0) [0x000000007c93] 0000:7c93 (unk. ctxt): mov al, 0x20              ; b020
<bochs:45> 
Next at t=17178907
(0) [0x000000007c95] 0000:7c95 (unk. ctxt): out dx, al                ; ee
<bochs:46> 
Next at t=17178908
(0) [0x000000007c96] 0000:7c96 (unk. ctxt): in al, dx                 ; ec
<bochs:47> r
eax: 0x00000020 32
ebx: 0x00000000 0
ecx: 0x00090000 589824
edx: 0x000001f7 503
esp: 0x0000fff6 65526
ebp: 0x00000000 0
esi: 0x000e0064 917604
edi: 0x00000000 0
eip: 0x00007c96
eflags 0x00000002: id vip vif ac vm rf nt IOPL=0 of df if tf sf zf af pf cf
<bochs:48> n
Next at t=17178909
(0) [0x000000007c97] 0000:7c97 (unk. ctxt): and al, 0x88              ; 2488
<bochs:49> 
Next at t=17178910
(0) [0x000000007c99] 0000:7c99 (unk. ctxt): cmp al, 0x08              ; 3c08
<bochs:50> s
Next at t=17178911
(0) [0x000000007c9b] 0000:7c9b (unk. ctxt): jnz .-7  (0x00007c96)     ; 75f9
<bochs:51> s
Next at t=17178912
(0) [0x000000007c96] 0000:7c96 (unk. ctxt): in al, dx                 ; ec
<bochs:52> 
Next at t=17178913
(0) [0x000000007c97] 0000:7c97 (unk. ctxt): and al, 0x88              ; 2488
<bochs:53> 
Next at t=17178914
(0) [0x000000007c99] 0000:7c99 (unk. ctxt): cmp al, 0x08              ; 3c08
<bochs:54> s
Next at t=17178915
(0) [0x000000007c9b] 0000:7c9b (unk. ctxt): jnz .-7  (0x00007c96)     ; 75f9
<bochs:55> 
Next at t=17178916
(0) [0x000000007c96] 0000:7c96 (unk. ctxt): in al, dx                 ; ec
<bochs:56> 
Next at t=17178917
(0) [0x000000007c97] 0000:7c97 (unk. ctxt): and al, 0x88              ; 2488
<bochs:57> 
Next at t=17178918
(0) [0x000000007c99] 0000:7c99 (unk. ctxt): cmp al, 0x08              ; 3c08
<bochs:58> 
Next at t=17178919
(0) [0x000000007c9b] 0000:7c9b (unk. ctxt): jnz .-7  (0x00007c96)     ; 75f9
<bochs:59> 
Next at t=17178920
(0) [0x000000007c96] 0000:7c96 (unk. ctxt): in al, dx                 ; ec
<bochs:60> 
Next at t=17178921
(0) [0x000000007c97] 0000:7c97 (unk. ctxt): and al, 0x88              ; 2488
<bochs:61> 
Next at t=17178922
(0) [0x000000007c99] 0000:7c99 (unk. ctxt): cmp al, 0x08              ; 3c08
<bochs:62> 
Next at t=17178923
(0) [0x000000007c9b] 0000:7c9b (unk. ctxt): jnz .-7  (0x00007c96)     ; 75f9
<bochs:63> 
Next at t=17178924
(0) [0x000000007c96] 0000:7c96 (unk. ctxt): in al, dx                 ; ec
<bochs:64> 
Next at t=17178925
(0) [0x000000007c97] 0000:7c97 (unk. ctxt): and al, 0x88              ; 2488
<bochs:65> 
Next at t=17178926
(0) [0x000000007c99] 0000:7c99 (unk. ctxt): cmp al, 0x08              ; 3c08
<bochs:66> 
Next at t=17178927
(0) [0x000000007c9b] 0000:7c9b (unk. ctxt): jnz .-7  (0x00007c96)     ; 75f9
<bochs:67> 
Next at t=17178928
(0) [0x000000007c96] 0000:7c96 (unk. ctxt): in al, dx                 ; ec
<bochs:68> 
Next at t=17178929
(0) [0x000000007c97] 0000:7c97 (unk. ctxt): and al, 0x88              ; 2488
<bochs:69> 
Next at t=17178930
(0) [0x000000007c99] 0000:7c99 (unk. ctxt): cmp al, 0x08              ; 3c08
<bochs:70> 
Next at t=17178931
(0) [0x000000007c9b] 0000:7c9b (unk. ctxt): jnz .-7  (0x00007c96)     ; 75f9
<bochs:71> 
Next at t=17178932
(0) [0x000000007c96] 0000:7c96 (unk. ctxt): in al, dx                 ; ec
<bochs:72> 
Next at t=17178933
(0) [0x000000007c97] 0000:7c97 (unk. ctxt): and al, 0x88              ; 2488
<bochs:73> 
Next at t=17178934
(0) [0x000000007c99] 0000:7c99 (unk. ctxt): cmp al, 0x08              ; 3c08
<bochs:74> 
Next at t=17178935
(0) [0x000000007c9b] 0000:7c9b (unk. ctxt): jnz .-7  (0x00007c96)     ; 75f9
<bochs:75> n
Next at t=17178936
(0) [0x000000007c96] 0000:7c96 (unk. ctxt): in al, dx                 ; ec
<bochs:76> 
Next at t=17178937
(0) [0x000000007c97] 0000:7c97 (unk. ctxt): and al, 0x88              ; 2488
<bochs:77> 
Next at t=17178938
(0) [0x000000007c99] 0000:7c99 (unk. ctxt): cmp al, 0x08              ; 3c08
<bochs:78> 
Next at t=17178939
(0) [0x000000007c9b] 0000:7c9b (unk. ctxt): jnz .-7  (0x00007c96)     ; 75f9
<bochs:79> 
Next at t=17178940
(0) [0x000000007c96] 0000:7c96 (unk. ctxt): in al, dx                 ; ec
<bochs:80> 
Next at t=17178941
(0) [0x000000007c97] 0000:7c97 (unk. ctxt): and al, 0x88              ; 2488
<bochs:81> 
Next at t=17178942
(0) [0x000000007c99] 0000:7c99 (unk. ctxt): cmp al, 0x08              ; 3c08
<bochs:82> 
Next at t=17178943
(0) [0x000000007c9b] 0000:7c9b (unk. ctxt): jnz .-7  (0x00007c96)     ; 75f9
<bochs:83> 
Next at t=17178944
(0) [0x000000007c96] 0000:7c96 (unk. ctxt): in al, dx                 ; ec
<bochs:84> 
Next at t=17178945
(0) [0x000000007c97] 0000:7c97 (unk. ctxt): and al, 0x88              ; 2488
<bochs:85> 
Next at t=17178946
(0) [0x000000007c99] 0000:7c99 (unk. ctxt): cmp al, 0x08              ; 3c08
<bochs:86> 
Next at t=17178947
(0) [0x000000007c9b] 0000:7c9b (unk. ctxt): jnz .-7  (0x00007c96)     ; 75f9
<bochs:87> 
Next at t=17178948
(0) [0x000000007c96] 0000:7c96 (unk. ctxt): in al, dx                 ; ec
<bochs:88> 
Next at t=17178949
(0) [0x000000007c97] 0000:7c97 (unk. ctxt): and al, 0x88              ; 2488
<bochs:89> 
Next at t=17178950
(0) [0x000000007c99] 0000:7c99 (unk. ctxt): cmp al, 0x08              ; 3c08
<bochs:90> 
Next at t=17178951
(0) [0x000000007c9b] 0000:7c9b (unk. ctxt): jnz .-7  (0x00007c96)     ; 75f9
<bochs:91> 
Next at t=17178952
(0) [0x000000007c96] 0000:7c96 (unk. ctxt): in al, dx                 ; ec
<bochs:92> b 0x07c9d
<bochs:93> c
(0) Breakpoint 2, 0x00007c9d in ?? ()
Next at t=17179012
(0) [0x000000007c9d] 0000:7c9d (unk. ctxt): mov cx, 0x0100            ; b90001
<bochs:94> n
Next at t=17179013
(0) [0x000000007ca0] 0000:7ca0 (unk. ctxt): mov dx, 0x01f0            ; baf001
<bochs:95> n
Next at t=17179014
(0) [0x000000007ca3] 0000:7ca3 (unk. ctxt): in ax, dx                 ; ed
<bochs:96> n
Next at t=17179015
(0) [0x000000007ca4] 0000:7ca4 (unk. ctxt): mov word ptr ds:[bx], ax  ; 8907
<bochs:97> n
Next at t=17179016
(0) [0x000000007ca6] 0000:7ca6 (unk. ctxt): add bx, 0x0002            ; 81c30200
<bochs:98> r
eax: 0x000003d0 976
ebx: 0x00000000 0
ecx: 0x00090100 590080
edx: 0x000001f0 496
esp: 0x0000fff6 65526
ebp: 0x00000000 0
esi: 0x000e0064 917604
edi: 0x00000000 0
eip: 0x00007ca6
eflags 0x00000046: id vip vif ac vm rf nt IOPL=0 of df if tf sf ZF af PF cf
<bochs:99> info cpu
eax: 0x000003d0 976
ebx: 0x00000000 0
ecx: 0x00090100 590080
edx: 0x000001f0 496
esp: 0x0000fff6 65526
ebp: 0x00000000 0
esi: 0x000e0064 917604
edi: 0x00000000 0
eip: 0x00007ca6
eflags 0x00000046: id vip vif ac vm rf nt IOPL=0 of df if tf sf ZF af PF cf
status  word: 0x0000: b c3 TOS0 c2 c1 c0 es sf pe ue oe ze de ie
control word: 0x0040: inf RC_NEAREST PC_32 pm um om zm dm im
tag word:     0x5555
operand:      0x0000
fip:          0x00000000
fcs:          0x0000
fdp:          0x00000000
fds:          0x0000
=>FP0 ST0(0):        raw 0x0000:0000000000000000 (0.0000000000) (ZERO)
  FP1 ST1(0):        raw 0x0000:0000000000000000 (0.0000000000) (ZERO)
  FP2 ST2(0):        raw 0x0000:0000000000000000 (0.0000000000) (ZERO)
  FP3 ST3(0):        raw 0x0000:0000000000000000 (0.0000000000) (ZERO)
  FP4 ST4(0):        raw 0x0000:0000000000000000 (0.0000000000) (ZERO)
  FP5 ST5(0):        raw 0x0000:0000000000000000 (0.0000000000) (ZERO)
  FP6 ST6(0):        raw 0x0000:0000000000000000 (0.0000000000) (ZERO)
  FP7 ST7(0):        raw 0x0000:0000000000000000 (0.0000000000) (ZERO)
MM[0]: 00000000_00000000
MM[1]: 00000000_00000000
MM[2]: 00000000_00000000
MM[3]: 00000000_00000000
MM[4]: 00000000_00000000
MM[5]: 00000000_00000000
MM[6]: 00000000_00000000
MM[7]: 00000000_00000000
MXCSR: 0x01f80: ule fuz RC:Nearest PM UM OM ZM DM IM daz pe ue oe ze de ie
XMM[00]: 00000000_00000000_00000000_00000000
XMM[01]: 00000000_00000000_00000000_00000000
XMM[02]: 00000000_00000000_00000000_00000000
XMM[03]: 00000000_00000000_00000000_00000000
XMM[04]: 00000000_00000000_00000000_00000000
XMM[05]: 00000000_00000000_00000000_00000000
XMM[06]: 00000000_00000000_00000000_00000000
XMM[07]: 00000000_00000000_00000000_00000000
<bochs:100> sreg
es:0x1000, dh=0x00009301, dl=0x0000ffff, valid=1
        Data segment, base=0x00010000, limit=0x0000ffff, Read/Write, Accessed
cs:0x0000, dh=0x00009300, dl=0x0000ffff, valid=3
        Data segment, base=0x00000000, limit=0x0000ffff, Read/Write, Accessed
ss:0x0000, dh=0x00009300, dl=0x0000ffff, valid=1
        Data segment, base=0x00000000, limit=0x0000ffff, Read/Write, Accessed
ds:0x1000, dh=0x00009301, dl=0x0000ffff, valid=7
        Data segment, base=0x00010000, limit=0x0000ffff, Read/Write, Accessed
fs:0x0000, dh=0x00009300, dl=0x0000ffff, valid=1
        Data segment, base=0x00000000, limit=0x0000ffff, Read/Write, Accessed
gs:0x0000, dh=0x00009300, dl=0x0000ffff, valid=1
        Data segment, base=0x00000000, limit=0x0000ffff, Read/Write, Accessed
ldtr:0x0000, dh=0x00008200, dl=0x0000ffff, valid=1
tr:0x0000, dh=0x00008b00, dl=0x0000ffff, valid=1
gdtr:base=0x000f9ad7, limit=0x30
idtr:base=0x00000000, limit=0x3ff
<bochs:101> n
Next at t=17179017
(0) [0x000000007caa] 0000:7caa (unk. ctxt): loop .-9  (0x00007ca3)    ; e2f7
<bochs:102> 
Next at t=17180038
(0) [0x000000007cac] 0000:7cac (unk. ctxt): pop dx                    ; 5a
<bochs:103> x /512bx 0x10000
[bochs]:
0x00010000 <bogus+       0>:    0xd0    0x03    0x00    0x00    0xa6    0x00    0x20    0x00
0x00010008 <bogus+       8>:    0x00    0x00    0x05    0x00    0x20    0x00    0x00    0x00
0x00010010 <bogus+      16>:    0x00    0x01    0x00    0x00    0x10    0x01    0x00    0x00
0x00010018 <bogus+      24>:    0x90    0x02    0x00    0x00    0xd0    0x02    0x00    0x00
0x00010020 <bogus+      32>:    0x8a    0x0f    0x08    0xc9    0x74    0x07    0xe8    0x05
0x00010028 <bogus+      40>:    0x00    0x43    0xe9    0xf3    0xff    0xc3    0x50    0x53
0x00010030 <bogus+      48>:    0x51    0x52    0x1e    0x06    0xba    0xd4    0x03    0xb0
0x00010038 <bogus+      56>:    0x0e    0xee    0xba    0xd5    0x03    0xec    0x88    0xc4
0x00010040 <bogus+      64>:    0xba    0xd4    0x03    0xb0    0x0f    0xee    0xba    0xd5
0x00010048 <bogus+      72>:    0x03    0xec    0x89    0xc3    0x80    0xf9    0x0d    0x75
0x00010050 <bogus+      80>:    0x0d    0x89    0xd8    0xb3    0x50    0xf6    0xf3    0xf6
0x00010058 <bogus+      88>:    0xe3    0x89    0xc3    0xe9    0x49    0x00    0x80    0xf9
0x00010060 <bogus+      96>:    0x0a    0x75    0x07    0x81    0xc3    0x50    0x00    0xe9
0x00010068 <bogus+     104>:    0x10    0x00    0xb8    0x00    0xb8    0x8e    0xc0    0xd1
0x00010070 <bogus+     112>:    0xe3    0x26    0x88    0x0f    0xd1    0xeb    0x81    0xc3
0x00010078 <bogus+     120>:    0x01    0x00    0x81    0xfb    0xd0    0x07    0x7c    0x27
0x00010080 <bogus+     128>:    0xb8    0x00    0xb8    0x8e    0xd8    0x8e    0xc0    0xfc
0x00010088 <bogus+     136>:    0xbe    0xa0    0x00    0xbf    0x00    0x00    0xb9    0x80
0x00010090 <bogus+     144>:    0x07    0xf3    0xa5    0xbb    0x00    0x0f    0xb9    0x50
0x00010098 <bogus+     152>:    0x00    0x26    0xc7    0x07    0x20    0x07    0x81    0xc3
0x000100a0 <bogus+     160>:    0x02    0x00    0xe2    0xf5    0xbb    0x80    0x07    0xba
0x000100a8 <bogus+     168>:    0xd4    0x03    0xb0    0x0e    0xee    0xba    0xd5    0x03
0x000100b0 <bogus+     176>:    0x88    0xf8    0xee    0xba    0xd4    0x03    0xb0    0x0f
0x000100b8 <bogus+     184>:    0xee    0xba    0xd5    0x03    0x88    0xd8    0xee    0x07
0x000100c0 <bogus+     192>:    0x1f    0x5a    0x59    0x5b    0x58    0xc3    0xa1    0x1c
0x000100c8 <bogus+     200>:    0x00    0x8e    0xd0    0xbc    0x00    0x01    0xa1    0x14
0x000100d0 <bogus+     208>:    0x00    0x8e    0xd8    0xbb    0x00    0x00    0xe8    0x47
0x000100d8 <bogus+     216>:    0xff    0x26    0xff    0x36    0x10    0x00    0xb8    0x00
0x000100e0 <bogus+     224>:    0x00    0x50    0xcb    0x26    0xa1    0x18    0x00    0x8e
0x000100e8 <bogus+     232>:    0xd8    0xbb    0x00    0x00    0xe8    0x31    0xff    0xe9
0x000100f0 <bogus+     240>:    0xfd    0xff    0x00    0x00    0x00    0x00    0x00    0x00
0x000100f8 <bogus+     248>:    0x00    0x00    0x00    0x00    0x00    0x00    0x00    0x00
0x00010100 <bogus+     256>:    0x26    0xff    0x36    0x0c    0x00    0xb8    0xc3    0x00
0x00010108 <bogus+     264>:    0x50    0xcb    0x00    0x00    0x00    0x00    0x00    0x00
0x00010110 <bogus+     272>:    0x20    0x20    0x54    0x68    0x69    0x73    0x20    0x69
0x00010118 <bogus+     280>:    0x73    0x20    0x4e    0x41    0x53    0x4d    0x20    0x2d
0x00010120 <bogus+     288>:    0x20    0x74    0x68    0x65    0x20    0x66    0x61    0x6d
0x00010128 <bogus+     296>:    0x6f    0x75    0x73    0x20    0x4e    0x65    0x74    0x77
0x00010130 <bogus+     304>:    0x69    0x64    0x65    0x20    0x41    0x73    0x73    0x65
0x00010138 <bogus+     312>:    0x6d    0x62    0x6c    0x65    0x72    0x2e    0x20    0x42
0x00010140 <bogus+     320>:    0x61    0x63    0x6b    0x20    0x61    0x74    0x20    0x53
0x00010148 <bogus+     328>:    0x6f    0x75    0x72    0x63    0x65    0x46    0x6f    0x72
0x00010150 <bogus+     336>:    0x67    0x65    0x20    0x61    0x6e    0x64    0x20    0x69
0x00010158 <bogus+     344>:    0x6e    0x20    0x69    0x6e    0x74    0x65    0x6e    0x73
0x00010160 <bogus+     352>:    0x69    0x76    0x65    0x20    0x64    0x65    0x76    0x65
0x00010168 <bogus+     360>:    0x6c    0x6f    0x70    0x6d    0x65    0x6e    0x74    0x21
0x00010170 <bogus+     368>:    0x20    0x47    0x65    0x74    0x20    0x74    0x68    0x65
0x00010178 <bogus+     376>:    0x20    0x63    0x75    0x72    0x72    0x65    0x6e    0x74
0x00010180 <bogus+     384>:    0x20    0x76    0x65    0x72    0x73    0x69    0x6f    0x6e
0x00010188 <bogus+     392>:    0x73    0x20    0x66    0x72    0x6f    0x6d    0x20    0x68
0x00010190 <bogus+     400>:    0x74    0x74    0x70    0x3a    0x2f    0x2f    0x77    0x77
0x00010198 <bogus+     408>:    0x77    0x2e    0x6e    0x61    0x73    0x6d    0x2e    0x75
0x000101a0 <bogus+     416>:    0x73    0x2f    0x2e    0x0d    0x0a    0x0d    0x0a    0x20
0x000101a8 <bogus+     424>:    0x20    0x45    0x78    0x61    0x6d    0x70    0x6c    0x65
0x000101b0 <bogus+     432>:    0x20    0x63    0x6f    0x64    0x65    0x20    0x66    0x6f
0x000101b8 <bogus+     440>:    0x72    0x20    0x63    0x61    0x6c    0x63    0x75    0x6c
0x000101c0 <bogus+     448>:    0x61    0x74    0x65    0x20    0x31    0x2b    0x32    0x2b
0x000101c8 <bogus+     456>:    0x2e    0x2e    0x2e    0x2b    0x31    0x30    0x30    0x30
0x000101d0 <bogus+     464>:    0x3a    0x0d    0x0a    0x0d    0x0a    0x20    0x20    0x20
0x000101d8 <bogus+     472>:    0x20    0x20    0x78    0x6f    0x72    0x20    0x64    0x78
0x000101e0 <bogus+     480>:    0x2c    0x64    0x78    0x0d    0x0a    0x20    0x20    0x20
0x000101e8 <bogus+     488>:    0x20    0x20    0x78    0x6f    0x72    0x20    0x61    0x78
0x000101f0 <bogus+     496>:    0x2c    0x61    0x78    0x0d    0x0a    0x20    0x20    0x20
0x000101f8 <bogus+     504>:    0x20    0x20    0x78    0x6f    0x72    0x20    0x63    0x78
<bochs:104> 
[bochs]:
0x00010000 <bogus+       0>:    0xd0    0x03    0x00    0x00    0xa6    0x00    0x20    0x00
0x00010008 <bogus+       8>:    0x00    0x00    0x05    0x00    0x20    0x00    0x00    0x00
0x00010010 <bogus+      16>:    0x00    0x01    0x00    0x00    0x10    0x01    0x00    0x00
0x00010018 <bogus+      24>:    0x90    0x02    0x00    0x00    0xd0    0x02    0x00    0x00
0x00010020 <bogus+      32>:    0x8a    0x0f    0x08    0xc9    0x74    0x07    0xe8    0x05
0x00010028 <bogus+      40>:    0x00    0x43    0xe9    0xf3    0xff    0xc3    0x50    0x53
0x00010030 <bogus+      48>:    0x51    0x52    0x1e    0x06    0xba    0xd4    0x03    0xb0
0x00010038 <bogus+      56>:    0x0e    0xee    0xba    0xd5    0x03    0xec    0x88    0xc4
0x00010040 <bogus+      64>:    0xba    0xd4    0x03    0xb0    0x0f    0xee    0xba    0xd5
0x00010048 <bogus+      72>:    0x03    0xec    0x89    0xc3    0x80    0xf9    0x0d    0x75
0x00010050 <bogus+      80>:    0x0d    0x89    0xd8    0xb3    0x50    0xf6    0xf3    0xf6
0x00010058 <bogus+      88>:    0xe3    0x89    0xc3    0xe9    0x49    0x00    0x80    0xf9
0x00010060 <bogus+      96>:    0x0a    0x75    0x07    0x81    0xc3    0x50    0x00    0xe9
0x00010068 <bogus+     104>:    0x10    0x00    0xb8    0x00    0xb8    0x8e    0xc0    0xd1
0x00010070 <bogus+     112>:    0xe3    0x26    0x88    0x0f    0xd1    0xeb    0x81    0xc3
0x00010078 <bogus+     120>:    0x01    0x00    0x81    0xfb    0xd0    0x07    0x7c    0x27
0x00010080 <bogus+     128>:    0xb8    0x00    0xb8    0x8e    0xd8    0x8e    0xc0    0xfc
0x00010088 <bogus+     136>:    0xbe    0xa0    0x00    0xbf    0x00    0x00    0xb9    0x80
0x00010090 <bogus+     144>:    0x07    0xf3    0xa5    0xbb    0x00    0x0f    0xb9    0x50
0x00010098 <bogus+     152>:    0x00    0x26    0xc7    0x07    0x20    0x07    0x81    0xc3
0x000100a0 <bogus+     160>:    0x02    0x00    0xe2    0xf5    0xbb    0x80    0x07    0xba
0x000100a8 <bogus+     168>:    0xd4    0x03    0xb0    0x0e    0xee    0xba    0xd5    0x03
0x000100b0 <bogus+     176>:    0x88    0xf8    0xee    0xba    0xd4    0x03    0xb0    0x0f
0x000100b8 <bogus+     184>:    0xee    0xba    0xd5    0x03    0x88    0xd8    0xee    0x07
0x000100c0 <bogus+     192>:    0x1f    0x5a    0x59    0x5b    0x58    0xc3    0xa1    0x1c
0x000100c8 <bogus+     200>:    0x00    0x8e    0xd0    0xbc    0x00    0x01    0xa1    0x14
0x000100d0 <bogus+     208>:    0x00    0x8e    0xd8    0xbb    0x00    0x00    0xe8    0x47
0x000100d8 <bogus+     216>:    0xff    0x26    0xff    0x36    0x10    0x00    0xb8    0x00
0x000100e0 <bogus+     224>:    0x00    0x50    0xcb    0x26    0xa1    0x18    0x00    0x8e
0x000100e8 <bogus+     232>:    0xd8    0xbb    0x00    0x00    0xe8    0x31    0xff    0xe9
0x000100f0 <bogus+     240>:    0xfd    0xff    0x00    0x00    0x00    0x00    0x00    0x00
0x000100f8 <bogus+     248>:    0x00    0x00    0x00    0x00    0x00    0x00    0x00    0x00
0x00010100 <bogus+     256>:    0x26    0xff    0x36    0x0c    0x00    0xb8    0xc3    0x00
0x00010108 <bogus+     264>:    0x50    0xcb    0x00    0x00    0x00    0x00    0x00    0x00
0x00010110 <bogus+     272>:    0x20    0x20    0x54    0x68    0x69    0x73    0x20    0x69
0x00010118 <bogus+     280>:    0x73    0x20    0x4e    0x41    0x53    0x4d    0x20    0x2d
0x00010120 <bogus+     288>:    0x20    0x74    0x68    0x65    0x20    0x66    0x61    0x6d
0x00010128 <bogus+     296>:    0x6f    0x75    0x73    0x20    0x4e    0x65    0x74    0x77
0x00010130 <bogus+     304>:    0x69    0x64    0x65    0x20    0x41    0x73    0x73    0x65
0x00010138 <bogus+     312>:    0x6d    0x62    0x6c    0x65    0x72    0x2e    0x20    0x42
0x00010140 <bogus+     320>:    0x61    0x63    0x6b    0x20    0x61    0x74    0x20    0x53
0x00010148 <bogus+     328>:    0x6f    0x75    0x72    0x63    0x65    0x46    0x6f    0x72
0x00010150 <bogus+     336>:    0x67    0x65    0x20    0x61    0x6e    0x64    0x20    0x69
0x00010158 <bogus+     344>:    0x6e    0x20    0x69    0x6e    0x74    0x65    0x6e    0x73
0x00010160 <bogus+     352>:    0x69    0x76    0x65    0x20    0x64    0x65    0x76    0x65
0x00010168 <bogus+     360>:    0x6c    0x6f    0x70    0x6d    0x65    0x6e    0x74    0x21
0x00010170 <bogus+     368>:    0x20    0x47    0x65    0x74    0x20    0x74    0x68    0x65
0x00010178 <bogus+     376>:    0x20    0x63    0x75    0x72    0x72    0x65    0x6e    0x74
0x00010180 <bogus+     384>:    0x20    0x76    0x65    0x72    0x73    0x69    0x6f    0x6e
0x00010188 <bogus+     392>:    0x73    0x20    0x66    0x72    0x6f    0x6d    0x20    0x68
0x00010190 <bogus+     400>:    0x74    0x74    0x70    0x3a    0x2f    0x2f    0x77    0x77
0x00010198 <bogus+     408>:    0x77    0x2e    0x6e    0x61    0x73    0x6d    0x2e    0x75
0x000101a0 <bogus+     416>:    0x73    0x2f    0x2e    0x0d    0x0a    0x0d    0x0a    0x20
0x000101a8 <bogus+     424>:    0x20    0x45    0x78    0x61    0x6d    0x70    0x6c    0x65
0x000101b0 <bogus+     432>:    0x20    0x63    0x6f    0x64    0x65    0x20    0x66    0x6f
0x000101b8 <bogus+     440>:    0x72    0x20    0x63    0x61    0x6c    0x63    0x75    0x6c
0x000101c0 <bogus+     448>:    0x61    0x74    0x65    0x20    0x31    0x2b    0x32    0x2b
0x000101c8 <bogus+     456>:    0x2e    0x2e    0x2e    0x2b    0x31    0x30    0x30    0x30
0x000101d0 <bogus+     464>:    0x3a    0x0d    0x0a    0x0d    0x0a    0x20    0x20    0x20
0x000101d8 <bogus+     472>:    0x20    0x20    0x78    0x6f    0x72    0x20    0x64    0x78
0x000101e0 <bogus+     480>:    0x2c    0x64    0x78    0x0d    0x0a    0x20    0x20    0x20
0x000101e8 <bogus+     488>:    0x20    0x20    0x78    0x6f    0x72    0x20    0x61    0x78
0x000101f0 <bogus+     496>:    0x2c    0x61    0x78    0x0d    0x0a    0x20    0x20    0x20
0x000101f8 <bogus+     504>:    0x20    0x20    0x78    0x6f    0x72    0x20    0x63    0x78
<bochs:105> n
Next at t=17180039
(0) [0x000000007cad] 0000:7cad (unk. ctxt): pop cx                    ; 59
<bochs:106> n
Next at t=17180040
(0) [0x000000007cae] 0000:7cae (unk. ctxt): pop bx                    ; 5b
<bochs:107> n
Next at t=17180041
(0) [0x000000007caf] 0000:7caf (unk. ctxt): pop ax                    ; 58
<bochs:108> n
Next at t=17180042
(0) [0x000000007cb0] 0000:7cb0 (unk. ctxt): ret                       ; c3
<bochs:109> n
Next at t=17180043
(0) [0x000000007c23] 0000:7c23 (unk. ctxt): mov dx, word ptr ds:0x0002 ; 8b160200
<bochs:110> u
00007c23: (                    ): mov dx, word ptr ds:0x0002 ; 8b160200
<bochs:111> u /20 0x07c23
00007c23: (                    ): mov dx, word ptr ds:0x0002 ; 8b160200
00007c27: (                    ): mov ax, word ptr ds:0x0000 ; a10000
00007c2a: (                    ): mov bx, 0x0200            ; bb0002
00007c2d: (                    ): div ax, bx                ; f7f3
00007c2f: (                    ): cmp dx, 0x0000            ; 81fa0000
00007c33: (                    ): jnz .+1  (0x00007c36)     ; 7501
00007c35: (                    ): dec ax                    ; 48
00007c36: (                    ): cmp ax, 0x0000            ; 3d0000
00007c39: (                    ): jz .+19  (0x00007c4e)     ; 7413
00007c3b: (                    ): push ds                   ; 1e
00007c3c: (                    ): mov cx, ax                ; 89c1
00007c3e: (                    ): mov ax, ds                ; 8cd8
00007c40: (                    ): add ax, 0x0020            ; 052000
00007c43: (                    ): mov ds, ax                ; 8ed8
00007c45: (                    ): xor bx, bx                ; 31db
00007c47: (                    ): inc si                    ; 46
00007c48: (                    ): call .+43  (0x00007c76)   ; e82b00
00007c4b: (                    ): loop .-15  (0x00007c3e)   ; e2f1
00007c4d: (                    ): pop ds                    ; 1f
00007c4e: (                    ): mov dx, word ptr ds:0x0008 ; 8b160800
<bochs:112> n
Next at t=17180044
(0) [0x000000007c27] 0000:7c27 (unk. ctxt): mov ax, word ptr ds:0x0000 ; a10000
<bochs:113> n
Next at t=17180045
(0) [0x000000007c2a] 0000:7c2a (unk. ctxt): mov bx, 0x0200            ; bb0002
<bochs:114> 
Next at t=17180046
(0) [0x000000007c2d] 0000:7c2d (unk. ctxt): div ax, bx                ; f7f3
<bochs:115> 
Next at t=17180047
(0) [0x000000007c2f] 0000:7c2f (unk. ctxt): cmp dx, 0x0000            ; 81fa0000
<bochs:116> r
eax: 0x00000001 1
ebx: 0x00000200 512
ecx: 0x00090000 589824
edx: 0x000001d0 464
esp: 0x00000000 0
ebp: 0x00000000 0
esi: 0x000e0064 917604
edi: 0x00000000 0
eip: 0x00007c2f
eflags 0x00000016: id vip vif ac vm rf nt IOPL=0 of df if tf sf zf AF PF cf
<bochs:117> s
Next at t=17180048
(0) [0x000000007c33] 0000:7c33 (unk. ctxt): jnz .+1  (0x00007c36)     ; 7501
<bochs:118> 
Next at t=17180049
(0) [0x000000007c36] 0000:7c36 (unk. ctxt): cmp ax, 0x0000            ; 3d0000
<bochs:119> 
Next at t=17180050
(0) [0x000000007c39] 0000:7c39 (unk. ctxt): jz .+19  (0x00007c4e)     ; 7413
<bochs:120> 
Next at t=17180051
(0) [0x000000007c3b] 0000:7c3b (unk. ctxt): push ds                   ; 1e
<bochs:121> sreg
es:0x1000, dh=0x00009301, dl=0x0000ffff, valid=1
        Data segment, base=0x00010000, limit=0x0000ffff, Read/Write, Accessed
cs:0x0000, dh=0x00009300, dl=0x0000ffff, valid=3
        Data segment, base=0x00000000, limit=0x0000ffff, Read/Write, Accessed
ss:0x0000, dh=0x00009300, dl=0x0000ffff, valid=1
        Data segment, base=0x00000000, limit=0x0000ffff, Read/Write, Accessed
ds:0x1000, dh=0x00009301, dl=0x0000ffff, valid=7
        Data segment, base=0x00010000, limit=0x0000ffff, Read/Write, Accessed
fs:0x0000, dh=0x00009300, dl=0x0000ffff, valid=1
        Data segment, base=0x00000000, limit=0x0000ffff, Read/Write, Accessed
gs:0x0000, dh=0x00009300, dl=0x0000ffff, valid=1
        Data segment, base=0x00000000, limit=0x0000ffff, Read/Write, Accessed
ldtr:0x0000, dh=0x00008200, dl=0x0000ffff, valid=1
tr:0x0000, dh=0x00008b00, dl=0x0000ffff, valid=1
gdtr:base=0x000f9ad7, limit=0x30
idtr:base=0x00000000, limit=0x3ff
<bochs:122> n
Next at t=17180052
(0) [0x000000007c3c] 0000:7c3c (unk. ctxt): mov cx, ax                ; 89c1
<bochs:123> 
Next at t=17180053
(0) [0x000000007c3e] 0000:7c3e (unk. ctxt): mov ax, ds                ; 8cd8
<bochs:124> 
Next at t=17180054
(0) [0x000000007c40] 0000:7c40 (unk. ctxt): add ax, 0x0020            ; 052000
<bochs:125> 
Next at t=17180055
(0) [0x000000007c43] 0000:7c43 (unk. ctxt): mov ds, ax                ; 8ed8
<bochs:126> 
Next at t=17180056
(0) [0x000000007c45] 0000:7c45 (unk. ctxt): xor bx, bx                ; 31db
<bochs:127> sreg
es:0x1000, dh=0x00009301, dl=0x0000ffff, valid=1
        Data segment, base=0x00010000, limit=0x0000ffff, Read/Write, Accessed
cs:0x0000, dh=0x00009300, dl=0x0000ffff, valid=3
        Data segment, base=0x00000000, limit=0x0000ffff, Read/Write, Accessed
ss:0x0000, dh=0x00009300, dl=0x0000ffff, valid=1
        Data segment, base=0x00000000, limit=0x0000ffff, Read/Write, Accessed
ds:0x1020, dh=0x00009301, dl=0x0200ffff, valid=1
        Data segment, base=0x00010200, limit=0x0000ffff, Read/Write, Accessed
fs:0x0000, dh=0x00009300, dl=0x0000ffff, valid=1
        Data segment, base=0x00000000, limit=0x0000ffff, Read/Write, Accessed
gs:0x0000, dh=0x00009300, dl=0x0000ffff, valid=1
        Data segment, base=0x00000000, limit=0x0000ffff, Read/Write, Accessed
ldtr:0x0000, dh=0x00008200, dl=0x0000ffff, valid=1
tr:0x0000, dh=0x00008b00, dl=0x0000ffff, valid=1
gdtr:base=0x000f9ad7, limit=0x30
idtr:base=0x00000000, limit=0x3ff
<bochs:128> 
es:0x1000, dh=0x00009301, dl=0x0000ffff, valid=1
        Data segment, base=0x00010000, limit=0x0000ffff, Read/Write, Accessed
cs:0x0000, dh=0x00009300, dl=0x0000ffff, valid=3
        Data segment, base=0x00000000, limit=0x0000ffff, Read/Write, Accessed
ss:0x0000, dh=0x00009300, dl=0x0000ffff, valid=1
        Data segment, base=0x00000000, limit=0x0000ffff, Read/Write, Accessed
ds:0x1020, dh=0x00009301, dl=0x0200ffff, valid=1
        Data segment, base=0x00010200, limit=0x0000ffff, Read/Write, Accessed
fs:0x0000, dh=0x00009300, dl=0x0000ffff, valid=1
        Data segment, base=0x00000000, limit=0x0000ffff, Read/Write, Accessed
gs:0x0000, dh=0x00009300, dl=0x0000ffff, valid=1
        Data segment, base=0x00000000, limit=0x0000ffff, Read/Write, Accessed
ldtr:0x0000, dh=0x00008200, dl=0x0000ffff, valid=1
tr:0x0000, dh=0x00008b00, dl=0x0000ffff, valid=1
gdtr:base=0x000f9ad7, limit=0x30
idtr:base=0x00000000, limit=0x3ff
<bochs:129> n
Next at t=17180057
(0) [0x000000007c47] 0000:7c47 (unk. ctxt): inc si                    ; 46
<bochs:130> 
Next at t=17180058
(0) [0x000000007c48] 0000:7c48 (unk. ctxt): call .+43  (0x00007c76)   ; e82b00
<bochs:131> 


realloc:
让我尝试用更具体的例子来解释。假设有一个段的基址（segment_base）为 `0x8000`，我们从段重定位表中读取一个 32 位地址 `0x12345678`，其中 `0x1234` 是高 16 位，`0x5678` 是低 16 位。现在，我们希望将这个相对于段基址的地址转换为内存中的物理地址。

1. 首先，将高 16 位 `0x1234` 与段的基址 `0x8000` 相加。这是一个简单的整数加法操作。

   ```
   0x1234 + 0x8000 = 0x9234
   ```

   结果是 `0x9234`。

2. 然后，将低 16 位 `0x5678` 与上一步的结果 `0x9234` 相加。

   ```
   0x5678 + 0x9234 = 0xE9AC
   ```

   结果是 `0xE9AC`。

最终，合并的结果 `0xE9AC` 就是在内存中的物理地址。这意味着，如果我们将相对于段基址的地址 `0x12345678` 转换为内存中的地址，它将是 `0xE9AC`。这就是将相对地址转换为绝对物理地址的过程。

这种地址转换通常在操作系统加载可执行程序或进行内存分段时发生，以确保程序能够正确访问内存中的数据和代码。


回车 (0x0d) 表示将光标移动到当前行的开头，因此光标会回到同一行的第一个位置。
换行 (0x0a) 表示将光标移动到下一行的相同位置，即在当前行的下一行开始写。