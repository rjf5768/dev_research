; ModuleID = './iascanner.ll'
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
  %1 = load i32, i32* @yy_init, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %19, label %2

2:                                                ; preds = %0
  store i32 0, i32* @yy_init, align 4
  %3 = load i32, i32* @yy_start, align 4
  %.not19 = icmp eq i32 %3, 0
  br i1 %.not19, label %4, label %5

4:                                                ; preds = %2
  store i32 1, i32* @yy_start, align 4
  br label %5

5:                                                ; preds = %4, %2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %.not20 = icmp eq %struct._IO_FILE* %6, null
  br i1 %.not20, label %7, label %9

7:                                                ; preds = %5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %8, %struct._IO_FILE** @ia_in, align 8
  br label %9

9:                                                ; preds = %7, %5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_out, align 8
  %.not21 = icmp eq %struct._IO_FILE* %10, null
  br i1 %.not21, label %11, label %13

11:                                               ; preds = %9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %12, %struct._IO_FILE** @ia_out, align 8
  br label %13

13:                                               ; preds = %11, %9
  %14 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %.not22 = icmp eq %struct.yy_buffer_state* %14, null
  br i1 %.not22, label %15, label %18

15:                                               ; preds = %13
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %17 = call %struct.yy_buffer_state* @ia__create_buffer(%struct._IO_FILE* noundef %16, i32 noundef 16384)
  store %struct.yy_buffer_state* %17, %struct.yy_buffer_state** @yy_current_buffer, align 8
  br label %18

18:                                               ; preds = %15, %13
  call void @ia__load_buffer_state()
  br label %19

19:                                               ; preds = %18, %0
  br label %20

20:                                               ; preds = %183, %19
  %21 = load i8*, i8** @yy_c_buf_p, align 8
  %22 = load i8, i8* @yy_hold_char, align 1
  store i8 %22, i8* %21, align 1
  %23 = load i32, i32* @yy_start, align 4
  br label %24

24:                                               ; preds = %.backedge8, %20
  %.05 = phi i8* [ %21, %20 ], [ %.05.be, %.backedge8 ]
  %.02 = phi i8* [ %21, %20 ], [ %.02.be, %.backedge8 ]
  %.01 = phi i32 [ %23, %20 ], [ %.01.be, %.backedge8 ]
  br label %25

25:                                               ; preds = %36, %24
  %.13 = phi i8* [ %.02, %24 ], [ %37, %36 ]
  %.1 = phi i32 [ %.01, %24 ], [ %34, %36 ]
  %26 = sext i32 %.1 to i64
  %27 = load i8, i8* %.13, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [256 x i32], [256 x i32]* @yy_ec, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [60 x [24 x i16]], [60 x [24 x i16]]* @yy_nxt, i64 0, i64 %26, i64 %31
  %33 = load i16, i16* %32, align 2
  %34 = sext i16 %33 to i32
  %35 = icmp sgt i16 %33, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = getelementptr inbounds i8, i8* %.13, i64 1
  br label %25, !llvm.loop !4

38:                                               ; preds = %25
  %39 = sub nsw i32 0, %34
  br label %40

40:                                               ; preds = %.backedge, %38
  %.16 = phi i8* [ %.05, %38 ], [ %.16.be, %.backedge ]
  %.24 = phi i8* [ %.13, %38 ], [ %.24.be, %.backedge ]
  %.2 = phi i32 [ %39, %38 ], [ %.2.be, %.backedge ]
  %41 = sext i32 %.2 to i64
  %42 = getelementptr inbounds [60 x i16], [60 x i16]* @yy_accept, i64 0, i64 %41
  %43 = load i16, i16* %42, align 2
  %44 = sext i16 %43 to i32
  store i8* %.16, i8** @ia_text, align 8
  %45 = ptrtoint i8* %.24 to i64
  %46 = ptrtoint i8* %.16 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* @ia_leng, align 4
  %49 = load i8, i8* %.24, align 1
  store i8 %49, i8* @yy_hold_char, align 1
  store i8 0, i8* %.24, align 1
  store i8* %.24, i8** @yy_c_buf_p, align 8
  br label %50

