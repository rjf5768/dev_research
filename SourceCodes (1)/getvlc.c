; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/getvlc.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_macroblock_type() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 17
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @Get_SNR_macroblock_type()
  store i32 %7, i32* %1, align 4
  br label %48

8:                                                ; preds = %0
  %9 = load i32, i32* @picture_coding_type, align 4
  switch i32 %9, label %45 [
    i32 1, label %10
    i32 2, label %21
    i32 3, label %32
    i32 4, label %43
  ]

10:                                               ; preds = %8
  %11 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %12 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %11, i32 0, i32 20
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @Get_I_Spatial_macroblock_type()
  br label %19

17:                                               ; preds = %10
  %18 = call i32 @Get_I_macroblock_type()
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %1, align 4
  br label %47

21:                                               ; preds = %8
  %22 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %23 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %22, i32 0, i32 20
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @Get_P_Spatial_macroblock_type()
  br label %30

28:                                               ; preds = %21
  %29 = call i32 @Get_P_macroblock_type()
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %1, align 4
  br label %47

32:                                               ; preds = %8
  %33 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %34 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %33, i32 0, i32 20
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 @Get_B_Spatial_macroblock_type()
  br label %41

39:                                               ; preds = %32
  %40 = call i32 @Get_B_macroblock_type()
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %1, align 4
  br label %47

43:                                               ; preds = %8
  %44 = call i32 @Get_D_macroblock_type()
  store i32 %44, i32* %1, align 4
  br label %47

45:                                               ; preds = %8
  %46 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %43, %41, %30, %19
  br label %48

48:                                               ; preds = %47, %6
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_SNR_macroblock_type() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @Show_Bits(i32 noundef 3)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i32, i32* @Quiet_Flag, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %6
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %1, align 4
  br label %25

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @SNRMBtab, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  call void @Flush_Buffer(i32 noundef %18)
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @SNRMBtab, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 2
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %12, %11
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_I_Spatial_macroblock_type() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @Show_Bits(i32 noundef 4)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i32, i32* @Quiet_Flag, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %6
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %1, align 4
  br label %25

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spIMBtab, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  call void @Flush_Buffer(i32 noundef %18)
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spIMBtab, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 2
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %12, %11
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_I_macroblock_type() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @Get_Bits1()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %15

5:                                                ; preds = %0
  %6 = call i32 @Get_Bits1()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* @Quiet_Flag, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %8
  store i32 1, i32* @Fault_Flag, align 4
  br label %14

14:                                               ; preds = %13, %5
  store i32 17, i32* %1, align 4
  br label %15

15:                                               ; preds = %14, %4
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_P_Spatial_macroblock_type() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @Show_Bits(i32 noundef 7)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 2
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i32, i32* @Quiet_Flag, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %6
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %1, align 4
  br label %43

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = icmp sge i32 %13, 16
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = ashr i32 %16, 3
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spPMBtab0, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %20, i32 0, i32 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  call void @Flush_Buffer(i32 noundef %23)
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spPMBtab0, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %26, i32 0, i32 0
  %28 = load i8, i8* %27, align 2
  %29 = sext i8 %28 to i32
  store i32 %29, i32* %1, align 4
  br label %43

30:                                               ; preds = %12
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spPMBtab1, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %33, i32 0, i32 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  call void @Flush_Buffer(i32 noundef %36)
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @spPMBtab1, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %39, i32 0, i32 0
  %41 = load i8, i8* %40, align 2
  %42 = sext i8 %41 to i32
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %30, %15, %11
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_P_macroblock_type() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @Show_Bits(i32 noundef 6)
  store i32 %3, i32* %2, align 4
  %4 = icmp sge i32 %3, 8
  br i1 %4, label %5, label %20

5:                                                ; preds = %0
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, 3
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @PMBtab0, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %10, i32 0, i32 1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  call void @Flush_Buffer(i32 noundef %13)
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @PMBtab0, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 2
  %19 = sext i8 %18 to i32
  store i32 %19, i32* %1, align 4
  br label %42

20:                                               ; preds = %0
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* @Quiet_Flag, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %1, align 4
  br label %42

