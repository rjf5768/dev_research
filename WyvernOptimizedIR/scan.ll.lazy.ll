; ModuleID = './scan.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/bc/scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.yy_buffer_state = type { %struct._IO_FILE*, i8*, i8*, i32, i32, i32 }
%struct.YYSTYPE = type { i8*, i8, i32, %struct.arg_list* }
%struct.arg_list = type { i32, %struct.arg_list* }

@yyin = dso_local global %struct._IO_FILE* null, align 8
@yyout = dso_local global %struct._IO_FILE* null, align 8
@yy_init = internal global i32 1, align 4
@yy_start = internal global i32 0, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@yy_current_buffer = internal global %struct.yy_buffer_state* null, align 8
@yy_c_buf_p = internal global i8* null, align 8
@yy_hold_char = internal global i8 0, align 1
@yy_ec = internal constant [256 x i8] c"\00\01\01\01\01\01\01\01\01\02\03\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\04\05\01\01\06\07\01\08\09\0A\0B\0C\0D\0E\0F\10\10\10\10\10\10\10\10\10\10\01\11\12\13\14\01\01\15\15\15\15\15\15\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\16\17\18\19\1A\01\1B\1C\1D\1E\1F !\22#$%&'()*+,-./$0$1$234\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@yy_accept = internal constant [144 x i16] [i16 0, i16 0, i16 0, i16 40, i16 38, i16 33, i16 31, i16 25, i16 38, i16 26, i16 38, i16 22, i16 26, i16 22, i16 22, i16 38, i16 26, i16 37, i16 29, i16 27, i16 29, i16 38, i16 22, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 38, i16 33, i16 29, i16 0, i16 36, i16 27, i16 23, i16 30, i16 37, i16 0, i16 34, i16 37, i16 37, i16 0, i16 28, i16 32, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 7, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 24, i16 37, i16 0, i16 0, i16 37, i16 0, i16 35, i16 35, i16 35, i16 35, i16 35, i16 6, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 13, i16 35, i16 35, i16 35, i16 14, i16 16, i16 35, i16 17, i16 35, i16 35, i16 35, i16 35, i16 3, i16 15, i16 35, i16 35, i16 9, i16 35, i16 35, i16 2, i16 35, i16 35, i16 11, i16 35, i16 35, i16 12, i16 20, i16 35, i16 10, i16 35, i16 8, i16 35, i16 1, i16 4, i16 21, i16 5, i16 35, i16 35, i16 35, i16 19, i16 18, i16 0], align 16
@yy_last_accepting_state = internal global i32 0, align 4
@yy_last_accepting_cpos = internal global i8* null, align 8
@yy_chk = internal constant [247 x i16] [i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 13, i16 14, i16 31, i16 16, i16 15, i16 145, i16 31, i16 14, i16 13, i16 15, i16 38, i16 15, i16 16, i16 17, i16 19, i16 17, i16 37, i16 38, i16 19, i16 19, i16 17, i16 19, i16 17, i16 19, i16 32, i16 140, i16 71, i16 19, i16 32, i16 47, i16 37, i16 139, i16 32, i16 19, i16 47, i16 50, i16 47, i16 51, i16 138, i16 51, i16 50, i16 133, i16 50, i16 77, i16 51, i16 71, i16 51, i16 79, i16 77, i16 131, i16 77, i16 80, i16 79, i16 129, i16 79, i16 126, i16 80, i16 125, i16 80, i16 144, i16 144, i16 123, i16 122, i16 120, i16 119, i16 117, i16 116, i16 113, i16 112, i16 111, i16 110, i16 108, i16 105, i16 104, i16 103, i16 101, i16 100, i16 99, i16 98, i16 97, i16 96, i16 95, i16 94, i16 93, i16 92, i16 91, i16 90, i16 89, i16 88, i16 86, i16 85, i16 84, i16 83, i16 82, i16 81, i16 78, i16 75, i16 74, i16 73, i16 72, i16 70, i16 69, i16 68, i16 67, i16 66, i16 65, i16 63, i16 62, i16 61, i16 60, i16 59, i16 58, i16 57, i16 56, i16 52, i16 48, i16 42, i16 40, i16 39, i16 36, i16 35, i16 34, i16 33, i16 30, i16 28, i16 27, i16 26, i16 25, i16 24, i16 23, i16 22, i16 21, i16 20, i16 18, i16 12, i16 10, i16 9, i16 8, i16 7, i16 5, i16 3, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143], align 16
@yy_base = internal constant [146 x i16] [i16 0, i16 0, i16 0, i16 193, i16 194, i16 190, i16 194, i16 172, i16 185, i16 170, i16 181, i16 194, i16 168, i16 42, i16 41, i16 41, i16 46, i16 52, i16 167, i16 61, i16 166, i16 181, i16 164, i16 135, i16 137, i16 139, i16 148, i16 140, i16 136, i16 0, i16 149, i16 27, i16 50, i16 147, i16 130, i16 126, i16 141, i16 40, i16 36, i16 120, i16 168, i16 194, i16 164, i16 194, i16 194, i16 194, i16 194, i16 66, i16 165, i16 194, i16 72, i16 76, i16 164, i16 194, i16 194, i16 0, i16 120, i16 134, i16 124, i16 131, i16 117, i16 117, i16 122, i16 132, i16 0, i16 113, i16 117, i16 117, i16 128, i16 119, i16 118, i16 52, i16 125, i16 107, i16 106, i16 114, i16 194, i16 80, i16 145, i16 84, i16 88, i16 144, i16 105, i16 118, i16 98, i16 108, i16 111, i16 0, i16 95, i16 95, i16 93, i16 105, i16 102, i16 91, i16 95, i16 88, i16 103, i16 85, i16 93, i16 84, i16 85, i16 90, i16 0, i16 90, i16 91, i16 85, i16 0, i16 0, i16 93, i16 0, i16 77, i16 76, i16 90, i16 74, i16 0, i16 0, i16 75, i16 87, i16 0, i16 90, i16 85, i16 0, i16 75, i16 83, i16 0, i16 76, i16 63, i16 0, i16 0, i16 66, i16 0, i16 62, i16 0, i16 47, i16 0, i16 0, i16 0, i16 0, i16 45, i16 53, i16 29, i16 0, i16 0, i16 194, i16 111, i16 56], align 16
@yy_def = internal constant [146 x i16] [i16 0, i16 143, i16 1, i16 143, i16 143, i16 143, i16 143, i16 143, i16 144, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 143, i16 143, i16 143, i16 144, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 0, i16 143, i16 143], align 16
@yy_meta = internal constant [53 x i8] c"\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01", align 16
@yy_nxt = internal constant [247 x i16] [i16 0, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 11, i16 12, i16 13, i16 11, i16 14, i16 15, i16 16, i16 17, i16 11, i16 18, i16 19, i16 20, i16 17, i16 11, i16 21, i16 11, i16 22, i16 4, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 29, i16 29, i16 32, i16 29, i16 29, i16 33, i16 34, i16 35, i16 36, i16 37, i16 29, i16 29, i16 38, i16 29, i16 11, i16 39, i16 11, i16 46, i16 46, i16 63, i16 49, i16 47, i16 55, i16 64, i16 44, i16 44, i16 47, i16 74, i16 48, i16 44, i16 50, i16 53, i16 51, i16 72, i16 75, i16 53, i16 53, i16 51, i16 53, i16 52, i16 53, i16 65, i16 142, i16 96, i16 41, i16 66, i16 77, i16 73, i16 141, i16 67, i16 53, i16 77, i16 80, i16 78, i16 50, i16 140, i16 51, i16 80, i16 139, i16 81, i16 77, i16 51, i16 97, i16 52, i16 47, i16 77, i16 138, i16 78, i16 80, i16 47, i16 137, i16 48, i16 136, i16 80, i16 135, i16 81, i16 42, i16 42, i16 134, i16 133, i16 132, i16 131, i16 130, i16 129, i16 128, i16 127, i16 126, i16 125, i16 124, i16 123, i16 122, i16 121, i16 120, i16 119, i16 118, i16 117, i16 116, i16 115, i16 114, i16 113, i16 112, i16 111, i16 110, i16 109, i16 108, i16 107, i16 106, i16 105, i16 104, i16 103, i16 102, i16 80, i16 77, i16 101, i16 100, i16 99, i16 98, i16 95, i16 94, i16 93, i16 92, i16 91, i16 90, i16 89, i16 88, i16 87, i16 86, i16 85, i16 84, i16 83, i16 82, i16 51, i16 79, i16 43, i16 40, i16 76, i16 71, i16 70, i16 69, i16 68, i16 62, i16 61, i16 60, i16 59, i16 58, i16 57, i16 56, i16 44, i16 54, i16 41, i16 41, i16 44, i16 45, i16 44, i16 43, i16 41, i16 40, i16 143, i16 3, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143], align 16
@yytext = dso_local global i8* null, align 8
@yyleng = dso_local global i32 0, align 4
@yylval = external dso_local global %struct.YYSTYPE, align 8
@line_no = external dso_local global i32, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [31 x i8] c"EOF encountered in a comment.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"NUL character in string.\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"illegal character: ^%c\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"illegal character: \\%3d\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"illegal character: %s\00", align 1
@yy_n_chars = internal global i32 0, align 4
@yy_did_buffer_switch_on_eof = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"fatal flex scanner internal error--no action found\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"out of dynamic memory in yy_create_buffer()\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"fatal flex scanner internal error--end of buffer missed\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"fatal error - scanner input buffer overflow\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"read() in flex scanner failed\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"unexpected last match in input()\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @yylex() #0 {
  %1 = load i32, i32* @yy_init, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %22, label %2

