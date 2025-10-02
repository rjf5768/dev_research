; ModuleID = './util.ll'
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
@str = private unnamed_addr constant [3 x i8] c"@r\00", align 1
@str.1 = private unnamed_addr constant [51 x i8] c"This is free software with ABSOLUTELY NO WARRANTY.\00", align 1
@str.2 = private unnamed_addr constant [20 x i8] c"For details type . \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @strcopyof(i8* noundef %0) #0 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #11
  %3 = add i64 %2, 1
  %4 = call noalias i8* @malloc(i64 noundef %3) #12
  %5 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %4, i8* noundef nonnull dereferenceable(1) %0) #12
  ret i8* %4
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.arg_list* @nextarg(%struct.arg_list* noundef %0, i8 noundef signext %1) #0 {
  %3 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #12
  %4 = bitcast i8* %3 to %struct.arg_list*
  %5 = sext i8 %1 to i32
  %6 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %4, i64 0, i32 0
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %4, i64 0, i32 1
  store %struct.arg_list* %0, %struct.arg_list** %7, align 8
  ret %struct.arg_list* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @arg_str(%struct.arg_list* noundef %0, i32 noundef %1) #0 {
  %3 = load i8*, i8** @arglist2, align 8
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %6, label %4

4:                                                ; preds = %2
  %5 = load i8*, i8** @arglist2, align 8
  call void @free(i8* noundef %5) #12
  br label %6

6:                                                ; preds = %4, %2
  %7 = load i8*, i8** @arglist1, align 8
  store i8* %7, i8** @arglist2, align 8
  %8 = call i8* @make_arg_str(%struct.arg_list* noundef %0, i32 noundef 1, i32 noundef %1)
  store i8* %8, i8** @arglist1, align 8
  ret i8* %8
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @make_arg_str(%struct.arg_list* noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [20 x i8], align 16
  %.not = icmp eq %struct.arg_list* %0, null
  br i1 %.not, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %0, i64 0, i32 1
  %7 = load %struct.arg_list*, %struct.arg_list** %6, align 8
  %8 = add nsw i32 %1, 11
  %9 = call i8* @make_arg_str(%struct.arg_list* noundef %7, i32 noundef %8, i32 noundef %2)
  br label %13

10:                                               ; preds = %3
  %11 = sext i32 %1 to i64
  %12 = call noalias i8* @malloc(i64 noundef %11) #12
  store i8 0, i8* %12, align 1
  br label %28

13:                                               ; preds = %5
  %.not1 = icmp eq i32 %1, 1
  br i1 %.not1, label %20, label %14

14:                                               ; preds = %13
  %.not2 = icmp eq i32 %2, 0
  br i1 %.not2, label %20, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %17 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %0, i64 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %16, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i32 noundef %18) #12
  br label %25

20:                                               ; preds = %14, %13
  %21 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %22 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %0, i64 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %21, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i32 noundef %23) #12
  br label %25

25:                                               ; preds = %20, %15
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %27 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) %9, i8* noundef nonnull %26) #12
  br label %28

28:                                               ; preds = %25, %10
  %.0 = phi i8* [ %9, %25 ], [ %12, %10 ]
  ret i8* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_args(%struct.arg_list* noundef %0) #0 {
  br label %2

2:                                                ; preds = %3, %1
  %.0 = phi %struct.arg_list* [ %0, %1 ], [ %5, %3 ]
  %.not = icmp eq %struct.arg_list* %.0, null
  br i1 %.not, label %7, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %.0, i64 0, i32 1
  %5 = load %struct.arg_list*, %struct.arg_list** %4, align 8
  %6 = bitcast %struct.arg_list* %.0 to i8*
  call void @free(i8* noundef %6) #12
  br label %2, !llvm.loop !4