50:                                               ; preds = %160, %40
  %.07 = phi i32 [ %44, %40 ], [ %165, %160 ]
  switch i32 %.07, label %182 [
    i32 1, label %51
    i32 2, label %52
    i32 3, label %53
    i32 4, label %54
    i32 5, label %55
    i32 6, label %56
    i32 7, label %57
    i32 8, label %58
    i32 9, label %59
    i32 10, label %60
    i32 11, label %61
    i32 12, label %62
    i32 13, label %63
    i32 14, label %77
    i32 15, label %83
    i32 16, label %84
    i32 17, label %87
    i32 18, label %91
    i32 19, label %112
    i32 21, label %118
    i32 20, label %119
  ]

51:                                               ; preds = %50
  br label %184

52:                                               ; preds = %50
  br label %184

53:                                               ; preds = %50
  br label %184

54:                                               ; preds = %50
  br label %184

55:                                               ; preds = %50
  br label %184

56:                                               ; preds = %50
  br label %184

57:                                               ; preds = %50
  br label %184

58:                                               ; preds = %50
  br label %184

59:                                               ; preds = %50
  br label %184

60:                                               ; preds = %50
  br label %184

61:                                               ; preds = %50
  br label %184

62:                                               ; preds = %50
  br label %184

63:                                               ; preds = %50
  %64 = call i32* @__errno_location() #9
  store i32 0, i32* %64, align 4
  %65 = load i8*, i8** @ia_text, align 8
  %66 = call i64 @strtoul(i8* nocapture noundef %65, i8** noundef null, i32 noundef 10) #10
  %67 = call i32* @__errno_location() #9
  %68 = load i32, i32* %67, align 4
  %.not18 = icmp eq i32 %68, 0
  br i1 %.not18, label %69, label %71

69:                                               ; preds = %63
  %70 = icmp ugt i64 %66, 2147483647
  br i1 %70, label %71, label %75

71:                                               ; preds = %69, %63
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %73 = call i32 @fflush(%struct._IO_FILE* noundef %72) #10
  %74 = load i32, i32* @dfg_LINENUMBER, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef %74) #10
  call void @misc_Error()
  br label %75

75:                                               ; preds = %71, %69
  %76 = trunc i64 %66 to i32
  store i32 %76, i32* bitcast (%union.yystype* @ia_lval to i32*), align 8
  br label %184

77:                                               ; preds = %50
  %78 = load i32, i32* @ia_leng, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i8* @memory_Malloc(i32 noundef %79) #10
  store i8* %80, i8** getelementptr inbounds (%union.yystype, %union.yystype* @ia_lval, i64 0, i32 0), align 8
  %81 = load i8*, i8** @ia_text, align 8
  %82 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %80, i8* noundef nonnull dereferenceable(1) %81) #10
  br label %184

83:                                               ; preds = %50
  br label %183

84:                                               ; preds = %50
  %85 = load i32, i32* @dfg_LINENUMBER, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* @dfg_LINENUMBER, align 4
  br label %183

87:                                               ; preds = %50
  %88 = load i8*, i8** @ia_text, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  br label %184

91:                                               ; preds = %50
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %93 = call i32 @fflush(%struct._IO_FILE* noundef %92) #10
  call void (i8*, ...) @misc_UserErrorReport(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #10
  %94 = call i16** @__ctype_b_loc() #9
  %95 = load i16*, i16** %94, align 8
  %96 = load i8*, i8** @ia_text, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i64
  %99 = getelementptr inbounds i16, i16* %95, i64 %98
  %100 = load i16, i16* %99, align 2
  %101 = and i16 %100, 16384
  %.not17 = icmp eq i16 %101, 0
  br i1 %.not17, label %106, label %102

102:                                              ; preds = %91
  %103 = load i8*, i8** @ia_text, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  call void (i8*, ...) @misc_UserErrorReport(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 noundef %105) #10
  br label %110

106:                                              ; preds = %91
  %107 = load i8*, i8** @ia_text, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  call void (i8*, ...) @misc_UserErrorReport(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef %109) #10
  br label %110

110:                                              ; preds = %106, %102
  %111 = load i32, i32* @dfg_LINENUMBER, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 noundef %111) #10
  call void @misc_Error()
  br label %183

112:                                              ; preds = %50
  %113 = load i8*, i8** @ia_text, align 8
  %114 = load i32, i32* @ia_leng, align 4
  %115 = sext i32 %114 to i64
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_out, align 8
  %117 = call i64 @fwrite(i8* noundef %113, i64 noundef %115, i64 noundef 1, %struct._IO_FILE* noundef %116) #10
  br label %183

118:                                              ; preds = %50
  br label %184

