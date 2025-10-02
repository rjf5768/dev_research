; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040625-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040625-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { %struct.s* }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.s* @maybe_next(%struct.s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.s*, align 8
  %4 = alloca i32, align 4
  store %struct.s* %0, %struct.s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.s*, %struct.s** %3, align 8
  %9 = getelementptr inbounds %struct.s, %struct.s* %8, i32 0, i32 0
  %10 = load %struct.s*, %struct.s** %9, align 1
  store %struct.s* %10, %struct.s** %3, align 8
  br label %11

11:                                               ; preds = %7, %2
  %12 = load %struct.s*, %struct.s** %3, align 8
  ret %struct.s* %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.s, align 1
  %3 = alloca %struct.s, align 1
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds %struct.s, %struct.s* %2, i32 0, i32 0
  store %struct.s* %3, %struct.s** %4, align 1
  %5 = call %struct.s* @maybe_next(%struct.s* noundef %2, i32 noundef 1)
  %6 = icmp ne %struct.s* %5, %3
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #2
  unreachable

8:                                                ; preds = %0
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
