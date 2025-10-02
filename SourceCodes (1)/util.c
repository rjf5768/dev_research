; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/bc/util.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/bc/util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.id_rec = type { i8*, i32, i32, i32, i16, %struct.id_rec*, %struct.id_rec* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.program_counter = type { i32, i32 }
%struct.arg_list = type { i32, %struct.arg_list* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@arglist2 = internal global i8* null, align 8
@arglist1 = internal global i8* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"duplicate parameter names\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Array parameter\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"duplicate auto variable names\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"variable in both parameter and auto lists\00", align 1
@break_label = external dso_local global i32, align 4
@continue_label = external dso_local global i32, align 4
@next_label = external dso_local global i32, align 4
@out_count = external dso_local global i32, align 4
@compile_only = external dso_local global i8, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"@i\00", align 1
@had_error = external dso_local global i32, align 4
@did_gen = external dso_local global i8, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"@r\0A\00", align 1
@out_col = external dso_local global i32, align 4
@name_tree = external dso_local global %struct.id_rec*, align 8
@next_array = external dso_local global i32, align 4
@next_func = external dso_local global i32, align 4
@next_var = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"multiple letter name - %s\00", align 1
@a_names = external dso_local global i8**, align 8
@a_count = external dso_local global i32, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"Too many array variables\00", align 1
@f_names = external dso_local global i8**, align 8
@f_count = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"Too many functions\00", align 1
@v_names = external dso_local global i8**, align 8
@v_count = external dso_local global i32, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"Too many variables\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"This is free software with ABSOLUTELY NO WARRANTY.\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"For details type . \0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"\0A%s%s\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [76 x i8] c"bc 1.02 (Mar 3, 92) Copyright (C) 1991, 1992 Free Software Foundation, Inc.\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"%s%s%s%s%s%s%s%s%s%s%s\00", align 1
@.str.17 = private unnamed_addr constant [74 x i8] c"    This program is free software; you can redistribute it and/or modify\0A\00", align 1
@.str.18 = private unnamed_addr constant [74 x i8] c"    it under the terms of the GNU General Public License as published by\0A\00", align 1
@.str.19 = private unnamed_addr constant [72 x i8] c"    the Free Software Foundation; either version 2 of the License , or\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"    (at your option) any later version.\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [69 x i8] c"    This program is distributed in the hope that it will be useful,\0A\00", align 1
@.str.22 = private unnamed_addr constant [68 x i8] c"    but WITHOUT ANY WARRANTY; without even the implied warranty of\0A\00", align 1
@.str.23 = private unnamed_addr constant [67 x i8] c"    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\0A\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"    GNU General Public License for more details.\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [71 x i8] c"    You should have received a copy of the GNU General Public License\0A\00", align 1
@.str.26 = private unnamed_addr constant [65 x i8] c"    along with this program. If not, write to the Free Software\0A\00", align 1
@.str.27 = private unnamed_addr constant [58 x i8] c"    Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"BC_BASE_MAX     = %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"BC_DIM_MAX      = %ld\0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"BC_SCALE_MAX    = %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"BC_STRING_MAX   = %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"MAX Exponent    = %ld\0A\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"MAX code        = %ld\0A\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"multiply digits = %ld\0A\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"Number of vars  = %ld\0A\00", align 1
@is_std_in = external dso_local global i8, align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"(standard_in)\00", align 1
@g_argv = external dso_local global i8**, align 8
@optind = external dso_local global i32, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.37 = private unnamed_addr constant [8 x i8] c"%s %d: \00", align 1
@line_no = external dso_local global i32, align 4
@std_only = external dso_local global i8, align 1
@warn_not_std = external dso_local global i8, align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"%s %d: (Warning) \00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"Runtime error (func=%s, adr=%d): %s\0A\00", align 1
@pc = external dso_local global %struct.program_counter, align 4
@runtime_error = external dso_local global i8, align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"Runtime warning (func=%s, adr=%d): %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @strcopyof(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strlen(i8* noundef %4) #6
  %6 = add i64 %5, 1
  %7 = call noalias i8* @malloc(i64 noundef %6) #7
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i8* @strcpy(i8* noundef %8, i8* noundef %9) #7
  %11 = load i8*, i8** %3, align 8
  ret i8* %11
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.arg_list* @nextarg(%struct.arg_list* noundef %0, i8 noundef signext %1) #0 {
  %3 = alloca %struct.arg_list*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.arg_list*, align 8
  store %struct.arg_list* %0, %struct.arg_list** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = call noalias i8* @malloc(i64 noundef 16) #7
  %7 = bitcast i8* %6 to %struct.arg_list*
  store %struct.arg_list* %7, %struct.arg_list** %5, align 8
  %8 = load i8, i8* %4, align 1
  %9 = sext i8 %8 to i32
  %10 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %11 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.arg_list*, %struct.arg_list** %3, align 8
  %13 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %14 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %13, i32 0, i32 1
  store %struct.arg_list* %12, %struct.arg_list** %14, align 8
  %15 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  ret %struct.arg_list* %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @arg_str(%struct.arg_list* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.arg_list*, align 8
  %4 = alloca i32, align 4
  store %struct.arg_list* %0, %struct.arg_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** @arglist2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i8*, i8** @arglist2, align 8
  call void @free(i8* noundef %8) #7
  br label %9

9:                                                ; preds = %7, %2
  %10 = load i8*, i8** @arglist1, align 8
  store i8* %10, i8** @arglist2, align 8
  %11 = load %struct.arg_list*, %struct.arg_list** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i8* @make_arg_str(%struct.arg_list* noundef %11, i32 noundef 1, i32 noundef %12)
  store i8* %13, i8** @arglist1, align 8
  %14 = load i8*, i8** @arglist1, align 8
  ret i8* %14
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @make_arg_str(%struct.arg_list* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.arg_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [20 x i8], align 16
  store %struct.arg_list* %0, %struct.arg_list** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %11 = icmp ne %struct.arg_list* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %14 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %13, i32 0, i32 1
  %15 = load %struct.arg_list*, %struct.arg_list** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 11
  %18 = load i32, i32* %7, align 4
  %19 = call i8* @make_arg_str(%struct.arg_list* noundef %15, i32 noundef %17, i32 noundef %18)
  store i8* %19, i8** %8, align 8
  br label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = call noalias i8* @malloc(i64 noundef %22) #7
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  store i8 0, i8* %24, align 1
  %25 = load i8*, i8** %8, align 8
  store i8* %25, i8** %4, align 8
  br label %49

26:                                               ; preds = %12
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %34 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %35 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %33, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i32 noundef %36) #7
  br label %44

38:                                               ; preds = %29, %26
  %39 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %40 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %41 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %39, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i32 noundef %42) #7
  br label %44

44:                                               ; preds = %38, %32
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %47 = call i8* @strcat(i8* noundef %45, i8* noundef %46) #7
  %48 = load i8*, i8** %8, align 8
  store i8* %48, i8** %4, align 8
  br label %49

49:                                               ; preds = %44, %20
  %50 = load i8*, i8** %4, align 8
  ret i8* %50
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_args(%struct.arg_list* noundef %0) #0 {
  %2 = alloca %struct.arg_list*, align 8
  %3 = alloca %struct.arg_list*, align 8
  store %struct.arg_list* %0, %struct.arg_list** %2, align 8
  %4 = load %struct.arg_list*, %struct.arg_list** %2, align 8
  store %struct.arg_list* %4, %struct.arg_list** %3, align 8
  br label %5

5:                                                ; preds = %8, %1
  %6 = load %struct.arg_list*, %struct.arg_list** %3, align 8
  %7 = icmp ne %struct.arg_list* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load %struct.arg_list*, %struct.arg_list** %2, align 8
  %10 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %9, i32 0, i32 1
  %11 = load %struct.arg_list*, %struct.arg_list** %10, align 8
  store %struct.arg_list* %11, %struct.arg_list** %2, align 8
  %12 = load %struct.arg_list*, %struct.arg_list** %3, align 8
  %13 = bitcast %struct.arg_list* %12 to i8*
  call void @free(i8* noundef %13) #7
  %14 = load %struct.arg_list*, %struct.arg_list** %2, align 8
  store %struct.arg_list* %14, %struct.arg_list** %3, align 8
  br label %5, !llvm.loop !4

15:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @check_params(%struct.arg_list* noundef %0, %struct.arg_list* noundef %1) #0 {
  %3 = alloca %struct.arg_list*, align 8
  %4 = alloca %struct.arg_list*, align 8
  %5 = alloca %struct.arg_list*, align 8
  %6 = alloca %struct.arg_list*, align 8
  store %struct.arg_list* %0, %struct.arg_list** %3, align 8
  store %struct.arg_list* %1, %struct.arg_list** %4, align 8
  %7 = load %struct.arg_list*, %struct.arg_list** %3, align 8
  %8 = icmp ne %struct.arg_list* %7, null
  br i1 %8, label %9, label %45

9:                                                ; preds = %2
  %10 = load %struct.arg_list*, %struct.arg_list** %3, align 8
  store %struct.arg_list* %10, %struct.arg_list** %5, align 8
  br label %11

11:                                               ; preds = %40, %9
  %12 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %13 = icmp ne %struct.arg_list* %12, null
  br i1 %13, label %14, label %44

14:                                               ; preds = %11
  %15 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %16 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %15, i32 0, i32 1
  %17 = load %struct.arg_list*, %struct.arg_list** %16, align 8
  store %struct.arg_list* %17, %struct.arg_list** %6, align 8
  br label %18

18:                                               ; preds = %30, %14
  %19 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %20 = icmp ne %struct.arg_list* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %23 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %26 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %29, %21
  %31 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %32 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %31, i32 0, i32 1
  %33 = load %struct.arg_list*, %struct.arg_list** %32, align 8
  store %struct.arg_list* %33, %struct.arg_list** %6, align 8
  br label %18, !llvm.loop !6

34:                                               ; preds = %18
  %35 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %36 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  call void (i8*, ...) @warn(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %39, %34
  %41 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %42 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %41, i32 0, i32 1
  %43 = load %struct.arg_list*, %struct.arg_list** %42, align 8
  store %struct.arg_list* %43, %struct.arg_list** %5, align 8
  br label %11, !llvm.loop !7

44:                                               ; preds = %11
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.arg_list*, %struct.arg_list** %4, align 8
  %47 = icmp ne %struct.arg_list* %46, null
  br i1 %47, label %48, label %78

48:                                               ; preds = %45
  %49 = load %struct.arg_list*, %struct.arg_list** %4, align 8
  store %struct.arg_list* %49, %struct.arg_list** %5, align 8
  br label %50

50:                                               ; preds = %73, %48
  %51 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %52 = icmp ne %struct.arg_list* %51, null
  br i1 %52, label %53, label %77

53:                                               ; preds = %50
  %54 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %55 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %54, i32 0, i32 1
  %56 = load %struct.arg_list*, %struct.arg_list** %55, align 8
  store %struct.arg_list* %56, %struct.arg_list** %6, align 8
  br label %57

57:                                               ; preds = %69, %53
  %58 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %59 = icmp ne %struct.arg_list* %58, null
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %62 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %65 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %68, %60
  %70 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %71 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %70, i32 0, i32 1
  %72 = load %struct.arg_list*, %struct.arg_list** %71, align 8
  store %struct.arg_list* %72, %struct.arg_list** %6, align 8
  br label %57, !llvm.loop !8

73:                                               ; preds = %57
  %74 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %75 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %74, i32 0, i32 1
  %76 = load %struct.arg_list*, %struct.arg_list** %75, align 8
  store %struct.arg_list* %76, %struct.arg_list** %5, align 8
  br label %50, !llvm.loop !9

77:                                               ; preds = %50
  br label %78

78:                                               ; preds = %77, %45
  %79 = load %struct.arg_list*, %struct.arg_list** %3, align 8
  %80 = icmp ne %struct.arg_list* %79, null
  br i1 %80, label %81, label %112

81:                                               ; preds = %78
  %82 = load %struct.arg_list*, %struct.arg_list** %4, align 8
  %83 = icmp ne %struct.arg_list* %82, null
  br i1 %83, label %84, label %112

84:                                               ; preds = %81
  %85 = load %struct.arg_list*, %struct.arg_list** %3, align 8
  store %struct.arg_list* %85, %struct.arg_list** %5, align 8
  br label %86

86:                                               ; preds = %107, %84
  %87 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %88 = icmp ne %struct.arg_list* %87, null
  br i1 %88, label %89, label %111

89:                                               ; preds = %86
  %90 = load %struct.arg_list*, %struct.arg_list** %4, align 8
  store %struct.arg_list* %90, %struct.arg_list** %6, align 8
  br label %91

91:                                               ; preds = %103, %89
  %92 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %93 = icmp ne %struct.arg_list* %92, null
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %96 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %99 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %102, %94
  %104 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %105 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %104, i32 0, i32 1
  %106 = load %struct.arg_list*, %struct.arg_list** %105, align 8
  store %struct.arg_list* %106, %struct.arg_list** %6, align 8
  br label %91, !llvm.loop !10

107:                                              ; preds = %91
  %108 = load %struct.arg_list*, %struct.arg_list** %5, align 8
  %109 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %108, i32 0, i32 1
  %110 = load %struct.arg_list*, %struct.arg_list** %109, align 8
  store %struct.arg_list* %110, %struct.arg_list** %5, align 8
  br label %86, !llvm.loop !11

111:                                              ; preds = %86
  br label %112

112:                                              ; preds = %111, %81, %78
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @yyerror(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = load i8, i8* @is_std_in, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8** %3, align 8
  br label %17

10:                                               ; preds = %1
  %11 = load i8**, i8*** @g_argv, align 8
  %12 = load i32, i32* @optind, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %11, i64 %14
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %3, align 8
  br label %17

17:                                               ; preds = %10, %9
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @line_no, align 4
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i8* noundef %19, i32 noundef %20)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %25 = call i32 @vfprintf(%struct._IO_FILE* noundef %22, i8* noundef %23, %struct.__va_list_tag* noundef %24)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* @had_error, align 4
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %29 = bitcast %struct.__va_list_tag* %28 to i8*
  call void @llvm.va_end(i8* %29)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @warn(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = load i8, i8* @std_only, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load i8, i8* @is_std_in, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8** %3, align 8
  br label %20

13:                                               ; preds = %9
  %14 = load i8**, i8*** @g_argv, align 8
  %15 = load i32, i32* @optind, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %14, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %3, align 8
  br label %20

20:                                               ; preds = %13, %12
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* @line_no, align 4
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i8* noundef %22, i32 noundef %23)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %28 = call i32 @vfprintf(%struct._IO_FILE* noundef %25, i8* noundef %26, %struct.__va_list_tag* noundef %27)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* @had_error, align 4
  br label %57

31:                                               ; preds = %1
  %32 = load i8, i8* @warn_not_std, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load i8, i8* @is_std_in, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8** %3, align 8
  br label %45

38:                                               ; preds = %34
  %39 = load i8**, i8*** @g_argv, align 8
  %40 = load i32, i32* @optind, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %3, align 8
  br label %45

45:                                               ; preds = %38, %37
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* @line_no, align 4
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i64 0, i64 0), i8* noundef %47, i32 noundef %48)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = load i8*, i8** %2, align 8
  %52 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %53 = call i32 @vfprintf(%struct._IO_FILE* noundef %50, i8* noundef %51, %struct.__va_list_tag* noundef %52)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %56

56:                                               ; preds = %45, %31
  br label %57

57:                                               ; preds = %56, %20
  %58 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %59 = bitcast %struct.__va_list_tag* %58 to i8*
  call void @llvm.va_end(i8* %59)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_gen() #0 {
  store i32 0, i32* @break_label, align 4
  store i32 0, i32* @continue_label, align 4
  store i32 1, i32* @next_label, align 4
  store i32 2, i32* @out_count, align 4
  %1 = load i8, i8* @compile_only, align 1
  %2 = icmp ne i8 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %6

5:                                                ; preds = %0
  call void @init_load()
  br label %6

6:                                                ; preds = %5, %3
  store i32 0, i32* @had_error, align 4
  store i8 0, i8* @did_gen, align 1
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

declare dso_local void @init_load() #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8 1, i8* @did_gen, align 1
  %3 = load i8, i8* @compile_only, align 1
  %4 = icmp ne i8 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef %6)
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @strlen(i8* noundef %8) #6
  %10 = load i32, i32* @out_count, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 %11, %9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* @out_count, align 4
  %14 = load i32, i32* @out_count, align 4
  %15 = icmp sgt i32 %14, 60
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* @out_count, align 4
  br label %18