2:                                                ; preds = %0
  %3 = load i32, i32* @yy_start, align 4
  %.not133 = icmp eq i32 %3, 0
  br i1 %.not133, label %4, label %5

4:                                                ; preds = %2
  store i32 1, i32* @yy_start, align 4
  br label %5

5:                                                ; preds = %4, %2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %.not134 = icmp eq %struct._IO_FILE* %6, null
  br i1 %.not134, label %7, label %9

7:                                                ; preds = %5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %8, %struct._IO_FILE** @yyin, align 8
  br label %9

9:                                                ; preds = %7, %5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %.not135 = icmp eq %struct._IO_FILE* %10, null
  br i1 %.not135, label %11, label %13

11:                                               ; preds = %9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %12, %struct._IO_FILE** @yyout, align 8
  br label %13

13:                                               ; preds = %11, %9
  %14 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %.not136 = icmp eq %struct.yy_buffer_state* %14, null
  br i1 %.not136, label %18, label %15

15:                                               ; preds = %13
  %16 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  call void @yy_init_buffer(%struct.yy_buffer_state* noundef %16, %struct._IO_FILE* noundef %17)
  br label %21

18:                                               ; preds = %13
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %20 = call %struct.yy_buffer_state* @yy_create_buffer(%struct._IO_FILE* noundef %19, i32 noundef 16384)
  store %struct.yy_buffer_state* %20, %struct.yy_buffer_state** @yy_current_buffer, align 8
  br label %21

21:                                               ; preds = %18, %15
  call void @yy_load_buffer_state()
  store i32 0, i32* @yy_init, align 4
  br label %22

22:                                               ; preds = %21, %0
  br label %23

23:                                               ; preds = %348, %22
  %24 = load i8*, i8** @yy_c_buf_p, align 8
  %25 = load i8, i8* @yy_hold_char, align 1
  store i8 %25, i8* %24, align 1
  %26 = load i32, i32* @yy_start, align 4
  br label %27

27:                                               ; preds = %.backedge, %23
  %.05 = phi i8* [ %24, %23 ], [ %.05.be, %.backedge ]
  %.02 = phi i8* [ %24, %23 ], [ %.02.be, %.backedge ]
  %.01 = phi i32 [ %26, %23 ], [ %.01.be, %.backedge ]
  br label %28

28:                                               ; preds = %70, %27
  %.13 = phi i8* [ %.02, %27 ], [ %69, %70 ]
  %.1 = phi i32 [ %.01, %27 ], [ %68, %70 ]
  %29 = load i8, i8* %.13, align 1
  %30 = sext i8 %29 to i64
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* @yy_ec, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i32 %.1 to i64
  %34 = getelementptr inbounds [144 x i16], [144 x i16]* @yy_accept, i64 0, i64 %33
  %35 = load i16, i16* %34, align 2
  %.not119 = icmp eq i16 %35, 0
  br i1 %.not119, label %37, label %36

36:                                               ; preds = %28
  store i32 %.1, i32* @yy_last_accepting_state, align 4
  store i8* %.13, i8** @yy_last_accepting_cpos, align 8
  br label %37

37:                                               ; preds = %36, %28
  br label %38

