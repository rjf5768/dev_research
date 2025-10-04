; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930718-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930718-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i8, [3 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2() #0 {
  call void @abort() #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rtx_def, align 4
  %3 = alloca %struct.rtx_def*, align 8
  store i32 0, i32* %1, align 4
  %4 = bitcast %struct.rtx_def* %2 to i8*
  %5 = load i8, i8* %4, align 4
  %6 = and i8 %5, -2
  %7 = or i8 %6, 1
  store i8 %7, i8* %4, align 4
  %8 = bitcast %struct.rtx_def* %2 to i8*
  %9 = load i8, i8* %8, align 4
  %10 = and i8 %9, -3
  %11 = or i8 %10, 0
  store i8 %11, i8* %8, align 4
  %12 = call %struct.rtx_def* @f(%struct.rtx_def* noundef %2)
  store %struct.rtx_def* %12, %struct.rtx_def** %3, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %14 = icmp ne %struct.rtx_def* %13, %2
  br i1 %14, label %23, label %15

15:                                               ; preds = %0
  %16 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %17 = bitcast %struct.rtx_def* %16 to i8*
  %18 = load i8, i8* %17, align 4
  %19 = shl i8 %18, 6
  %20 = ashr i8 %19, 7
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15, %0
  call void @abort() #2
  unreachable

24:                                               ; preds = %15
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.rtx_def* @f(%struct.rtx_def* noundef %0) #0 {
  %2 = alloca %struct.rtx_def*, align 8
  %3 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %3, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %5 = bitcast %struct.rtx_def* %4 to i8*
  %6 = load i8, i8* %5, align 4
  %7 = shl i8 %6, 7
  %8 = ashr i8 %7, 7
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %13 = bitcast %struct.rtx_def* %12 to i8*
  %14 = load i8, i8* %13, align 4
  %15 = shl i8 %14, 6
  %16 = ashr i8 %15, 7
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11, %1
  %20 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %2, align 8
  br label %28

21:                                               ; preds = %11
  %22 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %23 = bitcast %struct.rtx_def* %22 to i8*
  %24 = load i8, i8* %23, align 4
  %25 = and i8 %24, -3
  %26 = or i8 %25, 2
  store i8 %26, i8* %23, align 4
  %27 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %2, align 8
  br label %28

28:                                               ; preds = %21, %19
  %29 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  ret %struct.rtx_def* %29
}

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
