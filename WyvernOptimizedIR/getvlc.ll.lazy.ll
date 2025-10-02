; ModuleID = './getvlc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/getvlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DCTtab = type { i8, i8, i8 }
%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }
%struct.VLCtab = type { i8, i8 }

@DCTtabfirst = dso_local global [12 x %struct.DCTtab] [%struct.DCTtab { i8 0, i8 2, i8 4 }, %struct.DCTtab { i8 2, i8 1, i8 4 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }, %struct.DCTtab { i8 0, i8 1, i8 1 }], align 16
@DCTtabnext = dso_local global [12 x %struct.DCTtab] [%struct.DCTtab { i8 0, i8 2, i8 4 }, %struct.DCTtab { i8 2, i8 1, i8 4 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 64, i8 0, i8 2 }, %struct.DCTtab { i8 64, i8 0, i8 2 }, %struct.DCTtab { i8 64, i8 0, i8 2 }, %struct.DCTtab { i8 64, i8 0, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }], align 16
@DCTtab0 = dso_local global [60 x %struct.DCTtab] [%struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 2, i8 2, i8 7 }, %struct.DCTtab { i8 2, i8 2, i8 7 }, %struct.DCTtab { i8 9, i8 1, i8 7 }, %struct.DCTtab { i8 9, i8 1, i8 7 }, %struct.DCTtab { i8 0, i8 4, i8 7 }, %struct.DCTtab { i8 0, i8 4, i8 7 }, %struct.DCTtab { i8 8, i8 1, i8 7 }, %struct.DCTtab { i8 8, i8 1, i8 7 }, %struct.DCTtab { i8 7, i8 1, i8 6 }, %struct.DCTtab { i8 7, i8 1, i8 6 }, %struct.DCTtab { i8 7, i8 1, i8 6 }, %struct.DCTtab { i8 7, i8 1, i8 6 }, %struct.DCTtab { i8 6, i8 1, i8 6 }, %struct.DCTtab { i8 6, i8 1, i8 6 }, %struct.DCTtab { i8 6, i8 1, i8 6 }, %struct.DCTtab { i8 6, i8 1, i8 6 }, %struct.DCTtab { i8 1, i8 2, i8 6 }, %struct.DCTtab { i8 1, i8 2, i8 6 }, %struct.DCTtab { i8 1, i8 2, i8 6 }, %struct.DCTtab { i8 1, i8 2, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 13, i8 1, i8 8 }, %struct.DCTtab { i8 0, i8 6, i8 8 }, %struct.DCTtab { i8 12, i8 1, i8 8 }, %struct.DCTtab { i8 11, i8 1, i8 8 }, %struct.DCTtab { i8 3, i8 2, i8 8 }, %struct.DCTtab { i8 1, i8 3, i8 8 }, %struct.DCTtab { i8 0, i8 5, i8 8 }, %struct.DCTtab { i8 10, i8 1, i8 8 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 0, i8 3, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 4, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }], align 16
@DCTtab0a = dso_local global [252 x %struct.DCTtab] [%struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 65, i8 0, i8 6 }, %struct.DCTtab { i8 7, i8 1, i8 7 }, %struct.DCTtab { i8 7, i8 1, i8 7 }, %struct.DCTtab { i8 8, i8 1, i8 7 }, %struct.DCTtab { i8 8, i8 1, i8 7 }, %struct.DCTtab { i8 6, i8 1, i8 7 }, %struct.DCTtab { i8 6, i8 1, i8 7 }, %struct.DCTtab { i8 2, i8 2, i8 7 }, %struct.DCTtab { i8 2, i8 2, i8 7 }, %struct.DCTtab { i8 0, i8 7, i8 6 }, %struct.DCTtab { i8 0, i8 7, i8 6 }, %struct.DCTtab { i8 0, i8 7, i8 6 }, %struct.DCTtab { i8 0, i8 7, i8 6 }, %struct.DCTtab { i8 0, i8 6, i8 6 }, %struct.DCTtab { i8 0, i8 6, i8 6 }, %struct.DCTtab { i8 0, i8 6, i8 6 }, %struct.DCTtab { i8 0, i8 6, i8 6 }, %struct.DCTtab { i8 4, i8 1, i8 6 }, %struct.DCTtab { i8 4, i8 1, i8 6 }, %struct.DCTtab { i8 4, i8 1, i8 6 }, %struct.DCTtab { i8 4, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 5, i8 1, i8 6 }, %struct.DCTtab { i8 1, i8 5, i8 8 }, %struct.DCTtab { i8 11, i8 1, i8 8 }, %struct.DCTtab { i8 0, i8 11, i8 8 }, %struct.DCTtab { i8 0, i8 10, i8 8 }, %struct.DCTtab { i8 13, i8 1, i8 8 }, %struct.DCTtab { i8 12, i8 1, i8 8 }, %struct.DCTtab { i8 3, i8 2, i8 8 }, %struct.DCTtab { i8 1, i8 4, i8 8 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 2, i8 1, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 1, i8 2, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 3, i8 1, i8 5 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 1, i8 1, i8 3 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 64, i8 0, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 3, i8 4 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 1, i8 2 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 2, i8 3 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 4, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 0, i8 5, i8 5 }, %struct.DCTtab { i8 9, i8 1, i8 7 }, %struct.DCTtab { i8 9, i8 1, i8 7 }, %struct.DCTtab { i8 1, i8 3, i8 7 }, %struct.DCTtab { i8 1, i8 3, i8 7 }, %struct.DCTtab { i8 10, i8 1, i8 7 }, %struct.DCTtab { i8 10, i8 1, i8 7 }, %struct.DCTtab { i8 0, i8 8, i8 7 }, %struct.DCTtab { i8 0, i8 8, i8 7 }, %struct.DCTtab { i8 0, i8 9, i8 7 }, %struct.DCTtab { i8 0, i8 9, i8 7 }, %struct.DCTtab { i8 0, i8 12, i8 8 }, %struct.DCTtab { i8 0, i8 13, i8 8 }, %struct.DCTtab { i8 2, i8 3, i8 8 }, %struct.DCTtab { i8 4, i8 2, i8 8 }, %struct.DCTtab { i8 0, i8 14, i8 8 }, %struct.DCTtab { i8 0, i8 15, i8 8 }], align 16
@DCTtab1 = dso_local global [8 x %struct.DCTtab] [%struct.DCTtab { i8 16, i8 1, i8 10 }, %struct.DCTtab { i8 5, i8 2, i8 10 }, %struct.DCTtab { i8 0, i8 7, i8 10 }, %struct.DCTtab { i8 2, i8 3, i8 10 }, %struct.DCTtab { i8 1, i8 4, i8 10 }, %struct.DCTtab { i8 15, i8 1, i8 10 }, %struct.DCTtab { i8 14, i8 1, i8 10 }, %struct.DCTtab { i8 4, i8 2, i8 10 }], align 16
@DCTtab1a = dso_local global [8 x %struct.DCTtab] [%struct.DCTtab { i8 5, i8 2, i8 9 }, %struct.DCTtab { i8 5, i8 2, i8 9 }, %struct.DCTtab { i8 14, i8 1, i8 9 }, %struct.DCTtab { i8 14, i8 1, i8 9 }, %struct.DCTtab { i8 2, i8 4, i8 10 }, %struct.DCTtab { i8 16, i8 1, i8 10 }, %struct.DCTtab { i8 15, i8 1, i8 9 }, %struct.DCTtab { i8 15, i8 1, i8 9 }], align 16
@DCTtab2 = dso_local global [16 x %struct.DCTtab] [%struct.DCTtab { i8 0, i8 11, i8 12 }, %struct.DCTtab { i8 8, i8 2, i8 12 }, %struct.DCTtab { i8 4, i8 3, i8 12 }, %struct.DCTtab { i8 0, i8 10, i8 12 }, %struct.DCTtab { i8 2, i8 4, i8 12 }, %struct.DCTtab { i8 7, i8 2, i8 12 }, %struct.DCTtab { i8 21, i8 1, i8 12 }, %struct.DCTtab { i8 20, i8 1, i8 12 }, %struct.DCTtab { i8 0, i8 9, i8 12 }, %struct.DCTtab { i8 19, i8 1, i8 12 }, %struct.DCTtab { i8 18, i8 1, i8 12 }, %struct.DCTtab { i8 1, i8 5, i8 12 }, %struct.DCTtab { i8 3, i8 3, i8 12 }, %struct.DCTtab { i8 0, i8 8, i8 12 }, %struct.DCTtab { i8 6, i8 2, i8 12 }, %struct.DCTtab { i8 17, i8 1, i8 12 }], align 16
@DCTtab3 = dso_local global [16 x %struct.DCTtab] [%struct.DCTtab { i8 10, i8 2, i8 13 }, %struct.DCTtab { i8 9, i8 2, i8 13 }, %struct.DCTtab { i8 5, i8 3, i8 13 }, %struct.DCTtab { i8 3, i8 4, i8 13 }, %struct.DCTtab { i8 2, i8 5, i8 13 }, %struct.DCTtab { i8 1, i8 7, i8 13 }, %struct.DCTtab { i8 1, i8 6, i8 13 }, %struct.DCTtab { i8 0, i8 15, i8 13 }, %struct.DCTtab { i8 0, i8 14, i8 13 }, %struct.DCTtab { i8 0, i8 13, i8 13 }, %struct.DCTtab { i8 0, i8 12, i8 13 }, %struct.DCTtab { i8 26, i8 1, i8 13 }, %struct.DCTtab { i8 25, i8 1, i8 13 }, %struct.DCTtab { i8 24, i8 1, i8 13 }, %struct.DCTtab { i8 23, i8 1, i8 13 }, %struct.DCTtab { i8 22, i8 1, i8 13 }], align 16
@DCTtab4 = dso_local global [16 x %struct.DCTtab] [%struct.DCTtab { i8 0, i8 31, i8 14 }, %struct.DCTtab { i8 0, i8 30, i8 14 }, %struct.DCTtab { i8 0, i8 29, i8 14 }, %struct.DCTtab { i8 0, i8 28, i8 14 }, %struct.DCTtab { i8 0, i8 27, i8 14 }, %struct.DCTtab { i8 0, i8 26, i8 14 }, %struct.DCTtab { i8 0, i8 25, i8 14 }, %struct.DCTtab { i8 0, i8 24, i8 14 }, %struct.DCTtab { i8 0, i8 23, i8 14 }, %struct.DCTtab { i8 0, i8 22, i8 14 }, %struct.DCTtab { i8 0, i8 21, i8 14 }, %struct.DCTtab { i8 0, i8 20, i8 14 }, %struct.DCTtab { i8 0, i8 19, i8 14 }, %struct.DCTtab { i8 0, i8 18, i8 14 }, %struct.DCTtab { i8 0, i8 17, i8 14 }, %struct.DCTtab { i8 0, i8 16, i8 14 }], align 16
@DCTtab5 = dso_local global [16 x %struct.DCTtab] [%struct.DCTtab { i8 0, i8 40, i8 15 }, %struct.DCTtab { i8 0, i8 39, i8 15 }, %struct.DCTtab { i8 0, i8 38, i8 15 }, %struct.DCTtab { i8 0, i8 37, i8 15 }, %struct.DCTtab { i8 0, i8 36, i8 15 }, %struct.DCTtab { i8 0, i8 35, i8 15 }, %struct.DCTtab { i8 0, i8 34, i8 15 }, %struct.DCTtab { i8 0, i8 33, i8 15 }, %struct.DCTtab { i8 0, i8 32, i8 15 }, %struct.DCTtab { i8 1, i8 14, i8 15 }, %struct.DCTtab { i8 1, i8 13, i8 15 }, %struct.DCTtab { i8 1, i8 12, i8 15 }, %struct.DCTtab { i8 1, i8 11, i8 15 }, %struct.DCTtab { i8 1, i8 10, i8 15 }, %struct.DCTtab { i8 1, i8 9, i8 15 }, %struct.DCTtab { i8 1, i8 8, i8 15 }], align 16
@DCTtab6 = dso_local global [16 x %struct.DCTtab] [%struct.DCTtab { i8 1, i8 18, i8 16 }, %struct.DCTtab { i8 1, i8 17, i8 16 }, %struct.DCTtab { i8 1, i8 16, i8 16 }, %struct.DCTtab { i8 1, i8 15, i8 16 }, %struct.DCTtab { i8 6, i8 3, i8 16 }, %struct.DCTtab { i8 16, i8 2, i8 16 }, %struct.DCTtab { i8 15, i8 2, i8 16 }, %struct.DCTtab { i8 14, i8 2, i8 16 }, %struct.DCTtab { i8 13, i8 2, i8 16 }, %struct.DCTtab { i8 12, i8 2, i8 16 }, %struct.DCTtab { i8 11, i8 2, i8 16 }, %struct.DCTtab { i8 31, i8 1, i8 16 }, %struct.DCTtab { i8 30, i8 1, i8 16 }, %struct.DCTtab { i8 29, i8 1, i8 16 }, %struct.DCTtab { i8 28, i8 1, i8 16 }, %struct.DCTtab { i8 27, i8 1, i8 16 }], align 16
@ld = external dso_local global %struct.layer_data*, align 8
@picture_coding_type = external dso_local global i32, align 4
@.str = private unnamed_addr constant [57 x i8] c"Get_macroblock_type(): unrecognized picture coding type\0A\00", align 1
@MVtab0 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 1, i8 1 }, %struct.VLCtab { i8 1, i8 1 }, %struct.VLCtab { i8 1, i8 1 }, %struct.VLCtab { i8 1, i8 1 }], align 16
@MVtab1 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 5, i8 6 }, %struct.VLCtab { i8 4, i8 5 }, %struct.VLCtab { i8 4, i8 5 }], align 16
@Quiet_Flag = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid motion_vector code (MBA %d, pic %d)\0A\00", align 1
@global_MBA = external dso_local global i32, align 4
@global_pic = external dso_local global i32, align 4
@Fault_Flag = external dso_local global i32, align 4
@MVtab2 = internal global [12 x %struct.VLCtab] [%struct.VLCtab { i8 16, i8 9 }, %struct.VLCtab { i8 15, i8 9 }, %struct.VLCtab { i8 14, i8 9 }, %struct.VLCtab { i8 13, i8 9 }, %struct.VLCtab { i8 12, i8 9 }, %struct.VLCtab { i8 11, i8 9 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 9, i8 8 }, %struct.VLCtab { i8 9, i8 8 }, %struct.VLCtab { i8 8, i8 8 }, %struct.VLCtab { i8 8, i8 8 }], align 16
@CBPtab0 = internal global [32 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 62, i8 5 }, %struct.VLCtab { i8 2, i8 5 }, %struct.VLCtab { i8 61, i8 5 }, %struct.VLCtab { i8 1, i8 5 }, %struct.VLCtab { i8 56, i8 5 }, %struct.VLCtab { i8 52, i8 5 }, %struct.VLCtab { i8 44, i8 5 }, %struct.VLCtab { i8 28, i8 5 }, %struct.VLCtab { i8 40, i8 5 }, %struct.VLCtab { i8 20, i8 5 }, %struct.VLCtab { i8 48, i8 5 }, %struct.VLCtab { i8 12, i8 5 }, %struct.VLCtab { i8 32, i8 4 }, %struct.VLCtab { i8 32, i8 4 }, %struct.VLCtab { i8 16, i8 4 }, %struct.VLCtab { i8 16, i8 4 }, %struct.VLCtab { i8 8, i8 4 }, %struct.VLCtab { i8 8, i8 4 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 60, i8 3 }, %struct.VLCtab { i8 60, i8 3 }, %struct.VLCtab { i8 60, i8 3 }, %struct.VLCtab { i8 60, i8 3 }], align 16
@CBPtab1 = internal global [64 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 58, i8 8 }, %struct.VLCtab { i8 54, i8 8 }, %struct.VLCtab { i8 46, i8 8 }, %struct.VLCtab { i8 30, i8 8 }, %struct.VLCtab { i8 57, i8 8 }, %struct.VLCtab { i8 53, i8 8 }, %struct.VLCtab { i8 45, i8 8 }, %struct.VLCtab { i8 29, i8 8 }, %struct.VLCtab { i8 38, i8 8 }, %struct.VLCtab { i8 26, i8 8 }, %struct.VLCtab { i8 37, i8 8 }, %struct.VLCtab { i8 25, i8 8 }, %struct.VLCtab { i8 43, i8 8 }, %struct.VLCtab { i8 23, i8 8 }, %struct.VLCtab { i8 51, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 42, i8 8 }, %struct.VLCtab { i8 22, i8 8 }, %struct.VLCtab { i8 50, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 41, i8 8 }, %struct.VLCtab { i8 21, i8 8 }, %struct.VLCtab { i8 49, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 35, i8 8 }, %struct.VLCtab { i8 19, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 7, i8 8 }, %struct.VLCtab { i8 34, i8 7 }, %struct.VLCtab { i8 34, i8 7 }, %struct.VLCtab { i8 18, i8 7 }, %struct.VLCtab { i8 18, i8 7 }, %struct.VLCtab { i8 10, i8 7 }, %struct.VLCtab { i8 10, i8 7 }, %struct.VLCtab { i8 6, i8 7 }, %struct.VLCtab { i8 6, i8 7 }, %struct.VLCtab { i8 33, i8 7 }, %struct.VLCtab { i8 33, i8 7 }, %struct.VLCtab { i8 17, i8 7 }, %struct.VLCtab { i8 17, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 5, i8 7 }, %struct.VLCtab { i8 5, i8 7 }, %struct.VLCtab { i8 63, i8 6 }, %struct.VLCtab { i8 63, i8 6 }, %struct.VLCtab { i8 63, i8 6 }, %struct.VLCtab { i8 63, i8 6 }, %struct.VLCtab { i8 3, i8 6 }, %struct.VLCtab { i8 3, i8 6 }, %struct.VLCtab { i8 3, i8 6 }, %struct.VLCtab { i8 3, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 24, i8 6 }, %struct.VLCtab { i8 24, i8 6 }, %struct.VLCtab { i8 24, i8 6 }, %struct.VLCtab { i8 24, i8 6 }], align 16
@.str.2 = private unnamed_addr constant [34 x i8] c"Invalid coded_block_pattern code\0A\00", align 1
@CBPtab2 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 0, i8 9 }, %struct.VLCtab { i8 39, i8 9 }, %struct.VLCtab { i8 27, i8 9 }, %struct.VLCtab { i8 59, i8 9 }, %struct.VLCtab { i8 55, i8 9 }, %struct.VLCtab { i8 47, i8 9 }, %struct.VLCtab { i8 31, i8 9 }], align 16
@.str.3 = private unnamed_addr constant [43 x i8] c"Invalid macroblock_address_increment code\0A\00", align 1
@MBAtab1 = internal global [16 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 7, i8 5 }, %struct.VLCtab { i8 6, i8 5 }, %struct.VLCtab { i8 5, i8 4 }, %struct.VLCtab { i8 5, i8 4 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 2, i8 3 }, %struct.VLCtab { i8 2, i8 3 }, %struct.VLCtab { i8 2, i8 3 }, %struct.VLCtab { i8 2, i8 3 }], align 16
@MBAtab2 = internal global [104 x %struct.VLCtab] [%struct.VLCtab { i8 33, i8 11 }, %struct.VLCtab { i8 32, i8 11 }, %struct.VLCtab { i8 31, i8 11 }, %struct.VLCtab { i8 30, i8 11 }, %struct.VLCtab { i8 29, i8 11 }, %struct.VLCtab { i8 28, i8 11 }, %struct.VLCtab { i8 27, i8 11 }, %struct.VLCtab { i8 26, i8 11 }, %struct.VLCtab { i8 25, i8 11 }, %struct.VLCtab { i8 24, i8 11 }, %struct.VLCtab { i8 23, i8 11 }, %struct.VLCtab { i8 22, i8 11 }, %struct.VLCtab { i8 21, i8 10 }, %struct.VLCtab { i8 21, i8 10 }, %struct.VLCtab { i8 20, i8 10 }, %struct.VLCtab { i8 20, i8 10 }, %struct.VLCtab { i8 19, i8 10 }, %struct.VLCtab { i8 19, i8 10 }, %struct.VLCtab { i8 18, i8 10 }, %struct.VLCtab { i8 18, i8 10 }, %struct.VLCtab { i8 17, i8 10 }, %struct.VLCtab { i8 17, i8 10 }, %struct.VLCtab { i8 16, i8 10 }, %struct.VLCtab { i8 16, i8 10 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 15, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 14, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 13, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 12, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 11, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 10, i8 8 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 9, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }], align 16
@DClumtab0 = internal global [32 x %struct.VLCtab] [%struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 0, i8 3 }, %struct.VLCtab { i8 0, i8 3 }, %struct.VLCtab { i8 0, i8 3 }, %struct.VLCtab { i8 0, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 5, i8 4 }, %struct.VLCtab { i8 5, i8 4 }, %struct.VLCtab { i8 6, i8 5 }, %struct.VLCtab { i8 -1, i8 0 }], align 16
@DClumtab1 = internal global [16 x %struct.VLCtab] [%struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 7, i8 6 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 8, i8 7 }, %struct.VLCtab { i8 9, i8 8 }, %struct.VLCtab { i8 9, i8 8 }, %struct.VLCtab { i8 10, i8 9 }, %struct.VLCtab { i8 11, i8 9 }], align 16
@DCchromtab0 = internal global [32 x %struct.VLCtab] [%struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 0, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 1, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 3, i8 3 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 4, i8 4 }, %struct.VLCtab { i8 5, i8 5 }, %struct.VLCtab { i8 -1, i8 0 }], align 16
@DCchromtab1 = internal global [32 x %struct.VLCtab] [%struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 6, i8 6 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 7, i8 7 }, %struct.VLCtab { i8 8, i8 8 }, %struct.VLCtab { i8 8, i8 8 }, %struct.VLCtab { i8 8, i8 8 }, %struct.VLCtab { i8 8, i8 8 }, %struct.VLCtab { i8 9, i8 9 }, %struct.VLCtab { i8 9, i8 9 }, %struct.VLCtab { i8 10, i8 10 }, %struct.VLCtab { i8 11, i8 10 }], align 16
@.str.4 = private unnamed_addr constant [30 x i8] c"Invalid macroblock_type code\0A\00", align 1
@PMBtab0 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 8, i8 3 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 2, i8 2 }, %struct.VLCtab { i8 10, i8 1 }, %struct.VLCtab { i8 10, i8 1 }, %struct.VLCtab { i8 10, i8 1 }, %struct.VLCtab { i8 10, i8 1 }], align 16
@PMBtab1 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 17, i8 6 }, %struct.VLCtab { i8 18, i8 5 }, %struct.VLCtab { i8 18, i8 5 }, %struct.VLCtab { i8 26, i8 5 }, %struct.VLCtab { i8 26, i8 5 }, %struct.VLCtab { i8 1, i8 5 }, %struct.VLCtab { i8 1, i8 5 }], align 16
@BMBtab0 = internal global [16 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 8, i8 4 }, %struct.VLCtab { i8 10, i8 4 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 6, i8 3 }, %struct.VLCtab { i8 6, i8 3 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }], align 16
@BMBtab1 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 17, i8 6 }, %struct.VLCtab { i8 22, i8 6 }, %struct.VLCtab { i8 26, i8 6 }, %struct.VLCtab { i8 30, i8 5 }, %struct.VLCtab { i8 30, i8 5 }, %struct.VLCtab { i8 1, i8 5 }, %struct.VLCtab { i8 1, i8 5 }], align 16
@spIMBtab = internal global [16 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 64, i8 4 }, %struct.VLCtab { i8 17, i8 4 }, %struct.VLCtab { i8 1, i8 4 }, %struct.VLCtab { i8 82, i8 2 }, %struct.VLCtab { i8 82, i8 2 }, %struct.VLCtab { i8 82, i8 2 }, %struct.VLCtab { i8 82, i8 2 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }, %struct.VLCtab { i8 66, i8 1 }], align 16
@spPMBtab0 = internal global [16 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 8, i8 4 }, %struct.VLCtab { i8 40, i8 4 }, %struct.VLCtab { i8 26, i8 3 }, %struct.VLCtab { i8 26, i8 3 }, %struct.VLCtab { i8 42, i8 3 }, %struct.VLCtab { i8 42, i8 3 }, %struct.VLCtab { i8 10, i8 2 }, %struct.VLCtab { i8 10, i8 2 }, %struct.VLCtab { i8 10, i8 2 }, %struct.VLCtab { i8 10, i8 2 }, %struct.VLCtab { i8 58, i8 2 }, %struct.VLCtab { i8 58, i8 2 }, %struct.VLCtab { i8 58, i8 2 }, %struct.VLCtab { i8 58, i8 2 }], align 16
@spPMBtab1 = internal global [16 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 82, i8 7 }, %struct.VLCtab { i8 64, i8 7 }, %struct.VLCtab { i8 2, i8 7 }, %struct.VLCtab { i8 66, i8 7 }, %struct.VLCtab { i8 17, i8 7 }, %struct.VLCtab { i8 1, i8 7 }, %struct.VLCtab { i8 18, i8 6 }, %struct.VLCtab { i8 18, i8 6 }, %struct.VLCtab { i8 50, i8 6 }, %struct.VLCtab { i8 50, i8 6 }, %struct.VLCtab { i8 32, i8 6 }, %struct.VLCtab { i8 32, i8 6 }, %struct.VLCtab { i8 34, i8 6 }, %struct.VLCtab { i8 34, i8 6 }], align 16
@spBMBtab0 = internal global [14 x %struct.VLCtab] [%struct.VLCtab { i8 8, i8 4 }, %struct.VLCtab { i8 10, i8 4 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 4, i8 3 }, %struct.VLCtab { i8 6, i8 3 }, %struct.VLCtab { i8 6, i8 3 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 12, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }, %struct.VLCtab { i8 14, i8 2 }], align 16
@spBMBtab1 = internal global [12 x %struct.VLCtab] [%struct.VLCtab { i8 26, i8 7 }, %struct.VLCtab { i8 22, i8 7 }, %struct.VLCtab { i8 1, i8 7 }, %struct.VLCtab { i8 30, i8 7 }, %struct.VLCtab { i8 40, i8 6 }, %struct.VLCtab { i8 40, i8 6 }, %struct.VLCtab { i8 42, i8 6 }, %struct.VLCtab { i8 42, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 36, i8 6 }, %struct.VLCtab { i8 38, i8 6 }, %struct.VLCtab { i8 38, i8 6 }], align 16
@spBMBtab2 = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 17, i8 8 }, %struct.VLCtab { i8 17, i8 8 }, %struct.VLCtab { i8 58, i8 8 }, %struct.VLCtab { i8 58, i8 8 }, %struct.VLCtab { i8 54, i8 9 }, %struct.VLCtab { i8 82, i8 9 }, %struct.VLCtab { i8 64, i8 9 }, %struct.VLCtab { i8 66, i8 9 }], align 16
@SNRMBtab = internal global [8 x %struct.VLCtab] [%struct.VLCtab { i8 -1, i8 0 }, %struct.VLCtab { i8 0, i8 3 }, %struct.VLCtab { i8 18, i8 2 }, %struct.VLCtab { i8 18, i8 2 }, %struct.VLCtab { i8 2, i8 1 }, %struct.VLCtab { i8 2, i8 1 }, %struct.VLCtab { i8 2, i8 1 }, %struct.VLCtab { i8 2, i8 1 }], align 16
@str = private unnamed_addr constant [56 x i8] c"Get_macroblock_type(): unrecognized picture coding type\00", align 1
@str.1 = private unnamed_addr constant [29 x i8] c"Invalid macroblock_type code\00", align 1
@str.2 = private unnamed_addr constant [29 x i8] c"Invalid macroblock_type code\00", align 1
@str.3 = private unnamed_addr constant [29 x i8] c"Invalid macroblock_type code\00", align 1
@str.4 = private unnamed_addr constant [29 x i8] c"Invalid macroblock_type code\00", align 1
@str.5 = private unnamed_addr constant [29 x i8] c"Invalid macroblock_type code\00", align 1
@str.6 = private unnamed_addr constant [29 x i8] c"Invalid macroblock_type code\00", align 1
@str.7 = private unnamed_addr constant [29 x i8] c"Invalid macroblock_type code\00", align 1
@str.8 = private unnamed_addr constant [29 x i8] c"Invalid macroblock_type code\00", align 1
@str.9 = private unnamed_addr constant [33 x i8] c"Invalid coded_block_pattern code\00", align 1
@str.10 = private unnamed_addr constant [42 x i8] c"Invalid macroblock_address_increment code\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_macroblock_type() #0 {
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %2 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i64 0, i32 17
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @Get_SNR_macroblock_type()
  br label %43

