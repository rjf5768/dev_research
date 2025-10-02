; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gawk/msg.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gawk/msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.exp_node = type { %union.anon, i32, i8 }
%union.anon = type { %struct.anon }
%struct.anon = type { %union.anon.0, %union.anon.1, i8*, i16, i8 }
%union.anon.0 = type { %struct.exp_node* }
%union.anon.1 = type { %struct.exp_node* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.anon.2 = type { double, i8*, i16, i8 }

@sourceline = dso_local global i32 0, align 4
@source = dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"warning:\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"fatal error:\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"%s: %s \00", align 1
@myname = external dso_local global i8*, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FNR_node = external dso_local global %struct.exp_node*, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c" input line number %d\00", align 1
@FILENAME_node = external dso_local global %struct.exp_node*, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c", file `%s'\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c" source line number %d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @msg(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 16
  %10 = icmp ule i32 %9, 40
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 3
  %13 = load i8*, i8** %12, align 16
  %14 = getelementptr i8, i8* %13, i32 %9
  %15 = bitcast i8* %14 to i8**
  %16 = add i32 %9, 8
  store i32 %16, i32* %8, align 16
  br label %22

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to i8**
  %21 = getelementptr i8, i8* %19, i32 8
  store i8* %21, i8** %18, align 8
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i8** [ %15, %11 ], [ %20, %17 ]
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  call void @err(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* noundef %25, [1 x %struct.__va_list_tag]* noundef %3)
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %27 = bitcast %struct.__va_list_tag* %26 to i8*
  call void @llvm.va_end(i8* %27)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @err(i8* noundef %0, i8* noundef %1, [1 x %struct.__va_list_tag]* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store [1 x %struct.__va_list_tag]* %2, [1 x %struct.__va_list_tag]** %6, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load i8*, i8** @myname, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* noundef %10, i8* noundef %11)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %6, align 8
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %15, i64 0, i64 0
  %17 = call i32 @vfprintf(%struct._IO_FILE* noundef %13, i8* noundef %14, %struct.__va_list_tag* noundef %16)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %20 = load %struct.exp_node*, %struct.exp_node** @FNR_node, align 8
  %21 = getelementptr inbounds %struct.exp_node, %struct.exp_node* %20, i32 0, i32 0
  %22 = bitcast %union.anon* %21 to %struct.anon*
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %24 = bitcast %union.anon.0* %23 to %struct.exp_node**
  %25 = load %struct.exp_node*, %struct.exp_node** %24, align 8
  %26 = getelementptr inbounds %struct.exp_node, %struct.exp_node* %25, i32 0, i32 0
  %27 = bitcast %union.anon* %26 to %struct.anon.2*
  %28 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = fptosi double %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %67

33:                                               ; preds = %3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 noundef %35)
  %37 = load %struct.exp_node*, %struct.exp_node** @FILENAME_node, align 8
  %38 = getelementptr inbounds %struct.exp_node, %struct.exp_node* %37, i32 0, i32 0
  %39 = bitcast %union.anon* %38 to %struct.anon*
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 0
  %41 = bitcast %union.anon.0* %40 to %struct.exp_node**
  %42 = load %struct.exp_node*, %struct.exp_node** %41, align 8
  %43 = getelementptr inbounds %struct.exp_node, %struct.exp_node* %42, i32 0, i32 0
  %44 = bitcast %union.anon* %43 to %struct.anon.2*
  %45 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %33
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @strcmp(i8* noundef %57, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56, %49
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* noundef %62)
  br label %64

64:                                               ; preds = %60, %56, %33
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %3
  %68 = load i32, i32* @sourceline, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = load i32, i32* @sourceline, align 4
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 noundef %72)
  %74 = load i8*, i8** @source, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %78 = load i8*, i8** @source, align 8
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %77, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* noundef %78)
  br label %80

80:                                               ; preds = %76, %70
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %81, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %67
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @warning(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 16
  %10 = icmp ule i32 %9, 40
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 3
  %13 = load i8*, i8** %12, align 16
  %14 = getelementptr i8, i8* %13, i32 %9
  %15 = bitcast i8* %14 to i8**
  %16 = add i32 %9, 8
  store i32 %16, i32* %8, align 16
  br label %22

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to i8**
  %21 = getelementptr i8, i8* %19, i32 8
  store i8* %21, i8** %18, align 8
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i8** [ %15, %11 ], [ %20, %17 ]
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  call void @err(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* noundef %25, [1 x %struct.__va_list_tag]* noundef %3)
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %27 = bitcast %struct.__va_list_tag* %26 to i8*
  call void @llvm.va_end(i8* %27)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fatal(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 16
  %10 = icmp ule i32 %9, 40
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 3
  %13 = load i8*, i8** %12, align 16
  %14 = getelementptr i8, i8* %13, i32 %9
  %15 = bitcast i8* %14 to i8**
  %16 = add i32 %9, 8
  store i32 %16, i32* %8, align 16
  br label %22

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to i8**
  %21 = getelementptr i8, i8* %19, i32 8
  store i8* %21, i8** %18, align 8
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i8** [ %15, %11 ], [ %20, %17 ]
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  call void @err(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* noundef %25, [1 x %struct.__va_list_tag]* noundef %3)
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %27 = bitcast %struct.__va_list_tag* %26 to i8*
  call void @llvm.va_end(i8* %27)
  call void @exit(i32 noundef 1) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare dso_local i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %struct.__va_list_tag* noundef) #3

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