7:                                                ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @check_params(%struct.arg_list* noundef readonly %0, %struct.arg_list* noundef readonly %1) #0 {
  %.not = icmp eq %struct.arg_list* %0, null
  br i1 %.not, label %24, label %3

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %20, %3
  %.01 = phi %struct.arg_list* [ %0, %3 ], [ %22, %20 ]
  %.not11 = icmp eq %struct.arg_list* %.01, null
  br i1 %.not11, label %23, label %5

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %14, %5
  %.01.pn = phi %struct.arg_list* [ %.01, %5 ], [ %.0, %14 ]
  %.0.in = getelementptr inbounds %struct.arg_list, %struct.arg_list* %.01.pn, i64 0, i32 1
  %.0 = load %struct.arg_list*, %struct.arg_list** %.0.in, align 8
  %.not12 = icmp eq %struct.arg_list* %.0, null
  br i1 %.not12, label %15, label %7

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %.0, i64 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %.01, i64 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %13, %7
  br label %6, !llvm.loop !6

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %.01, i64 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  call void (i8*, ...) @warn(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %.01, i64 0, i32 1
  %22 = load %struct.arg_list*, %struct.arg_list** %21, align 8
  br label %4, !llvm.loop !7

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23, %2
  %.not4 = icmp eq %struct.arg_list* %1, null
  br i1 %.not4, label %41, label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %37, %25
  %.12 = phi %struct.arg_list* [ %1, %25 ], [ %39, %37 ]
  %.not9 = icmp eq %struct.arg_list* %.12, null
  br i1 %.not9, label %40, label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %36, %27
  %.12.pn = phi %struct.arg_list* [ %.12, %27 ], [ %.1, %36 ]
  %.1.in = getelementptr inbounds %struct.arg_list, %struct.arg_list* %.12.pn, i64 0, i32 1
  %.1 = load %struct.arg_list*, %struct.arg_list** %.1.in, align 8
  %.not10 = icmp eq %struct.arg_list* %.1, null
  br i1 %.not10, label %37, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %.1, i64 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %.12, i64 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %35, %29
  br label %28, !llvm.loop !8

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %.12, i64 0, i32 1
  %39 = load %struct.arg_list*, %struct.arg_list** %38, align 8
  br label %26, !llvm.loop !9

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40, %24
  %.not5 = icmp eq %struct.arg_list* %0, null
  br i1 %.not5, label %61, label %42

42:                                               ; preds = %41
  %.not6 = icmp eq %struct.arg_list* %1, null
  br i1 %.not6, label %61, label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %57, %43
  %.23 = phi %struct.arg_list* [ %0, %43 ], [ %59, %57 ]
  %.not7 = icmp eq %struct.arg_list* %.23, null
  br i1 %.not7, label %60, label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %54, %45
  %.2 = phi %struct.arg_list* [ %1, %45 ], [ %56, %54 ]
  %.not8 = icmp eq %struct.arg_list* %.2, null
  br i1 %.not8, label %57, label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %.2, i64 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %.23, i64 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %53, %47
  %55 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %.2, i64 0, i32 1
  %56 = load %struct.arg_list*, %struct.arg_list** %55, align 8
  br label %46, !llvm.loop !10

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %.23, i64 0, i32 1
  %59 = load %struct.arg_list*, %struct.arg_list** %58, align 8
  br label %44, !llvm.loop !11

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60, %42, %41
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @yyerror(i8* noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  %4 = load i8, i8* @is_std_in, align 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %1
  br label %13

6:                                                ; preds = %1
  %7 = load i8**, i8*** @g_argv, align 8
  %8 = load i32, i32* @optind, align 4
  %9 = add nsw i32 %8, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8*, i8** %7, i64 %10
  %12 = load i8*, i8** %11, align 8
  br label %13

13:                                               ; preds = %6, %5
  %.0 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), %5 ], [ %12, %6 ]
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i32, i32* @line_no, align 4
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i8* noundef %.0, i32 noundef %15) #13
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %19 = call i32 @vfprintf(%struct._IO_FILE* noundef %17, i8* noundef %0, %struct.__va_list_tag* noundef nonnull %18) #13
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %20)
  store i32 1, i32* @had_error, align 4
  %21 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %21)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @warn(i8* noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  %4 = load i8, i8* @std_only, align 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %23, label %5

5:                                                ; preds = %1
  %6 = load i8, i8* @is_std_in, align 1
  %.not3 = icmp eq i8 %6, 0
  br i1 %.not3, label %8, label %7

7:                                                ; preds = %5
  br label %15

8:                                                ; preds = %5
  %9 = load i8**, i8*** @g_argv, align 8
  %10 = load i32, i32* @optind, align 4
  %11 = add nsw i32 %10, -1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %9, i64 %12
  %14 = load i8*, i8** %13, align 8
  br label %15

15:                                               ; preds = %8, %7
  %.0 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), %7 ], [ %14, %8 ]
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i32, i32* @line_no, align 4
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i8* noundef %.0, i32 noundef %17) #13
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %21 = call i32 @vfprintf(%struct._IO_FILE* noundef %19, i8* noundef %0, %struct.__va_list_tag* noundef nonnull %20) #13
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %fputc4 = call i32 @fputc(i32 10, %struct._IO_FILE* %22)
  store i32 1, i32* @had_error, align 4
  br label %44