7:                                                ; preds = %0
  %8 = load i32, i32* @picture_coding_type, align 4
  switch i32 %8, label %41 [
    i32 1, label %9
    i32 2, label %19
    i32 3, label %29
    i32 4, label %39
  ]

9:                                                ; preds = %7
  %10 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %11 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i64 0, i32 20
  %12 = load i32, i32* %11, align 8
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %15, label %13

13:                                               ; preds = %9
  %14 = call i32 @Get_I_Spatial_macroblock_type()
  br label %17

15:                                               ; preds = %9
  %16 = call i32 @Get_I_macroblock_type()
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  br label %42

19:                                               ; preds = %7
  %20 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %21 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %20, i64 0, i32 20
  %22 = load i32, i32* %21, align 8
  %.not1 = icmp eq i32 %22, 0
  br i1 %.not1, label %25, label %23

23:                                               ; preds = %19
  %24 = call i32 @Get_P_Spatial_macroblock_type()
  br label %27

25:                                               ; preds = %19
  %26 = call i32 @Get_P_macroblock_type()
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  br label %42

29:                                               ; preds = %7
  %30 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %31 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %30, i64 0, i32 20
  %32 = load i32, i32* %31, align 8
  %.not = icmp eq i32 %32, 0
  br i1 %.not, label %35, label %33