38:                                               ; preds = %58, %37
  %.08 = phi i8 [ %32, %37 ], [ %.19, %58 ]
  %.2 = phi i32 [ %.1, %37 ], [ %52, %58 ]
  %39 = sext i32 %.2 to i64
  %40 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %39
  %41 = load i16, i16* %40, align 2
  %42 = sext i16 %41 to i64
  %43 = sext i8 %.08 to i64
  %44 = add nsw i64 %42, %43
  %45 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_chk, i64 0, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = sext i16 %46 to i32
  %.not120 = icmp eq i32 %.2, %47
  br i1 %.not120, label %59, label %48

48:                                               ; preds = %38
  %49 = sext i32 %.2 to i64
  %50 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_def, i64 0, i64 %49
  %51 = load i16, i16* %50, align 2
  %52 = sext i16 %51 to i32
  %53 = icmp sgt i16 %51, 143
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = sext i8 %.08 to i64
  %56 = getelementptr inbounds [53 x i8], [53 x i8]* @yy_meta, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  br label %58

58:                                               ; preds = %54, %48
  %.19 = phi i8 [ %57, %54 ], [ %.08, %48 ]
  br label %38, !llvm.loop !4

59:                                               ; preds = %38
  %60 = sext i32 %.2 to i64
  %61 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = sext i16 %62 to i64
  %64 = sext i8 %.08 to i64
  %65 = add nsw i64 %63, %64
  %66 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_nxt, i64 0, i64 %65
  %67 = load i16, i16* %66, align 2
  %68 = sext i16 %67 to i32
  %69 = getelementptr inbounds i8, i8* %.13, i64 1
  br label %70

70:                                               ; preds = %59
  %71 = sext i16 %67 to i64
  %72 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %71
  %73 = load i16, i16* %72, align 2
  %.not121 = icmp eq i16 %73, 194
  br i1 %.not121, label %74, label %28, !llvm.loop !6

74:                                               ; preds = %70
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %74
  %.16.ph = phi i8* [ %.05, %74 ], [ %.16.ph.be, %.outer.backedge ]
  %.24.ph = phi i8* [ %69, %74 ], [ %.24.ph.be, %.outer.backedge ]
  %.3.ph = phi i32 [ %68, %74 ], [ %.3.ph.be, %.outer.backedge ]
  br label %75

75:                                               ; preds = %.outer, %86
  %.24 = phi i8* [ %88, %86 ], [ %.24.ph, %.outer ]
  %.3 = phi i32 [ %89, %86 ], [ %.3.ph, %.outer ]
  %76 = sext i32 %.3 to i64
  %77 = getelementptr inbounds [144 x i16], [144 x i16]* @yy_accept, i64 0, i64 %76
  %78 = load i16, i16* %77, align 2
  %79 = sext i16 %78 to i32
  store i8* %.16.ph, i8** @yytext, align 8
  %80 = ptrtoint i8* %.24 to i64
  %81 = ptrtoint i8* %.16.ph to i64
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* @yyleng, align 4
  %84 = load i8, i8* %.24, align 1
  store i8 %84, i8* @yy_hold_char, align 1
  store i8 0, i8* %.24, align 1
  store i8* %.24, i8** @yy_c_buf_p, align 8
  br label %85

85:                                               ; preds = %307, %75
  %.07 = phi i32 [ %79, %75 ], [ %312, %307 ]
  switch i32 %.07, label %341 [
    i32 0, label %86
    i32 1, label %90
    i32 2, label %91
    i32 3, label %92
    i32 4, label %93
    i32 5, label %94
    i32 6, label %95
    i32 7, label %96
    i32 8, label %97
    i32 9, label %98
    i32 10, label %99
    i32 11, label %100
    i32 12, label %101
    i32 13, label %102
    i32 14, label %103
    i32 15, label %104
    i32 16, label %105
    i32 17, label %106
    i32 18, label %107
    i32 19, label %108
    i32 20, label %109
    i32 21, label %110
    i32 22, label %111
    i32 23, label %116
    i32 24, label %117
    i32 25, label %118
    i32 26, label %119
    i32 27, label %122
    i32 28, label %125
    i32 29, label %131
    i32 30, label %134
    i32 31, label %137
    i32 32, label %140
    i32 33, label %143
    i32 34, label %144
    i32 35, label %181
    i32 36, label %184
    i32 37, label %207
    i32 38, label %250
    i32 39, label %271
    i32 41, label %277
    i32 40, label %278
  ]

86:                                               ; preds = %85
  %87 = load i8, i8* @yy_hold_char, align 1
  store i8 %87, i8* %.24, align 1
  %88 = load i8*, i8** @yy_last_accepting_cpos, align 8
  %89 = load i32, i32* @yy_last_accepting_state, align 4
  br label %75

90:                                               ; preds = %85
  br label %349

91:                                               ; preds = %85
  br label %349

92:                                               ; preds = %85
  br label %349

93:                                               ; preds = %85
  br label %349

94:                                               ; preds = %85
  br label %349

95:                                               ; preds = %85
  br label %349

96:                                               ; preds = %85
  br label %349

97:                                               ; preds = %85
  br label %349

98:                                               ; preds = %85
  br label %349

99:                                               ; preds = %85
  br label %349

100:                                              ; preds = %85
  br label %349

101:                                              ; preds = %85
  br label %349

102:                                              ; preds = %85
  br label %349

103:                                              ; preds = %85
  br label %349

104:                                              ; preds = %85
  br label %349

105:                                              ; preds = %85
  br label %349

106:                                              ; preds = %85
  br label %349

107:                                              ; preds = %85
  br label %349

108:                                              ; preds = %85
  br label %349

109:                                              ; preds = %85
  br label %349

110:                                              ; preds = %85
  br label %349

111:                                              ; preds = %85
  %112 = load i8*, i8** @yytext, align 8
  %113 = load i8, i8* %112, align 1
  store i8 %113, i8* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i64 0, i32 1), align 8
  %114 = load i8, i8* %112, align 1
  %115 = sext i8 %114 to i32
  br label %349

116:                                              ; preds = %85
  br label %349

117:                                              ; preds = %85
  br label %349

118:                                              ; preds = %85
  br label %349

119:                                              ; preds = %85
  %120 = load i8*, i8** @yytext, align 8
  %121 = load i8, i8* %120, align 1
  store i8 %121, i8* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i64 0, i32 1), align 8
  br label %349