23:                                               ; preds = %1
  %24 = load i8, i8* @warn_not_std, align 1
  %.not1 = icmp eq i8 %24, 0
  br i1 %.not1, label %43, label %25

25:                                               ; preds = %23
  %26 = load i8, i8* @is_std_in, align 1
  %.not2 = icmp eq i8 %26, 0
  br i1 %.not2, label %28, label %27

27:                                               ; preds = %25
  br label %35

28:                                               ; preds = %25
  %29 = load i8**, i8*** @g_argv, align 8
  %30 = load i32, i32* @optind, align 4
  %31 = add nsw i32 %30, -1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  %34 = load i8*, i8** %33, align 8
  br label %35

35:                                               ; preds = %28, %27
  %.1 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), %27 ], [ %34, %28 ]
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = load i32, i32* @line_no, align 4
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i64 0, i64 0), i8* noundef %.1, i32 noundef %37) #13
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %41 = call i32 @vfprintf(%struct._IO_FILE* noundef %39, i8* noundef %0, %struct.__va_list_tag* noundef nonnull %40) #13
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %42)
  br label %43

43:                                               ; preds = %35, %23
  br label %44

44:                                               ; preds = %43, %15
  %45 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %45)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_gen() #0 {
  store i32 0, i32* @break_label, align 4
  store i32 0, i32* @continue_label, align 4
  store i32 1, i32* @next_label, align 4
  store i32 2, i32* @out_count, align 4
  %1 = load i8, i8* @compile_only, align 1
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %4, label %2

2:                                                ; preds = %0
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #12
  br label %5

4:                                                ; preds = %0
  call void @init_load() #12
  br label %5

5:                                                ; preds = %4, %2
  store i32 0, i32* @had_error, align 4
  store i8 0, i8* @did_gen, align 1
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

declare dso_local void @init_load() #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate(i8* noundef %0) #0 {
  store i8 1, i8* @did_gen, align 1
  %2 = load i8, i8* @compile_only, align 1
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %12, label %3

3:                                                ; preds = %1
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef %0) #12
  %5 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #11
  %6 = load i32, i32* @out_count, align 4
  %7 = trunc i64 %5 to i32
  %8 = add i32 %6, %7
  store i32 %8, i32* @out_count, align 4
  %9 = icmp sgt i32 %8, 60
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  %putchar = call i32 @putchar(i32 10)
  store i32 0, i32* @out_count, align 4
  br label %11

11:                                               ; preds = %10, %3
  br label %13

12:                                               ; preds = %1
  call void @load_code(i8* noundef %0) #12
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

