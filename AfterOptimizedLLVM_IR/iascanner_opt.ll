; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/SPASS/iascanner.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/SPASS/iascanner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.yy_buffer_state = type { %struct._IO_FILE*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%union.yystype = type { i8* }

@ia_in = dso_local global %struct._IO_FILE* null, align 8
@ia_out = dso_local global %struct._IO_FILE* null, align 8
@yy_init = internal global i32 1, align 4
@yy_start = internal global i32 0, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@yy_current_buffer = internal global %struct.yy_buffer_state* null, align 8
@yy_c_buf_p = internal global i8* null, align 8
@yy_hold_char = internal global i8 0, align 1
@yy_nxt = internal constant [60 x [24 x i16]] [[24 x i16] zeroinitializer, [24 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 9, i16 11, i16 12, i16 13, i16 9, i16 9, i16 14, i16 15, i16 16, i16 9, i16 9, i16 9, i16 17, i16 9, i16 9, i16 9], [24 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 9, i16 11, i16 12, i16 13, i16 9, i16 9, i16 14, i16 15, i16 16, i16 9, i16 9, i16 9, i16 17, i16 9, i16 9, i16 9], [24 x i16] [i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3], [24 x i16] [i16 3, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4, i16 -4], [24 x i16] [i16 3, i16 -5, i16 18, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5, i16 -5], [24 x i16] [i16 3, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6, i16 -6], [24 x i16] [i16 3, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7], [24 x i16] [i16 3, i16 -8, i16 -8, i16 -8, i16 -8, i16 19, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -9, i16 -9, i16 -9, i16 -9, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -10, i16 -10, i16 -10, i16 -10, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 21, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -11, i16 -11, i16 -11, i16 -11, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 22, i16 20, i16 20, i16 20, i16 20, i16 20, i16 23], [24 x i16] [i16 3, i16 -12, i16 -12, i16 -12, i16 -12, i16 20, i16 20, i16 24, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 25, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -13, i16 -13, i16 -13, i16 -13, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 26, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -14, i16 -14, i16 -14, i16 -14, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 27, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -15, i16 -15, i16 -15, i16 -15, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 28, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -16, i16 -16, i16 -16, i16 -16, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 29, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -17, i16 -17, i16 -17, i16 -17, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 30, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -18, i16 18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18, i16 -18], [24 x i16] [i16 3, i16 -19, i16 -19, i16 -19, i16 -19, i16 19, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -20, i16 -20, i16 -20, i16 -20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -21, i16 -21, i16 -21, i16 -21, i16 20, i16 20, i16 20, i16 31, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -22, i16 -22, i16 -22, i16 -22, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 32, i16 20, i16 20], [24 x i16] [i16 3, i16 -23, i16 -23, i16 -23, i16 -23, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 33, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -24, i16 -24, i16 -24, i16 -24, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 34, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -25, i16 -25, i16 -25, i16 -25, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 35, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -26, i16 -26, i16 -26, i16 -26, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 36, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -27, i16 -27, i16 -27, i16 -27, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 37, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -28, i16 -28, i16 -28, i16 -28, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -29, i16 -29, i16 -29, i16 -29, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 38, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -30, i16 -30, i16 -30, i16 -30, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 39, i16 20, i16 20], [24 x i16] [i16 3, i16 -31, i16 -31, i16 -31, i16 -31, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -32, i16 -32, i16 -32, i16 -32, i16 20, i16 20, i16 40, i16 20, i16 20, i16 20, i16 41, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -33, i16 -33, i16 -33, i16 -33, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 42, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -34, i16 -34, i16 -34, i16 -34, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 43, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -35, i16 -35, i16 -35, i16 -35, i16 20, i16 20, i16 44, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -36, i16 -36, i16 -36, i16 -36, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 45, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -37, i16 -37, i16 -37, i16 -37, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -38, i16 -38, i16 -38, i16 -38, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 46, i16 20], [24 x i16] [i16 3, i16 -39, i16 -39, i16 -39, i16 -39, i16 20, i16 20, i16 20, i16 20, i16 47, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -40, i16 -40, i16 -40, i16 -40, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 48, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -41, i16 -41, i16 -41, i16 -41, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 49, i16 20], [24 x i16] [i16 3, i16 -42, i16 -42, i16 -42, i16 -42, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 50, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -43, i16 -43, i16 -43, i16 -43, i16 20, i16 20, i16 20, i16 20, i16 51, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -44, i16 -44, i16 -44, i16 -44, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 52, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -45, i16 -45, i16 -45, i16 -45, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 53, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -46, i16 -46, i16 -46, i16 -46, i16 20, i16 20, i16 20, i16 20, i16 54, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -47, i16 -47, i16 -47, i16 -47, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -48, i16 -48, i16 -48, i16 -48, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -49, i16 -49, i16 -49, i16 -49, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -50, i16 -50, i16 -50, i16 -50, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 55, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -51, i16 -51, i16 -51, i16 -51, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -52, i16 -52, i16 -52, i16 -52, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 56, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -53, i16 -53, i16 -53, i16 -53, i16 20, i16 20, i16 20, i16 20, i16 57, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -54, i16 -54, i16 -54, i16 -54, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -55, i16 -55, i16 -55, i16 -55, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -56, i16 -56, i16 -56, i16 -56, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -57, i16 -57, i16 -57, i16 -57, i16 20, i16 20, i16 20, i16 58, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 59, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -58, i16 -58, i16 -58, i16 -58, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20], [24 x i16] [i16 3, i16 -59, i16 -59, i16 -59, i16 -59, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20, i16 20]], align 16
@yy_ec = internal constant [256 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 4, i32 4, i32 1, i32 1, i32 4, i32 4, i32 4, i32 1, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 4, i32 1, i32 4, i32 1, i32 6, i32 1, i32 7, i32 6, i32 6, i32 8, i32 9, i32 10, i32 6, i32 6, i32 11, i32 6, i32 6, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 6, i32 23, i32 6, i32 6, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@yy_accept = internal constant [60 x i16] [i16 0, i16 0, i16 0, i16 20, i16 18, i16 15, i16 16, i16 17, i16 13, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 15, i16 13, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 10, i16 14, i16 14, i16 1, i16 14, i16 14, i16 14, i16 14, i16 14, i16 9, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 11, i16 2, i16 3, i16 14, i16 5, i16 14, i16 14, i16 12, i16 4, i16 6, i16 14, i16 7, i16 8], align 16
@ia_text = dso_local global i8* null, align 8
@ia_leng = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"\0A Number too big in line %d.\0A\00", align 1
@dfg_LINENUMBER = external dso_local global i32, align 4
@ia_lval = external dso_local global %union.yystype, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"\0A Illegal character '\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\\x%x\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"' in line %d.\0A\00", align 1
@yy_n_chars = internal global i32 0, align 4
@yy_did_buffer_switch_on_eof = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"fatal flex scanner internal error--no action found\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"out of dynamic memory in yy_create_buffer()\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"out of dynamic memory in yy_scan_buffer()\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"out of dynamic memory in yy_scan_bytes()\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"bad buffer in yy_scan_bytes()\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [56 x i8] c"fatal flex scanner internal error--end of buffer missed\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"fatal error - scanner input buffer overflow\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"input in flex scanner failed\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ia_lex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @yy_init, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %0
  store i32 0, i32* @yy_init, align 4
  %12 = load i32, i32* @yy_start, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store i32 1, i32* @yy_start, align 4
  br label %15

15:                                               ; preds = %14, %11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %17 = icmp ne %struct._IO_FILE* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %19, %struct._IO_FILE** @ia_in, align 8
  br label %20

20:                                               ; preds = %18, %15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_out, align 8
  %22 = icmp ne %struct._IO_FILE* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %24, %struct._IO_FILE** @ia_out, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %27 = icmp ne %struct.yy_buffer_state* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %30 = call %struct.yy_buffer_state* @ia__create_buffer(%struct._IO_FILE* noundef %29, i32 noundef 16384)
  store %struct.yy_buffer_state* %30, %struct.yy_buffer_state** @yy_current_buffer, align 8
  br label %31

31:                                               ; preds = %28, %25
  call void @ia__load_buffer_state()
  br label %32

32:                                               ; preds = %31, %0
  br label %33

33:                                               ; preds = %32, %242
  %34 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %34, i8** %3, align 8
  %35 = load i8, i8* @yy_hold_char, align 1
  %36 = load i8*, i8** %3, align 8
  store i8 %35, i8* %36, align 1
  %37 = load i8*, i8** %3, align 8
  store i8* %37, i8** %4, align 8
  %38 = load i32, i32* @yy_start, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %219, %203, %33
  br label %40

40:                                               ; preds = %55, %39
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [60 x [24 x i16]], [60 x [24 x i16]]* @yy_nxt, i64 0, i64 %42
  %44 = load i8*, i8** %3, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [256 x i32], [256 x i32]* @yy_ec, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [24 x i16], [24 x i16]* %43, i64 0, i64 %50
  %52 = load i16, i16* %51, align 2
  %53 = sext i16 %52 to i32
  store i32 %53, i32* %2, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %40
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %3, align 8
  br label %40, !llvm.loop !4

58:                                               ; preds = %40
  %59 = load i32, i32* %2, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %228, %207, %58
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [60 x i16], [60 x i16]* @yy_accept, i64 0, i64 %63
  %65 = load i16, i16* %64, align 2
  %66 = sext i16 %65 to i32
  store i32 %66, i32* %5, align 4
  %67 = load i8*, i8** %4, align 8
  store i8* %67, i8** @ia_text, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* @ia_leng, align 4
  %74 = load i8*, i8** %3, align 8
  %75 = load i8, i8* %74, align 1
  store i8 %75, i8* @yy_hold_char, align 1
  %76 = load i8*, i8** %3, align 8
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %3, align 8
  store i8* %77, i8** @yy_c_buf_p, align 8
  br label %78

78:                                               ; preds = %211, %61
  %79 = load i32, i32* %5, align 4
  switch i32 %79, label %241 [
    i32 1, label %80
    i32 2, label %81
    i32 3, label %82
    i32 4, label %83
    i32 5, label %84
    i32 6, label %85
    i32 7, label %86
    i32 8, label %87
    i32 9, label %88
    i32 10, label %89
    i32 11, label %90
    i32 12, label %91
    i32 13, label %92
    i32 14, label %109
    i32 15, label %116
    i32 16, label %117
    i32 17, label %120
    i32 18, label %125
    i32 19, label %152
    i32 21, label %158
    i32 20, label %159
  ]

80:                                               ; preds = %78
  store i32 258, i32* %1, align 4
  br label %243

81:                                               ; preds = %78
  store i32 259, i32* %1, align 4
  br label %243

82:                                               ; preds = %78
  store i32 260, i32* %1, align 4
  br label %243

83:                                               ; preds = %78
  store i32 261, i32* %1, align 4
  br label %243

84:                                               ; preds = %78
  store i32 262, i32* %1, align 4
  br label %243

85:                                               ; preds = %78
  store i32 263, i32* %1, align 4
  br label %243

86:                                               ; preds = %78
  store i32 264, i32* %1, align 4
  br label %243

87:                                               ; preds = %78
  store i32 265, i32* %1, align 4
  br label %243

88:                                               ; preds = %78
  store i32 266, i32* %1, align 4
  br label %243

89:                                               ; preds = %78
  store i32 267, i32* %1, align 4
  br label %243

90:                                               ; preds = %78
  store i32 269, i32* %1, align 4
  br label %243

91:                                               ; preds = %78
  store i32 268, i32* %1, align 4
  br label %243

92:                                               ; preds = %78
  %93 = call i32* @__errno_location() #5
  store i32 0, i32* %93, align 4
  %94 = load i8*, i8** @ia_text, align 8
  %95 = call i64 @strtoul(i8* noundef %94, i8** noundef null, i32 noundef 10) #6
  store i64 %95, i64* %6, align 8
  %96 = call i32* @__errno_location() #5
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %92
  %100 = load i64, i64* %6, align 8
  %101 = icmp ugt i64 %100, 2147483647
  br i1 %101, label %102, label %106

102:                                              ; preds = %99, %92
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %104 = call i32 @fflush(%struct._IO_FILE* noundef %103)
  %105 = load i32, i32* @dfg_LINENUMBER, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef %105)
  call void @misc_Error()
  br label %106

106:                                              ; preds = %102, %99
  %107 = load i64, i64* %6, align 8
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* bitcast (%union.yystype* @ia_lval to i32*), align 8
  store i32 270, i32* %1, align 4
  br label %243

109:                                              ; preds = %78
  %110 = load i32, i32* @ia_leng, align 4
  %111 = add nsw i32 %110, 1
  %112 = call i8* @memory_Malloc(i32 noundef %111)
  store i8* %112, i8** getelementptr inbounds (%union.yystype, %union.yystype* @ia_lval, i32 0, i32 0), align 8
  %113 = load i8*, i8** getelementptr inbounds (%union.yystype, %union.yystype* @ia_lval, i32 0, i32 0), align 8
  %114 = load i8*, i8** @ia_text, align 8
  %115 = call i8* @strcpy(i8* noundef %113, i8* noundef %114) #6
  store i32 271, i32* %1, align 4
  br label %243

116:                                              ; preds = %78
  br label %242

117:                                              ; preds = %78
  %118 = load i32, i32* @dfg_LINENUMBER, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* @dfg_LINENUMBER, align 4
  br label %242

120:                                              ; preds = %78
  %121 = load i8*, i8** @ia_text, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  store i32 %124, i32* %1, align 4
  br label %243

125:                                              ; preds = %78
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %127 = call i32 @fflush(%struct._IO_FILE* noundef %126)
  call void (i8*, ...) @misc_UserErrorReport(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %128 = call i16** @__ctype_b_loc() #5
  %129 = load i16*, i16** %128, align 8
  %130 = load i8*, i8** @ia_text, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i16, i16* %129, i64 %134
  %136 = load i16, i16* %135, align 2
  %137 = zext i16 %136 to i32
  %138 = and i32 %137, 16384
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %125
  %141 = load i8*, i8** @ia_text, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  call void (i8*, ...) @misc_UserErrorReport(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 noundef %144)
  br label %150

145:                                              ; preds = %125
  %146 = load i8*, i8** @ia_text, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  call void (i8*, ...) @misc_UserErrorReport(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef %149)
  br label %150

150:                                              ; preds = %145, %140
  %151 = load i32, i32* @dfg_LINENUMBER, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 noundef %151)
  call void @misc_Error()
  br label %242

152:                                              ; preds = %78
  %153 = load i8*, i8** @ia_text, align 8
  %154 = load i32, i32* @ia_leng, align 4
  %155 = sext i32 %154 to i64
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_out, align 8
  %157 = call i64 @fwrite(i8* noundef %153, i64 noundef %155, i64 noundef 1, %struct._IO_FILE* noundef %156)
  br label %242

158:                                              ; preds = %78
  store i32 0, i32* %1, align 4
  br label %243

159:                                              ; preds = %78
  %160 = load i8*, i8** %3, align 8
  %161 = load i8*, i8** @ia_text, align 8
  %162 = ptrtoint i8* %160 to i64
  %163 = ptrtoint i8* %161 to i64
  %164 = sub i64 %162, %163
  %165 = trunc i64 %164 to i32
  %166 = sub nsw i32 %165, 1
  store i32 %166, i32* %7, align 4
  %167 = load i8, i8* @yy_hold_char, align 1
  %168 = load i8*, i8** %3, align 8
  store i8 %167, i8* %168, align 1
  %169 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %170 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %169, i32 0, i32 9
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %159
  %174 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %175 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* @yy_n_chars, align 4
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %178 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %179 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %178, i32 0, i32 0
  store %struct._IO_FILE* %177, %struct._IO_FILE** %179, align 8
  %180 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %181 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %180, i32 0, i32 9
  store i32 1, i32* %181, align 8
  br label %182

182:                                              ; preds = %173, %159
  %183 = load i8*, i8** @yy_c_buf_p, align 8
  %184 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %185 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = load i32, i32* @yy_n_chars, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = icmp ule i8* %183, %189
  br i1 %190, label %191, label %209

191:                                              ; preds = %182
  %192 = load i8*, i8** @ia_text, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  store i8* %195, i8** @yy_c_buf_p, align 8
  %196 = call i32 @yy_get_previous_state()
  store i32 %196, i32* %2, align 4
  %197 = load i32, i32* %2, align 4
  %198 = call i32 @yy_try_NUL_trans(i32 noundef %197)
  store i32 %198, i32* %8, align 4
  %199 = load i8*, i8** @ia_text, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 0
  store i8* %200, i8** %4, align 8
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %191
  %204 = load i8*, i8** @yy_c_buf_p, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** @yy_c_buf_p, align 8
  store i8* %205, i8** %3, align 8
  %206 = load i32, i32* %8, align 4
  store i32 %206, i32* %2, align 4
  br label %39

207:                                              ; preds = %191
  %208 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %208, i8** %3, align 8
  br label %61

209:                                              ; preds = %182
  %210 = call i32 @yy_get_next_buffer()
  switch i32 %210, label %239 [
    i32 1, label %211
    i32 0, label %219
    i32 2, label %228
  ]

211:                                              ; preds = %209
  store i32 0, i32* @yy_did_buffer_switch_on_eof, align 4
  %212 = load i8*, i8** @ia_text, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 0
  store i8* %213, i8** @yy_c_buf_p, align 8
  %214 = load i32, i32* @yy_start, align 4
  %215 = sub nsw i32 %214, 1
  %216 = sdiv i32 %215, 2
  %217 = add nsw i32 20, %216
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %5, align 4
  br label %78

219:                                              ; preds = %209
  %220 = load i8*, i8** @ia_text, align 8
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  store i8* %223, i8** @yy_c_buf_p, align 8
  %224 = call i32 @yy_get_previous_state()
  store i32 %224, i32* %2, align 4
  %225 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %225, i8** %3, align 8
  %226 = load i8*, i8** @ia_text, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 0
  store i8* %227, i8** %4, align 8
  br label %39

228:                                              ; preds = %209
  %229 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %230 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  %232 = load i32, i32* @yy_n_chars, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %231, i64 %233
  store i8* %234, i8** @yy_c_buf_p, align 8
  %235 = call i32 @yy_get_previous_state()
  store i32 %235, i32* %2, align 4
  %236 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %236, i8** %3, align 8
  %237 = load i8*, i8** @ia_text, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 0
  store i8* %238, i8** %4, align 8
  br label %61

239:                                              ; preds = %209
  br label %240

240:                                              ; preds = %239
  br label %242

241:                                              ; preds = %78
  call void @yy_fatal_error(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  br label %242

242:                                              ; preds = %241, %240, %152, %150, %117, %116
  br label %33

243:                                              ; preds = %158, %120, %109, %106, %91, %90, %89, %88, %87, %86, %85, %84, %83, %82, %81, %80
  %244 = load i32, i32* %1, align 4
  ret i32 %244
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.yy_buffer_state* @ia__create_buffer(%struct._IO_FILE* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.yy_buffer_state*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i8* @yy_flex_alloc(i32 noundef 56)
  %7 = bitcast i8* %6 to %struct.yy_buffer_state*
  store %struct.yy_buffer_state* %7, %struct.yy_buffer_state** %5, align 8
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %9 = icmp ne %struct.yy_buffer_state* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  call void @yy_fatal_error(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %11

11:                                               ; preds = %10, %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %14 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %16 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = add i32 %17, 2
  %19 = call i8* @yy_flex_alloc(i32 noundef %18)
  %20 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %21 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %23 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %11
  call void @yy_fatal_error(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %27

27:                                               ; preds = %26, %11
  %28 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %29 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %28, i32 0, i32 5
  store i32 1, i32* %29, align 8
  %30 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @ia__init_buffer(%struct.yy_buffer_state* noundef %30, %struct._IO_FILE* noundef %31)
  %32 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  ret %struct.yy_buffer_state* %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ia__load_buffer_state() #0 {
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %2 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1, i32 0, i32 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @yy_n_chars, align 4
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %5 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i32 0, i32 2
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** @yy_c_buf_p, align 8
  store i8* %6, i8** @ia_text, align 8
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %8 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %7, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  store %struct._IO_FILE* %9, %struct._IO_FILE** @ia_in, align 8
  %10 = load i8*, i8** @yy_c_buf_p, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* @yy_hold_char, align 1
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #1

; Function Attrs: nounwind
declare dso_local i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #3

declare dso_local void @misc_UserErrorReport(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define internal void @misc_Error() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 @fflush(%struct._IO_FILE* noundef %1)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = call i32 @fflush(%struct._IO_FILE* noundef %3)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 @fflush(%struct._IO_FILE* noundef %5)
  call void @exit(i32 noundef 1) #7
  unreachable
}

declare dso_local i8* @memory_Malloc(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #1

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @yy_get_previous_state() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @yy_start, align 4
  store i32 %3, i32* %1, align 4
  %4 = load i8*, i8** @ia_text, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  store i8* %5, i8** %2, align 8
  br label %6

6:                                                ; preds = %32, %0
  %7 = load i8*, i8** %2, align 8
  %8 = load i8*, i8** @yy_c_buf_p, align 8
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [60 x [24 x i16]], [60 x [24 x i16]]* @yy_nxt, i64 0, i64 %12
  %14 = load i8*, i8** %2, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = load i8*, i8** %2, align 8
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* @yy_ec, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  br label %26

25:                                               ; preds = %10
  br label %26

26:                                               ; preds = %25, %18
  %27 = phi i32 [ %24, %18 ], [ 1, %25 ]
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [24 x i16], [24 x i16]* %13, i64 0, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = sext i16 %30 to i32
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %26
  %33 = load i8*, i8** %2, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %2, align 8
  br label %6, !llvm.loop !6

35:                                               ; preds = %6
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @yy_try_NUL_trans(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [60 x [24 x i16]], [60 x [24 x i16]]* @yy_nxt, i64 0, i64 %5
  %7 = getelementptr inbounds [24 x i16], [24 x i16]* %6, i64 0, i64 1
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i32
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp sle i32 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32 [ 0, %15 ], [ %17, %16 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @yy_get_next_buffer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.yy_buffer_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %14 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %2, align 8
  %16 = load i8*, i8** @ia_text, align 8
  store i8* %16, i8** %3, align 8
  %17 = load i8*, i8** @yy_c_buf_p, align 8
  %18 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %19 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* @yy_n_chars, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = icmp ugt i8* %17, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %0
  call void @yy_fatal_error(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0))
  br label %27

27:                                               ; preds = %26, %0
  %28 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %29 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i8*, i8** @yy_c_buf_p, align 8
  %34 = load i8*, i8** @ia_text, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sub nsw i64 %37, 0
  %39 = icmp eq i64 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 1, i32* %1, align 4
  br label %271

41:                                               ; preds = %32
  store i32 2, i32* %1, align 4
  br label %271

42:                                               ; preds = %27
  %43 = load i8*, i8** @yy_c_buf_p, align 8
  %44 = load i8*, i8** @ia_text, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %60, %42
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %3, align 8
  %57 = load i8, i8* %55, align 1
  %58 = load i8*, i8** %2, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %2, align 8
  store i8 %57, i8* %58, align 1
  br label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %50, !llvm.loop !7

63:                                               ; preds = %50
  %64 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %65 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  store i32 0, i32* @yy_n_chars, align 4
  %69 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %70 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %69, i32 0, i32 4
  store i32 0, i32* %70, align 4
  br label %236

71:                                               ; preds = %63
  %72 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %73 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sub i32 %74, %75
  %77 = sub i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %136, %71
  %79 = load i32, i32* %7, align 4
  %80 = icmp sle i32 %79, 0
  br i1 %80, label %81, label %149

81:                                               ; preds = %78
  %82 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  store %struct.yy_buffer_state* %82, %struct.yy_buffer_state** %8, align 8
  %83 = load i8*, i8** @yy_c_buf_p, align 8
  %84 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %8, align 8
  %85 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = ptrtoint i8* %83 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %9, align 4
  %91 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %8, align 8
  %92 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %127

95:                                               ; preds = %81
  %96 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %8, align 8
  %97 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = mul i32 %98, 2
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %95
  %103 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %8, align 8
  %104 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = udiv i32 %105, 8
  %107 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %8, align 8
  %108 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = add i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %116

111:                                              ; preds = %95
  %112 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %8, align 8
  %113 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = mul i32 %114, 2
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %111, %102
  %117 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %8, align 8
  %118 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %8, align 8
  %121 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = add i32 %122, 2
  %124 = call i8* @yy_flex_realloc(i8* noundef %119, i32 noundef %123)
  %125 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %8, align 8
  %126 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  br label %130

127:                                              ; preds = %81
  %128 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %8, align 8
  %129 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %128, i32 0, i32 1
  store i8* null, i8** %129, align 8
  br label %130

130:                                              ; preds = %127, %116
  %131 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %8, align 8
  %132 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %130
  call void @yy_fatal_error(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  br label %136

136:                                              ; preds = %135, %130
  %137 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %8, align 8
  %138 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  store i8* %142, i8** @yy_c_buf_p, align 8
  %143 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %144 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %4, align 4
  %147 = sub i32 %145, %146
  %148 = sub i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %78, !llvm.loop !8

149:                                              ; preds = %78
  %150 = load i32, i32* %7, align 4
  %151 = icmp sgt i32 %150, 8192
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  store i32 8192, i32* %7, align 4
  br label %153

153:                                              ; preds = %152, %149
  %154 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %155 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %213

158:                                              ; preds = %153
  store i32 42, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %159

159:                                              ; preds = %184, %158
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %165 = call i32 @getc(%struct._IO_FILE* noundef %164)
  store i32 %165, i32* %11, align 4
  %166 = icmp ne i32 %165, -1
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i32, i32* %11, align 4
  %169 = icmp ne i32 %168, 10
  br label %170

170:                                              ; preds = %167, %163, %159
  %171 = phi i1 [ false, %163 ], [ false, %159 ], [ %169, %167 ]
  br i1 %171, label %172, label %187

172:                                              ; preds = %170
  %173 = load i32, i32* %11, align 4
  %174 = trunc i32 %173 to i8
  %175 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %176 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  store i8 %174, i8* %183, align 1
  br label %184

184:                                              ; preds = %172
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %12, align 4
  br label %159, !llvm.loop !9

187:                                              ; preds = %170
  %188 = load i32, i32* %11, align 4
  %189 = icmp eq i32 %188, 10
  br i1 %189, label %190, label %203

190:                                              ; preds = %187
  %191 = load i32, i32* %11, align 4
  %192 = trunc i32 %191 to i8
  %193 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %194 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = load i32, i32* %4, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = load i32, i32* %12, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %12, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  store i8 %192, i8* %202, align 1
  br label %203

203:                                              ; preds = %190, %187
  %204 = load i32, i32* %11, align 4
  %205 = icmp eq i32 %204, -1
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %208 = call i32 @ferror(%struct._IO_FILE* noundef %207) #6
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  call void @yy_fatal_error(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %211

211:                                              ; preds = %210, %206, %203
  %212 = load i32, i32* %12, align 4
  store i32 %212, i32* @yy_n_chars, align 4
  br label %232

213:                                              ; preds = %153
  %214 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %215 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %214, i32 0, i32 1
  %216 = load i8*, i8** %215, align 8
  %217 = load i32, i32* %4, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  %220 = load i32, i32* %7, align 4
  %221 = sext i32 %220 to i64
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %223 = call i64 @fread(i8* noundef %219, i64 noundef 1, i64 noundef %221, %struct._IO_FILE* noundef %222)
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* @yy_n_chars, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %213
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %228 = call i32 @ferror(%struct._IO_FILE* noundef %227) #6
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  call void @yy_fatal_error(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %231

231:                                              ; preds = %230, %226, %213
  br label %232

232:                                              ; preds = %231, %211
  %233 = load i32, i32* @yy_n_chars, align 4
  %234 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %235 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %234, i32 0, i32 4
  store i32 %233, i32* %235, align 4
  br label %236

236:                                              ; preds = %232, %68
  %237 = load i32, i32* @yy_n_chars, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %236
  %240 = load i32, i32* %4, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %239
  store i32 1, i32* %6, align 4
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  call void @ia_restart(%struct._IO_FILE* noundef %243)
  br label %247

244:                                              ; preds = %239
  store i32 2, i32* %6, align 4
  %245 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %246 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %245, i32 0, i32 9
  store i32 2, i32* %246, align 8
  br label %247

247:                                              ; preds = %244, %242
  br label %249

248:                                              ; preds = %236
  store i32 0, i32* %6, align 4
  br label %249

249:                                              ; preds = %248, %247
  %250 = load i32, i32* %4, align 4
  %251 = load i32, i32* @yy_n_chars, align 4
  %252 = add nsw i32 %251, %250
  store i32 %252, i32* @yy_n_chars, align 4
  %253 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %254 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %253, i32 0, i32 1
  %255 = load i8*, i8** %254, align 8
  %256 = load i32, i32* @yy_n_chars, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %255, i64 %257
  store i8 0, i8* %258, align 1
  %259 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %260 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %259, i32 0, i32 1
  %261 = load i8*, i8** %260, align 8
  %262 = load i32, i32* @yy_n_chars, align 4
  %263 = add nsw i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, i8* %261, i64 %264
  store i8 0, i8* %265, align 1
  %266 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %267 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %266, i32 0, i32 1
  %268 = load i8*, i8** %267, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 0
  store i8* %269, i8** @ia_text, align 8
  %270 = load i32, i32* %6, align 4
  store i32 %270, i32* %1, align 4
  br label %271

271:                                              ; preds = %249, %41, %40
  %272 = load i32, i32* %1, align 4
  ret i32 %272
}

; Function Attrs: noinline nounwind uwtable
define internal void @yy_fatal_error(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* noundef %4)
  call void @exit(i32 noundef 2) #7
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ia_restart(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %3 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %4 = icmp ne %struct.yy_buffer_state* %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %7 = call %struct.yy_buffer_state* @ia__create_buffer(%struct._IO_FILE* noundef %6, i32 noundef 16384)
  store %struct.yy_buffer_state* %7, %struct.yy_buffer_state** @yy_current_buffer, align 8
  br label %8

8:                                                ; preds = %5, %1
  %9 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @ia__init_buffer(%struct.yy_buffer_state* noundef %9, %struct._IO_FILE* noundef %10)
  call void @ia__load_buffer_state()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ia__init_buffer(%struct.yy_buffer_state* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.yy_buffer_state*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  store %struct.yy_buffer_state* %0, %struct.yy_buffer_state** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %5 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  call void @ia__flush_buffer(%struct.yy_buffer_state* noundef %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  %8 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %7, i32 0, i32 0
  store %struct._IO_FILE* %6, %struct._IO_FILE** %8, align 8
  %9 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  %10 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %9, i32 0, i32 8
  store i32 1, i32* %10, align 4
  %11 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  %12 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %11, i32 0, i32 6
  store i32 1, i32* %12, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ia__switch_to_buffer(%struct.yy_buffer_state* noundef %0) #0 {
  %2 = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %0, %struct.yy_buffer_state** %2, align 8
  %3 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %5 = icmp eq %struct.yy_buffer_state* %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %21

7:                                                ; preds = %1
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %9 = icmp ne %struct.yy_buffer_state* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load i8, i8* @yy_hold_char, align 1
  %12 = load i8*, i8** @yy_c_buf_p, align 8
  store i8 %11, i8* %12, align 1
  %13 = load i8*, i8** @yy_c_buf_p, align 8
  %14 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %15 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @yy_n_chars, align 4
  %17 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %18 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %10, %7
  %20 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  store %struct.yy_buffer_state* %20, %struct.yy_buffer_state** @yy_current_buffer, align 8
  call void @ia__load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %21

21:                                               ; preds = %19, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @yy_flex_alloc(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = zext i32 %3 to i64
  %5 = call noalias i8* @malloc(i64 noundef %4) #6
  ret i8* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ia__delete_buffer(%struct.yy_buffer_state* noundef %0) #0 {
  %2 = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %0, %struct.yy_buffer_state** %2, align 8
  %3 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %4 = icmp ne %struct.yy_buffer_state* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %23

6:                                                ; preds = %1
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %9 = icmp eq %struct.yy_buffer_state* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** @yy_current_buffer, align 8
  br label %11

11:                                               ; preds = %10, %6
  %12 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %13 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %18 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  call void @yy_flex_free(i8* noundef %19)
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %22 = bitcast %struct.yy_buffer_state* %21 to i8*
  call void @yy_flex_free(i8* noundef %22)
  br label %23

23:                                               ; preds = %20, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @yy_flex_free(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void @free(i8* noundef %3) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ia__flush_buffer(%struct.yy_buffer_state* noundef %0) #0 {
  %2 = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %0, %struct.yy_buffer_state** %2, align 8
  %3 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %4 = icmp ne %struct.yy_buffer_state* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %31

6:                                                ; preds = %1
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %8 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %7, i32 0, i32 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %10 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 0, i8* %12, align 1
  %13 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %14 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %16, align 1
  %17 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %18 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %22 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %24 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %23, i32 0, i32 7
  store i32 1, i32* %24, align 8
  %25 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %26 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %25, i32 0, i32 9
  store i32 0, i32* %26, align 8
  %27 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %28 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %29 = icmp eq %struct.yy_buffer_state* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  call void @ia__load_buffer_state()
  br label %31

31:                                               ; preds = %5, %30, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.yy_buffer_state* @ia__scan_buffer(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.yy_buffer_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.yy_buffer_state*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sub i32 %11, 2
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sub i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18, %9, %2
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** %3, align 8
  br label %63

28:                                               ; preds = %18
  %29 = call i8* @yy_flex_alloc(i32 noundef 56)
  %30 = bitcast i8* %29 to %struct.yy_buffer_state*
  store %struct.yy_buffer_state* %30, %struct.yy_buffer_state** %6, align 8
  %31 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %6, align 8
  %32 = icmp ne %struct.yy_buffer_state* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  call void @yy_fatal_error(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i32, i32* %5, align 4
  %36 = sub i32 %35, 2
  %37 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %6, align 8
  %38 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %6, align 8
  %41 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %6, align 8
  %43 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %42, i32 0, i32 2
  store i8* %39, i8** %43, align 8
  %44 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %6, align 8
  %45 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %44, i32 0, i32 5
  store i32 0, i32* %45, align 8
  %46 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %6, align 8
  %47 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %46, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %47, align 8
  %48 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %6, align 8
  %49 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %6, align 8
  %52 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %6, align 8
  %54 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %53, i32 0, i32 6
  store i32 0, i32* %54, align 4
  %55 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %6, align 8
  %56 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %55, i32 0, i32 7
  store i32 1, i32* %56, align 8
  %57 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %6, align 8
  %58 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %57, i32 0, i32 8
  store i32 0, i32* %58, align 4
  %59 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %6, align 8
  %60 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %59, i32 0, i32 9
  store i32 0, i32* %60, align 8
  %61 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %6, align 8
  call void @ia__switch_to_buffer(%struct.yy_buffer_state* noundef %61)
  %62 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %6, align 8
  store %struct.yy_buffer_state* %62, %struct.yy_buffer_state** %3, align 8
  br label %63

63:                                               ; preds = %34, %27
  %64 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  ret %struct.yy_buffer_state* %64
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.yy_buffer_state* @ia__scan_string(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %12, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* %5, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %11
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %4, !llvm.loop !10

15:                                               ; preds = %4
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.yy_buffer_state* @ia__scan_bytes(i8* noundef %16, i32 noundef %17)
  ret %struct.yy_buffer_state* %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.yy_buffer_state* @ia__scan_bytes(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.yy_buffer_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, 2
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i8* @yy_flex_alloc(i32 noundef %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  call void @yy_fatal_error(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  br label %16

16:                                               ; preds = %15, %2
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %31, %16
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 %26, i8* %30, align 1
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %17, !llvm.loop !11

34:                                               ; preds = %17
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call %struct.yy_buffer_state* @ia__scan_buffer(i8* noundef %44, i32 noundef %45)
  store %struct.yy_buffer_state* %46, %struct.yy_buffer_state** %5, align 8
  %47 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %48 = icmp ne %struct.yy_buffer_state* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %34
  call void @yy_fatal_error(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %50

50:                                               ; preds = %49, %34
  %51 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %52 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %51, i32 0, i32 5
  store i32 1, i32* %52, align 8
  %53 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  ret %struct.yy_buffer_state* %53
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i8* @yy_flex_realloc(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @realloc(i8* noundef %5, i64 noundef %7) #6
  ret i8* %8
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