122:                                              ; preds = %85
  %123 = load i8*, i8** @yytext, align 8
  %124 = load i8, i8* %123, align 1
  store i8 %124, i8* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i64 0, i32 1), align 8
  br label %349

125:                                              ; preds = %85
  store i8 61, i8* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i64 0, i32 1), align 8
  br label %126

126:                                              ; preds = %125
  %127 = load i8, i8* @yy_hold_char, align 1
  store i8 %127, i8* %.24, align 1
  %128 = getelementptr inbounds i8, i8* %.16.ph, i64 1
  store i8* %128, i8** @yy_c_buf_p, align 8
  store i8* %.16.ph, i8** @yytext, align 8
  store i32 1, i32* @yyleng, align 4
  %129 = load i8, i8* %128, align 1
  store i8 %129, i8* @yy_hold_char, align 1
  store i8 0, i8* %128, align 1
  store i8* %128, i8** @yy_c_buf_p, align 8
  br label %130

130:                                              ; preds = %126
  br label %349

131:                                              ; preds = %85
  %132 = load i8*, i8** @yytext, align 8
  %133 = call i8* @strcopyof(i8* noundef %132) #9
  store i8* %133, i8** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i64 0, i32 0), align 8
  br label %349

134:                                              ; preds = %85
  %135 = load i8*, i8** @yytext, align 8
  %136 = load i8, i8* %135, align 1
  store i8 %136, i8* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i64 0, i32 1), align 8
  br label %349

137:                                              ; preds = %85
  %138 = load i32, i32* @line_no, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* @line_no, align 4
  br label %349

140:                                              ; preds = %85
  %141 = load i32, i32* @line_no, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* @line_no, align 4
  br label %348

143:                                              ; preds = %85
  br label %348

144:                                              ; preds = %85
  br label %145

145:                                              ; preds = %179, %144
  br label %146

146:                                              ; preds = %157, %145
  %147 = call i32 @input()
  %.not132 = icmp eq i32 %147, 42
  br i1 %.not132, label %150, label %148

148:                                              ; preds = %146
  %149 = icmp ne i32 %147, -1
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i1 [ false, %146 ], [ %149, %148 ]
  br i1 %151, label %152, label %158

152:                                              ; preds = %150
  %153 = icmp eq i32 %147, 10
  br i1 %153, label %154, label %157

154:                                              ; preds = %152
  %155 = load i32, i32* @line_no, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* @line_no, align 4
  br label %157

157:                                              ; preds = %154, %152
  br label %146, !llvm.loop !7

158:                                              ; preds = %150
  %159 = icmp eq i32 %147, 42
  br i1 %159, label %160, label %174

160:                                              ; preds = %158
  br label %161

161:                                              ; preds = %164, %160
  %162 = call i32 @input()
  %163 = icmp eq i32 %162, 42
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  br label %161, !llvm.loop !8

165:                                              ; preds = %161
  %166 = icmp eq i32 %162, 47
  br i1 %166, label %167, label %168

167:                                              ; preds = %165
  br label %180

168:                                              ; preds = %165
  %169 = icmp eq i32 %162, 10
  br i1 %169, label %170, label %173

170:                                              ; preds = %168
  %171 = load i32, i32* @line_no, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* @line_no, align 4
  br label %173

173:                                              ; preds = %170, %168
  br label %174

174:                                              ; preds = %173, %158
  %.010 = phi i32 [ %162, %173 ], [ %147, %158 ]
  %175 = icmp eq i32 %.010, -1
  br i1 %175, label %176, label %179

176:                                              ; preds = %174
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %178 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %177) #10
  br label %180

179:                                              ; preds = %174
  br label %145

180:                                              ; preds = %176, %167
  br label %348

181:                                              ; preds = %85
  %182 = load i8*, i8** @yytext, align 8
  %183 = call i8* @strcopyof(i8* noundef %182) #9
  store i8* %183, i8** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i64 0, i32 0), align 8
  br label %349

184:                                              ; preds = %85
  %185 = load i8*, i8** @yytext, align 8
  %186 = call i8* @strcopyof(i8* noundef %185) #9
  store i8* %186, i8** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i64 0, i32 0), align 8
  %187 = load i8*, i8** @yytext, align 8
  br label %188

188:                                              ; preds = %202, %184
  %.012 = phi i32 [ 0, %184 ], [ %.113, %202 ]
  %.011 = phi i8* [ %187, %184 ], [ %203, %202 ]
  %189 = load i8, i8* %.011, align 1
  %.not130 = icmp eq i8 %189, 0
  br i1 %.not130, label %204, label %190

190:                                              ; preds = %188
  %191 = load i8, i8* %.011, align 1
  %192 = icmp eq i8 %191, 10
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i32, i32* @line_no, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* @line_no, align 4
  br label %196

196:                                              ; preds = %193, %190
  %197 = load i8, i8* %.011, align 1
  %198 = icmp eq i8 %197, 34
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = add nsw i32 %.012, 1
  br label %201

201:                                              ; preds = %199, %196
  %.113 = phi i32 [ %200, %199 ], [ %.012, %196 ]
  br label %202

202:                                              ; preds = %201
  %203 = getelementptr inbounds i8, i8* %.011, i64 1
  br label %188, !llvm.loop !9

204:                                              ; preds = %188
  %.not131 = icmp eq i32 %.012, 2
  br i1 %.not131, label %206, label %205

205:                                              ; preds = %204
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)) #9
  br label %206

206:                                              ; preds = %205, %204
  br label %349

207:                                              ; preds = %85
  %208 = load i8*, i8** @yytext, align 8
  %209 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %208) #11
  %210 = shl i64 %209, 32
  %sext127 = add i64 %210, -4294967296
  %211 = ashr exact i64 %sext127, 32
  %212 = getelementptr inbounds i8, i8* %208, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = icmp eq i8 %213, 46
  br i1 %214, label %215, label %220

215:                                              ; preds = %207
  %216 = load i8*, i8** @yytext, align 8
  %217 = shl i64 %209, 32
  %sext129 = add i64 %217, -4294967296
  %218 = ashr exact i64 %sext129, 32
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  store i8 0, i8* %219, align 1
  br label %220

220:                                              ; preds = %215, %207
  %221 = load i8*, i8** @yytext, align 8
  br label %222

222:                                              ; preds = %225, %220
  %.014 = phi i8* [ %221, %220 ], [ %226, %225 ]
  %223 = load i8, i8* %.014, align 1
  %224 = icmp eq i8 %223, 48
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, i8* %.014, i64 1
  br label %222, !llvm.loop !10

