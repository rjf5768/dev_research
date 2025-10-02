; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/bc/scan.c'
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
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = load i32, i32* @yy_init, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %0
  %18 = load i32, i32* @yy_start, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 1, i32* @yy_start, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %23 = icmp ne %struct._IO_FILE* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %25, %struct._IO_FILE** @yyin, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %28 = icmp ne %struct._IO_FILE* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %30, %struct._IO_FILE** @yyout, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %33 = icmp ne %struct.yy_buffer_state* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  call void @yy_init_buffer(%struct.yy_buffer_state* noundef %35, %struct._IO_FILE* noundef %36)
  br label %40

37:                                               ; preds = %31
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %39 = call %struct.yy_buffer_state* @yy_create_buffer(%struct._IO_FILE* noundef %38, i32 noundef 16384)
  store %struct.yy_buffer_state* %39, %struct.yy_buffer_state** @yy_current_buffer, align 8
  br label %40

40:                                               ; preds = %37, %34
  call void @yy_load_buffer_state()
  store i32 0, i32* @yy_init, align 4
  br label %41

41:                                               ; preds = %40, %0
  br label %42

42:                                               ; preds = %41, %480
  %43 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %43, i8** %3, align 8
  %44 = load i8, i8* @yy_hold_char, align 1
  %45 = load i8*, i8** %3, align 8
  store i8 %44, i8* %45, align 1
  %46 = load i8*, i8** %3, align 8
  store i8* %46, i8** %4, align 8
  %47 = load i32, i32* @yy_start, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %451, %423, %42
  br label %49

49:                                               ; preds = %108, %48
  %50 = load i8*, i8** %3, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i64
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* @yy_ec, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  store i8 %54, i8* %6, align 1
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [144 x i16], [144 x i16]* @yy_accept, i64 0, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = icmp ne i16 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load i32, i32* %2, align 4
  store i32 %61, i32* @yy_last_accepting_state, align 4
  %62 = load i8*, i8** %3, align 8
  store i8* %62, i8** @yy_last_accepting_cpos, align 8
  br label %63

63:                                               ; preds = %60, %49
  br label %64

64:                                               ; preds = %92, %63
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %66
  %68 = load i16, i16* %67, align 2
  %69 = sext i16 %68 to i32
  %70 = load i8, i8* %6, align 1
  %71 = sext i8 %70 to i32
  %72 = add nsw i32 %69, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_chk, i64 0, i64 %73
  %75 = load i16, i16* %74, align 2
  %76 = sext i16 %75 to i32
  %77 = load i32, i32* %2, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %64
  %80 = load i32, i32* %2, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_def, i64 0, i64 %81
  %83 = load i16, i16* %82, align 2
  %84 = sext i16 %83 to i32
  store i32 %84, i32* %2, align 4
  %85 = load i32, i32* %2, align 4
  %86 = icmp sge i32 %85, 144
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load i8, i8* %6, align 1
  %89 = sext i8 %88 to i64
  %90 = getelementptr inbounds [53 x i8], [53 x i8]* @yy_meta, i64 0, i64 %89
  %91 = load i8, i8* %90, align 1
  store i8 %91, i8* %6, align 1
  br label %92

92:                                               ; preds = %87, %79
  br label %64, !llvm.loop !4

93:                                               ; preds = %64
  %94 = load i32, i32* %2, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %95
  %97 = load i16, i16* %96, align 2
  %98 = sext i16 %97 to i32
  %99 = load i8, i8* %6, align 1
  %100 = sext i8 %99 to i32
  %101 = add nsw i32 %98, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_nxt, i64 0, i64 %102
  %104 = load i16, i16* %103, align 2
  %105 = sext i16 %104 to i32
  store i32 %105, i32* %2, align 4
  %106 = load i8*, i8** %3, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %3, align 8
  br label %108

108:                                              ; preds = %93
  %109 = load i32, i32* %2, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %110
  %112 = load i16, i16* %111, align 2
  %113 = sext i16 %112 to i32
  %114 = icmp ne i32 %113, 194
  br i1 %114, label %49, label %115, !llvm.loop !6

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %460, %427, %135, %115
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [144 x i16], [144 x i16]* @yy_accept, i64 0, i64 %118
  %120 = load i16, i16* %119, align 2
  %121 = sext i16 %120 to i32
  store i32 %121, i32* %5, align 4
  %122 = load i8*, i8** %4, align 8
  store i8* %122, i8** @yytext, align 8
  %123 = load i8*, i8** %3, align 8
  %124 = load i8*, i8** %4, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* @yyleng, align 4
  %129 = load i8*, i8** %3, align 8
  %130 = load i8, i8* %129, align 1
  store i8 %130, i8* @yy_hold_char, align 1
  %131 = load i8*, i8** %3, align 8
  store i8 0, i8* %131, align 1
  %132 = load i8*, i8** %3, align 8
  store i8* %132, i8** @yy_c_buf_p, align 8
  br label %133

