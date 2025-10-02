; ModuleID = './20090527-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20090527-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unit_flags = type { i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @new_unit(%struct.unit_flags* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.unit_flags, %struct.unit_flags* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.unit_flags, %struct.unit_flags* %0, i64 0, i32 1
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.unit_flags, %struct.unit_flags* %0, i64 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.unit_flags, %struct.unit_flags* %0, i64 0, i32 0
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.unit_flags, %struct.unit_flags* %0, i64 0, i32 1
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %17 [
    i32 0, label %16
  ]

16:                                               ; preds = %13
  br label %18

17:                                               ; preds = %13
  call void @abort() #2
  unreachable

18:                                               ; preds = %16
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.unit_flags, align 4
  %2 = getelementptr inbounds %struct.unit_flags, %struct.unit_flags* %1, i64 0, i32 1
  store i32 1, i32* %2, align 4
  call void @new_unit(%struct.unit_flags* noundef nonnull %1)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