227:                                              ; preds = %222
  %228 = load i8, i8* %.014, align 1
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, i8* %.014, i64 -1
  br label %232

232:                                              ; preds = %230, %227
  %.115 = phi i8* [ %231, %230 ], [ %.014, %227 ]
  br label %233

233:                                              ; preds = %246, %232
  %.018 = phi i8* [ %221, %232 ], [ %.119, %246 ]
  %.216 = phi i8* [ %.115, %232 ], [ %.317, %246 ]
  %234 = load i8, i8* %.216, align 1
  %.not128 = icmp eq i8 %234, 0
  br i1 %.not128, label %247, label %235

235:                                              ; preds = %233
  %236 = load i8, i8* %.216, align 1
  %237 = icmp eq i8 %236, 92
  br i1 %237, label %238, label %242

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %.216, i64 2
  %240 = load i32, i32* @line_no, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* @line_no, align 4
  br label %246

242:                                              ; preds = %235
  %243 = getelementptr inbounds i8, i8* %.216, i64 1
  %244 = load i8, i8* %.216, align 1
  %245 = getelementptr inbounds i8, i8* %.018, i64 1
  store i8 %244, i8* %.018, align 1
  br label %246

246:                                              ; preds = %242, %238
  %.119 = phi i8* [ %.018, %238 ], [ %245, %242 ]
  %.317 = phi i8* [ %239, %238 ], [ %243, %242 ]
  br label %233, !llvm.loop !11

247:                                              ; preds = %233
  store i8 0, i8* %.018, align 1
  %248 = load i8*, i8** @yytext, align 8
  %249 = call i8* @strcopyof(i8* noundef %248) #9
  store i8* %249, i8** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i64 0, i32 0), align 8
  br label %349

250:                                              ; preds = %85
  %251 = load i8*, i8** @yytext, align 8
  %252 = load i8, i8* %251, align 1
  %253 = icmp slt i8 %252, 32
  br i1 %253, label %254, label %259

254:                                              ; preds = %250
  %255 = load i8*, i8** @yytext, align 8
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i32
  %258 = add nsw i32 %257, 64
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef %258) #9
  br label %270

259:                                              ; preds = %250
  %260 = load i8*, i8** @yytext, align 8
  %261 = load i8, i8* %260, align 1
  %262 = icmp eq i8 %261, 127
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = load i8*, i8** @yytext, align 8
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 noundef %266) #9
  br label %269

267:                                              ; preds = %259
  %268 = load i8*, i8** @yytext, align 8
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* noundef %268) #9
  br label %269

269:                                              ; preds = %267, %263
  br label %270

270:                                              ; preds = %269, %254
  br label %348

271:                                              ; preds = %85
  %272 = load i8*, i8** @yytext, align 8
  %273 = load i32, i32* @yyleng, align 4
  %274 = sext i32 %273 to i64
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %276 = call i64 @fwrite(i8* noundef %272, i64 noundef %274, i64 noundef 1, %struct._IO_FILE* noundef %275) #9
  br label %348

277:                                              ; preds = %85
  br label %349

278:                                              ; preds = %85
  %279 = load i8*, i8** @yytext, align 8
  %280 = ptrtoint i8* %.24 to i64
  %281 = ptrtoint i8* %279 to i64
  %282 = xor i64 %281, -1
  %283 = add i64 %282, %280
  %284 = load i8, i8* @yy_hold_char, align 1
  store i8 %284, i8* %.24, align 1
  %285 = load i8*, i8** @yy_c_buf_p, align 8
  %286 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %287 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %286, i64 0, i32 1
  %288 = load i8*, i8** %287, align 8
  %289 = load i32, i32* @yy_n_chars, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8, i8* %288, i64 %290
  %.not122 = icmp ugt i8* %285, %291
  br i1 %.not122, label %303, label %292

292:                                              ; preds = %278
  %293 = load i8*, i8** @yytext, align 8
  %sext125 = shl i64 %283, 32
  %294 = ashr exact i64 %sext125, 32
  %295 = getelementptr inbounds i8, i8* %293, i64 %294
  store i8* %295, i8** @yy_c_buf_p, align 8
  %296 = call i32 @yy_get_previous_state()
  %297 = call i32 @yy_try_NUL_trans(i32 noundef %296)
  %298 = load i8*, i8** @yytext, align 8
  %.not126 = icmp eq i32 %297, 0
  br i1 %.not126, label %302, label %299

299:                                              ; preds = %292
  %300 = load i8*, i8** @yy_c_buf_p, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 1
  store i8* %301, i8** @yy_c_buf_p, align 8
  br label %.backedge

.backedge:                                        ; preds = %299, %322
  %.05.be = phi i8* [ %298, %299 ], [ %328, %322 ]
  %.02.be = phi i8* [ %301, %299 ], [ %327, %322 ]
  %.01.be = phi i32 [ %297, %299 ], [ %326, %322 ]
  br label %27

302:                                              ; preds = %292
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %302, %329
  %.16.ph.be = phi i8* [ %338, %329 ], [ %298, %302 ]
  %.24.ph.be = phi i8* [ %337, %329 ], [ %.24, %302 ]
  %.3.ph.be = phi i32 [ %336, %329 ], [ %296, %302 ]
  br label %.outer

303:                                              ; preds = %278
  %304 = call i32 @yy_get_next_buffer()
  switch i32 %304, label %.loopexit [
    i32 1, label %305
    i32 0, label %322
    i32 2, label %329
  ]

305:                                              ; preds = %303
  store i32 0, i32* @yy_did_buffer_switch_on_eof, align 4
  %306 = call i32 @yywrap()
  %.not123 = icmp eq i32 %306, 0
  br i1 %.not123, label %313, label %307

307:                                              ; preds = %305
  %308 = load i8*, i8** @yytext, align 8
  store i8* %308, i8** @yy_c_buf_p, align 8
  %309 = load i32, i32* @yy_start, align 4
  %310 = add nsw i32 %309, -1
  %311 = sdiv i32 %310, 2
  %312 = add nsw i32 %311, 41
  br label %85

313:                                              ; preds = %305
  %314 = load i32, i32* @yy_did_buffer_switch_on_eof, align 4
  %.not124 = icmp eq i32 %314, 0
  br i1 %.not124, label %315, label %320

315:                                              ; preds = %313
  br label %316