declare dso_local void @load_code(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_code() #0 {
  %1 = load i32, i32* @had_error, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %2, label %9

2:                                                ; preds = %0
  %3 = load i8, i8* @did_gen, align 1
  %.not1 = icmp eq i8 %3, 0
  br i1 %.not1, label %9, label %4

4:                                                ; preds = %2
  %5 = load i8, i8* @compile_only, align 1
  %.not3 = icmp eq i8 %5, 0
  br i1 %.not3, label %7, label %6

6:                                                ; preds = %4
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @str, i64 0, i64 0))
  store i32 0, i32* @out_count, align 4
  br label %8

7:                                                ; preds = %4
  call void @execute() #12
  br label %8

8:                                                ; preds = %7, %6
  br label %9

9:                                                ; preds = %8, %2, %0
  %10 = load i8, i8* @did_gen, align 1
  %.not2 = icmp eq i8 %10, 0
  br i1 %.not2, label %12, label %11

11:                                               ; preds = %9
  call void @init_gen()
  br label %13

12:                                               ; preds = %9
  store i32 0, i32* @had_error, align 4
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

declare dso_local void @execute() #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @out_char(i8 noundef signext %0) #0 {
  %2 = icmp eq i8 %0, 10
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  store i32 0, i32* @out_col, align 4
  %4 = call i32 @putchar(i32 noundef 10)
  br label %15

5:                                                ; preds = %1
  %6 = load i32, i32* @out_col, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @out_col, align 4
  %8 = icmp eq i32 %7, 70
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = call i32 @putchar(i32 noundef 92)
  %11 = call i32 @putchar(i32 noundef 10)
  store i32 1, i32* @out_col, align 4
  br label %12

12:                                               ; preds = %9, %5
  %13 = sext i8 %0 to i32
  %14 = call i32 @putchar(i32 noundef %13)
  br label %15

15:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @putchar(i32 noundef) #4

; Function Attrs: nofree noinline nounwind readonly uwtable
define dso_local %struct.id_rec* @find_id(%struct.id_rec* noundef readonly %0, i8* noundef readonly %1) #5 {
  %3 = icmp eq %struct.id_rec* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %21

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %0, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(1) %7) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %21

11:                                               ; preds = %5
  %12 = icmp slt i32 %8, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %0, i64 0, i32 5
  %15 = load %struct.id_rec*, %struct.id_rec** %14, align 8
  %16 = call %struct.id_rec* @find_id(%struct.id_rec* noundef %15, i8* noundef %1)
  br label %21

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %0, i64 0, i32 6
  %19 = load %struct.id_rec*, %struct.id_rec** %18, align 8
  %20 = call %struct.id_rec* @find_id(%struct.id_rec* noundef %19, i8* noundef %1)
  br label %21

21:                                               ; preds = %17, %13, %10, %4
  %.0 = phi %struct.id_rec* [ null, %4 ], [ %0, %10 ], [ %16, %13 ], [ %20, %17 ]
  ret %struct.id_rec* %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @insert_id_rec(%struct.id_rec** noundef %0, %struct.id_rec* noundef %1) #6 {
  %3 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %4 = icmp eq %struct.id_rec* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  store %struct.id_rec* %1, %struct.id_rec** %0, align 8
  %6 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %1, i64 0, i32 5
  store %struct.id_rec* null, %struct.id_rec** %6, align 8
  %7 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %1, i64 0, i32 6
  store %struct.id_rec* null, %struct.id_rec** %7, align 8
  %8 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %1, i64 0, i32 4
  store i16 0, i16* %8, align 4
  br label %142

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %1, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %13 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %12, i64 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %11, i8* noundef nonnull dereferenceable(1) %14) #11
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %79

17:                                               ; preds = %9
  %18 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %19 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %18, i64 0, i32 5
  %20 = call i32 @insert_id_rec(%struct.id_rec** noundef nonnull %19, %struct.id_rec* noundef %1)
  %.not1 = icmp eq i32 %20, 0
  br i1 %.not1, label %78, label %21

