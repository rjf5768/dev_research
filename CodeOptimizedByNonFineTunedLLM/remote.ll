; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/make/remote.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/make/remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remote_description = dso_local global i8* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @start_remote_job_p() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @start_remote_job(i8** noundef %0, i32 noundef %1, i32* noundef %2, i32* noundef %3, i32* noundef %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @remote_status(i32* noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @block_remote_children() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @unblock_remote_children() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @remote_kill(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  ret i32 -1
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