316:                                              ; preds = %315
  %317 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %318 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  call void @yy_init_buffer(%struct.yy_buffer_state* noundef %317, %struct._IO_FILE* noundef %318)
  call void @yy_load_buffer_state()
  br label %319

319:                                              ; preds = %316
  br label %320

320:                                              ; preds = %319, %313
  br label %321

321:                                              ; preds = %320
  br label %339

322:                                              ; preds = %303
  %323 = load i8*, i8** @yytext, align 8
  %sext = shl i64 %283, 32
  %324 = ashr exact i64 %sext, 32
  %325 = getelementptr inbounds i8, i8* %323, i64 %324
  store i8* %325, i8** @yy_c_buf_p, align 8
  %326 = call i32 @yy_get_previous_state()
  %327 = load i8*, i8** @yy_c_buf_p, align 8
  %328 = load i8*, i8** @yytext, align 8
  br label %.backedge

329:                                              ; preds = %303
  %330 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %331 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %330, i64 0, i32 1
  %332 = load i8*, i8** %331, align 8
  %333 = load i32, i32* @yy_n_chars, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8, i8* %332, i64 %334
  store i8* %335, i8** @yy_c_buf_p, align 8
  %336 = call i32 @yy_get_previous_state()
  %337 = load i8*, i8** @yy_c_buf_p, align 8
  %338 = load i8*, i8** @yytext, align 8
  br label %.outer.backedge

.loopexit:                                        ; preds = %303
  br label %339

339:                                              ; preds = %.loopexit, %321
  br label %340

340:                                              ; preds = %339
  br label %348

341:                                              ; preds = %85
  br label %342

342:                                              ; preds = %341
  %343 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %344 = call i64 @fwrite(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* %343) #10
  %345 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %346 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %345) #9
  call void @exit(i32 noundef 1) #12
  br label %UnifiedUnreachableBlock

347:                                              ; No predecessors!
  br label %UnifiedUnreachableBlock

348:                                              ; preds = %340, %271, %270, %180, %143, %140
  br label %23

349:                                              ; preds = %277, %247, %206, %181, %137, %134, %131, %130, %122, %119, %118, %117, %116, %111, %110, %109, %108, %107, %106, %105, %104, %103, %102, %101, %100, %99, %98, %97, %96, %95, %94, %93, %92, %91, %90
  %.0 = phi i32 [ 0, %277 ], [ 263, %247 ], [ 261, %206 ], [ 262, %181 ], [ 257, %137 ], [ 267, %134 ], [ 266, %131 ], [ 265, %130 ], [ 265, %122 ], [ 264, %119 ], [ 260, %118 ], [ 259, %117 ], [ 258, %116 ], [ %115, %111 ], [ 288, %110 ], [ 287, %109 ], [ 286, %108 ], [ 283, %107 ], [ 285, %106 ], [ 284, %105 ], [ 282, %104 ], [ 277, %103 ], [ 281, %102 ], [ 280, %101 ], [ 279, %100 ], [ 278, %99 ], [ 276, %98 ], [ 275, %97 ], [ 274, %96 ], [ 273, %95 ], [ 272, %94 ], [ 271, %93 ], [ 270, %92 ], [ 269, %91 ], [ 268, %90 ]
  ret i32 %.0

UnifiedUnreachableBlock:                          ; preds = %347, %342
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @yy_init_buffer(%struct.yy_buffer_state* nocapture noundef %0, %struct._IO_FILE* noundef %1) #1 {
  %3 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 0
  store %struct._IO_FILE* %1, %struct._IO_FILE** %3, align 8
  %4 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 1
  %5 = load i8*, i8** %4, align 8
  store i8 10, i8* %5, align 1
  %6 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 4
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 2
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 2
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 5
  store i32 0, i32* %17, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.yy_buffer_state* @yy_create_buffer(%struct._IO_FILE* noundef %0, i32 noundef %1) #0 {
  %3 = call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #9
  %4 = bitcast i8* %3 to %struct.yy_buffer_state*
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %5, label %12

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %7) #10
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %9) #9
  call void @exit(i32 noundef 1) #12
  br label %UnifiedUnreachableBlock

11:                                               ; No predecessors!
  br label %12

12:                                               ; preds = %11, %2
  %13 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i64 0, i32 3
  store i32 %1, i32* %13, align 8
  %14 = add nsw i32 %1, 2
  %15 = zext i32 %14 to i64
  %16 = call noalias i8* @malloc(i64 noundef %15) #9
  %17 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i64 0, i32 1
  store i8* %16, i8** %17, align 8
  %.not1 = icmp eq i8* %16, null
  br i1 %.not1, label %18, label %25

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %20) #10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %22) #9
  call void @exit(i32 noundef 1) #12
  br label %UnifiedUnreachableBlock

24:                                               ; No predecessors!
  br label %25

25:                                               ; preds = %24, %12
  call void @yy_init_buffer(%struct.yy_buffer_state* noundef nonnull %4, %struct._IO_FILE* noundef %0)
  ret %struct.yy_buffer_state* %4

UnifiedUnreachableBlock:                          ; preds = %19, %6
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @yy_load_buffer_state() #1 {
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %2 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1, i64 0, i32 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @yy_n_chars, align 4
  %4 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8
  store i8* %5, i8** @yy_c_buf_p, align 8
  store i8* %5, i8** @yytext, align 8
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %7 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i64 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  store %struct._IO_FILE* %8, %struct._IO_FILE** @yyin, align 8
  %9 = load i8, i8* %5, align 1
  store i8 %9, i8* @yy_hold_char, align 1
  ret void
}

declare dso_local i8* @strcopyof(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @input() #0 {
  %1 = load i8*, i8** @yy_c_buf_p, align 8
  %2 = load i8, i8* @yy_hold_char, align 1
  store i8 %2, i8* %1, align 1
  %3 = load i8*, i8** @yy_c_buf_p, align 8
  %4 = load i8, i8* %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %42

6:                                                ; preds = %0
  %7 = load i8*, i8** @yy_c_buf_p, align 8
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %9 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %8, i64 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = load i32, i32* @yy_n_chars, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = icmp ult i8* %7, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = load i8*, i8** @yy_c_buf_p, align 8
  store i8 0, i8* %16, align 1
  br label %41

17:                                               ; preds = %6
  %18 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %18, i8** @yytext, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %19, i8** @yy_c_buf_p, align 8
  %20 = call i32 @yy_get_next_buffer()
  switch i32 %20, label %40 [
    i32 1, label %21
    i32 0, label %31
    i32 2, label %33
  ]

21:                                               ; preds = %17
  %22 = call i32 @yywrap()
  %.not = icmp eq i32 %22, 0
  br i1 %.not, label %25, label %23

23:                                               ; preds = %21
  %24 = load i8*, i8** @yytext, align 8
  store i8* %24, i8** @yy_c_buf_p, align 8
  br label %48

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  call void @yy_init_buffer(%struct.yy_buffer_state* noundef %27, %struct._IO_FILE* noundef %28)
  call void @yy_load_buffer_state()
  br label %29

29:                                               ; preds = %26
  %30 = call i32 @input()
  br label %48

31:                                               ; preds = %17
  %32 = load i8*, i8** @yytext, align 8
  store i8* %32, i8** @yy_c_buf_p, align 8
  br label %40

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %35) #10
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %37) #9
  call void @exit(i32 noundef 1) #12
  unreachable