29:                                               ; preds = %20
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @PMBtab1, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %32, i32 0, i32 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  call void @Flush_Buffer(i32 noundef %35)
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @PMBtab1, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 2
  %41 = sext i8 %40 to i32
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %29, %28, %5
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_B_Spatial_macroblock_type() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.VLCtab*, align 8
  %4 = call i32 @Show_Bits(i32 noundef 9)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sge i32 %5, 64
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = ashr i32 %8, 5
  %10 = sub nsw i32 %9, 2
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [14 x %struct.VLCtab], [14 x %struct.VLCtab]* @spBMBtab0, i64 0, i64 %11
  store %struct.VLCtab* %12, %struct.VLCtab** %3, align 8
  br label %38

13:                                               ; preds = %0
  %14 = load i32, i32* %2, align 4
  %15 = icmp sge i32 %14, 16
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = ashr i32 %17, 2
  %19 = sub nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [12 x %struct.VLCtab], [12 x %struct.VLCtab]* @spBMBtab1, i64 0, i64 %20
  store %struct.VLCtab* %21, %struct.VLCtab** %3, align 8
  br label %37

22:                                               ; preds = %13
  %23 = load i32, i32* %2, align 4
  %24 = icmp sge i32 %23, 8
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = sub nsw i32 %26, 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @spBMBtab2, i64 0, i64 %28
  store %struct.VLCtab* %29, %struct.VLCtab** %3, align 8
  br label %36

30:                                               ; preds = %22
  %31 = load i32, i32* @Quiet_Flag, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %30
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %1, align 4
  br label %47

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %16
  br label %38

38:                                               ; preds = %37, %7
  %39 = load %struct.VLCtab*, %struct.VLCtab** %3, align 8
  %40 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %39, i32 0, i32 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  call void @Flush_Buffer(i32 noundef %42)
  %43 = load %struct.VLCtab*, %struct.VLCtab** %3, align 8
  %44 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %43, i32 0, i32 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %38, %35
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_B_macroblock_type() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @Show_Bits(i32 noundef 6)
  store i32 %3, i32* %2, align 4
  %4 = icmp sge i32 %3, 8
  br i1 %4, label %5, label %20

5:                                                ; preds = %0
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, 2
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @BMBtab0, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %10, i32 0, i32 1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  call void @Flush_Buffer(i32 noundef %13)
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @BMBtab0, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 2
  %19 = sext i8 %18 to i32
  store i32 %19, i32* %1, align 4
  br label %42

20:                                               ; preds = %0
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* @Quiet_Flag, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %1, align 4
  br label %42

29:                                               ; preds = %20
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @BMBtab1, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %32, i32 0, i32 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  call void @Flush_Buffer(i32 noundef %35)
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @BMBtab1, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 2
  %41 = sext i8 %40 to i32
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %29, %28, %5
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Get_D_macroblock_type() #0 {
  %1 = call i32 @Get_Bits1()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @Quiet_Flag, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %3
  store i32 1, i32* @Fault_Flag, align 4
  br label %9

9:                                                ; preds = %8, %0
  ret i32 1
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_motion_code() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @Get_Bits1()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %106

6:                                                ; preds = %0
  %7 = call i32 @Show_Bits(i32 noundef 9)
  store i32 %7, i32* %2, align 4
  %8 = icmp sge i32 %7, 64
  br i1 %8, label %9, label %37

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = ashr i32 %10, 6
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab0, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %14, i32 0, i32 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  call void @Flush_Buffer(i32 noundef %17)
  %18 = call i32 @Get_Bits1()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %9
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab0, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 2
  %26 = sext i8 %25 to i32
  %27 = sub nsw i32 0, %26
  br label %35

28:                                               ; preds = %9
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab0, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 2
  %34 = sext i8 %33 to i32
  br label %35

35:                                               ; preds = %28, %20
  %36 = phi i32 [ %27, %20 ], [ %34, %28 ]
  store i32 %36, i32* %1, align 4
  br label %106

37:                                               ; preds = %6
  %38 = load i32, i32* %2, align 4
  %39 = icmp sge i32 %38, 24
  br i1 %39, label %40, label %68

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = ashr i32 %41, 3
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab1, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %45, i32 0, i32 1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  call void @Flush_Buffer(i32 noundef %48)
  %49 = call i32 @Get_Bits1()
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %40
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab1, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %54, i32 0, i32 0
  %56 = load i8, i8* %55, align 2
  %57 = sext i8 %56 to i32
  %58 = sub nsw i32 0, %57
  br label %66

59:                                               ; preds = %40
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @MVtab1, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %62, i32 0, i32 0
  %64 = load i8, i8* %63, align 2
  %65 = sext i8 %64 to i32
  br label %66

