; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001101.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001101.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.struc = type { i8, [3 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.struc* @dummy(i32* noundef %0, %struct.struc** noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.struc**, align 8
  store i32* %0, i32** %3, align 8
  store %struct.struc** %1, %struct.struc*** %4, align 8
  %5 = load i32*, i32** %3, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.struc**, %struct.struc*** %4, align 8
  store %struct.struc* inttoptr (i64 7 to %struct.struc*), %struct.struc** %6, align 8
  ret %struct.struc* inttoptr (i64 1 to %struct.struc*)
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bogus(%struct.struc* noundef %0, %struct.struc* noundef %1, %struct.struc* noundef %2) #0 {
  %4 = alloca %struct.struc*, align 8
  %5 = alloca %struct.struc*, align 8
  %6 = alloca %struct.struc*, align 8
  %7 = alloca %struct.struc*, align 8
  %8 = alloca i32, align 4
  store %struct.struc* %0, %struct.struc** %4, align 8
  store %struct.struc* %1, %struct.struc** %5, align 8
  store %struct.struc* %2, %struct.struc** %6, align 8
  %9 = call %struct.struc* @dummy(i32* noundef %8, %struct.struc** noundef %7)
  store %struct.struc* %9, %struct.struc** %6, align 8
  %10 = load %struct.struc*, %struct.struc** %6, align 8
  %11 = icmp eq %struct.struc* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.struc*, %struct.struc** %7, align 8
  %14 = icmp ne %struct.struc* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load %struct.struc*, %struct.struc** %7, align 8
  store %struct.struc* %16, %struct.struc** %5, align 8
  br label %17

17:                                               ; preds = %15, %12, %3
  %18 = load %struct.struc*, %struct.struc** %6, align 8
  %19 = icmp ne %struct.struc* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.struc*, %struct.struc** %4, align 8
  %25 = bitcast %struct.struc* %24 to i8*
  %26 = load i8, i8* %25, align 4
  %27 = and i8 %26, -2
  %28 = or i8 %27, 1
  store i8 %28, i8* %25, align 4
  br label %29

29:                                               ; preds = %23, %20, %17
  %30 = load %struct.struc*, %struct.struc** %7, align 8
  %31 = load %struct.struc*, %struct.struc** %5, align 8
  %32 = icmp ne %struct.struc* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void @abort() #2
  unreachable

34:                                               ; preds = %29
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.struc, align 4
  store i32 0, i32* %1, align 4
  call void @bogus(%struct.struc* noundef %2, %struct.struc* noundef inttoptr (i64 7 to %struct.struc*), %struct.struc* noundef null)
  call void @exit(i32 noundef 0) #2
  unreachable
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