21:                                               ; preds = %17
  %22 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %23 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %22, i64 0, i32 4
  %24 = load i16, i16* %23, align 4
  %25 = add i16 %24, -1
  store i16 %25, i16* %23, align 4
  %26 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %27 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %26, i64 0, i32 4
  %28 = load i16, i16* %27, align 4
  %29 = sext i16 %28 to i32
  switch i32 %29, label %77 [
    i32 0, label %30
    i32 -1, label %31
    i32 -2, label %32
  ]

30:                                               ; preds = %21
  br label %142

31:                                               ; preds = %21
  br label %142

32:                                               ; preds = %21
  %33 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %34 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %33, i64 0, i32 5
  %35 = load %struct.id_rec*, %struct.id_rec** %34, align 8
  %36 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %35, i64 0, i32 4
  %37 = load i16, i16* %36, align 4
  %38 = icmp slt i16 %37, 1
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %35, i64 0, i32 6
  %41 = load %struct.id_rec*, %struct.id_rec** %40, align 8
  %42 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %33, i64 0, i32 5
  store %struct.id_rec* %41, %struct.id_rec** %42, align 8
  %43 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %35, i64 0, i32 6
  store %struct.id_rec* %33, %struct.id_rec** %43, align 8
  store %struct.id_rec* %35, %struct.id_rec** %0, align 8
  %44 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %33, i64 0, i32 4
  store i16 0, i16* %44, align 4
  %45 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %35, i64 0, i32 4
  store i16 0, i16* %45, align 4
  br label %76

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %35, i64 0, i32 6
  %48 = load %struct.id_rec*, %struct.id_rec** %47, align 8
  store %struct.id_rec* %48, %struct.id_rec** %0, align 8
  %49 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %48, i64 0, i32 5
  %50 = load %struct.id_rec*, %struct.id_rec** %49, align 8
  %51 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %35, i64 0, i32 6
  store %struct.id_rec* %50, %struct.id_rec** %51, align 8
  %52 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %53 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %52, i64 0, i32 6
  %54 = load %struct.id_rec*, %struct.id_rec** %53, align 8
  %55 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %33, i64 0, i32 5
  store %struct.id_rec* %54, %struct.id_rec** %55, align 8
  %56 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %57 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %56, i64 0, i32 5
  store %struct.id_rec* %35, %struct.id_rec** %57, align 8
  %58 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %59 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %58, i64 0, i32 6
  store %struct.id_rec* %33, %struct.id_rec** %59, align 8
  %60 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %61 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %60, i64 0, i32 4
  %62 = load i16, i16* %61, align 4
  %63 = sext i16 %62 to i32
  switch i32 %63, label %73 [
    i32 -1, label %64
    i32 0, label %67
    i32 1, label %70
  ]

64:                                               ; preds = %46
  %65 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %33, i64 0, i32 4
  store i16 1, i16* %65, align 4
  %66 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %35, i64 0, i32 4
  store i16 0, i16* %66, align 4
  br label %73

67:                                               ; preds = %46
  %68 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %33, i64 0, i32 4
  store i16 0, i16* %68, align 4
  %69 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %35, i64 0, i32 4
  store i16 0, i16* %69, align 4
  br label %73

70:                                               ; preds = %46
  %71 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %33, i64 0, i32 4
  store i16 0, i16* %71, align 4
  %72 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %35, i64 0, i32 4
  store i16 -1, i16* %72, align 4
  br label %73

73:                                               ; preds = %70, %67, %64, %46
  %74 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %75 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %74, i64 0, i32 4
  store i16 0, i16* %75, align 4
  br label %76

76:                                               ; preds = %73, %39
  br label %77

77:                                               ; preds = %76, %21
  br label %78

78:                                               ; preds = %77, %17
  br label %141

79:                                               ; preds = %9
  %80 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %81 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %80, i64 0, i32 6
  %82 = call i32 @insert_id_rec(%struct.id_rec** noundef nonnull %81, %struct.id_rec* noundef %1)
  %.not = icmp eq i32 %82, 0
  br i1 %.not, label %140, label %83