66:                                               ; preds = %59, %51
  %67 = phi i32 [ %58, %51 ], [ %65, %59 ]
  store i32 %67, i32* %1, align 4
  br label %106

68:                                               ; preds = %37
  %69 = load i32, i32* %2, align 4
  %70 = sub nsw i32 %69, 12
  store i32 %70, i32* %2, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i32, i32* @Quiet_Flag, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @global_MBA, align 4
  %77 = load i32, i32* @global_pic, align 4
  %78 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 noundef %76, i32 noundef %77)
  br label %79

79:                                               ; preds = %75, %72
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %1, align 4
  br label %106

80:                                               ; preds = %68
  %81 = load i32, i32* %2, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [12 x %struct.VLCtab], [12 x %struct.VLCtab]* @MVtab2, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %83, i32 0, i32 1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  call void @Flush_Buffer(i32 noundef %86)
  %87 = call i32 @Get_Bits1()
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %80
  %90 = load i32, i32* %2, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [12 x %struct.VLCtab], [12 x %struct.VLCtab]* @MVtab2, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %92, i32 0, i32 0
  %94 = load i8, i8* %93, align 2
  %95 = sext i8 %94 to i32
  %96 = sub nsw i32 0, %95
  br label %104

97:                                               ; preds = %80
  %98 = load i32, i32* %2, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [12 x %struct.VLCtab], [12 x %struct.VLCtab]* @MVtab2, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %100, i32 0, i32 0
  %102 = load i8, i8* %101, align 2
  %103 = sext i8 %102 to i32
  br label %104

104:                                              ; preds = %97, %89
  %105 = phi i32 [ %96, %89 ], [ %103, %97 ]
  store i32 %105, i32* %1, align 4
  br label %106

106:                                              ; preds = %104, %79, %66, %35, %5
  %107 = load i32, i32* %1, align 4
  ret i32 %107
}

declare dso_local i32 @Get_Bits1() #1

declare dso_local i32 @Show_Bits(i32 noundef) #1

