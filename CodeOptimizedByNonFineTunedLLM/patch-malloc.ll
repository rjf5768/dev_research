; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/perl/patch-malloc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/perl/patch-malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @malloc(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i8* (i32, ...) bitcast (i8* (...)* @bZa to i8* (i32, ...)*)(i32 noundef %3)
  ret i8* %4
}

declare dso_local i8* @bZa(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @calloc(i32 noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i8*, i8** %2, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @free(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 (i8*, ...) bitcast (i32 (...)* @bZf to i32 (i8*, ...)*)(i8* noundef %4)
  %6 = load i32, i32* %2, align 4
  ret i32 %6
}

declare dso_local i32 @bZf(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @realloc(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i8* (i8*, i32, ...) bitcast (i8* (...)* @bZr to i8* (i8*, i32, ...)*)(i8* noundef %5, i32 noundef %6)
  ret i8* %7
}

declare dso_local i8* @bZr(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