18:                                               ; preds = %16, %5
  br label %21

19:                                               ; preds = %1
  %20 = load i8*, i8** %2, align 8
  call void @load_code(i8* noundef %20)
  br label %21

21:                                               ; preds = %19, %18
  ret void
}

declare dso_local void @load_code(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_code() #0 {
  %1 = load i32, i32* @had_error, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %14, label %3

3:                                                ; preds = %0
  %4 = load i8, i8* @did_gen, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load i8, i8* @compile_only, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* @out_count, align 4
  br label %13

12:                                               ; preds = %7
  call void @execute()
  br label %13

13:                                               ; preds = %12, %10
  br label %14

14:                                               ; preds = %13, %3, %0
  %15 = load i8, i8* @did_gen, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @init_gen()
  br label %19

18:                                               ; preds = %14
  store i32 0, i32* @had_error, align 4
  br label %19

19:                                               ; preds = %18, %17
  ret void
}

declare dso_local void @execute() #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @out_char(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  store i32 0, i32* @out_col, align 4
  %7 = call i32 @putchar(i32 noundef 10)
  br label %20

8:                                                ; preds = %1
  %9 = load i32, i32* @out_col, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @out_col, align 4
  %11 = load i32, i32* @out_col, align 4
  %12 = icmp eq i32 %11, 70
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = call i32 @putchar(i32 noundef 92)
  %15 = call i32 @putchar(i32 noundef 10)
  store i32 1, i32* @out_col, align 4
  br label %16