33:                                               ; preds = %29
  %34 = call i32 @Get_B_Spatial_macroblock_type()
  br label %37

35:                                               ; preds = %29
  %36 = call i32 @Get_B_macroblock_type()
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  br label %42

39:                                               ; preds = %7
  %40 = call i32 @Get_D_macroblock_type()
  br label %42

41:                                               ; preds = %7
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %41, %39, %37, %27, %17
  %.0 = phi i32 [ 0, %41 ], [ %40, %39 ], [ %38, %37 ], [ %28, %27 ], [ %18, %17 ]
  br label %43

43:                                               ; preds = %42, %5
  %.1 = phi i32 [ %6, %5 ], [ %.0, %42 ]
  ret i32 %.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_SNR_macroblock_type() #0 {
  %1 = call i32 @Show_Bits(i32 noundef 3) #3
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32, i32* @Quiet_Flag, align 4
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %6

5:                                                ; preds = %3
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.1, i64 0, i64 0))
  br label %6

6:                                                ; preds = %5, %3
  store i32 1, i32* @Fault_Flag, align 4
  br label %16

7:                                                ; preds = %0
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @SNRMBtab, i64 0, i64 %8, i32 1
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  call void @Flush_Buffer(i32 noundef %11) #3
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @SNRMBtab, i64 0, i64 %12, i32 0
  %14 = load i8, i8* %13, align 2
  %15 = sext i8 %14 to i32
  br label %16