133:                                              ; preds = %433, %116
  %134 = load i32, i32* %5, align 4
  switch i32 %134, label %473 [
    i32 0, label %135
    i32 1, label %140
    i32 2, label %141
    i32 3, label %142
    i32 4, label %143
    i32 5, label %144
    i32 6, label %145
    i32 7, label %146
    i32 8, label %147
    i32 9, label %148
    i32 10, label %149
    i32 11, label %150
    i32 12, label %151
    i32 13, label %152
    i32 14, label %153
    i32 15, label %154
    i32 16, label %155
    i32 17, label %156
    i32 18, label %157
    i32 19, label %158
    i32 20, label %159
    i32 21, label %160
    i32 22, label %161
    i32 23, label %169
    i32 24, label %170
    i32 25, label %171
    i32 26, label %172
    i32 27, label %176
    i32 28, label %180
    i32 29, label %198
    i32 30, label %201
    i32 31, label %205
    i32 32, label %208
    i32 33, label %211
    i32 34, label %212
    i32 35, label %256
    i32 36, label %259
    i32 37, label %293
    i32 38, label %359
    i32 39, label %386
    i32 41, label %392
    i32 40, label %393
  ]

135:                                              ; preds = %133
  %136 = load i8, i8* @yy_hold_char, align 1
  %137 = load i8*, i8** %3, align 8
  store i8 %136, i8* %137, align 1
  %138 = load i8*, i8** @yy_last_accepting_cpos, align 8
  store i8* %138, i8** %3, align 8
  %139 = load i32, i32* @yy_last_accepting_state, align 4
  store i32 %139, i32* %2, align 4
  br label %116

140:                                              ; preds = %133
  store i32 268, i32* %1, align 4
  br label %481

141:                                              ; preds = %133
  store i32 269, i32* %1, align 4
  br label %481

142:                                              ; preds = %133
  store i32 270, i32* %1, align 4
  br label %481

143:                                              ; preds = %133
  store i32 271, i32* %1, align 4
  br label %481

144:                                              ; preds = %133
  store i32 272, i32* %1, align 4
  br label %481

145:                                              ; preds = %133
  store i32 273, i32* %1, align 4
  br label %481

146:                                              ; preds = %133
  store i32 274, i32* %1, align 4
  br label %481

147:                                              ; preds = %133
  store i32 275, i32* %1, align 4
  br label %481

148:                                              ; preds = %133
  store i32 276, i32* %1, align 4
  br label %481

149:                                              ; preds = %133
  store i32 278, i32* %1, align 4
  br label %481

150:                                              ; preds = %133
  store i32 279, i32* %1, align 4
  br label %481

151:                                              ; preds = %133
  store i32 280, i32* %1, align 4
  br label %481

152:                                              ; preds = %133
  store i32 281, i32* %1, align 4
  br label %481

153:                                              ; preds = %133
  store i32 277, i32* %1, align 4
  br label %481

154:                                              ; preds = %133
  store i32 282, i32* %1, align 4
  br label %481

155:                                              ; preds = %133
  store i32 284, i32* %1, align 4
  br label %481

156:                                              ; preds = %133
  store i32 285, i32* %1, align 4
  br label %481

157:                                              ; preds = %133
  store i32 283, i32* %1, align 4
  br label %481

158:                                              ; preds = %133
  store i32 286, i32* %1, align 4
  br label %481

159:                                              ; preds = %133
  store i32 287, i32* %1, align 4
  br label %481

160:                                              ; preds = %133
  store i32 288, i32* %1, align 4
  br label %481

161:                                              ; preds = %133
  %162 = load i8*, i8** @yytext, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 0
  %164 = load i8, i8* %163, align 1
  store i8 %164, i8* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 1), align 8
  %165 = load i8*, i8** @yytext, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  store i32 %168, i32* %1, align 4
  br label %481

169:                                              ; preds = %133
  store i32 258, i32* %1, align 4
  br label %481

170:                                              ; preds = %133
  store i32 259, i32* %1, align 4
  br label %481

171:                                              ; preds = %133
  store i32 260, i32* %1, align 4
  br label %481

172:                                              ; preds = %133
  %173 = load i8*, i8** @yytext, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 0
  %175 = load i8, i8* %174, align 1
  store i8 %175, i8* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 1), align 8
  store i32 264, i32* %1, align 4
  br label %481

176:                                              ; preds = %133
  %177 = load i8*, i8** @yytext, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  %179 = load i8, i8* %178, align 1
  store i8 %179, i8* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 1), align 8
  store i32 265, i32* %1, align 4
  br label %481

180:                                              ; preds = %133
  store i8 61, i8* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 1), align 8
  br label %181

181:                                              ; preds = %180
  %182 = load i8, i8* @yy_hold_char, align 1
  %183 = load i8*, i8** %3, align 8
  store i8 %182, i8* %183, align 1
  %184 = load i8*, i8** %4, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  store i8* %185, i8** %3, align 8
  store i8* %185, i8** @yy_c_buf_p, align 8
  %186 = load i8*, i8** %4, align 8
  store i8* %186, i8** @yytext, align 8
  %187 = load i8*, i8** %3, align 8
  %188 = load i8*, i8** %4, align 8
  %189 = ptrtoint i8* %187 to i64
  %190 = ptrtoint i8* %188 to i64
  %191 = sub i64 %189, %190
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* @yyleng, align 4
  %193 = load i8*, i8** %3, align 8
  %194 = load i8, i8* %193, align 1
  store i8 %194, i8* @yy_hold_char, align 1
  %195 = load i8*, i8** %3, align 8
  store i8 0, i8* %195, align 1
  %196 = load i8*, i8** %3, align 8
  store i8* %196, i8** @yy_c_buf_p, align 8
  br label %197