119:                                              ; preds = %50
  %120 = load i8*, i8** @ia_text, align 8
  %121 = ptrtoint i8* %.24 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = trunc i64 %123 to i32
  %125 = add nsw i32 %124, -1
  %126 = load i8, i8* @yy_hold_char, align 1
  store i8 %126, i8* %.24, align 1
  %127 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %128 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %127, i64 0, i32 9
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %119
  %132 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %133 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %132, i64 0, i32 4
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* @yy_n_chars, align 4
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %136 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %132, i64 0, i32 0
  store %struct._IO_FILE* %135, %struct._IO_FILE** %136, align 8
  %137 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %138 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %137, i64 0, i32 9
  store i32 1, i32* %138, align 8
  br label %139

139:                                              ; preds = %131, %119
  %140 = load i8*, i8** @yy_c_buf_p, align 8
  %141 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %142 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %141, i64 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = load i32, i32* @yy_n_chars, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %.not15 = icmp ugt i8* %140, %146
  br i1 %.not15, label %158, label %147

147:                                              ; preds = %139
  %148 = load i8*, i8** @ia_text, align 8
  %149 = sext i32 %125 to i64
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  store i8* %150, i8** @yy_c_buf_p, align 8
  %151 = call i32 @yy_get_previous_state()
  %152 = call i32 @yy_try_NUL_trans(i32 noundef %151)
  %.not16 = icmp eq i32 %152, 0
  br i1 %.not16, label %156, label %153

153:                                              ; preds = %147
  %154 = load i8*, i8** @yy_c_buf_p, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  store i8* %155, i8** @yy_c_buf_p, align 8
  br label %.backedge8

.backedge8:                                       ; preds = %153, %166
  %.05.be = phi i8* [ %148, %153 ], [ %167, %166 ]
  %.02.be = phi i8* [ %155, %153 ], [ %169, %166 ]
  %.01.be = phi i32 [ %152, %153 ], [ %170, %166 ]
  br label %24

156:                                              ; preds = %147
  %157 = load i8*, i8** @yy_c_buf_p, align 8
  br label %.backedge

.backedge:                                        ; preds = %156, %171
  %.16.be = phi i8* [ %148, %156 ], [ %179, %171 ]
  %.24.be = phi i8* [ %157, %156 ], [ %177, %171 ]
  %.2.be = phi i32 [ %151, %156 ], [ %178, %171 ]
  br label %40

158:                                              ; preds = %139
  %159 = call i32 @yy_get_next_buffer()
  switch i32 %159, label %180 [
    i32 1, label %160
    i32 0, label %166
    i32 2, label %171
  ]

160:                                              ; preds = %158
  store i32 0, i32* @yy_did_buffer_switch_on_eof, align 4
  %161 = load i8*, i8** @ia_text, align 8
  store i8* %161, i8** @yy_c_buf_p, align 8
  %162 = load i32, i32* @yy_start, align 4
  %163 = add nsw i32 %162, -1
  %164 = sdiv i32 %163, 2
  %165 = add nsw i32 %164, 21
  br label %50

166:                                              ; preds = %158
  %167 = load i8*, i8** @ia_text, align 8
  %168 = sext i32 %125 to i64
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  store i8* %169, i8** @yy_c_buf_p, align 8
  %170 = call i32 @yy_get_previous_state()
  br label %.backedge8

171:                                              ; preds = %158
  %172 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %173 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %172, i64 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* @yy_n_chars, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  store i8* %177, i8** @yy_c_buf_p, align 8
  %178 = call i32 @yy_get_previous_state()
  %179 = load i8*, i8** @ia_text, align 8
  br label %.backedge

180:                                              ; preds = %158
  br label %181

181:                                              ; preds = %180
  br label %183

