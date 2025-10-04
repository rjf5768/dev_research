; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/980506-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/980506-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision = type { i8, %struct.decision* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.decision*, align 8
  store i32 0, i32* %1, align 4
  store %struct.decision* null, %struct.decision** %2, align 8
  %3 = load %struct.decision*, %struct.decision** %2, align 8
  call void @clear_modes(%struct.decision* noundef %3)
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @clear_modes(%struct.decision* noundef %0) #0 {
  %2 = alloca %struct.decision*, align 8
  store %struct.decision* %0, %struct.decision** %2, align 8
  br label %6

3:                                                ; preds = %9
  %4 = load %struct.decision*, %struct.decision** %2, align 8
  %5 = getelementptr inbounds %struct.decision, %struct.decision* %4, i32 0, i32 0
  store i8 0, i8* %5, align 8
  br label %6

6:                                                ; preds = %3, %1
  %7 = load %struct.decision*, %struct.decision** %2, align 8
  %8 = icmp ne %struct.decision* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %3

10:                                               ; preds = %6
  ret void
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