197:                                              ; preds = %181
  store i32 265, i32* %1, align 4
  br label %481

198:                                              ; preds = %133
  %199 = load i8*, i8** @yytext, align 8
  %200 = call i8* @strcopyof(i8* noundef %199)
  store i8* %200, i8** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 0), align 8
  store i32 266, i32* %1, align 4
  br label %481

201:                                              ; preds = %133
  %202 = load i8*, i8** @yytext, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 0
  %204 = load i8, i8* %203, align 1
  store i8 %204, i8* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 1), align 8
  store i32 267, i32* %1, align 4
  br label %481

205:                                              ; preds = %133
  %206 = load i32, i32* @line_no, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* @line_no, align 4
  store i32 257, i32* %1, align 4
  br label %481

208:                                              ; preds = %133
  %209 = load i32, i32* @line_no, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* @line_no, align 4
  br label %480

211:                                              ; preds = %133
  br label %480

212:                                              ; preds = %133
  br label %213

213:                                              ; preds = %254, %212
  br label %214

214:                                              ; preds = %228, %213
  %215 = call i32 @input()
  store i32 %215, i32* %7, align 4
  %216 = icmp ne i32 %215, 42
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32, i32* %7, align 4
  %219 = icmp ne i32 %218, -1
  br label %220

220:                                              ; preds = %217, %214
  %221 = phi i1 [ false, %214 ], [ %219, %217 ]
  br i1 %221, label %222, label %229

222:                                              ; preds = %220
  %223 = load i32, i32* %7, align 4
  %224 = icmp eq i32 %223, 10
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load i32, i32* @line_no, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* @line_no, align 4
  br label %228

228:                                              ; preds = %225, %222
  br label %214, !llvm.loop !7

229:                                              ; preds = %220
  %230 = load i32, i32* %7, align 4
  %231 = icmp eq i32 %230, 42
  br i1 %231, label %232, label %248

232:                                              ; preds = %229
  br label %233

233:                                              ; preds = %236, %232
  %234 = call i32 @input()
  store i32 %234, i32* %7, align 4
  %235 = icmp eq i32 %234, 42
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  br label %233, !llvm.loop !8

237:                                              ; preds = %233
  %238 = load i32, i32* %7, align 4
  %239 = icmp eq i32 %238, 47
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  br label %255

241:                                              ; preds = %237
  %242 = load i32, i32* %7, align 4
  %243 = icmp eq i32 %242, 10
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load i32, i32* @line_no, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* @line_no, align 4
  br label %247

247:                                              ; preds = %244, %241
  br label %248

248:                                              ; preds = %247, %229
  %249 = load i32, i32* %7, align 4
  %250 = icmp eq i32 %249, -1
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %253 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %252, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %255

254:                                              ; preds = %248
  br label %213

255:                                              ; preds = %251, %240
  br label %480

256:                                              ; preds = %133
  %257 = load i8*, i8** @yytext, align 8
  %258 = call i8* @strcopyof(i8* noundef %257)
  store i8* %258, i8** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 0), align 8
  store i32 262, i32* %1, align 4
  br label %481

259:                                              ; preds = %133
  store i32 0, i32* %9, align 4
  %260 = load i8*, i8** @yytext, align 8
  %261 = call i8* @strcopyof(i8* noundef %260)
  store i8* %261, i8** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 0), align 8
  %262 = load i8*, i8** @yytext, align 8
  store i8* %262, i8** %8, align 8
  br label %263

263:                                              ; preds = %285, %259
  %264 = load i8*, i8** %8, align 8
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %288

268:                                              ; preds = %263
  %269 = load i8*, i8** %8, align 8
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %271, 10
  br i1 %272, label %273, label %276

273:                                              ; preds = %268
  %274 = load i32, i32* @line_no, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* @line_no, align 4
  br label %276

276:                                              ; preds = %273, %268
  %277 = load i8*, i8** %8, align 8
  %278 = load i8, i8* %277, align 1
  %279 = sext i8 %278 to i32
  %280 = icmp eq i32 %279, 34
  br i1 %280, label %281, label %284

281:                                              ; preds = %276
  %282 = load i32, i32* %9, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %9, align 4
  br label %284

284:                                              ; preds = %281, %276
  br label %285

285:                                              ; preds = %284
  %286 = load i8*, i8** %8, align 8
  %287 = getelementptr inbounds i8, i8* %286, i32 1
  store i8* %287, i8** %8, align 8
  br label %263, !llvm.loop !9

288:                                              ; preds = %263
  %289 = load i32, i32* %9, align 4
  %290 = icmp ne i32 %289, 2
  br i1 %290, label %291, label %292

291:                                              ; preds = %288
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %292

292:                                              ; preds = %291, %288
  store i32 261, i32* %1, align 4
  br label %481