declare dso_local void @Flush_Buffer(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_dmvector() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @Get_Bits(i32 noundef 1)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = call i32 @Get_Bits(i32 noundef 1)
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i32 -1, i32 1
  store i32 %8, i32* %1, align 4
  br label %10

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %9, %4
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

declare dso_local i32 @Get_Bits(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_coded_block_pattern() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @Show_Bits(i32 noundef 9)
  store i32 %3, i32* %2, align 4
  %4 = icmp sge i32 %3, 128
  br i1 %4, label %5, label %20

5:                                                ; preds = %0
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, 4
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @CBPtab0, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %10, i32 0, i32 1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  call void @Flush_Buffer(i32 noundef %13)
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @CBPtab0, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 2
  %19 = sext i8 %18 to i32
  store i32 %19, i32* %1, align 4
  br label %60

20:                                               ; preds = %0
  %21 = load i32, i32* %2, align 4
  %22 = icmp sge i32 %21, 8
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = ashr i32 %24, 1
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [64 x %struct.VLCtab], [64 x %struct.VLCtab]* @CBPtab1, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %28, i32 0, i32 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  call void @Flush_Buffer(i32 noundef %31)
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [64 x %struct.VLCtab], [64 x %struct.VLCtab]* @CBPtab1, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 2
  %37 = sext i8 %36 to i32
  store i32 %37, i32* %1, align 4
  br label %60

38:                                               ; preds = %20
  %39 = load i32, i32* %2, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* @Quiet_Flag, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  store i32 1, i32* @Fault_Flag, align 4
  store i32 0, i32* %1, align 4
  br label %60

47:                                               ; preds = %38
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @CBPtab2, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %50, i32 0, i32 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  call void @Flush_Buffer(i32 noundef %53)
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x %struct.VLCtab], [8 x %struct.VLCtab]* @CBPtab2, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %56, i32 0, i32 0
  %58 = load i8, i8* %57, align 2
  %59 = sext i8 %58 to i32
  store i32 %59, i32* %1, align 4
  br label %60

60:                                               ; preds = %47, %46, %23, %5
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_macroblock_address_increment() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %24, %0
  %5 = call i32 @Show_Bits(i32 noundef 11)
  store i32 %5, i32* %2, align 4
  %6 = icmp slt i32 %5, 24
  br i1 %6, label %7, label %25

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 15
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 33
  store i32 %15, i32* %3, align 4
  br label %22

16:                                               ; preds = %10
  %17 = load i32, i32* @Quiet_Flag, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  store i32 1, i32* @Fault_Flag, align 4
  store i32 1, i32* %1, align 4
  br label %68

22:                                               ; preds = %13
  br label %24

23:                                               ; preds = %7
  br label %24

24:                                               ; preds = %23, %22
  call void @Flush_Buffer(i32 noundef 11)
  br label %4, !llvm.loop !4

25:                                               ; preds = %4
  %26 = load i32, i32* %2, align 4
  %27 = icmp sge i32 %26, 1024
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  call void @Flush_Buffer(i32 noundef 1)
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %68

31:                                               ; preds = %25
  %32 = load i32, i32* %2, align 4
  %33 = icmp sge i32 %32, 128
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load i32, i32* %2, align 4
  %36 = ashr i32 %35, 6
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @MBAtab1, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %39, i32 0, i32 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  call void @Flush_Buffer(i32 noundef %42)
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @MBAtab1, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %46, i32 0, i32 0
  %48 = load i8, i8* %47, align 2
  %49 = sext i8 %48 to i32
  %50 = add nsw i32 %43, %49
  store i32 %50, i32* %1, align 4
  br label %68

51:                                               ; preds = %31
  %52 = load i32, i32* %2, align 4
  %53 = sub nsw i32 %52, 24
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [104 x %struct.VLCtab], [104 x %struct.VLCtab]* @MBAtab2, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %56, i32 0, i32 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  call void @Flush_Buffer(i32 noundef %59)
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %2, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [104 x %struct.VLCtab], [104 x %struct.VLCtab]* @MBAtab2, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %63, i32 0, i32 0
  %65 = load i8, i8* %64, align 2
  %66 = sext i8 %65 to i32
  %67 = add nsw i32 %60, %66
  store i32 %67, i32* %1, align 4
  br label %68

68:                                               ; preds = %51, %34, %28, %21
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Luma_DC_dct_diff() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @Show_Bits(i32 noundef 5)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 31
  br i1 %6, label %7, label %20

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DClumtab0, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 2
  %13 = sext i8 %12 to i32
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DClumtab0, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  call void @Flush_Buffer(i32 noundef %19)
  br label %35

20:                                               ; preds = %0
  %21 = call i32 @Show_Bits(i32 noundef 9)
  %22 = sub i32 %21, 496
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @DClumtab1, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %25, i32 0, i32 0
  %27 = load i8, i8* %26, align 2
  %28 = sext i8 %27 to i32
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [16 x %struct.VLCtab], [16 x %struct.VLCtab]* @DClumtab1, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  call void @Flush_Buffer(i32 noundef %34)
  br label %35

35:                                               ; preds = %20, %7
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %55

39:                                               ; preds = %35
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @Get_Bits(i32 noundef %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %2, align 4
  %44 = sub nsw i32 %43, 1
  %45 = shl i32 1, %44
  %46 = and i32 %42, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load i32, i32* %2, align 4
  %50 = shl i32 1, %49
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* %3, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %48, %39
  br label %55

55:                                               ; preds = %54, %38
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Chroma_DC_dct_diff() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @Show_Bits(i32 noundef 5)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 31
  br i1 %6, label %7, label %20

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DCchromtab0, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 2
  %13 = sext i8 %12 to i32
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DCchromtab0, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  call void @Flush_Buffer(i32 noundef %19)
  br label %35

20:                                               ; preds = %0
  %21 = call i32 @Show_Bits(i32 noundef 10)
  %22 = sub i32 %21, 992
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DCchromtab1, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %25, i32 0, i32 0
  %27 = load i8, i8* %26, align 2
  %28 = sext i8 %27 to i32
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32 x %struct.VLCtab], [32 x %struct.VLCtab]* @DCchromtab1, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.VLCtab, %struct.VLCtab* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  call void @Flush_Buffer(i32 noundef %34)
  br label %35

35:                                               ; preds = %20, %7
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %55

39:                                               ; preds = %35
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @Get_Bits(i32 noundef %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %2, align 4
  %44 = sub nsw i32 %43, 1
  %45 = shl i32 1, %44
  %46 = and i32 %42, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load i32, i32* %2, align 4
  %50 = shl i32 1, %49
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* %3, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %48, %39
  br label %55

55:                                               ; preds = %54, %38
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