83:                                               ; preds = %79
  %84 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %85 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %84, i64 0, i32 4
  %86 = load i16, i16* %85, align 4
  %87 = add i16 %86, 1
  store i16 %87, i16* %85, align 4
  %88 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %89 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %88, i64 0, i32 4
  %90 = load i16, i16* %89, align 4
  %91 = sext i16 %90 to i32
  switch i32 %91, label %139 [
    i32 0, label %92
    i32 1, label %93
    i32 2, label %94
  ]

92:                                               ; preds = %83
  br label %142

93:                                               ; preds = %83
  br label %142

94:                                               ; preds = %83
  %95 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %96 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %95, i64 0, i32 6
  %97 = load %struct.id_rec*, %struct.id_rec** %96, align 8
  %98 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %97, i64 0, i32 4
  %99 = load i16, i16* %98, align 4
  %100 = icmp sgt i16 %99, -1
  br i1 %100, label %101, label %108

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %97, i64 0, i32 5
  %103 = load %struct.id_rec*, %struct.id_rec** %102, align 8
  %104 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %95, i64 0, i32 6
  store %struct.id_rec* %103, %struct.id_rec** %104, align 8
  %105 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %97, i64 0, i32 5
  store %struct.id_rec* %95, %struct.id_rec** %105, align 8
  store %struct.id_rec* %97, %struct.id_rec** %0, align 8
  %106 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %95, i64 0, i32 4
  store i16 0, i16* %106, align 4
  %107 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %97, i64 0, i32 4
  store i16 0, i16* %107, align 4
  br label %138

108:                                              ; preds = %94
  %109 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %97, i64 0, i32 5
  %110 = load %struct.id_rec*, %struct.id_rec** %109, align 8
  store %struct.id_rec* %110, %struct.id_rec** %0, align 8
  %111 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %110, i64 0, i32 6
  %112 = load %struct.id_rec*, %struct.id_rec** %111, align 8
  %113 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %97, i64 0, i32 5
  store %struct.id_rec* %112, %struct.id_rec** %113, align 8
  %114 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %115 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %114, i64 0, i32 5
  %116 = load %struct.id_rec*, %struct.id_rec** %115, align 8
  %117 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %95, i64 0, i32 6
  store %struct.id_rec* %116, %struct.id_rec** %117, align 8
  %118 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %119 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %118, i64 0, i32 5
  store %struct.id_rec* %95, %struct.id_rec** %119, align 8
  %120 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %121 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %120, i64 0, i32 6
  store %struct.id_rec* %97, %struct.id_rec** %121, align 8
  %122 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %123 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %122, i64 0, i32 4
  %124 = load i16, i16* %123, align 4
  %125 = sext i16 %124 to i32
  switch i32 %125, label %135 [
    i32 -1, label %126
    i32 0, label %129
    i32 1, label %132
  ]

126:                                              ; preds = %108
  %127 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %95, i64 0, i32 4
  store i16 0, i16* %127, align 4
  %128 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %97, i64 0, i32 4
  store i16 1, i16* %128, align 4
  br label %135

129:                                              ; preds = %108
  %130 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %95, i64 0, i32 4
  store i16 0, i16* %130, align 4
  %131 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %97, i64 0, i32 4
  store i16 0, i16* %131, align 4
  br label %135

132:                                              ; preds = %108
  %133 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %95, i64 0, i32 4
  store i16 -1, i16* %133, align 4
  %134 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %97, i64 0, i32 4
  store i16 0, i16* %134, align 4
  br label %135

135:                                              ; preds = %132, %129, %126, %108
  %136 = load %struct.id_rec*, %struct.id_rec** %0, align 8
  %137 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %136, i64 0, i32 4
  store i16 0, i16* %137, align 4
  br label %138

138:                                              ; preds = %135, %101
  br label %139

139:                                              ; preds = %138, %83
  br label %140

140:                                              ; preds = %139, %79
  br label %141