293:                                              ; preds = %133
  %294 = load i8*, i8** @yytext, align 8
  %295 = call i64 @strlen(i8* noundef %294) #6
  %296 = trunc i64 %295 to i32
  store i32 %296, i32* %12, align 4
  %297 = load i8*, i8** @yytext, align 8
  %298 = load i32, i32* %12, align 4
  %299 = sub nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %297, i64 %300
  %302 = load i8, i8* %301, align 1
  %303 = sext i8 %302 to i32
  %304 = icmp eq i32 %303, 46
  br i1 %304, label %305, label %311

305:                                              ; preds = %293
  %306 = load i8*, i8** @yytext, align 8
  %307 = load i32, i32* %12, align 4
  %308 = sub nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, i8* %306, i64 %309
  store i8 0, i8* %310, align 1
  br label %311

311:                                              ; preds = %305, %293
  %312 = load i8*, i8** @yytext, align 8
  store i8* %312, i8** %10, align 8
  %313 = load i8*, i8** @yytext, align 8
  store i8* %313, i8** %11, align 8
  br label %314

314:                                              ; preds = %319, %311
  %315 = load i8*, i8** %10, align 8
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = icmp eq i32 %317, 48
  br i1 %318, label %319, label %322

319:                                              ; preds = %314
  %320 = load i8*, i8** %10, align 8
  %321 = getelementptr inbounds i8, i8* %320, i32 1
  store i8* %321, i8** %10, align 8
  br label %314, !llvm.loop !10

322:                                              ; preds = %314
  %323 = load i8*, i8** %10, align 8
  %324 = load i8, i8* %323, align 1
  %325 = sext i8 %324 to i32
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %322
  %328 = load i8*, i8** %10, align 8
  %329 = getelementptr inbounds i8, i8* %328, i32 -1
  store i8* %329, i8** %10, align 8
  br label %330

330:                                              ; preds = %327, %322
  br label %331

331:                                              ; preds = %354, %330
  %332 = load i8*, i8** %10, align 8
  %333 = load i8, i8* %332, align 1
  %334 = sext i8 %333 to i32
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %355

336:                                              ; preds = %331
  %337 = load i8*, i8** %10, align 8
  %338 = load i8, i8* %337, align 1
  %339 = sext i8 %338 to i32
  %340 = icmp eq i32 %339, 92
  br i1 %340, label %341, label %348

341:                                              ; preds = %336
  %342 = load i8*, i8** %10, align 8
  %343 = getelementptr inbounds i8, i8* %342, i32 1
  store i8* %343, i8** %10, align 8
  %344 = load i8*, i8** %10, align 8
  %345 = getelementptr inbounds i8, i8* %344, i32 1
  store i8* %345, i8** %10, align 8
  %346 = load i32, i32* @line_no, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* @line_no, align 4
  br label %354

348:                                              ; preds = %336
  %349 = load i8*, i8** %10, align 8
  %350 = getelementptr inbounds i8, i8* %349, i32 1
  store i8* %350, i8** %10, align 8
  %351 = load i8, i8* %349, align 1
  %352 = load i8*, i8** %11, align 8
  %353 = getelementptr inbounds i8, i8* %352, i32 1
  store i8* %353, i8** %11, align 8
  store i8 %351, i8* %352, align 1
  br label %354

354:                                              ; preds = %348, %341
  br label %331, !llvm.loop !11

355:                                              ; preds = %331
  %356 = load i8*, i8** %11, align 8
  store i8 0, i8* %356, align 1
  %357 = load i8*, i8** @yytext, align 8
  %358 = call i8* @strcopyof(i8* noundef %357)
  store i8* %358, i8** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yylval, i32 0, i32 0), align 8
  store i32 263, i32* %1, align 4
  br label %481

359:                                              ; preds = %133
  %360 = load i8*, i8** @yytext, align 8
  %361 = getelementptr inbounds i8, i8* %360, i64 0
  %362 = load i8, i8* %361, align 1
  %363 = sext i8 %362 to i32
  %364 = icmp slt i32 %363, 32
  br i1 %364, label %365, label %371

365:                                              ; preds = %359
  %366 = load i8*, i8** @yytext, align 8
  %367 = getelementptr inbounds i8, i8* %366, i64 0
  %368 = load i8, i8* %367, align 1
  %369 = sext i8 %368 to i32
  %370 = add nsw i32 %369, 64
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 noundef %370)
  br label %385

371:                                              ; preds = %359
  %372 = load i8*, i8** @yytext, align 8
  %373 = getelementptr inbounds i8, i8* %372, i64 0
  %374 = load i8, i8* %373, align 1
  %375 = sext i8 %374 to i32
  %376 = icmp sgt i32 %375, 126
  br i1 %376, label %377, label %382

377:                                              ; preds = %371
  %378 = load i8*, i8** @yytext, align 8
  %379 = getelementptr inbounds i8, i8* %378, i64 0
  %380 = load i8, i8* %379, align 1
  %381 = sext i8 %380 to i32
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 noundef %381)
  br label %384

382:                                              ; preds = %371
  %383 = load i8*, i8** @yytext, align 8
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* noundef %383)
  br label %384

