; ModuleID = './PR491.ll'
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
  %2 = alloca %union.anon, align 8
  %3 = getelementptr inbounds %union.anon, %union.anon* %2, i64 0, i32 0
  store i64 0, i64* %3, align 8
  %4 = bitcast %union.anon* %2 to i8*
  store i8 -128, i8* %4, align 8
  %5 = getelementptr inbounds %union.anon, %union.anon* %2, i64 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 128
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %11

9:                                                ; preds = %1
  %10 = call i32 @assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 22)
  br label %11

11:                                               ; preds = %9, %8
  %12 = phi i32 [ 1, %8 ], [ %10, %9 ]
  %13 = getelementptr inbounds %union.anon, %union.anon* %2, i64 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = bitcast %union.anon* %2 to [8 x i8]*
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 7
  store i8 -128, i8* %15, align 1
  %16 = getelementptr inbounds %union.anon, %union.anon* %2, i64 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %22

20:                                               ; preds = %11
  %21 = call i32 @assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 24)
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i32 [ 1, %19 ], [ %21, %20 ]
  %24 = and i32 %12, %0
  %25 = and i32 %24, %23
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @assert_fail(i8* noundef %0, i32 noundef %1) #0 {
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 noundef %1, i8* noundef %0) #2
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @test(i32 noundef 1)
  %2 = icmp ne i32 %1, 1
  %3 = zext i1 %2 to i32
  ret i32 %3
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
