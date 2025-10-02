; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/toast_alaw.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/toast_alaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@in = external dso_local global %struct._IO_FILE*, align 8
@a2s = internal global [256 x i16] [i16 5120, i16 -5376, i16 320, i16 -336, i16 20480, i16 -21504, i16 1280, i16 -1344, i16 2560, i16 -2688, i16 64, i16 -80, i16 10240, i16 -10752, i16 640, i16 -672, i16 7168, i16 -7424, i16 448, i16 -464, i16 28672, i16 -29696, i16 1792, i16 -1856, i16 3584, i16 -3712, i16 192, i16 -208, i16 14336, i16 -14848, i16 896, i16 -928, i16 4096, i16 -4352, i16 256, i16 -272, i16 16384, i16 -17408, i16 1024, i16 -1088, i16 2048, i16 -2176, i16 0, i16 -16, i16 8192, i16 -8704, i16 512, i16 -544, i16 6144, i16 -6400, i16 384, i16 -400, i16 24576, i16 -25600, i16 1536, i16 -1600, i16 3072, i16 -3200, i16 128, i16 -144, i16 12288, i16 -12800, i16 768, i16 -800, i16 5632, i16 -5888, i16 352, i16 -368, i16 22528, i16 -23552, i16 1408, i16 -1472, i16 2816, i16 -2944, i16 96, i16 -112, i16 11264, i16 -11776, i16 704, i16 -736, i16 7680, i16 -7936, i16 480, i16 -496, i16 30720, i16 -31744, i16 1920, i16 -1984, i16 3840, i16 -3968, i16 224, i16 -240, i16 15360, i16 -15872, i16 960, i16 -992, i16 4608, i16 -4864, i16 288, i16 -304, i16 18432, i16 -19456, i16 1152, i16 -1216, i16 2304, i16 -2432, i16 32, i16 -48, i16 9216, i16 -9728, i16 576, i16 -608, i16 6656, i16 -6912, i16 416, i16 -432, i16 26624, i16 -27648, i16 1664, i16 -1728, i16 3328, i16 -3456, i16 160, i16 -176, i16 13312, i16 -13824, i16 832, i16 -864, i16 5376, i16 -5632, i16 336, i16 -352, i16 21504, i16 -22528, i16 1344, i16 -1408, i16 2688, i16 -2816, i16 80, i16 -96, i16 10752, i16 -11264, i16 672, i16 -704, i16 7424, i16 -7680, i16 464, i16 -480, i16 29696, i16 -30720, i16 1856, i16 -1920, i16 3712, i16 -3840, i16 208, i16 -224, i16 14848, i16 -15360, i16 928, i16 -960, i16 4352, i16 -4608, i16 272, i16 -288, i16 17408, i16 -18432, i16 1088, i16 -1152, i16 2176, i16 -2304, i16 16, i16 -32, i16 8704, i16 -9216, i16 544, i16 -576, i16 6400, i16 -6656, i16 400, i16 -416, i16 25600, i16 -26624, i16 1600, i16 -1664, i16 3200, i16 -3328, i16 144, i16 -160, i16 12800, i16 -13312, i16 800, i16 -832, i16 5888, i16 -6144, i16 368, i16 -384, i16 23552, i16 -24576, i16 1472, i16 -1536, i16 2944, i16 -3072, i16 112, i16 -128, i16 11776, i16 -12288, i16 736, i16 -768, i16 7936, i16 -8192, i16 496, i16 -512, i16 31744, i16 -32768, i16 1984, i16 -2048, i16 3968, i16 -4096, i16 240, i16 -256, i16 15872, i16 -16384, i16 992, i16 -1024, i16 4864, i16 -5120, i16 304, i16 -320, i16 19456, i16 -20480, i16 1216, i16 -1280, i16 2432, i16 -2560, i16 48, i16 -64, i16 9728, i16 -10240, i16 608, i16 -640, i16 6912, i16 -7168, i16 432, i16 -448, i16 27648, i16 -28672, i16 1728, i16 -1792, i16 3456, i16 -3584, i16 176, i16 -192, i16 13824, i16 -14336, i16 864, i16 -896], align 16
@s2a = internal global [4096 x i8] c"\AA*\EAj\8A\0A\CAJ\BA:\FAz\9A\1A\DAZ\A2\22\E2b\82\02\C2B\B22\F2r\92\12\D2R\AE..\EE\EEnn\8E\8E\0E\0E\CE\CENN\BE\BE>>\FE\FE~~\9E\9E\1E\1E\DE\DE^^\A6\A6&&&&\E6\E6\E6\E6ffff\86\86\86\86\06\06\06\06\C6\C6\C6\C6FFFF\B6\B6\B6\B66666\F6\F6\F6\F6vvvv\96\96\96\96\16\16\16\16\D6\D6\D6\D6VVVV\A8\A8\A8\A8((((((((\E8\E8\E8\E8\E8\E8\E8\E8hhhhhhhh\88\88\88\88\88\88\88\88\08\08\08\08\08\08\08\08\C8\C8\C8\C8\C8\C8\C8\C8HHHHHHHH\B8\B8\B8\B8\B8\B8\B8\B888888888\F8\F8\F8\F8\F8\F8\F8\F8xxxxxxxx\98\98\98\98\98\98\98\98\18\18\18\18\18\18\18\18\D8\D8\D8\D8\D8\D8\D8\D8XXXXXXXX\A0\A0\A0\A0\A0\A0\A0\A0                \E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0````````````````\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0@@@@@@@@@@@@@@@@\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B00000000000000000\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0pppppppppppppppp\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0PPPPPPPPPPPPPPPP\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\ECllllllllllllllllllllllllllllllll\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CCLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC||||||||||||||||||||||||||||||||\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B44444444444444444444444444444444444444444444444444444444444444444\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4tttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F55555555555555555555555555555555555555555555555555555555555555555\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD================================\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BDMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8Dmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED--------------------------------\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\ADQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91qqqqqqqqqqqqqqqq\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F11111111111111111\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1AAAAAAAAAAAAAAAA\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81aaaaaaaaaaaaaaaa\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1!!!!!!!!!!!!!!!!\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1YYYYYYYYYYYYYYYY\D9\D9\D9\D9\D9\D9\D9\D9\19\19\19\19\19\19\19\19\99\99\99\99\99\99\99\99yyyyyyyy\F9\F9\F9\F9\F9\F9\F9\F999999999\B9\B9\B9\B9\B9\B9\B9\B9IIIIIIII\C9\C9\C9\C9\C9\C9\C9\C9\09\09\09\09\09\09\09\09\89\89\89\89\89\89\89\89iiiiiiii\E9\E9\E9\E9\E9\E9\E9\E9))))))))\A9\A9\A9\A9\A9\A9\A9\A9WWWWWWWW\D7\D7\D7\D7\17\17\17\17\97\97\97\97wwww\F7\F7\F7\F77777\B7\B7\B7\B7GGGG\C7\C7\C7\C7\07\07\07\07\87\87\87\87gggg\E7\E7\E7\E7''''\A7\A7\A7\A7____\DF\DF\1F\1F\9F\9F\7F\7F\FF\FF??\BF\BFOO\CF\CF\0F\0F\8F\8Foo\EF\EF//\AF\AFSS\D3\13\93s\F33\B3C\C3\03\83c\E3#\A3[\DB\1B\9B{\FB;\BBK\CB\0B\8Bk\EB+\AB", align 16
@out = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @alaw_input(i16* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i16* %0, i16** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 160
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %11 = call i32 @fgetc(%struct._IO_FILE* noundef %10)
  store i32 %11, i32* %5, align 4
  %12 = icmp ne i32 %11, -1
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i1 [ false, %6 ], [ %12, %9 ]
  br i1 %14, label %15, label %28

15:                                               ; preds = %13
  %16 = load i32, i32* %5, align 4
  %17 = trunc i32 %16 to i8
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [256 x i16], [256 x i16]* @a2s, i64 0, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = load i16*, i16** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %21, i64 %23
  store i16 %20, i16* %24, align 2
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %6, !llvm.loop !4

28:                                               ; preds = %13
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %33 = call i32 @ferror(%struct._IO_FILE* noundef %32) #3
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %38

36:                                               ; preds = %31, %28
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %35
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @fgetc(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @alaw_output(i16* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  store i16* %0, i16** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 160
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = load i16*, i16** %3, align 8
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i32
  %12 = ashr i32 %11, 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4096 x i8], [4096 x i8]* @s2a, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %18 = call i32 @fputc(i32 noundef %16, %struct._IO_FILE* noundef %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %8
  store i32 -1, i32* %2, align 4
  br label %28

21:                                               ; preds = %8
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = load i16*, i16** %3, align 8
  %26 = getelementptr inbounds i16, i16* %25, i32 1
  store i16* %26, i16** %3, align 8
  br label %5, !llvm.loop !6

27:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @fputc(i32 noundef, %struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