384:                                              ; preds = %382, %377
  br label %385

385:                                              ; preds = %384, %365
  br label %480

386:                                              ; preds = %133
  %387 = load i8*, i8** @yytext, align 8
  %388 = load i32, i32* @yyleng, align 4
  %389 = sext i32 %388 to i64
  %390 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %391 = call i64 @fwrite(i8* noundef %387, i64 noundef %389, i64 noundef 1, %struct._IO_FILE* noundef %390)
  br label %480

392:                                              ; preds = %133
  store i32 0, i32* %1, align 4
  br label %481

393:                                              ; preds = %133
  %394 = load i8*, i8** %3, align 8
  %395 = load i8*, i8** @yytext, align 8
  %396 = ptrtoint i8* %394 to i64
  %397 = ptrtoint i8* %395 to i64
  %398 = sub i64 %396, %397
  %399 = sub nsw i64 %398, 1
  %400 = trunc i64 %399 to i32
  store i32 %400, i32* %13, align 4
  %401 = load i8, i8* @yy_hold_char, align 1
  %402 = load i8*, i8** %3, align 8
  store i8 %401, i8* %402, align 1
  %403 = load i8*, i8** @yy_c_buf_p, align 8
  %404 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %405 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %404, i32 0, i32 1
  %406 = load i8*, i8** %405, align 8
  %407 = load i32, i32* @yy_n_chars, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i8, i8* %406, i64 %408
  %410 = icmp ule i8* %403, %409
  br i1 %410, label %411, label %428

411:                                              ; preds = %393
  %412 = load i8*, i8** @yytext, align 8
  %413 = load i32, i32* %13, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8, i8* %412, i64 %414
  store i8* %415, i8** @yy_c_buf_p, align 8
  %416 = call i32 @yy_get_previous_state()
  store i32 %416, i32* %2, align 4
  %417 = load i32, i32* %2, align 4
  %418 = call i32 @yy_try_NUL_trans(i32 noundef %417)
  store i32 %418, i32* %14, align 4
  %419 = load i8*, i8** @yytext, align 8
  %420 = getelementptr inbounds i8, i8* %419, i64 0
  store i8* %420, i8** %4, align 8
  %421 = load i32, i32* %14, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %427

423:                                              ; preds = %411
  %424 = load i8*, i8** @yy_c_buf_p, align 8
  %425 = getelementptr inbounds i8, i8* %424, i32 1
  store i8* %425, i8** @yy_c_buf_p, align 8
  store i8* %425, i8** %3, align 8
  %426 = load i32, i32* %14, align 4
  store i32 %426, i32* %2, align 4
  br label %48

427:                                              ; preds = %411
  br label %116

428:                                              ; preds = %393
  %429 = call i32 @yy_get_next_buffer()
  switch i32 %429, label %471 [
    i32 1, label %430
    i32 0, label %451
    i32 2, label %460
  ]

430:                                              ; preds = %428
  store i32 0, i32* @yy_did_buffer_switch_on_eof, align 4
  %431 = call i32 @yywrap()
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %441

433:                                              ; preds = %430
  %434 = load i8*, i8** @yytext, align 8
  %435 = getelementptr inbounds i8, i8* %434, i64 0
  store i8* %435, i8** @yy_c_buf_p, align 8
  %436 = load i32, i32* @yy_start, align 4
  %437 = sub nsw i32 %436, 1
  %438 = sdiv i32 %437, 2
  %439 = add nsw i32 40, %438
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %5, align 4
  br label %133

441:                                              ; preds = %430
  %442 = load i32, i32* @yy_did_buffer_switch_on_eof, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %449, label %444

444:                                              ; preds = %441
  br label %445

445:                                              ; preds = %444
  %446 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %447 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  call void @yy_init_buffer(%struct.yy_buffer_state* noundef %446, %struct._IO_FILE* noundef %447)
  call void @yy_load_buffer_state()
  br label %448

448:                                              ; preds = %445
  br label %449

449:                                              ; preds = %448, %441
  br label %450

450:                                              ; preds = %449
  br label %471

451:                                              ; preds = %428
  %452 = load i8*, i8** @yytext, align 8
  %453 = load i32, i32* %13, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i8, i8* %452, i64 %454
  store i8* %455, i8** @yy_c_buf_p, align 8
  %456 = call i32 @yy_get_previous_state()
  store i32 %456, i32* %2, align 4
  %457 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %457, i8** %3, align 8
  %458 = load i8*, i8** @yytext, align 8
  %459 = getelementptr inbounds i8, i8* %458, i64 0
  store i8* %459, i8** %4, align 8
  br label %48

460:                                              ; preds = %428
  %461 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %462 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %461, i32 0, i32 1
  %463 = load i8*, i8** %462, align 8
  %464 = load i32, i32* @yy_n_chars, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i8, i8* %463, i64 %465
  store i8* %466, i8** @yy_c_buf_p, align 8
  %467 = call i32 @yy_get_previous_state()
  store i32 %467, i32* %2, align 4
  %468 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %468, i8** %3, align 8
  %469 = load i8*, i8** @yytext, align 8
  %470 = getelementptr inbounds i8, i8* %469, i64 0
  store i8* %470, i8** %4, align 8
  br label %116