16:                                               ; preds = %7, %6
  %.0 = phi i32 [ 0, %6 ], [ %15, %7 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_I_Spatial_macroblock_type() #0 {
  %1 = call i32 @Show_Bits(i32 noundef 4) #3
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32, i32* @Quiet_Flag, align 4
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %6

5:                                                ; preds = %3
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.2, i64 0, i64 0))
  br label %6

6:                                                ; preds = %5, %3
  store i32 1, i32* @Fault_Flag, align 4
  br label %16

7:                                                ; preds = %0
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spIMBtab, i64 0, i64 %8, i32 1
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  call void @Flush_Buffer(i32 noundef %11) #3
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spIMBtab, i64 0, i64 %12, i32 0
  %14 = load i8, i8* %13, align 2
  %15 = sext i8 %14 to i32
  br label %16

16:                                               ; preds = %7, %6
  %.0 = phi i32 [ 0, %6 ], [ %15, %7 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_I_macroblock_type() #0 {
  %1 = call i32 @Get_Bits1() #3
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  br label %10

3:                                                ; preds = %0
  %4 = call i32 @Get_Bits1() #3
  %.not1 = icmp eq i32 %4, 0
  br i1 %.not1, label %5, label %9

5:                                                ; preds = %3
  %6 = load i32, i32* @Quiet_Flag, align 4
  %.not2 = icmp eq i32 %6, 0
  br i1 %.not2, label %7, label %8

7:                                                ; preds = %5
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.3, i64 0, i64 0))
  br label %8