141:                                              ; preds = %140, %78
  br label %142

142:                                              ; preds = %141, %93, %92, %31, %30, %5
  %.0 = phi i32 [ 1, %5 ], [ 0, %141 ], [ 0, %31 ], [ 0, %30 ], [ 0, %93 ], [ 0, %92 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @init_tree() #7 {
  store %struct.id_rec* null, %struct.id_rec** @name_tree, align 8
  store i32 1, i32* @next_array, align 4
  store i32 1, i32* @next_func, align 4
  store i32 4, i32* @next_var, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lookup(i8* noundef %0, i32 noundef %1) #0 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #11
  %.not = icmp eq i64 %3, 1
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  call void (i8*, ...) @warn(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef %0)
  br label %5

5:                                                ; preds = %4, %2
  %6 = load %struct.id_rec*, %struct.id_rec** @name_tree, align 8
  %7 = call %struct.id_rec* @find_id(%struct.id_rec* noundef %6, i8* noundef %0)
  %8 = icmp eq %struct.id_rec* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #12
  %11 = bitcast i8* %10 to %struct.id_rec*
  %12 = call i8* @strcopyof(i8* noundef %0)
  %13 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %11, i64 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %11, i64 0, i32 1
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %11, i64 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %11, i64 0, i32 3
  store i32 0, i32* %16, align 8
  %17 = call i32 @insert_id_rec(%struct.id_rec** noundef nonnull @name_tree, %struct.id_rec* noundef %11)
  br label %18

18:                                               ; preds = %9, %5
  %.01 = phi %struct.id_rec* [ %11, %9 ], [ %7, %5 ]
  switch i32 %1, label %97 [
    i32 1, label %19
    i32 2, label %46
    i32 0, label %71
  ]

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %.01, i64 0, i32 1
  %21 = load i32, i32* %20, align 8
  %.not6 = icmp eq i32 %21, 0
  br i1 %.not6, label %26, label %22

22:                                               ; preds = %19
  call void @free(i8* noundef %0) #12
  %23 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %.01, i64 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 0, %24
  br label %97

26:                                               ; preds = %19
  %27 = load i32, i32* @next_array, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @next_array, align 4
  %29 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %.01, i64 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load i8**, i8*** @a_names, align 8
  %31 = sext i32 %27 to i64
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  store i8* %0, i8** %32, align 8
  %33 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %.01, i64 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 32767
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %.01, i64 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @a_count, align 4
  %.not7 = icmp slt i32 %38, %39
  br i1 %.not7, label %41, label %40

40:                                               ; preds = %36
  call void @more_arrays() #12
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %.01, i64 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 0, %43
  br label %97

45:                                               ; preds = %26
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 noundef 1) #14
  br label %UnifiedUnreachableBlock

46:                                               ; preds = %18
  %47 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %.01, i64 0, i32 2
  %48 = load i32, i32* %47, align 4
  %.not4 = icmp eq i32 %48, 0
  br i1 %.not4, label %52, label %49

49:                                               ; preds = %46
  call void @free(i8* noundef %0) #12
  %50 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %.01, i64 0, i32 2
  %51 = load i32, i32* %50, align 4
  br label %97

52:                                               ; preds = %46
  %53 = load i32, i32* @next_func, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @next_func, align 4
  %55 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %.01, i64 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i8**, i8*** @f_names, align 8
  %57 = sext i32 %53 to i64
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  store i8* %0, i8** %58, align 8
  %59 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %.01, i64 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 32767
  br i1 %61, label %62, label %70

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %.01, i64 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @f_count, align 4
  %.not5 = icmp slt i32 %64, %65
  br i1 %.not5, label %67, label %66

66:                                               ; preds = %62
  call void @more_functions() #12
  br label %67

67:                                               ; preds = %66, %62
  %68 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %.01, i64 0, i32 2
  %69 = load i32, i32* %68, align 4
  br label %97

