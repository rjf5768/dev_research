; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr54985.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr54985.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st = type { i32 }

@__const.main._1 = private unnamed_addr constant [2 x %struct.st] [%struct.st { i32 2 }, %struct.st { i32 1 }], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(%struct.st* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.st*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.st* %0, %struct.st** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.st*, %struct.st** %4, align 8
  store %struct.st* %12, %struct.st** %8, align 8
  %13 = load %struct.st*, %struct.st** %4, align 8
  %14 = getelementptr inbounds %struct.st, %struct.st* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %33, %2
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %7, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load %struct.st*, %struct.st** %8, align 8
  %22 = getelementptr inbounds %struct.st, %struct.st* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %33

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %38

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.st*, %struct.st** %8, align 8
  %36 = getelementptr inbounds %struct.st, %struct.st* %35, i32 1
  store %struct.st* %36, %struct.st** %8, align 8
  br label %16, !llvm.loop !4

37:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x %struct.st], align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast [2 x %struct.st]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast ([2 x %struct.st]* @__const.main._1 to i8*), i64 8, i1 false)
  %4 = getelementptr inbounds [2 x %struct.st], [2 x %struct.st]* %2, i64 0, i64 0
  %5 = call i32 @foo(%struct.st* noundef %4, i32 noundef 2)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #3
  unreachable

8:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