471:                                              ; preds = %428, %450
  br label %472

472:                                              ; preds = %471
  br label %480

473:                                              ; preds = %133
  br label %474

474:                                              ; preds = %473
  %475 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %476 = call i32 @fputs(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), %struct._IO_FILE* noundef %475)
  %477 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %478 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %477)
  call void @exit(i32 noundef 1) #7
  unreachable

479:                                              ; No predecessors!
  br label %480

480:                                              ; preds = %479, %472, %386, %385, %255, %211, %208
  br label %42

481:                                              ; preds = %392, %355, %292, %256, %205, %201, %198, %197, %176, %172, %171, %170, %169, %161, %160, %159, %158, %157, %156, %155, %154, %153, %152, %151, %150, %149, %148, %147, %146, %145, %144, %143, %142, %141, %140
  %482 = load i32, i32* %1, align 4
  ret i32 %482
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @yy_init_buffer(%struct.yy_buffer_state* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.yy_buffer_state*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  store %struct.yy_buffer_state* %0, %struct.yy_buffer_state** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  %7 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %6, i32 0, i32 0
  store %struct._IO_FILE* %5, %struct._IO_FILE** %7, align 8
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  %9 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 10, i8* %11, align 1
  %12 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  %13 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %12, i32 0, i32 4
  store i32 1, i32* %13, align 4
  %14 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  %15 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 0, i8* %17, align 1
  %18 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  %19 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  store i8 0, i8* %21, align 1
  %22 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  %23 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  %27 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %3, align 8
  %29 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %28, i32 0, i32 5
  store i32 0, i32* %29, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.yy_buffer_state* @yy_create_buffer(%struct._IO_FILE* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.yy_buffer_state*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call noalias i8* @malloc(i64 noundef 40) #8
  %7 = bitcast i8* %6 to %struct.yy_buffer_state*
  store %struct.yy_buffer_state* %7, %struct.yy_buffer_state** %5, align 8
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %9 = icmp ne %struct.yy_buffer_state* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 @fputs(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* noundef %12)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %14)
  call void @exit(i32 noundef 1) #7
  unreachable

16:                                               ; No predecessors!
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %20 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %22 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 2
  %25 = zext i32 %24 to i64
  %26 = call noalias i8* @malloc(i64 noundef %25) #8
  %27 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %28 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %30 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i32 @fputs(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* noundef %35)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %37)
  call void @exit(i32 noundef 1) #7
  unreachable

39:                                               ; No predecessors!
  br label %40

40:                                               ; preds = %39, %17
  %41 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @yy_init_buffer(%struct.yy_buffer_state* noundef %41, %struct._IO_FILE* noundef %42)
  %43 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %5, align 8
  ret %struct.yy_buffer_state* %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @yy_load_buffer_state() #0 {
  %1 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %2 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %1, i32 0, i32 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @yy_n_chars, align 4
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %5 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %4, i32 0, i32 2
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** @yy_c_buf_p, align 8
  store i8* %6, i8** @yytext, align 8
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %8 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %7, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  store %struct._IO_FILE* %9, %struct._IO_FILE** @yyin, align 8
  %10 = load i8*, i8** @yy_c_buf_p, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* @yy_hold_char, align 1
  ret void
}

declare dso_local i8* @strcopyof(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @input() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %4, i8** %3, align 8
  %5 = load i8, i8* @yy_hold_char, align 1
  %6 = load i8*, i8** %3, align 8
  store i8 %5, i8* %6, align 1
  %7 = load i8*, i8** @yy_c_buf_p, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %51

11:                                               ; preds = %0
  %12 = load i8*, i8** @yy_c_buf_p, align 8
  %13 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %14 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* @yy_n_chars, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = icmp ult i8* %12, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i8*, i8** @yy_c_buf_p, align 8
  store i8 0, i8* %21, align 1
  br label %50

22:                                               ; preds = %11
  %23 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %23, i8** @yytext, align 8
  %24 = load i8*, i8** @yy_c_buf_p, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** @yy_c_buf_p, align 8
  %26 = call i32 @yy_get_next_buffer()
  switch i32 %26, label %49 [
    i32 1, label %27
    i32 0, label %39
    i32 2, label %42
  ]

27:                                               ; preds = %22
  %28 = call i32 @yywrap()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** @yytext, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8* %32, i8** @yy_c_buf_p, align 8
  store i32 -1, i32* %1, align 4
  br label %59

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  call void @yy_init_buffer(%struct.yy_buffer_state* noundef %35, %struct._IO_FILE* noundef %36)
  call void @yy_load_buffer_state()
  br label %37

37:                                               ; preds = %34
  %38 = call i32 @input()
  store i32 %38, i32* %1, align 4
  br label %59

39:                                               ; preds = %22
  %40 = load i8*, i8** @yytext, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8* %41, i8** @yy_c_buf_p, align 8
  br label %49

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i32 @fputs(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), %struct._IO_FILE* noundef %44)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %46)
  call void @exit(i32 noundef 1) #7
  unreachable

