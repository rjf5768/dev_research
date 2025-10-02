; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/structInit.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/structInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Connection_Type = type { i32, [10 x i8], i32 }

@link = dso_local global [3 x %struct.Connection_Type] [%struct.Connection_Type { i32 1, [10 x i8] c"link1\00\00\00\00\00", i32 10 }, %struct.Connection_Type { i32 2, [10 x i8] c"link2\00\00\00\00\00", i32 20 }, %struct.Connection_Type { i32 3, [10 x i8] c"link3\00\00\00\00\00", i32 30 }], align 16
@.str = private unnamed_addr constant [12 x i8] c"%d, %s, %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %23, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 3
  br i1 %5, label %6, label %26

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [3 x %struct.Connection_Type], [3 x %struct.Connection_Type]* @link, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.Connection_Type, %struct.Connection_Type* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [3 x %struct.Connection_Type], [3 x %struct.Connection_Type]* @link, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.Connection_Type, %struct.Connection_Type* %14, i32 0, i32 1
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x %struct.Connection_Type], [3 x %struct.Connection_Type]* @link, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.Connection_Type, %struct.Connection_Type* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %11, i8* noundef %16, i32 noundef %21)
  br label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %3, !llvm.loop !4

26:                                               ; preds = %3
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

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