8:                                                ; preds = %7, %5
  store i32 1, i32* @Fault_Flag, align 4
  br label %9

9:                                                ; preds = %8, %3
  br label %10

10:                                               ; preds = %9, %2
  %.0 = phi i32 [ 1, %2 ], [ 17, %9 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_P_Spatial_macroblock_type() #0 {
  %1 = call i32 @Show_Bits(i32 noundef 7) #3
  %2 = icmp slt i32 %1, 2
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32, i32* @Quiet_Flag, align 4
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %6

5:                                                ; preds = %3
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.4, i64 0, i64 0))
  br label %6

6:                                                ; preds = %5, %3
  store i32 1, i32* @Fault_Flag, align 4
  br label %28

7:                                                ; preds = %0
  %8 = icmp sgt i32 %1, 15
  br i1 %8, label %9, label %19

9:                                                ; preds = %7
  %10 = ashr i32 %1, 3
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spPMBtab0, i64 0, i64 %11, i32 1
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  call void @Flush_Buffer(i32 noundef %14) #3
  %15 = sext i32 %10 to i64
  %16 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spPMBtab0, i64 0, i64 %15, i32 0
  %17 = load i8, i8* %16, align 2
  %18 = sext i8 %17 to i32
  br label %28

19:                                               ; preds = %7
  %20 = sext i32 %1 to i64
  %21 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spPMBtab1, i64 0, i64 %20, i32 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  call void @Flush_Buffer(i32 noundef %23) #3
  %24 = sext i32 %1 to i64
  %25 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spPMBtab1, i64 0, i64 %24, i32 0
  %26 = load i8, i8* %25, align 2
  %27 = sext i8 %26 to i32
  br label %28