48:                                               ; No predecessors!
  br label %49

49:                                               ; preds = %48, %22, %39
  br label %50

50:                                               ; preds = %49, %20
  br label %51

51:                                               ; preds = %50, %0
  %52 = load i8*, i8** @yy_c_buf_p, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  store i32 %54, i32* %2, align 4
  %55 = load i8*, i8** @yy_c_buf_p, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** @yy_c_buf_p, align 8
  %57 = load i8, i8* %56, align 1
  store i8 %57, i8* @yy_hold_char, align 1
  %58 = load i32, i32* %2, align 4
  store i32 %58, i32* %1, align 4
  br label %59

59:                                               ; preds = %51, %37, %30
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @yyerror(i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @yy_get_previous_state() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = load i32, i32* @yy_start, align 4
  store i32 %4, i32* %1, align 4
  %5 = load i8*, i8** @yytext, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  store i8* %6, i8** %2, align 8
  br label %7

7:                                                ; preds = %78, %0
  %8 = load i8*, i8** %2, align 8
  %9 = load i8*, i8** @yy_c_buf_p, align 8
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %11, label %81

11:                                               ; preds = %7
  %12 = load i8*, i8** %2, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i64
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* @yy_ec, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  br label %24

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23, %16
  %25 = phi i32 [ %22, %16 ], [ 1, %23 ]
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %3, align 1
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [144 x i16], [144 x i16]* @yy_accept, i64 0, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = icmp ne i16 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %1, align 4
  store i32 %33, i32* @yy_last_accepting_state, align 4
  %34 = load i8*, i8** %2, align 8
  store i8* %34, i8** @yy_last_accepting_cpos, align 8
  br label %35

35:                                               ; preds = %32, %24
  br label %36

36:                                               ; preds = %64, %35
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %38
  %40 = load i16, i16* %39, align 2
  %41 = sext i16 %40 to i32
  %42 = load i8, i8* %3, align 1
  %43 = sext i8 %42 to i32
  %44 = add nsw i32 %41, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_chk, i64 0, i64 %45
  %47 = load i16, i16* %46, align 2
  %48 = sext i16 %47 to i32
  %49 = load i32, i32* %1, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %36
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_def, i64 0, i64 %53
  %55 = load i16, i16* %54, align 2
  %56 = sext i16 %55 to i32
  store i32 %56, i32* %1, align 4
  %57 = load i32, i32* %1, align 4
  %58 = icmp sge i32 %57, 144
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load i8, i8* %3, align 1
  %61 = sext i8 %60 to i64
  %62 = getelementptr inbounds [53 x i8], [53 x i8]* @yy_meta, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %3, align 1
  br label %64

64:                                               ; preds = %59, %51
  br label %36, !llvm.loop !12

65:                                               ; preds = %36
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %67
  %69 = load i16, i16* %68, align 2
  %70 = sext i16 %69 to i32
  %71 = load i8, i8* %3, align 1
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %70, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_nxt, i64 0, i64 %74
  %76 = load i16, i16* %75, align 2
  %77 = sext i16 %76 to i32
  store i32 %77, i32* %1, align 4
  br label %78

78:                                               ; preds = %65
  %79 = load i8*, i8** %2, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %2, align 8
  br label %7, !llvm.loop !13

81:                                               ; preds = %7
  %82 = load i32, i32* %1, align 4
  ret i32 %82
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @yy_try_NUL_trans(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %6 = load i8*, i8** @yy_c_buf_p, align 8
  store i8* %6, i8** %4, align 8
  store i8 1, i8* %5, align 1
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [144 x i16], [144 x i16]* @yy_accept, i64 0, i64 %8
  %10 = load i16, i16* %9, align 2
  %11 = icmp ne i16 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* @yy_last_accepting_state, align 4
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** @yy_last_accepting_cpos, align 8
  br label %15

15:                                               ; preds = %12, %1
  br label %16

16:                                               ; preds = %44, %15
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = sext i16 %20 to i32
  %22 = load i8, i8* %5, align 1
  %23 = sext i8 %22 to i32
  %24 = add nsw i32 %21, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_chk, i64 0, i64 %25
  %27 = load i16, i16* %26, align 2
  %28 = sext i16 %27 to i32
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %16
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_def, i64 0, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = sext i16 %35 to i32
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp sge i32 %37, 144
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i8, i8* %5, align 1
  %41 = sext i8 %40 to i64
  %42 = getelementptr inbounds [53 x i8], [53 x i8]* @yy_meta, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %5, align 1
  br label %44

44:                                               ; preds = %39, %31
  br label %16, !llvm.loop !14

45:                                               ; preds = %16
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %47
  %49 = load i16, i16* %48, align 2
  %50 = sext i16 %49 to i32
  %51 = load i8, i8* %5, align 1
  %52 = sext i8 %51 to i32
  %53 = add nsw i32 %50, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [247 x i16], [247 x i16]* @yy_nxt, i64 0, i64 %54
  %56 = load i16, i16* %55, align 2
  %57 = sext i16 %56 to i32
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [146 x i16], [146 x i16]* @yy_base, i64 0, i64 %59
  %61 = load i16, i16* %60, align 2
  %62 = sext i16 %61 to i32
  %63 = icmp eq i32 %62, 194
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %45
  br label %70

68:                                               ; preds = %45
  %69 = load i32, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %67
  %71 = phi i32 [ 0, %67 ], [ %69, %68 ]
  ret i32 %71
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @yy_get_next_buffer() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %8 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %7, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %1, align 8
  %10 = load i8*, i8** @yytext, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 -1
  store i8* %11, i8** %2, align 8
  %12 = load i8*, i8** @yy_c_buf_p, align 8
  %13 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %14 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* @yy_n_chars, align 4
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  %20 = icmp ugt i8* %12, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %0
  br label %22

22:                                               ; preds = %21
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i32 @fputs(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), %struct._IO_FILE* noundef %23)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %25)
  call void @exit(i32 noundef 1) #7
  unreachable