39:                                               ; No predecessors!
  br label %40

40:                                               ; preds = %39, %31, %17
  br label %41

41:                                               ; preds = %40, %15
  br label %42

42:                                               ; preds = %41, %0
  %43 = load i8*, i8** @yy_c_buf_p, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = getelementptr inbounds i8, i8* %43, i64 1
  store i8* %46, i8** @yy_c_buf_p, align 8
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* @yy_hold_char, align 1
  br label %48

48:                                               ; preds = %42, %29, %23
  %.0 = phi i32 [ %45, %42 ], [ -1, %23 ], [ %30, %29 ]
  ret i32 %.0
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local void @yyerror(i8* noundef, ...) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @yy_get_previous_state() #5 {
  %1 = load i32, i32* @yy_start, align 4
  %2 = load i8*, i8** @yytext, align 8
  br label %3

3:                                                ; preds = %43, %0
  %.01 = phi i8* [ %2, %0 ], [ %53, %43 ]
  %.0 = phi i32 [ %1, %0 ], [ %52, %43 ]
  %4 = load i8*, i8** @yy_c_buf_p, align 8
  %5 = icmp ult i8* %.01, %4
  br i1 %5, label %6, label %54

6:                                                ; preds = %3
  %7 = load i8, i8* %.01, align 1
  %.not = icmp eq i8 %7, 0
  br i1 %.not, label %13, label %8

8:                                                ; preds = %6
  %9 = load i8, i8* %.01, align 1
  %10 = sext i8 %9 to i64
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* @yy_ec, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  br label %14

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi i8 [ %12, %8 ], [ 1, %13 ]
  %16 = sext i32 %.0 to i64
  %17 = getelementptr inbounds [144 x i16], [144 x i16]* @yy_accept, i64 0, i64 %16
  %18 = load i16, i16* %17, align 2
  %.not4 = icmp eq i16 %18, 0
  br i1 %.not4, label %20, label %19

19:                                               ; preds = %14
  store i32 %.0, i32* @yy_last_accepting_state, align 4
  store i8* %.01, i8** @yy_last_accepting_cpos, align 8
  br label %20

20:                                               ; preds = %19, %14
  br label %21

21:                                               ; preds = %41, %20
  %.02 = phi i8 [ %15, %20 ], [ %.13, %41 ]
  %.1 = phi i32 [ %.0, %20 ], [ %35, %41 ]
  %22 = sext i32 %.1 to i64
  %23 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %22
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i64
  %26 = sext i8 %.02 to i64
  %27 = add nsw i64 %25, %26
  %28 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_chk, i64 0, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = sext i16 %29 to i32
  %.not5 = icmp eq i32 %.1, %30
  br i1 %.not5, label %42, label %31

31:                                               ; preds = %21
  %32 = sext i32 %.1 to i64
  %33 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_def, i64 0, i64 %32
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i32
  %36 = icmp sgt i16 %34, 143
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = sext i8 %.02 to i64
  %39 = getelementptr inbounds [53 x i8], [53 x i8]* @yy_meta, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  br label %41

41:                                               ; preds = %37, %31
  %.13 = phi i8 [ %40, %37 ], [ %.02, %31 ]
  br label %21, !llvm.loop !12

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %42
  %44 = sext i32 %.1 to i64
  %45 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = sext i16 %46 to i64
  %48 = sext i8 %.02 to i64
  %49 = add nsw i64 %47, %48
  %50 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_nxt, i64 0, i64 %49
  %51 = load i16, i16* %50, align 2
  %52 = sext i16 %51 to i32
  %53 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %3, !llvm.loop !13

54:                                               ; preds = %3
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @yy_try_NUL_trans(i32 noundef %0) #5 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [144 x i16], [144 x i16]* @yy_accept, i64 0, i64 %2
  %4 = load i16, i16* %3, align 2
  %.not = icmp eq i16 %4, 0
  br i1 %.not, label %7, label %5

5:                                                ; preds = %1
  %6 = load i8*, i8** @yy_c_buf_p, align 8
  store i32 %0, i32* @yy_last_accepting_state, align 4
  store i8* %6, i8** @yy_last_accepting_cpos, align 8
  br label %7

7:                                                ; preds = %5, %1
  br label %8

8:                                                ; preds = %28, %7
  %.01 = phi i8 [ 1, %7 ], [ %.1, %28 ]
  %.0 = phi i32 [ %0, %7 ], [ %22, %28 ]
  %9 = sext i32 %.0 to i64
  %10 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %9
  %11 = load i16, i16* %10, align 2
  %12 = sext i16 %11 to i64
  %13 = sext i8 %.01 to i64
  %14 = add nsw i64 %12, %13
  %15 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_chk, i64 0, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = sext i16 %16 to i32
  %.not2 = icmp eq i32 %.0, %17
  br i1 %.not2, label %29, label %18

18:                                               ; preds = %8
  %19 = sext i32 %.0 to i64
  %20 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_def, i64 0, i64 %19
  %21 = load i16, i16* %20, align 2
  %22 = sext i16 %21 to i32
  %23 = icmp sgt i16 %21, 143
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = sext i8 %.01 to i64
  %26 = getelementptr inbounds [53 x i8], [53 x i8]* @yy_meta, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  br label %28

28:                                               ; preds = %24, %18
  %.1 = phi i8 [ %27, %24 ], [ %.01, %18 ]
  br label %8, !llvm.loop !14