28:                                               ; preds = %19, %9, %6
  %.0 = phi i32 [ 0, %6 ], [ %18, %9 ], [ %27, %19 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_P_macroblock_type() #0 {
  %1 = call i32 @Show_Bits(i32 noundef 6) #3
  %2 = icmp sgt i32 %1, 7
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  %4 = ashr i32 %1, 3
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @PMBtab0, i64 0, i64 %5, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  call void @Flush_Buffer(i32 noundef %8) #3
  %9 = sext i32 %4 to i64
  %10 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @PMBtab0, i64 0, i64 %9, i32 0
  %11 = load i8, i8* %10, align 2
  %12 = sext i8 %11 to i32
  br label %28

13:                                               ; preds = %0
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = load i32, i32* @Quiet_Flag, align 4
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %17, label %18

17:                                               ; preds = %15
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.5, i64 0, i64 0))
  br label %18

18:                                               ; preds = %17, %15
  store i32 1, i32* @Fault_Flag, align 4
  br label %28

19:                                               ; preds = %13
  %20 = sext i32 %1 to i64
  %21 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @PMBtab1, i64 0, i64 %20, i32 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  call void @Flush_Buffer(i32 noundef %23) #3
  %24 = sext i32 %1 to i64
  %25 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @PMBtab1, i64 0, i64 %24, i32 0
  %26 = load i8, i8* %25, align 2
  %27 = sext i8 %26 to i32
  br label %28

28:                                               ; preds = %19, %18, %3
  %.0 = phi i32 [ %12, %3 ], [ 0, %18 ], [ %27, %19 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_B_Spatial_macroblock_type() #0 {
  %1 = call i32 @Show_Bits(i32 noundef 9) #3
  %2 = icmp sgt i32 %1, 63
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = ashr i32 %1, 5
  %5 = add nsw i32 %4, -2
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [14 x %struct.VLCtab], [14 x %struct.VLCtab]* @spBMBtab0, i64 0, i64 %6
  br label %27

8:                                                ; preds = %0
  %9 = icmp sgt i32 %1, 15
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = ashr i32 %1, 2
  %12 = add nsw i32 %11, -4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [12 x %struct.VLCtab], [12 x %struct.VLCtab]* @spBMBtab1, i64 0, i64 %13
  br label %26

15:                                               ; preds = %8
  %16 = icmp sgt i32 %1, 7
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @Quiet_Flag, align 4
  %.not = icmp eq i32 %19, 0
  br i1 %.not, label %20, label %21

20:                                               ; preds = %18
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.6, i64 0, i64 0))
  br label %21

21:                                               ; preds = %20, %18
  store i32 1, i32* @Fault_Flag, align 4
  br label %34

22:                                               ; preds = %17
  %23 = add nsw i32 %1, -8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @spBMBtab2, i64 0, i64 %24
  br label %26

26:                                               ; preds = %22, %10
  %.01 = phi %struct.VLCtab* [ %14, %10 ], [ %25, %22 ]
  br label %27

27:                                               ; preds = %26, %3
  %.1 = phi %struct.VLCtab* [ %7, %3 ], [ %.01, %26 ]
  %28 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %.1, i64 0, i32 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  call void @Flush_Buffer(i32 noundef %30) #3
  %31 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %.1, i64 0, i32 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  br label %34

34:                                               ; preds = %27, %21
  %.0 = phi i32 [ %33, %27 ], [ 0, %21 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_B_macroblock_type() #0 {
  %1 = call i32 @Show_Bits(i32 noundef 6) #3
  %2 = icmp sgt i32 %1, 7
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  %4 = ashr i32 %1, 2
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @BMBtab0, i64 0, i64 %5, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  call void @Flush_Buffer(i32 noundef %8) #3
  %9 = sext i32 %4 to i64
  %10 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @BMBtab0, i64 0, i64 %9, i32 0
  %11 = load i8, i8* %10, align 2
  %12 = sext i8 %11 to i32
  br label %28

13:                                               ; preds = %0
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = load i32, i32* @Quiet_Flag, align 4
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %17, label %18

17:                                               ; preds = %15
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.7, i64 0, i64 0))
  br label %18

18:                                               ; preds = %17, %15
  store i32 1, i32* @Fault_Flag, align 4
  br label %28

19:                                               ; preds = %13
  %20 = sext i32 %1 to i64
  %21 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @BMBtab1, i64 0, i64 %20, i32 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  call void @Flush_Buffer(i32 noundef %23) #3
  %24 = sext i32 %1 to i64
  %25 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @BMBtab1, i64 0, i64 %24, i32 0
  %26 = load i8, i8* %25, align 2
  %27 = sext i8 %26 to i32
  br label %28

28:                                               ; preds = %19, %18, %3
  %.0 = phi i32 [ %12, %3 ], [ 0, %18 ], [ %27, %19 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_D_macroblock_type() #0 {
  %1 = call i32 @Get_Bits1() #3
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %2, label %6

2:                                                ; preds = %0
  %3 = load i32, i32* @Quiet_Flag, align 4
  %.not1 = icmp eq i32 %3, 0
  br i1 %.not1, label %4, label %5

4:                                                ; preds = %2
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.8, i64 0, i64 0))
  br label %5

5:                                                ; preds = %4, %2
  store i32 1, i32* @Fault_Flag, align 4
  br label %6

