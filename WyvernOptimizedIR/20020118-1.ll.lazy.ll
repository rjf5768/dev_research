; ModuleID = './20020118-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020118-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@q = dso_local global i8* null, align 8
@n = dso_local global i32 0, align 4

; Function Attrs: nofree noinline norecurse noreturn nounwind uwtable
define dso_local void @foo() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = load i8*, i8** @q, align 8
  %3 = getelementptr inbounds i8, i8* %2, i64 2
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  store volatile i32 %5, i32* @n, align 4
  %6 = getelementptr inbounds i8, i8* %2, i64 2
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  store volatile i32 %8, i32* @n, align 4
  %9 = load i8*, i8** @q, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 2
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  store volatile i32 %12, i32* @n, align 4
  %13 = getelementptr inbounds i8, i8* %9, i64 2
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  store volatile i32 %15, i32* @n, align 4
  %16 = load i8*, i8** @q, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 2
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  store volatile i32 %19, i32* @n, align 4
  %20 = getelementptr inbounds i8, i8* %16, i64 2
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  store volatile i32 %22, i32* @n, align 4
  %23 = load i8*, i8** @q, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  store volatile i32 %26, i32* @n, align 4
  %27 = getelementptr inbounds i8, i8* %23, i64 2
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  store volatile i32 %29, i32* @n, align 4
  %30 = load i8*, i8** @q, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  store volatile i32 %33, i32* @n, align 4
  %34 = getelementptr inbounds i8, i8* %30, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  store volatile i32 %36, i32* @n, align 4
  %37 = load i8*, i8** @q, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  store volatile i32 %40, i32* @n, align 4
  br label %1
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { nofree noinline norecurse noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