29:                                               ; preds = %8
  %30 = sext i32 %.0 to i64
  %31 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %30
  %32 = load i16, i16* %31, align 2
  %33 = sext i16 %32 to i64
  %34 = sext i8 %.01 to i64
  %35 = add nsw i64 %33, %34
  %36 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_nxt, i64 0, i64 %35
  %37 = load i16, i16* %36, align 2
  %38 = sext i16 %37 to i64
  %39 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %38
  %40 = load i16, i16* %39, align 2
  %41 = icmp eq i16 %40, 194
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %45

43:                                               ; preds = %29
  %44 = sext i16 %37 to i32
  br label %45

45:                                               ; preds = %43, %42
  %46 = phi i32 [ 0, %42 ], [ %44, %43 ]
  ret i32 %46
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @yy_get_next_buffer() #0 {
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %2 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1, i64 0, i32 1
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** @yytext, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 -1
  %6 = load i8*, i8** @yy_c_buf_p, align 8
  %7 = load i32, i32* @yy_n_chars, align 4
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %3, i64 %9
  %11 = icmp ugt i8* %6, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %0
  br label %13

13:                                               ; preds = %12
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %14) #10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %16) #9
  call void @exit(i32 noundef 1) #12
  br label %UnifiedUnreachableBlock

18:                                               ; No predecessors!
  br label %19

19:                                               ; preds = %18, %0
  %20 = load i8*, i8** @yy_c_buf_p, align 8
  %21 = load i8*, i8** @yytext, align 8
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  br label %26

26:                                               ; preds = %30, %19
  %.03 = phi i32 [ 0, %19 ], [ %33, %30 ]
  %.01 = phi i8* [ %5, %19 ], [ %32, %30 ]
  %.0 = phi i8* [ %3, %19 ], [ %31, %30 ]
  %27 = icmp slt i32 %.03, %25
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = load i8, i8* %.01, align 1
  store i8 %29, i8* %.0, align 1
  br label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds i8, i8* %.0, i64 1
  %32 = getelementptr inbounds i8, i8* %.01, i64 1
  %33 = add nuw nsw i32 %.03, 1
  br label %26, !llvm.loop !15

34:                                               ; preds = %26
  %35 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %36 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %35, i64 0, i32 5
  %37 = load i32, i32* %36, align 8
  %.not = icmp eq i32 %37, 0
  br i1 %.not, label %39, label %38

38:                                               ; preds = %34
  store i32 0, i32* @yy_n_chars, align 4
  br label %81

39:                                               ; preds = %34
  %40 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %41 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %40, i64 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = xor i32 %25, -1
  %44 = add i32 %42, %43
  %45 = icmp sgt i32 %44, 8192
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %57

47:                                               ; preds = %39
  %48 = icmp slt i32 %44, 1
  br i1 %48, label %49, label %56

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %51) #10
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %53) #9
  call void @exit(i32 noundef 1) #12
  br label %UnifiedUnreachableBlock

55:                                               ; No predecessors!
  br label %56

56:                                               ; preds = %55, %47
  %phi.cast = sext i32 %44 to i64
  br label %57

57:                                               ; preds = %56, %46
  %.02 = phi i64 [ 8192, %46 ], [ %phi.cast, %56 ]
  br label %58

58:                                               ; preds = %79, %57
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %60 = call i32 @fileno(%struct._IO_FILE* noundef %59) #9
  %61 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %62 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %61, i64 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %sext = shl i64 %24, 32
  %64 = ashr exact i64 %sext, 32
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = call i64 @read(i32 noundef %60, i8* noundef %65, i64 noundef %.02) #9
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* @yy_n_chars, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %58
  %70 = call i32* @__errno_location() #13
  %71 = load i32, i32* %70, align 4
  %.not6 = icmp eq i32 %71, 4
  br i1 %.not6, label %79, label %72

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %72
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %75 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %74) #10
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %77 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %76) #9
  call void @exit(i32 noundef 1) #12
  br label %UnifiedUnreachableBlock

78:                                               ; No predecessors!
  br label %UnifiedUnreachableBlock5

79:                                               ; preds = %69
  br label %58, !llvm.loop !16

80:                                               ; preds = %58
  br label %81

81:                                               ; preds = %80, %38
  %82 = load i32, i32* @yy_n_chars, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = icmp eq i32 %25, 1
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %88 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %87, i64 0, i32 5
  store i32 2, i32* %88, align 8
  br label %92

89:                                               ; preds = %84
  %90 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %91 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %90, i64 0, i32 5
  store i32 1, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %86
  %.04 = phi i32 [ 1, %86 ], [ 2, %89 ]
  br label %94

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %92
  %.1 = phi i32 [ %.04, %92 ], [ 0, %93 ]
  %95 = load i32, i32* @yy_n_chars, align 4
  %96 = add nsw i32 %95, %25
  store i32 %96, i32* @yy_n_chars, align 4
  %97 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %98 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %97, i64 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = sext i32 %96 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8 0, i8* %101, align 1
  %102 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %103 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %102, i64 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* @yy_n_chars, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8 0, i8* %108, align 1
  %109 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %110 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %109, i64 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8* %112, i8** @yytext, align 8
  ret i32 %.1

UnifiedUnreachableBlock:                          ; preds = %73, %50, %13
  br label %UnifiedUnreachableBlock5

UnifiedUnreachableBlock5:                         ; preds = %UnifiedUnreachableBlock, %78
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @yywrap() #0 {
  %1 = call i32 @open_new_file() #9
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %2, label %3

2:                                                ; preds = %0
  br label %4

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %3, %2
  %.0 = phi i32 [ 0, %3 ], [ 1, %2 ]
  ret i32 %.0
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @yyrestart(%struct._IO_FILE* noundef %0) #1 {
  %2 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  call void @yy_init_buffer(%struct.yy_buffer_state* noundef %2, %struct._IO_FILE* noundef %0)
  call void @yy_load_buffer_state()
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @yy_switch_to_buffer(%struct.yy_buffer_state* noundef %0) #1 {
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
  call void @yy_load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %16

16:                                               ; preds = %15, %4
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @yy_delete_buffer(%struct.yy_buffer_state* noundef %0) #0 {
  %2 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %3 = icmp eq %struct.yy_buffer_state* %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** @yy_current_buffer, align 8
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8
  call void @free(i8* noundef %7) #9
  %8 = bitcast %struct.yy_buffer_state* %0 to i8*
  call void @free(i8* noundef %8) #9
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #7

declare dso_local i32 @open_new_file() #2

declare dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE* noundef) #7

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readnone willreturn }

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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