6:                                                ; preds = %5, %0
  ret i32 1
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_motion_code() #0 {
  %1 = call i32 @Get_Bits1() #3
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  br label %77

3:                                                ; preds = %0
  %4 = call i32 @Show_Bits(i32 noundef 9) #3
  %5 = icmp sgt i32 %4, 63
  br i1 %5, label %6, label %26

6:                                                ; preds = %3
  %7 = ashr i32 %4, 6
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab0, i64 0, i64 %8, i32 1
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  call void @Flush_Buffer(i32 noundef %11) #3
  %12 = call i32 @Get_Bits1() #3
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %19, label %13

13:                                               ; preds = %6
  %14 = sext i32 %7 to i64
  %15 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab0, i64 0, i64 %14, i32 0
  %16 = load i8, i8* %15, align 2
  %17 = sext i8 %16 to i32
  %18 = sub nsw i32 0, %17
  br label %24

19:                                               ; preds = %6
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab0, i64 0, i64 %20, i32 0
  %22 = load i8, i8* %21, align 2
  %23 = sext i8 %22 to i32
  br label %24

24:                                               ; preds = %19, %13
  %25 = phi i32 [ %18, %13 ], [ %23, %19 ]
  br label %77

26:                                               ; preds = %3
  %27 = icmp sgt i32 %4, 23
  br i1 %27, label %28, label %48

28:                                               ; preds = %26
  %29 = ashr i32 %4, 3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab1, i64 0, i64 %30, i32 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  call void @Flush_Buffer(i32 noundef %33) #3
  %34 = call i32 @Get_Bits1() #3
  %.not3 = icmp eq i32 %34, 0
  br i1 %.not3, label %41, label %35

35:                                               ; preds = %28
  %36 = sext i32 %29 to i64
  %37 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab1, i64 0, i64 %36, i32 0
  %38 = load i8, i8* %37, align 2
  %39 = sext i8 %38 to i32
  %40 = sub nsw i32 0, %39
  br label %46

41:                                               ; preds = %28
  %42 = sext i32 %29 to i64
  %43 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab1, i64 0, i64 %42, i32 0
  %44 = load i8, i8* %43, align 2
  %45 = sext i8 %44 to i32
  br label %46

46:                                               ; preds = %41, %35
  %47 = phi i32 [ %40, %35 ], [ %45, %41 ]
  br label %77

48:                                               ; preds = %26
  %49 = add nsw i32 %4, -12
  %50 = icmp slt i32 %4, 12
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* @Quiet_Flag, align 4
  %.not2 = icmp eq i32 %52, 0
  br i1 %.not2, label %53, label %57

53:                                               ; preds = %51
  %54 = load i32, i32* @global_MBA, align 4
  %55 = load i32, i32* @global_pic, align 4
  %56 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 noundef %54, i32 noundef %55) #3
  br label %57

57:                                               ; preds = %53, %51
  store i32 1, i32* @Fault_Flag, align 4
  br label %77

58:                                               ; preds = %48
  %59 = sext i32 %49 to i64
  %60 = getelementptr inbounds [12 x %struct.VLCtab], [12 x %struct.VLCtab]* @MVtab2, i64 0, i64 %59, i32 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  call void @Flush_Buffer(i32 noundef %62) #3
  %63 = call i32 @Get_Bits1() #3
  %.not1 = icmp eq i32 %63, 0
  br i1 %.not1, label %70, label %64

64:                                               ; preds = %58
  %65 = sext i32 %49 to i64
  %66 = getelementptr inbounds [12 x %struct.VLCtab], [12 x %struct.VLCtab]* @MVtab2, i64 0, i64 %65, i32 0
  %67 = load i8, i8* %66, align 2
  %68 = sext i8 %67 to i32
  %69 = sub nsw i32 0, %68
  br label %75

70:                                               ; preds = %58
  %71 = sext i32 %49 to i64
  %72 = getelementptr inbounds [12 x %struct.VLCtab], [12 x %struct.VLCtab]* @MVtab2, i64 0, i64 %71, i32 0
  %73 = load i8, i8* %72, align 2
  %74 = sext i8 %73 to i32
  br label %75

75:                                               ; preds = %70, %64
  %76 = phi i32 [ %69, %64 ], [ %74, %70 ]
  br label %77

77:                                               ; preds = %75, %57, %46, %24, %2
  %.0 = phi i32 [ 0, %2 ], [ %25, %24 ], [ %47, %46 ], [ 0, %57 ], [ %76, %75 ]
  ret i32 %.0
}

declare dso_local i32 @Get_Bits1() #1

declare dso_local i32 @Show_Bits(i32 noundef) #1

declare dso_local void @Flush_Buffer(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_dmvector() #0 {
  %1 = call i32 @Get_Bits(i32 noundef 1) #3
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %5, label %2

2:                                                ; preds = %0
  %3 = call i32 @Get_Bits(i32 noundef 1) #3
  %.not1 = icmp eq i32 %3, 0
  %4 = select i1 %.not1, i32 1, i32 -1
  br label %6

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %5, %2
  %.0 = phi i32 [ %4, %2 ], [ 0, %5 ]
  ret i32 %.0
}

declare dso_local i32 @Get_Bits(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_coded_block_pattern() #0 {
  %1 = call i32 @Show_Bits(i32 noundef 9) #3
  %2 = icmp sgt i32 %1, 127
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  %4 = ashr i32 %1, 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @CBPtab0, i64 0, i64 %5, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  call void @Flush_Buffer(i32 noundef %8) #3
  %9 = sext i32 %4 to i64
  %10 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @CBPtab0, i64 0, i64 %9, i32 0
  %11 = load i8, i8* %10, align 2
  %12 = sext i8 %11 to i32
  br label %40

13:                                               ; preds = %0
  %14 = icmp sgt i32 %1, 7
  br i1 %14, label %15, label %25

15:                                               ; preds = %13
  %16 = ashr i32 %1, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [64 x %struct.VLCtab], [64 x %struct.VLCtab]* @CBPtab1, i64 0, i64 %17, i32 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  call void @Flush_Buffer(i32 noundef %20) #3
  %21 = sext i32 %16 to i64
  %22 = getelementptr inbounds [64 x %struct.VLCtab], [64 x %struct.VLCtab]* @CBPtab1, i64 0, i64 %21, i32 0
  %23 = load i8, i8* %22, align 2
  %24 = sext i8 %23 to i32
  br label %40

25:                                               ; preds = %13
  %26 = icmp slt i32 %1, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = load i32, i32* @Quiet_Flag, align 4
  %.not = icmp eq i32 %28, 0
  br i1 %.not, label %29, label %30

29:                                               ; preds = %27
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @str.9, i64 0, i64 0))
  br label %30

30:                                               ; preds = %29, %27
  store i32 1, i32* @Fault_Flag, align 4
  br label %40

