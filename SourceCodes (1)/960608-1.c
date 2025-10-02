; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960608-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960608-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a_struct = type { i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(%struct.a_struct* noundef %0) #0 {
  %2 = alloca %struct.a_struct*, align 8
  store %struct.a_struct* %0, %struct.a_struct** %2, align 8
  %3 = load %struct.a_struct*, %struct.a_struct** %2, align 8
  %4 = bitcast %struct.a_struct* %3 to i8*
  %5 = load i8, i8* %4, align 1
  %6 = lshr i8 %5, 5
  %7 = and i8 %6, 1
  %8 = zext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %40, label %10

10:                                               ; preds = %1
  %11 = load %struct.a_struct*, %struct.a_struct** %2, align 8
  %12 = bitcast %struct.a_struct* %11 to i8*
  %13 = load i8, i8* %12, align 1
  %14 = lshr i8 %13, 6
  %15 = and i8 %14, 1
  %16 = zext i8 %15 to i32
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %40, label %18

18:                                               ; preds = %10
  %19 = load %struct.a_struct*, %struct.a_struct** %2, align 8
  %20 = bitcast %struct.a_struct* %19 to i8*
  %21 = load i8, i8* %20, align 1
  %22 = lshr i8 %21, 7
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %40, label %25

25:                                               ; preds = %18
  %26 = load %struct.a_struct*, %struct.a_struct** %2, align 8
  %27 = bitcast %struct.a_struct* %26 to i8*
  %28 = load i8, i8* %27, align 1
  %29 = and i8 %28, 3
  %30 = zext i8 %29 to i32
  %31 = icmp ne i32 %30, 2
  br i1 %31, label %40, label %32

32:                                               ; preds = %25
  %33 = load %struct.a_struct*, %struct.a_struct** %2, align 8
  %34 = bitcast %struct.a_struct* %33 to i8*
  %35 = load i8, i8* %34, align 1
  %36 = lshr i8 %35, 2
  %37 = and i8 %36, 7
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %38, 3
  br label %40

40:                                               ; preds = %32, %25, %18, %10, %1
  %41 = phi i1 [ true, %25 ], [ true, %18 ], [ true, %10 ], [ true, %1 ], [ %39, %32 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.a_struct, align 1
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.a_struct* %2 to i8*
  %4 = load i8, i8* %3, align 1
  %5 = and i8 %4, -33
  %6 = or i8 %5, 0
  store i8 %6, i8* %3, align 1
  %7 = bitcast %struct.a_struct* %2 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = and i8 %8, -65
  %10 = or i8 %9, 64
  store i8 %10, i8* %7, align 1
  %11 = bitcast %struct.a_struct* %2 to i8*
  %12 = load i8, i8* %11, align 1
  %13 = and i8 %12, 127
  %14 = or i8 %13, -128
  store i8 %14, i8* %11, align 1
  %15 = bitcast %struct.a_struct* %2 to i8*
  %16 = load i8, i8* %15, align 1
  %17 = and i8 %16, -4
  %18 = or i8 %17, 2
  store i8 %18, i8* %15, align 1
  %19 = bitcast %struct.a_struct* %2 to i8*
  %20 = load i8, i8* %19, align 1
  %21 = and i8 %20, -29
  %22 = or i8 %21, 12
  store i8 %22, i8* %19, align 1
  %23 = call i32 @foo(%struct.a_struct* noundef %2)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %0
  call void @abort() #2
  unreachable

26:                                               ; preds = %0
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
