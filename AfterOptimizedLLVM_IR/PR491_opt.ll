; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/PR491.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/PR491.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%union.anon = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"u.l == 128\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"u.l < 0\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"assertion failed in line %u: '%s'\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.anon, align 8
  store i32 %0, i32* %2, align 4
  %4 = bitcast %union.anon* %3 to i64*
  store i64 0, i64* %4, align 8
  %5 = bitcast %union.anon* %3 to [8 x i8]*
  %6 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  store i8 -128, i8* %6, align 8
  %7 = bitcast %union.anon* %3 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 128
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %13

11:                                               ; preds = %1
  %12 = call i32 @assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 22)
  br label %13

13:                                               ; preds = %11, %10
  %14 = phi i32 [ 1, %10 ], [ %12, %11 ]
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %2, align 4
  %17 = bitcast %union.anon* %3 to i64*
  store i64 0, i64* %17, align 8
  %18 = bitcast %union.anon* %3 to [8 x i8]*
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 7
  store i8 -128, i8* %19, align 1
  %20 = bitcast %union.anon* %3 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %26

24:                                               ; preds = %13
  %25 = call i32 @assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 24)
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i32 [ 1, %23 ], [ %25, %24 ]
  %28 = load i32, i32* %2, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @assert_fail(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i8* noundef %7)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @test(i32 noundef 1)
  %3 = icmp ne i32 %2, 1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
