; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990128-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990128-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { %struct.s* }

@count = dso_local global i32 0, align 4
@ss = dso_local global %struct.s zeroinitializer, align 8
@p = dso_local global %struct.s* null, align 8
@sss = dso_local global [10 x %struct.s] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.s*, align 8
  %3 = alloca %struct.s*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store %struct.s* @ss, %struct.s** @p, align 8
  %5 = load %struct.s*, %struct.s** @p, align 8
  store %struct.s* %5, %struct.s** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %18, %0
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 10
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [10 x %struct.s], [10 x %struct.s]* @sss, i64 0, i64 %11
  %13 = load %struct.s*, %struct.s** %3, align 8
  %14 = getelementptr inbounds %struct.s, %struct.s* %13, i32 0, i32 0
  store %struct.s* %12, %struct.s** %14, align 8
  %15 = load %struct.s*, %struct.s** %3, align 8
  %16 = getelementptr inbounds %struct.s, %struct.s* %15, i32 0, i32 0
  %17 = load %struct.s*, %struct.s** %16, align 8
  store %struct.s* %17, %struct.s** %3, align 8
  br label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %6, !llvm.loop !4

21:                                               ; preds = %6
  %22 = load %struct.s*, %struct.s** %3, align 8
  %23 = getelementptr inbounds %struct.s, %struct.s* %22, i32 0, i32 0
  store %struct.s* null, %struct.s** %23, align 8
  %24 = load %struct.s*, %struct.s** @p, align 8
  call void @sub(%struct.s* noundef %24, %struct.s** noundef %2)
  %25 = load i32, i32* @count, align 4
  %26 = icmp ne i32 %25, 12
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  call void @abort() #2
  unreachable

28:                                               ; preds = %21
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sub(%struct.s* noundef %0, %struct.s** noundef %1) #0 {
  %3 = alloca %struct.s*, align 8
  %4 = alloca %struct.s**, align 8
  store %struct.s* %0, %struct.s** %3, align 8
  store %struct.s** %1, %struct.s*** %4, align 8
  br label %5

5:                                                ; preds = %18, %2
  %6 = load %struct.s*, %struct.s** %3, align 8
  %7 = load %struct.s**, %struct.s*** %4, align 8
  %8 = call i32 @look(%struct.s* noundef %6, %struct.s** noundef %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = load %struct.s*, %struct.s** %3, align 8
  %12 = icmp ne %struct.s* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load %struct.s*, %struct.s** %3, align 8
  %15 = getelementptr inbounds %struct.s, %struct.s* %14, i32 0, i32 0
  %16 = load %struct.s*, %struct.s** %15, align 8
  store %struct.s* %16, %struct.s** %3, align 8
  br label %18

17:                                               ; preds = %10
  br label %19

18:                                               ; preds = %13
  br label %5, !llvm.loop !6

19:                                               ; preds = %17, %5
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @look(%struct.s* noundef %0, %struct.s** noundef %1) #0 {
  %3 = alloca %struct.s*, align 8
  %4 = alloca %struct.s**, align 8
  store %struct.s* %0, %struct.s** %3, align 8
  store %struct.s** %1, %struct.s*** %4, align 8
  br label %5

5:                                                ; preds = %9, %2
  %6 = load %struct.s*, %struct.s** %3, align 8
  %7 = icmp ne %struct.s* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %8
  %10 = load %struct.s*, %struct.s** %3, align 8
  %11 = getelementptr inbounds %struct.s, %struct.s* %10, i32 0, i32 0
  %12 = load %struct.s*, %struct.s** %11, align 8
  store %struct.s* %12, %struct.s** %3, align 8
  br label %5, !llvm.loop !7

13:                                               ; preds = %5
  %14 = load %struct.s*, %struct.s** %3, align 8
  %15 = load %struct.s**, %struct.s*** %4, align 8
  store %struct.s* %14, %struct.s** %15, align 8
  %16 = load i32, i32* @count, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @count, align 4
  ret i32 1
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

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
