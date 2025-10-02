; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strct-pack-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strct-pack-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type <{ i16, [2 x i32] }>

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(%struct.A* noundef %0) #0 {
  %2 = alloca %struct.A*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store %struct.A* %0, %struct.A** %2, align 8
  store i16 1, i16* %4, align 2
  %5 = load %struct.A*, %struct.A** %2, align 8
  %6 = getelementptr inbounds %struct.A, %struct.A* %5, i32 0, i32 1
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %8 = load i32, i32* %7, align 2
  %9 = trunc i32 %8 to i16
  store i16 %9, i16* %3, align 2
  %10 = load %struct.A*, %struct.A** %2, align 8
  %11 = getelementptr inbounds %struct.A, %struct.A* %10, i32 0, i32 1
  %12 = load i16, i16* %4, align 2
  %13 = sext i16 %12 to i64
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %13
  %15 = load i32, i32* %14, align 2
  %16 = load i16, i16* %3, align 2
  %17 = sext i16 %16 to i32
  %18 = add nsw i32 %17, %15
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %3, align 2
  store i16 0, i16* %4, align 2
  br label %20

20:                                               ; preds = %35, %1
  %21 = load i16, i16* %4, align 2
  %22 = sext i16 %21 to i32
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load %struct.A*, %struct.A** %2, align 8
  %26 = getelementptr inbounds %struct.A, %struct.A* %25, i32 0, i32 1
  %27 = load i16, i16* %4, align 2
  %28 = sext i16 %27 to i64
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 %28
  %30 = load i32, i32* %29, align 2
  %31 = load i16, i16* %3, align 2
  %32 = sext i16 %31 to i32
  %33 = add nsw i32 %32, %30
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %3, align 2
  br label %35

35:                                               ; preds = %24
  %36 = load i16, i16* %4, align 2
  %37 = add i16 %36, 1
  store i16 %37, i16* %4, align 2
  br label %20, !llvm.loop !4

38:                                               ; preds = %20
  %39 = load i16, i16* %3, align 2
  %40 = sext i16 %39 to i32
  ret i32 %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.A, align 2
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct.A, %struct.A* %2, i32 0, i32 1
  %4 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 100, i32* %4, align 2
  %5 = getelementptr inbounds %struct.A, %struct.A* %2, i32 0, i32 1
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 13, i32* %6, align 2
  %7 = call i32 @f(%struct.A* noundef %2)
  %8 = icmp ne i32 %7, 139
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @abort() #2
  unreachable

10:                                               ; preds = %0
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

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