31:                                               ; preds = %25
  %32 = sext i32 %1 to i64
  %33 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @CBPtab2, i64 0, i64 %32, i32 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  call void @Flush_Buffer(i32 noundef %35) #3
  %36 = sext i32 %1 to i64
  %37 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @CBPtab2, i64 0, i64 %36, i32 0
  %38 = load i8, i8* %37, align 2
  %39 = sext i8 %38 to i32
  br label %40

40:                                               ; preds = %31, %30, %15, %3
  %.0 = phi i32 [ %12, %3 ], [ %24, %15 ], [ 0, %30 ], [ %39, %31 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_macroblock_address_increment() #0 {
  br label %1

1:                                                ; preds = %15, %0
  %.01 = phi i32 [ 0, %0 ], [ %.1, %15 ]
  %2 = call i32 @Show_Bits(i32 noundef 11) #3
  %3 = icmp slt i32 %2, 24
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  %.not = icmp eq i32 %2, 15
  br i1 %.not, label %14, label %5

5:                                                ; preds = %4
  %6 = icmp eq i32 %2, 8
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %12

8:                                                ; preds = %5
  %9 = load i32, i32* @Quiet_Flag, align 4
  %.not4 = icmp eq i32 %9, 0
  br i1 %.not4, label %10, label %11

10:                                               ; preds = %8
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.10, i64 0, i64 0))
  br label %11

11:                                               ; preds = %10, %8
  store i32 1, i32* @Fault_Flag, align 4
  br label %44

12:                                               ; preds = %7
  %13 = add nsw i32 %.01, 33
  br label %15

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %14, %12
  %.1 = phi i32 [ %13, %12 ], [ %.01, %14 ]
  call void @Flush_Buffer(i32 noundef 11) #3
  br label %1, !llvm.loop !4

16:                                               ; preds = %1
  %17 = icmp sgt i32 %2, 1023
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  call void @Flush_Buffer(i32 noundef 1) #3
  %19 = add nsw i32 %.01, 1
  br label %44

20:                                               ; preds = %16
  %21 = icmp sgt i32 %2, 127
  br i1 %21, label %22, label %33

22:                                               ; preds = %20
  %23 = ashr i32 %2, 6
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @MBAtab1, i64 0, i64 %24, i32 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  call void @Flush_Buffer(i32 noundef %27) #3
  %28 = sext i32 %23 to i64
  %29 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @MBAtab1, i64 0, i64 %28, i32 0
  %30 = load i8, i8* %29, align 2
  %31 = sext i8 %30 to i32
  %32 = add nsw i32 %.01, %31
  br label %44

33:                                               ; preds = %20
  %34 = add nsw i32 %2, -24
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [104 x %struct.VLCtab], [104 x %struct.VLCtab]* @MBAtab2, i64 0, i64 %35, i32 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  call void @Flush_Buffer(i32 noundef %38) #3
  %39 = sext i32 %34 to i64
  %40 = getelementptr inbounds [104 x %struct.VLCtab], [104 x %struct.VLCtab]* @MBAtab2, i64 0, i64 %39, i32 0
  %41 = load i8, i8* %40, align 2
  %42 = sext i8 %41 to i32
  %43 = add nsw i32 %.01, %42
  br label %44

44:                                               ; preds = %33, %22, %18, %11
  %.0 = phi i32 [ 1, %11 ], [ %19, %18 ], [ %32, %22 ], [ %43, %33 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Luma_DC_dct_diff() #0 {
  %1 = call i32 @Show_Bits(i32 noundef 5) #3
  %2 = icmp slt i32 %1, 31
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DClumtab0, i64 0, i64 %4, i32 0
  %6 = load i8, i8* %5, align 2
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DClumtab0, i64 0, i64 %7, i32 1
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  call void @Flush_Buffer(i32 noundef %10) #3
  br label %21

11:                                               ; preds = %0
  %12 = call i32 @Show_Bits(i32 noundef 9) #3
  %13 = add i32 %12, -496
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @DClumtab1, i64 0, i64 %14, i32 0
  %16 = load i8, i8* %15, align 2
  %17 = sext i32 %13 to i64
  %18 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @DClumtab1, i64 0, i64 %17, i32 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  call void @Flush_Buffer(i32 noundef %20) #3
  br label %21

21:                                               ; preds = %11, %3
  %.0.in = phi i8 [ %6, %3 ], [ %16, %11 ]
  %.0 = sext i8 %.0.in to i32
  %22 = icmp eq i8 %.0.in, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %33

24:                                               ; preds = %21
  %25 = call i32 @Get_Bits(i32 noundef %.0) #3
  %26 = add nsw i32 %.0, -1
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %notmask = shl nsw i32 -1, %.0
  %.neg = add nsw i32 %notmask, 1
  %31 = add i32 %.neg, %25
  br label %32

32:                                               ; preds = %30, %24
  %.01 = phi i32 [ %31, %30 ], [ %25, %24 ]
  br label %33

33:                                               ; preds = %32, %23
  %.1 = phi i32 [ 0, %23 ], [ %.01, %32 ]
  ret i32 %.1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Chroma_DC_dct_diff() #0 {
  %1 = call i32 @Show_Bits(i32 noundef 5) #3
  %2 = icmp slt i32 %1, 31
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DCchromtab0, i64 0, i64 %4, i32 0
  %6 = load i8, i8* %5, align 2
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DCchromtab0, i64 0, i64 %7, i32 1
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  call void @Flush_Buffer(i32 noundef %10) #3
  br label %21

11:                                               ; preds = %0
  %12 = call i32 @Show_Bits(i32 noundef 10) #3
  %13 = add i32 %12, -992
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DCchromtab1, i64 0, i64 %14, i32 0
  %16 = load i8, i8* %15, align 2
  %17 = sext i32 %13 to i64
  %18 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DCchromtab1, i64 0, i64 %17, i32 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  call void @Flush_Buffer(i32 noundef %20) #3
  br label %21

21:                                               ; preds = %11, %3
  %.0.in = phi i8 [ %6, %3 ], [ %16, %11 ]
  %.0 = sext i8 %.0.in to i32
  %22 = icmp eq i8 %.0.in, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %33

24:                                               ; preds = %21
  %25 = call i32 @Get_Bits(i32 noundef %.0) #3
  %26 = add nsw i32 %.0, -1
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %notmask = shl nsw i32 -1, %.0
  %.neg = add nsw i32 %notmask, 1
  %31 = add i32 %.neg, %25
  br label %32

32:                                               ; preds = %30, %24
  %.01 = phi i32 [ %31, %30 ], [ %25, %24 ]
  br label %33

33:                                               ; preds = %32, %23
  %.1 = phi i32 [ 0, %23 ], [ %.01, %32 ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