182:                                              ; preds = %50
  call void @yy_fatal_error(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  br label %183

183:                                              ; preds = %182, %181, %112, %110, %84, %83
  br label %20

184:                                              ; preds = %118, %87, %77, %75, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51
  %.0 = phi i32 [ 0, %118 ], [ %90, %87 ], [ 271, %77 ], [ 270, %75 ], [ 268, %62 ], [ 269, %61 ], [ 267, %60 ], [ 266, %59 ], [ 265, %58 ], [ 264, %57 ], [ 263, %56 ], [ 262, %55 ], [ 261, %54 ], [ 260, %53 ], [ 259, %52 ], [ 258, %51 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.yy_buffer_state* @ia__create_buffer(%struct._IO_FILE* noundef %0, i32 noundef %1) #0 {
  %3 = call i8* @yy_flex_alloc(i32 noundef 56)
  %4 = bitcast i8* %3 to %struct.yy_buffer_state*
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %5, label %6

5:                                                ; preds = %2
  call void @yy_fatal_error(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds i8, i8* %3, i64 24
  %8 = bitcast i8* %7 to i32*
  store i32 %1, i32* %8, align 8
  %9 = add i32 %1, 2
  %10 = call i8* @yy_flex_alloc(i32 noundef %9)
  %11 = getelementptr inbounds i8, i8* %3, i64 8
  %12 = bitcast i8* %11 to i8**
  store i8* %10, i8** %12, align 8
  %.not1 = icmp eq i8* %10, null
  br i1 %.not1, label %13, label %14

13:                                               ; preds = %6
  call void @yy_fatal_error(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %14

14:                                               ; preds = %13, %6
  %15 = getelementptr inbounds i8, i8* %3, i64 32
  %16 = bitcast i8* %15 to i32*
  store i32 1, i32* %16, align 8
  call void @ia__init_buffer(%struct.yy_buffer_state* noundef %4, %struct._IO_FILE* noundef %0)
  ret %struct.yy_buffer_state* %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @ia__load_buffer_state() #1 {
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %2 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1, i64 0, i32 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @yy_n_chars, align 4
  %4 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8
  store i8* %5, i8** @yy_c_buf_p, align 8
  store i8* %5, i8** @ia_text, align 8
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %7 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i64 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  store %struct._IO_FILE* %8, %struct._IO_FILE** @ia_in, align 8
  %9 = load i8, i8* %5, align 1
  store i8 %9, i8* @yy_hold_char, align 1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() #2

; Function Attrs: nounwind
declare dso_local i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) #3

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #4

declare dso_local void @misc_UserErrorReport(i8* noundef, ...) #4

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @misc_Error() #5 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 @fflush(%struct._IO_FILE* noundef %1) #10
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = call i32 @fflush(%struct._IO_FILE* noundef %3) #10
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 @fflush(%struct._IO_FILE* noundef %5) #10
  call void @exit(i32 noundef 1) #11
  unreachable
}

declare dso_local i8* @memory_Malloc(i32 noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #4

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal i32 @yy_get_previous_state() #6 {
  %1 = load i32, i32* @yy_start, align 4
  %2 = load i8*, i8** @ia_text, align 8
  br label %3

3:                                                ; preds = %17, %0
  %.01 = phi i8* [ %2, %0 ], [ %22, %17 ]
  %.0 = phi i32 [ %1, %0 ], [ %21, %17 ]
  %4 = load i8*, i8** @yy_c_buf_p, align 8
  %5 = icmp ult i8* %.01, %4
  br i1 %5, label %6, label %23

6:                                                ; preds = %3
  %7 = sext i32 %.0 to i64
  %8 = load i8, i8* %.01, align 1
  %.not = icmp eq i8 %8, 0
  br i1 %.not, label %14, label %9

9:                                                ; preds = %6
  %10 = load i8, i8* %.01, align 1
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [256 x i32], [256 x i32]* @yy_ec, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  br label %15

14:                                               ; preds = %6
  br label %15

15:                                               ; preds = %14, %9
  %16 = phi i32 [ %13, %9 ], [ 1, %14 ]
  br label %17

17:                                               ; preds = %15
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds [60 x [24 x i16]], [60 x [24 x i16]]* @yy_nxt, i64 0, i64 %7, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = sext i16 %20 to i32
  %22 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %3, !llvm.loop !6

23:                                               ; preds = %3
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @yy_try_NUL_trans(i32 noundef %0) #7 {
  %2 = add i32 %0, -3
  %3 = icmp ult i32 %2, -2
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %10

5:                                                ; preds = %1
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [60 x [24 x i16]], [60 x [24 x i16]]* @yy_nxt, i64 0, i64 %6, i64 1
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i32
  br label %10

10:                                               ; preds = %5, %4
  %11 = phi i32 [ 0, %4 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @yy_get_next_buffer() #0 {
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %2 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1, i64 0, i32 1
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** @ia_text, align 8
  %5 = load i8*, i8** @yy_c_buf_p, align 8
  %6 = load i32, i32* @yy_n_chars, align 4
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %3, i64 %8
  %10 = icmp ugt i8* %5, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  call void @yy_fatal_error(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %0
  %13 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %14 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %13, i64 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load i8*, i8** @yy_c_buf_p, align 8
  %19 = load i8*, i8** @ia_text, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = icmp eq i64 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %194

25:                                               ; preds = %17
  br label %194

26:                                               ; preds = %12
  %27 = load i8*, i8** @yy_c_buf_p, align 8
  %28 = load i8*, i8** @ia_text, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = add nsw i32 %32, -1
  br label %34

34:                                               ; preds = %38, %26
  %.04 = phi i32 [ 0, %26 ], [ %41, %38 ]
  %.02 = phi i8* [ %4, %26 ], [ %40, %38 ]
  %.01 = phi i8* [ %3, %26 ], [ %39, %38 ]
  %35 = icmp slt i32 %.04, %33
  br i1 %35, label %36, label %42

36:                                               ; preds = %34
  %37 = load i8, i8* %.02, align 1
  store i8 %37, i8* %.01, align 1
  br label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds i8, i8* %.01, i64 1
  %40 = getelementptr inbounds i8, i8* %.02, i64 1
  %41 = add nuw nsw i32 %.04, 1
  br label %34, !llvm.loop !7

42:                                               ; preds = %34
  %43 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %44 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %43, i64 0, i32 9
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  store i32 0, i32* @yy_n_chars, align 4
  %48 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %49 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %48, i64 0, i32 4
  store i32 0, i32* %49, align 4
  br label %164

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %92, %50
  %.pn16 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %.pn.in = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %.pn16, i64 0, i32 3
  %.pn = load i32, i32* %.pn.in, align 8
  %.07 = sub i32 %.pn, %32
  %52 = icmp slt i32 %.07, 1
  br i1 %52, label %53, label %97

53:                                               ; preds = %51
  %54 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %55 = load i8*, i8** @yy_c_buf_p, align 8
  %56 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %54, i64 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = ptrtoint i8* %55 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %54, i64 0, i32 5
  %62 = load i32, i32* %61, align 8
  %.not14 = icmp eq i32 %62, 0
  br i1 %.not14, label %86, label %63

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %54, i64 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 %65, 1
  %67 = icmp slt i32 %66, 1
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %54, i64 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = lshr i32 %70, 3
  %72 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %54, i64 0, i32 3
  %73 = add i32 %70, %71
  store i32 %73, i32* %72, align 8
  br label %78

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %54, i64 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = shl i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %74, %68
  %79 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %54, i64 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %54, i64 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = add i32 %82, 2
  %84 = call i8* @yy_flex_realloc(i8* noundef %80, i32 noundef %83)
  %85 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %54, i64 0, i32 1
  store i8* %84, i8** %85, align 8
  br label %88

86:                                               ; preds = %53
  %87 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %54, i64 0, i32 1
  store i8* null, i8** %87, align 8
  br label %88

88:                                               ; preds = %86, %78
  %89 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %54, i64 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %.not15 = icmp eq i8* %90, null
  br i1 %.not15, label %91, label %92

91:                                               ; preds = %88
  call void @yy_fatal_error(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  br label %92

92:                                               ; preds = %91, %88
  %93 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %54, i64 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %sext = shl i64 %60, 32
  %95 = ashr exact i64 %sext, 32
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** @yy_c_buf_p, align 8
  br label %51, !llvm.loop !8

97:                                               ; preds = %51
  %98 = icmp sgt i32 %.07, 8192
  br i1 %98, label %99, label %100

99:                                               ; preds = %97
  br label %100

100:                                              ; preds = %99, %97
  %.18 = phi i32 [ 8192, %99 ], [ %.07, %97 ]
  %101 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %102 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %101, i64 0, i32 6
  %103 = load i32, i32* %102, align 4
  %.not = icmp eq i32 %103, 0
  br i1 %.not, label %144, label %104

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %123, %104
  %.09 = phi i32 [ 42, %104 ], [ %.110, %123 ]
  %.03 = phi i32 [ 0, %104 ], [ %124, %123 ]
  %106 = icmp slt i32 %.03, %.18
  br i1 %106, label %107, label %112

107:                                              ; preds = %105
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %109 = call i32 @getc(%struct._IO_FILE* noundef %108) #10
  %.not13 = icmp eq i32 %109, -1
  br i1 %.not13, label %112, label %110

110:                                              ; preds = %107
  %111 = icmp ne i32 %109, 10
  br label %112

112:                                              ; preds = %110, %107, %105
  %.110 = phi i32 [ %109, %110 ], [ %109, %107 ], [ %.09, %105 ]
  %113 = phi i1 [ %111, %110 ], [ false, %107 ], [ false, %105 ]
  br i1 %113, label %114, label %125

114:                                              ; preds = %112
  %115 = trunc i32 %.110 to i8
  %116 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %117 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %116, i64 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = sext i32 %33 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = zext i32 %.03 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8 %115, i8* %122, align 1
  br label %123

123:                                              ; preds = %114
  %124 = add nuw nsw i32 %.03, 1
  br label %105, !llvm.loop !9

125:                                              ; preds = %112
  %126 = icmp eq i32 %.110, 10
  br i1 %126, label %127, label %137

127:                                              ; preds = %125
  %128 = trunc i32 %.110 to i8
  %129 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %130 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %129, i64 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = sext i32 %33 to i64
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = add nuw nsw i32 %.03, 1
  %135 = zext i32 %.03 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  store i8 %128, i8* %136, align 1
  br label %137

137:                                              ; preds = %127, %125
  %.1 = phi i32 [ %134, %127 ], [ %.03, %125 ]
  %138 = icmp eq i32 %.110, -1
  br i1 %138, label %139, label %143

139:                                              ; preds = %137
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %141 = call i32 @ferror(%struct._IO_FILE* noundef %140) #10
  %.not12 = icmp eq i32 %141, 0
  br i1 %.not12, label %143, label %142

142:                                              ; preds = %139
  call void @yy_fatal_error(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %143

143:                                              ; preds = %142, %139, %137
  store i32 %.1, i32* @yy_n_chars, align 4
  br label %160

144:                                              ; preds = %100
  %145 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %146 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %145, i64 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = sext i32 %33 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  %150 = sext i32 %.18 to i64
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %152 = call i64 @fread(i8* noundef %149, i64 noundef 1, i64 noundef %150, %struct._IO_FILE* noundef %151) #10
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* @yy_n_chars, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %144
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %157 = call i32 @ferror(%struct._IO_FILE* noundef %156) #10
  %.not11 = icmp eq i32 %157, 0
  br i1 %.not11, label %159, label %158

158:                                              ; preds = %155
  call void @yy_fatal_error(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %159

159:                                              ; preds = %158, %155, %144
  br label %160

160:                                              ; preds = %159, %143
  %161 = load i32, i32* @yy_n_chars, align 4
  %162 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %163 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %162, i64 0, i32 4
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %160, %47
  %165 = load i32, i32* @yy_n_chars, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = icmp eq i32 %33, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %167
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  call void @ia_restart(%struct._IO_FILE* noundef %170)
  br label %174

171:                                              ; preds = %167
  %172 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %173 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %172, i64 0, i32 9
  store i32 2, i32* %173, align 8
  br label %174

174:                                              ; preds = %171, %169
  %.05 = phi i32 [ 1, %169 ], [ 2, %171 ]
  br label %176

175:                                              ; preds = %164
  br label %176

176:                                              ; preds = %175, %174
  %.16 = phi i32 [ %.05, %174 ], [ 0, %175 ]
  %177 = load i32, i32* @yy_n_chars, align 4
  %178 = add nsw i32 %177, %33
  store i32 %178, i32* @yy_n_chars, align 4
  %179 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %180 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %179, i64 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = sext i32 %178 to i64
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  store i8 0, i8* %183, align 1
  %184 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %185 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %184, i64 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = load i32, i32* @yy_n_chars, align 4
  %188 = add nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %186, i64 %189
  store i8 0, i8* %190, align 1
  %191 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %192 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %191, i64 0, i32 1
  %193 = load i8*, i8** %192, align 8
  store i8* %193, i8** @ia_text, align 8
  br label %194

194:                                              ; preds = %176, %25, %24
  %.0 = phi i32 [ 1, %24 ], [ 2, %25 ], [ %.16, %176 ]
  ret i32 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @yy_fatal_error(i8* noundef %0) #5 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* noundef %0) #12
  call void @exit(i32 noundef 2) #11
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ia_restart(%struct._IO_FILE* noundef %0) #0 {
  %2 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %.not = icmp eq %struct.yy_buffer_state* %2, null
  br i1 %.not, label %3, label %6

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @ia_in, align 8
  %5 = call %struct.yy_buffer_state* @ia__create_buffer(%struct._IO_FILE* noundef %4, i32 noundef 16384)
  store %struct.yy_buffer_state* %5, %struct.yy_buffer_state** @yy_current_buffer, align 8
  br label %6

6:                                                ; preds = %3, %1
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  call void @ia__init_buffer(%struct.yy_buffer_state* noundef %7, %struct._IO_FILE* noundef %0)
  call void @ia__load_buffer_state()
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @ia__init_buffer(%struct.yy_buffer_state* noundef %0, %struct._IO_FILE* noundef %1) #1 {
  call void @ia__flush_buffer(%struct.yy_buffer_state* noundef %0)
  %3 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 0
  store %struct._IO_FILE* %1, %struct._IO_FILE** %3, align 8
  %4 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 8
  store i32 1, i32* %4, align 4
  %5 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 6
  store i32 1, i32* %5, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @ia__switch_to_buffer(%struct.yy_buffer_state* noundef %0) #1 {
  %2 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %3 = icmp eq %struct.yy_buffer_state* %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %16

5:                                                ; preds = %1
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %.not = icmp eq %struct.yy_buffer_state* %6, null
  br i1 %.not, label %15, label %7

7:                                                ; preds = %5
  %8 = load i8, i8* @yy_hold_char, align 1
  %9 = load i8*, i8** @yy_c_buf_p, align 8
  store i8 %8, i8* %9, align 1
  %10 = load i8*, i8** @yy_c_buf_p, align 8
  %11 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %12 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %11, i64 0, i32 2
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* @yy_n_chars, align 4
  %14 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %11, i64 0, i32 4
  store i32 %13, i32* %14, align 4
  br label %15

15:                                               ; preds = %7, %5
  store %struct.yy_buffer_state* %0, %struct.yy_buffer_state** @yy_current_buffer, align 8
  call void @ia__load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %16

16:                                               ; preds = %15, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @yy_flex_alloc(i32 noundef %0) #0 {
  %2 = zext i32 %0 to i64
  %3 = call noalias i8* @malloc(i64 noundef %2) #10
  ret i8* %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ia__delete_buffer(%struct.yy_buffer_state* noundef %0) #0 {
  %.not = icmp eq %struct.yy_buffer_state* %0, null
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  br label %15

3:                                                ; preds = %1
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %5 = icmp eq %struct.yy_buffer_state* %4, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** @yy_current_buffer, align 8
  br label %7

7:                                                ; preds = %6, %3
  %8 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 5
  %9 = load i32, i32* %8, align 8
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %13, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 1
  %12 = load i8*, i8** %11, align 8
  call void @yy_flex_free(i8* noundef %12)
  br label %13

13:                                               ; preds = %10, %7
  %14 = bitcast %struct.yy_buffer_state* %0 to i8*
  call void @yy_flex_free(i8* noundef nonnull %14)
  br label %15

15:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @yy_flex_free(i8* noundef %0) #0 {
  call void @free(i8* noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @ia__flush_buffer(%struct.yy_buffer_state* noundef %0) #1 {
  %.not = icmp eq %struct.yy_buffer_state* %0, null
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  br label %18

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 4
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 1
  %6 = load i8*, i8** %5, align 8
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 2
  store i8* %11, i8** %12, align 8
  %13 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 7
  store i32 1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 9
  store i32 0, i32* %14, align 8
  %15 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %16 = icmp eq %struct.yy_buffer_state* %15, %0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  call void @ia__load_buffer_state()
  br label %18

18:                                               ; preds = %17, %3, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.yy_buffer_state* @ia__scan_buffer(i8* noundef %0, i32 noundef %1) #0 {
  %3 = icmp ult i32 %1, 2
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, -2
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i8, i8* %0, i64 %6
  %8 = load i8, i8* %7, align 1
  %.not = icmp eq i8 %8, 0
  br i1 %.not, label %9, label %14

9:                                                ; preds = %4
  %10 = add i32 %1, -1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %0, i64 %11
  %13 = load i8, i8* %12, align 1
  %.not1 = icmp eq i8 %13, 0
  br i1 %.not1, label %15, label %14

14:                                               ; preds = %9, %4, %2
  br label %43

15:                                               ; preds = %9
  %16 = call i8* @yy_flex_alloc(i32 noundef 56)
  %17 = bitcast i8* %16 to %struct.yy_buffer_state*
  %.not2 = icmp eq i8* %16, null
  br i1 %.not2, label %18, label %19

18:                                               ; preds = %15
  call void @yy_fatal_error(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %19

19:                                               ; preds = %18, %15
  %20 = add i32 %1, -2
  %21 = getelementptr inbounds i8, i8* %16, i64 24
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 8
  %23 = getelementptr inbounds i8, i8* %16, i64 8
  %24 = bitcast i8* %23 to i8**
  store i8* %0, i8** %24, align 8
  %25 = getelementptr inbounds i8, i8* %16, i64 16
  %26 = bitcast i8* %25 to i8**
  store i8* %0, i8** %26, align 8
  %27 = getelementptr inbounds i8, i8* %16, i64 32
  %28 = bitcast i8* %27 to i32*
  store i32 0, i32* %28, align 8
  %29 = bitcast i8* %16 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %29, align 8
  %30 = getelementptr inbounds i8, i8* %16, i64 24
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds i8, i8* %16, i64 28
  %34 = bitcast i8* %33 to i32*
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds i8, i8* %16, i64 36
  %36 = bitcast i8* %35 to i32*
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds i8, i8* %16, i64 40
  %38 = bitcast i8* %37 to i32*
  store i32 1, i32* %38, align 8
  %39 = getelementptr inbounds i8, i8* %16, i64 44
  %40 = bitcast i8* %39 to i32*
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds i8, i8* %16, i64 48
  %42 = bitcast i8* %41 to i32*
  store i32 0, i32* %42, align 8
  call void @ia__switch_to_buffer(%struct.yy_buffer_state* noundef %17)
  br label %43

43:                                               ; preds = %19, %14
  %.0 = phi %struct.yy_buffer_state* [ null, %14 ], [ %17, %19 ]
  ret %struct.yy_buffer_state* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.yy_buffer_state* @ia__scan_string(i8* nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %7, %1
  %.0 = phi i32 [ 0, %1 ], [ %8, %7 ]
  %3 = zext i32 %.0 to i64
  %4 = getelementptr inbounds i8, i8* %0, i64 %3
  %5 = load i8, i8* %4, align 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %9, label %6

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6
  %8 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !10

9:                                                ; preds = %2
  %10 = call %struct.yy_buffer_state* @ia__scan_bytes(i8* noundef %0, i32 noundef %.0)
  ret %struct.yy_buffer_state* %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.yy_buffer_state* @ia__scan_bytes(i8* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = add nsw i32 %1, 2
  %4 = call i8* @yy_flex_alloc(i32 noundef %3)
  %.not = icmp eq i8* %4, null
  br i1 %.not, label %5, label %6

5:                                                ; preds = %2
  call void @yy_fatal_error(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  br label %6

6:                                                ; preds = %5, %2
  br label %7

7:                                                ; preds = %15, %6
  %.0 = phi i32 [ 0, %6 ], [ %16, %15 ]
  %8 = icmp slt i32 %.0, %1
  br i1 %8, label %9, label %17

9:                                                ; preds = %7
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds i8, i8* %0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds i8, i8* %4, i64 %13
  store i8 %12, i8* %14, align 1
  br label %15

15:                                               ; preds = %9
  %16 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !11

17:                                               ; preds = %7
  %18 = add nsw i32 %1, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %4, i64 %19
  store i8 0, i8* %20, align 1
  %21 = sext i32 %1 to i64
  %22 = getelementptr inbounds i8, i8* %4, i64 %21
  store i8 0, i8* %22, align 1
  %23 = call %struct.yy_buffer_state* @ia__scan_buffer(i8* noundef %4, i32 noundef %3)
  %.not1 = icmp eq %struct.yy_buffer_state* %23, null
  br i1 %.not1, label %24, label %25

24:                                               ; preds = %17
  call void @yy_fatal_error(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %25

25:                                               ; preds = %24, %17
  %26 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %23, i64 0, i32 5
  store i32 1, i32* %26, align 8
  ret %struct.yy_buffer_state* %23
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #8

; Function Attrs: noinline nounwind uwtable
define internal i8* @yy_flex_realloc(i8* noundef %0, i32 noundef %1) #0 {
  %3 = zext i32 %1 to i64
  %4 = call i8* @realloc(i8* noundef %0, i64 noundef %3) #10
  ret i8* %4
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #3

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { cold nounwind }

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