70:                                               ; preds = %52
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  call void @exit(i32 noundef 1) #14
  br label %UnifiedUnreachableBlock

71:                                               ; preds = %18
  %72 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %.01, i64 0, i32 3
  %73 = load i32, i32* %72, align 8
  %.not2 = icmp eq i32 %73, 0
  br i1 %.not2, label %77, label %74

74:                                               ; preds = %71
  call void @free(i8* noundef %0) #12
  %75 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %.01, i64 0, i32 3
  %76 = load i32, i32* %75, align 8
  br label %97

77:                                               ; preds = %71
  %78 = load i32, i32* @next_var, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @next_var, align 4
  %80 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %.01, i64 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load i8**, i8*** @v_names, align 8
  %82 = add nsw i32 %78, -1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  store i8* %0, i8** %84, align 8
  %85 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %.01, i64 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %86, 32768
  br i1 %87, label %88, label %96

88:                                               ; preds = %77
  %89 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %.01, i64 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @v_count, align 4
  %.not3 = icmp slt i32 %90, %91
  br i1 %.not3, label %93, label %92

92:                                               ; preds = %88
  call void @more_variables() #12
  br label %93

93:                                               ; preds = %92, %88
  %94 = getelementptr inbounds %struct.id_rec, %struct.id_rec* %.01, i64 0, i32 3
  %95 = load i32, i32* %94, align 8
  br label %97

96:                                               ; preds = %77
  call void (i8*, ...) @yyerror(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  call void @exit(i32 noundef 1) #14
  br label %UnifiedUnreachableBlock

97:                                               ; preds = %93, %74, %67, %49, %41, %22, %18
  %.0 = phi i32 [ undef, %18 ], [ %76, %74 ], [ %95, %93 ], [ %51, %49 ], [ %69, %67 ], [ %25, %22 ], [ %44, %41 ]
  ret i32 %.0

UnifiedUnreachableBlock:                          ; preds = %96, %70, %45
  unreachable
}

declare dso_local void @more_arrays() #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #8

declare dso_local void @more_functions() #3

declare dso_local void @more_variables() #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @welcome() #0 {
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([51 x i8], [51 x i8]* @str.1, i64 0, i64 0))
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @str.2, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @warranty(i8* noundef %0) #0 {
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* noundef %0, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.15, i64 0, i64 0)) #12
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.27, i64 0, i64 0)) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @limits() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), i32 noundef 99) #12
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i64 noundef 2048) #12
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i32 noundef 99) #12
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0), i32 noundef 1000) #12
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i64 noundef 9223372036854775807) #12
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0), i64 noundef 16384) #12
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0), i64 noundef 102481911520608620) #12
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i64 noundef 32767) #12
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare dso_local i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %struct.__va_list_tag* noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

; Function Attrs: noinline nounwind uwtable
define dso_local void @rt_error(i8* noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca [255 x i8], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 0
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %7 = call i32 @vsprintf(i8* noundef nonnull %5, i8* noundef %0, %struct.__va_list_tag* noundef nonnull %6) #12
  %8 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load i8**, i8*** @f_names, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 0), align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %10, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 1), align 4
  %16 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 0
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.39, i64 0, i64 0), i8* noundef %14, i32 noundef %15, i8* noundef nonnull %16) #13
  store i8 1, i8* @runtime_error, align 1
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @vsprintf(i8* noundef, i8* noundef, %struct.__va_list_tag* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @rt_warn(i8* noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca [255 x i8], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 0
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  %7 = call i32 @vsprintf(i8* noundef nonnull %5, i8* noundef %0, %struct.__va_list_tag* noundef nonnull %6) #12
  %8 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load i8**, i8*** @f_names, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 0), align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %10, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 1), align 4
  %16 = getelementptr inbounds [255 x i8], [255 x i8]* %3, i64 0, i64 0
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0), i8* noundef %14, i32 noundef %15, i8* noundef nonnull %16) #13
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #10

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { noreturn nounwind }

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