16:                                               ; preds = %13, %8
  %17 = load i8, i8* %2, align 1
  %18 = sext i8 %17 to i32
  %19 = call i32 @putchar(i32 noundef %18)
  br label %20

20:                                               ; preds = %16, %6
  ret void
}

declare dso_local i32 @putchar(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.id_rec* @find_id(%struct.id_rec* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.id_rec*, align 8
  %4 = alloca %struct.id_rec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.id_rec* %0, %struct.id_rec** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.id_rec*, %struct.id_rec** %4, align 8
  %8 = icmp eq %struct.id_rec* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.id_rec* null, %struct.id_rec** %3, align 8
  br label %35

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.id_rec*, %struct.id_rec** %4, align 8
  %13 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strcmp(i8* noundef %11, i8* noundef %14) #6
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load %struct.id_rec*, %struct.id_rec** %4, align 8
  store %struct.id_rec* %19, %struct.id_rec** %3, align 8
  br label %35

20:                                               ; preds = %10
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.id_rec*, %struct.id_rec** %4, align 8
  %25 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %24, i32 0, i32 5
  %26 = load %struct.id_rec*, %struct.id_rec** %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call %struct.id_rec* @find_id(%struct.id_rec* noundef %26, i8* noundef %27)
  store %struct.id_rec* %28, %struct.id_rec** %3, align 8
  br label %35

29:                                               ; preds = %20
  %30 = load %struct.id_rec*, %struct.id_rec** %4, align 8
  %31 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %30, i32 0, i32 6
  %32 = load %struct.id_rec*, %struct.id_rec** %31, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call %struct.id_rec* @find_id(%struct.id_rec* noundef %32, i8* noundef %33)
  store %struct.id_rec* %34, %struct.id_rec** %3, align 8
  br label %35

35:                                               ; preds = %29, %23, %18, %9
  %36 = load %struct.id_rec*, %struct.id_rec** %3, align 8
  ret %struct.id_rec* %36
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @insert_id_rec(%struct.id_rec** noundef %0, %struct.id_rec* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.id_rec**, align 8
  %5 = alloca %struct.id_rec*, align 8
  %6 = alloca %struct.id_rec*, align 8
  %7 = alloca %struct.id_rec*, align 8
  store %struct.id_rec** %0, %struct.id_rec*** %4, align 8
  store %struct.id_rec* %1, %struct.id_rec** %5, align 8
  %8 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %9 = load %struct.id_rec*, %struct.id_rec** %8, align 8
  %10 = icmp eq %struct.id_rec* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.id_rec*, %struct.id_rec** %5, align 8
  %13 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  store %struct.id_rec* %12, %struct.id_rec** %13, align 8
  %14 = load %struct.id_rec*, %struct.id_rec** %5, align 8
  %15 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %14, i32 0, i32 5
  store %struct.id_rec* null, %struct.id_rec** %15, align 8
  %16 = load %struct.id_rec*, %struct.id_rec** %5, align 8
  %17 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %16, i32 0, i32 6
  store %struct.id_rec* null, %struct.id_rec** %17, align 8
  %18 = load %struct.id_rec*, %struct.id_rec** %5, align 8
  %19 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %18, i32 0, i32 4
  store i16 0, i16* %19, align 4
  store i32 1, i32* %3, align 4
  br label %229

20:                                               ; preds = %2
  %21 = load %struct.id_rec*, %struct.id_rec** %5, align 8
  %22 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %25 = load %struct.id_rec*, %struct.id_rec** %24, align 8
  %26 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcmp(i8* noundef %23, i8* noundef %27) #6
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %129

30:                                               ; preds = %20
  %31 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %32 = load %struct.id_rec*, %struct.id_rec** %31, align 8
  %33 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %32, i32 0, i32 5
  %34 = load %struct.id_rec*, %struct.id_rec** %5, align 8
  %35 = call i32 @insert_id_rec(%struct.id_rec** noundef %33, %struct.id_rec* noundef %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %128

37:                                               ; preds = %30
  %38 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %39 = load %struct.id_rec*, %struct.id_rec** %38, align 8
  %40 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %39, i32 0, i32 4
  %41 = load i16, i16* %40, align 4
  %42 = add i16 %41, -1
  store i16 %42, i16* %40, align 4
  %43 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %44 = load %struct.id_rec*, %struct.id_rec** %43, align 8
  %45 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %44, i32 0, i32 4
  %46 = load i16, i16* %45, align 4
  %47 = sext i16 %46 to i32
  switch i32 %47, label %127 [
    i32 0, label %48
    i32 -1, label %49
    i32 -2, label %50
  ]

48:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %229

49:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %229

50:                                               ; preds = %37
  %51 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %52 = load %struct.id_rec*, %struct.id_rec** %51, align 8
  store %struct.id_rec* %52, %struct.id_rec** %6, align 8
  %53 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %54 = load %struct.id_rec*, %struct.id_rec** %53, align 8
  %55 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %54, i32 0, i32 5
  %56 = load %struct.id_rec*, %struct.id_rec** %55, align 8
  store %struct.id_rec* %56, %struct.id_rec** %7, align 8
  %57 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %58 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %57, i32 0, i32 4
  %59 = load i16, i16* %58, align 4
  %60 = sext i16 %59 to i32
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %50
  %63 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %64 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %63, i32 0, i32 6
  %65 = load %struct.id_rec*, %struct.id_rec** %64, align 8
  %66 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %67 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %66, i32 0, i32 5
  store %struct.id_rec* %65, %struct.id_rec** %67, align 8
  %68 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %69 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %70 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %69, i32 0, i32 6
  store %struct.id_rec* %68, %struct.id_rec** %70, align 8
  %71 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %72 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  store %struct.id_rec* %71, %struct.id_rec** %72, align 8
  %73 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %74 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %73, i32 0, i32 4
  store i16 0, i16* %74, align 4
  %75 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %76 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %75, i32 0, i32 4
  store i16 0, i16* %76, align 4
  br label %126

77:                                               ; preds = %50
  %78 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %79 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %78, i32 0, i32 6
  %80 = load %struct.id_rec*, %struct.id_rec** %79, align 8
  %81 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  store %struct.id_rec* %80, %struct.id_rec** %81, align 8
  %82 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %83 = load %struct.id_rec*, %struct.id_rec** %82, align 8
  %84 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %83, i32 0, i32 5
  %85 = load %struct.id_rec*, %struct.id_rec** %84, align 8
  %86 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %87 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %86, i32 0, i32 6
  store %struct.id_rec* %85, %struct.id_rec** %87, align 8
  %88 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %89 = load %struct.id_rec*, %struct.id_rec** %88, align 8
  %90 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %89, i32 0, i32 6
  %91 = load %struct.id_rec*, %struct.id_rec** %90, align 8
  %92 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %93 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %92, i32 0, i32 5
  store %struct.id_rec* %91, %struct.id_rec** %93, align 8
  %94 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %95 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %96 = load %struct.id_rec*, %struct.id_rec** %95, align 8
  %97 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %96, i32 0, i32 5
  store %struct.id_rec* %94, %struct.id_rec** %97, align 8
  %98 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %99 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %100 = load %struct.id_rec*, %struct.id_rec** %99, align 8
  %101 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %100, i32 0, i32 6
  store %struct.id_rec* %98, %struct.id_rec** %101, align 8
  %102 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %103 = load %struct.id_rec*, %struct.id_rec** %102, align 8
  %104 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %103, i32 0, i32 4
  %105 = load i16, i16* %104, align 4
  %106 = sext i16 %105 to i32
  switch i32 %106, label %122 [
    i32 -1, label %107
    i32 0, label %112
    i32 1, label %117
  ]

107:                                              ; preds = %77
  %108 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %109 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %108, i32 0, i32 4
  store i16 1, i16* %109, align 4
  %110 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %111 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %110, i32 0, i32 4
  store i16 0, i16* %111, align 4
  br label %122

112:                                              ; preds = %77
  %113 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %114 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %113, i32 0, i32 4
  store i16 0, i16* %114, align 4
  %115 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %116 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %115, i32 0, i32 4
  store i16 0, i16* %116, align 4
  br label %122

117:                                              ; preds = %77
  %118 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %119 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %118, i32 0, i32 4
  store i16 0, i16* %119, align 4
  %120 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %121 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %120, i32 0, i32 4
  store i16 -1, i16* %121, align 4
  br label %122

122:                                              ; preds = %77, %117, %112, %107
  %123 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %124 = load %struct.id_rec*, %struct.id_rec** %123, align 8
  %125 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %124, i32 0, i32 4
  store i16 0, i16* %125, align 4
  br label %126

126:                                              ; preds = %122, %62
  br label %127

127:                                              ; preds = %126, %37
  br label %128

128:                                              ; preds = %127, %30
  br label %228

129:                                              ; preds = %20
  %130 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %131 = load %struct.id_rec*, %struct.id_rec** %130, align 8
  %132 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %131, i32 0, i32 6
  %133 = load %struct.id_rec*, %struct.id_rec** %5, align 8
  %134 = call i32 @insert_id_rec(%struct.id_rec** noundef %132, %struct.id_rec* noundef %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %227

136:                                              ; preds = %129
  %137 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %138 = load %struct.id_rec*, %struct.id_rec** %137, align 8
  %139 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %138, i32 0, i32 4
  %140 = load i16, i16* %139, align 4
  %141 = add i16 %140, 1
  store i16 %141, i16* %139, align 4
  %142 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %143 = load %struct.id_rec*, %struct.id_rec** %142, align 8
  %144 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %143, i32 0, i32 4
  %145 = load i16, i16* %144, align 4
  %146 = sext i16 %145 to i32
  switch i32 %146, label %226 [
    i32 0, label %147
    i32 1, label %148
    i32 2, label %149
  ]

147:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  br label %229

148:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  br label %229

149:                                              ; preds = %136
  %150 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %151 = load %struct.id_rec*, %struct.id_rec** %150, align 8
  store %struct.id_rec* %151, %struct.id_rec** %6, align 8
  %152 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %153 = load %struct.id_rec*, %struct.id_rec** %152, align 8
  %154 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %153, i32 0, i32 6
  %155 = load %struct.id_rec*, %struct.id_rec** %154, align 8
  store %struct.id_rec* %155, %struct.id_rec** %7, align 8
  %156 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %157 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %156, i32 0, i32 4
  %158 = load i16, i16* %157, align 4
  %159 = sext i16 %158 to i32
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %149
  %162 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %163 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %162, i32 0, i32 5
  %164 = load %struct.id_rec*, %struct.id_rec** %163, align 8
  %165 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %166 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %165, i32 0, i32 6
  store %struct.id_rec* %164, %struct.id_rec** %166, align 8
  %167 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %168 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %169 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %168, i32 0, i32 5
  store %struct.id_rec* %167, %struct.id_rec** %169, align 8
  %170 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %171 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  store %struct.id_rec* %170, %struct.id_rec** %171, align 8
  %172 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %173 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %172, i32 0, i32 4
  store i16 0, i16* %173, align 4
  %174 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %175 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %174, i32 0, i32 4
  store i16 0, i16* %175, align 4
  br label %225

176:                                              ; preds = %149
  %177 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %178 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %177, i32 0, i32 5
  %179 = load %struct.id_rec*, %struct.id_rec** %178, align 8
  %180 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  store %struct.id_rec* %179, %struct.id_rec** %180, align 8
  %181 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %182 = load %struct.id_rec*, %struct.id_rec** %181, align 8
  %183 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %182, i32 0, i32 6
  %184 = load %struct.id_rec*, %struct.id_rec** %183, align 8
  %185 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %186 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %185, i32 0, i32 5
  store %struct.id_rec* %184, %struct.id_rec** %186, align 8
  %187 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %188 = load %struct.id_rec*, %struct.id_rec** %187, align 8
  %189 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %188, i32 0, i32 5
  %190 = load %struct.id_rec*, %struct.id_rec** %189, align 8
  %191 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %192 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %191, i32 0, i32 6
  store %struct.id_rec* %190, %struct.id_rec** %192, align 8
  %193 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %194 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %195 = load %struct.id_rec*, %struct.id_rec** %194, align 8
  %196 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %195, i32 0, i32 5
  store %struct.id_rec* %193, %struct.id_rec** %196, align 8
  %197 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %198 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %199 = load %struct.id_rec*, %struct.id_rec** %198, align 8
  %200 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %199, i32 0, i32 6
  store %struct.id_rec* %197, %struct.id_rec** %200, align 8
  %201 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %202 = load %struct.id_rec*, %struct.id_rec** %201, align 8
  %203 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %202, i32 0, i32 4
  %204 = load i16, i16* %203, align 4
  %205 = sext i16 %204 to i32
  switch i32 %205, label %221 [
    i32 -1, label %206
    i32 0, label %211
    i32 1, label %216
  ]

206:                                              ; preds = %176
  %207 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %208 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %207, i32 0, i32 4
  store i16 0, i16* %208, align 4
  %209 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %210 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %209, i32 0, i32 4
  store i16 1, i16* %210, align 4
  br label %221

211:                                              ; preds = %176
  %212 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %213 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %212, i32 0, i32 4
  store i16 0, i16* %213, align 4
  %214 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %215 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %214, i32 0, i32 4
  store i16 0, i16* %215, align 4
  br label %221

216:                                              ; preds = %176
  %217 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %218 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %217, i32 0, i32 4
  store i16 -1, i16* %218, align 4
  %219 = load %struct.id_rec*, %struct.id_rec** %7, align 8
  %220 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %219, i32 0, i32 4
  store i16 0, i16* %220, align 4
  br label %221

221:                                              ; preds = %176, %216, %211, %206
  %222 = load %struct.id_rec**, %struct.id_rec*** %4, align 8
  %223 = load %struct.id_rec*, %struct.id_rec** %222, align 8
  %224 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %223, i32 0, i32 4
  store i16 0, i16* %224, align 4
  br label %225

225:                                              ; preds = %221, %161
  br label %226

226:                                              ; preds = %225, %136
  br label %227

227:                                              ; preds = %226, %129
  br label %228

228:                                              ; preds = %227, %128
  store i32 0, i32* %3, align 4
  br label %229

229:                                              ; preds = %228, %148, %147, %49, %48, %11
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_tree() #0 {
  store %struct.id_rec* null, %struct.id_rec** @name_tree, align 8
  store i32 1, i32* @next_array, align 4
  store i32 1, i32* @next_func, align 4
  store i32 4, i32* @next_var, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lookup(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.id_rec*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @strlen(i8* noundef %7) #6
  %9 = icmp ne i64 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  call void (i8*, ...) @warn(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef %11)
  br label %12

12:                                               ; preds = %10, %2
  %13 = load %struct.id_rec*, %struct.id_rec** @name_tree, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call %struct.id_rec* @find_id(%struct.id_rec* noundef %13, i8* noundef %14)
  store %struct.id_rec* %15, %struct.id_rec** %6, align 8
  %16 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %17 = icmp eq %struct.id_rec* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = call noalias i8* @malloc(i64 noundef 40) #7
  %20 = bitcast i8* %19 to %struct.id_rec*
  store %struct.id_rec* %20, %struct.id_rec** %6, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @strcopyof(i8* noundef %21)
  %23 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %24 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %26 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %25, i32 0, i32 1
  store i32 0, i32* %26, align 8
  %27 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %28 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %27, i32 0, i32 2
  store i32 0, i32* %28, align 4
  %29 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %30 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %29, i32 0, i32 3
  store i32 0, i32* %30, align 8
  %31 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %32 = call i32 @insert_id_rec(%struct.id_rec** noundef @name_tree, %struct.id_rec* noundef %31)
  br label %33

33:                                               ; preds = %18, %12
  %34 = load i32, i32* %5, align 4
  switch i32 %34, label %152 [
    i32 1, label %35
    i32 2, label %75
    i32 0, label %113
  ]

35:                                               ; preds = %33
  %36 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %37 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i8*, i8** %4, align 8
  call void @free(i8* noundef %41) #7
  %42 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %43 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %152

46:                                               ; preds = %35
  %47 = load i32, i32* @next_array, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @next_array, align 4
  %49 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %50 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i8**, i8*** @a_names, align 8
  %53 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %54 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %52, i64 %56
  store i8* %51, i8** %57, align 8
  %58 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %59 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %60, 32767
  br i1 %61, label %62, label %74

62:                                               ; preds = %46
  %63 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %64 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @a_count, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  call void @more_arrays()
  br label %69

69:                                               ; preds = %68, %62
  %70 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %71 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %152

74:                                               ; preds = %46
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 noundef 1) #8
  unreachable

75:                                               ; preds = %33
  %76 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %77 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i8*, i8** %4, align 8
  call void @free(i8* noundef %81) #7
  %82 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %83 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %3, align 4
  br label %152

85:                                               ; preds = %75
  %86 = load i32, i32* @next_func, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @next_func, align 4
  %88 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %89 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 4
  %90 = load i8*, i8** %4, align 8
  %91 = load i8**, i8*** @f_names, align 8
  %92 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %93 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %91, i64 %95
  store i8* %90, i8** %96, align 8
  %97 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %98 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %99, 32767
  br i1 %100, label %101, label %112

101:                                              ; preds = %85
  %102 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %103 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @f_count, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  call void @more_functions()
  br label %108

108:                                              ; preds = %107, %101
  %109 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %110 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %3, align 4
  br label %152

112:                                              ; preds = %85
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  call void @exit(i32 noundef 1) #8
  unreachable

113:                                              ; preds = %33
  %114 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %115 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i8*, i8** %4, align 8
  call void @free(i8* noundef %119) #7
  %120 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %121 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %3, align 4
  br label %152

123:                                              ; preds = %113
  %124 = load i32, i32* @next_var, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* @next_var, align 4
  %126 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %127 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %126, i32 0, i32 3
  store i32 %124, i32* %127, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = load i8**, i8*** @v_names, align 8
  %130 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %131 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %129, i64 %134
  store i8* %128, i8** %135, align 8
  %136 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %137 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = icmp sle i32 %138, 32767
  br i1 %139, label %140, label %151

140:                                              ; preds = %123
  %141 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %142 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @v_count, align 4
  %145 = icmp sge i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  call void @more_variables()
  br label %147

147:                                              ; preds = %146, %140
  %148 = load %struct.id_rec*, %struct.id_rec** %6, align 8
  %149 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %3, align 4
  br label %152

151:                                              ; preds = %123
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  call void @exit(i32 noundef 1) #8
  unreachable

152:                                              ; preds = %40, %69, %80, %108, %118, %147, %33
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local void @more_arrays() #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

declare dso_local void @more_functions() #3

declare dso_local void @more_variables() #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @welcome() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @warranty(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* noundef %3, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.15, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.27, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @limits() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), i32 noundef 99)
  %2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i64 noundef 2048)
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i32 noundef 99)
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0), i32 noundef 1000)
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i64 noundef 9223372036854775807)
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0), i64 noundef 16384)
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0), i64 noundef 102481911520608620)
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i64 noundef 32767)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #5

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare dso_local i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %struct.__va_list_tag* noundef) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @rt_error(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [255 x i8], align 16
  store i8* %0, i8** %2, align 8
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %10 = call i32 @vsprintf(i8* noundef %7, i8* noundef %8, %struct.__va_list_tag* noundef %9) #7
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %12 = bitcast %struct.__va_list_tag* %11 to i8*
  call void @llvm.va_end(i8* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i8**, i8*** @f_names, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  %20 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.39, i64 0, i64 0), i8* noundef %18, i32 noundef %19, i8* noundef %20)
  store i8 1, i8* @runtime_error, align 1
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @vsprintf(i8* noundef, i8* noundef, %struct.__va_list_tag* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @rt_warn(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [255 x i8], align 16
  store i8* %0, i8** %2, align 8
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %10 = call i32 @vsprintf(i8* noundef %7, i8* noundef %8, %struct.__va_list_tag* noundef %9) #7
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %12 = bitcast %struct.__va_list_tag* %11 to i8*
  call void @llvm.va_end(i8* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i8**, i8*** @f_names, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  %20 = getelementptr inbounds [255 x i8], [255 x i8]* %4, i64 0, i64 0
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0), i8* noundef %18, i32 noundef %19, i8* noundef %20)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