27:                                               ; No predecessors!
  br label %28

28:                                               ; preds = %27, %0
  %29 = load i8*, i8** @yy_c_buf_p, align 8
  %30 = load i8*, i8** @yytext, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %45, %28
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i8*, i8** %2, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %2, align 8
  %42 = load i8, i8* %40, align 1
  %43 = load i8*, i8** %1, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %1, align 8
  store i8 %42, i8* %43, align 1
  br label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %35, !llvm.loop !15

48:                                               ; preds = %35
  %49 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %50 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* @yy_n_chars, align 4
  br label %103

54:                                               ; preds = %48
  %55 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %56 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sub nsw i32 %57, %58
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp sgt i32 %61, 8192
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i32 8192, i32* %6, align 4
  br label %75

64:                                               ; preds = %54
  %65 = load i32, i32* %6, align 4
  %66 = icmp sle i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %67
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %70 = call i32 @fputs(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), %struct._IO_FILE* noundef %69)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %71)
  call void @exit(i32 noundef 1) #7
  unreachable

73:                                               ; No predecessors!
  br label %74

74:                                               ; preds = %73, %64
  br label %75

75:                                               ; preds = %74, %63
  br label %76

76:                                               ; preds = %101, %75
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %78 = call i32 @fileno(%struct._IO_FILE* noundef %77) #8
  %79 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %80 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = call i64 @read(i32 noundef %78, i8* noundef %84, i64 noundef %86)
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* @yy_n_chars, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %76
  %91 = call i32* @__errno_location() #9
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 4
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %94
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %97 = call i32 @fputs(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), %struct._IO_FILE* noundef %96)
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %99 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %98)
  call void @exit(i32 noundef 1) #7
  unreachable

100:                                              ; No predecessors!
  br label %101

101:                                              ; preds = %100, %90
  br label %76, !llvm.loop !16

102:                                              ; preds = %76
  br label %103

103:                                              ; preds = %102, %53
  %104 = load i32, i32* @yy_n_chars, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load i32, i32* %3, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  store i32 1, i32* %5, align 4
  %110 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %111 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %110, i32 0, i32 5
  store i32 2, i32* %111, align 8
  br label %115

112:                                              ; preds = %106
  store i32 2, i32* %5, align 4
  %113 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %114 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %113, i32 0, i32 5
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %112, %109
  br label %117

116:                                              ; preds = %103
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %116, %115
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* @yy_n_chars, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* @yy_n_chars, align 4
  %121 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %122 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* @yy_n_chars, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  store i8 0, i8* %126, align 1
  %127 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %128 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load i32, i32* @yy_n_chars, align 4
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  store i8 0, i8* %133, align 1
  %134 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %135 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  store i8* %137, i8** @yytext, align 8
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @yywrap() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @open_new_file()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %5, %4
  %7 = load i32, i32* %1, align 4
  ret i32 %7
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @yyrestart(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %3 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @yy_init_buffer(%struct.yy_buffer_state* noundef %3, %struct._IO_FILE* noundef %4)
  call void @yy_load_buffer_state()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @yy_switch_to_buffer(%struct.yy_buffer_state* noundef %0) #0 {
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
  call void @yy_load_buffer_state()
  store i32 1, i32* @yy_did_buffer_switch_on_eof, align 4
  br label %21

21:                                               ; preds = %19, %6
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @yy_delete_buffer(%struct.yy_buffer_state* noundef %0) #0 {
  %2 = alloca %struct.yy_buffer_state*, align 8
  store %struct.yy_buffer_state* %0, %struct.yy_buffer_state** %2, align 8
  %3 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %4 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** @yy_current_buffer, align 8
  %5 = icmp eq %struct.yy_buffer_state* %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store %struct.yy_buffer_state* null, %struct.yy_buffer_state** @yy_current_buffer, align 8
  br label %7

7:                                                ; preds = %6, %1
  %8 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %9 = getelementptr inbounds %struct.yy_buffer_state, %struct.yy_buffer_state* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  call void @free(i8* noundef %10) #8
  %11 = load %struct.yy_buffer_state*, %struct.yy_buffer_state** %2, align 8
  %12 = bitcast %struct.yy_buffer_state* %11 to i8*
  call void @free(i8* noundef %12) #8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #4

declare dso_local i32 @open_new_file() #1

declare dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE* noundef) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

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
