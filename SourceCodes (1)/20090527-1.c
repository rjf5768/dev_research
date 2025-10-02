; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20090527-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20090527-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unit_flags = type { i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @new_unit(%struct.unit_flags* noundef %0) #0 {
  %2 = alloca %struct.unit_flags*, align 8
  store %struct.unit_flags* %0, %struct.unit_flags** %2, align 8
  %3 = load %struct.unit_flags*, %struct.unit_flags** %2, align 8
  %4 = getelementptr inbounds %struct.unit_flags, %struct.unit_flags* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.unit_flags*, %struct.unit_flags** %2, align 8
  %9 = getelementptr inbounds %struct.unit_flags, %struct.unit_flags* %8, i32 0, i32 1
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.unit_flags*, %struct.unit_flags** %2, align 8
  %12 = getelementptr inbounds %struct.unit_flags, %struct.unit_flags* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.unit_flags*, %struct.unit_flags** %2, align 8
  %17 = getelementptr inbounds %struct.unit_flags, %struct.unit_flags* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %10
  %19 = load %struct.unit_flags*, %struct.unit_flags** %2, align 8
  %20 = getelementptr inbounds %struct.unit_flags, %struct.unit_flags* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %23 [
    i32 0, label %22
  ]

22:                                               ; preds = %18
  br label %24

23:                                               ; preds = %18
  call void @abort() #2
  unreachable

24:                                               ; preds = %22
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.unit_flags, align 4
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct.unit_flags, %struct.unit_flags* %2, i32 0, i32 1
  store i32 1, i32* %3, align 4
  call void @new_unit(%struct.unit_flags* noundef %2)
  ret i32 0
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
