; ModuleID = './990524-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990524-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [6 x i8] c"12345\00", align 1
@b = dso_local global [6 x i8] c"12345\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @loop(i8* noundef %0, i8* noundef %1) #0 {
  br label %3

3:                                                ; preds = %12, %2
  %.01 = phi i8* [ %1, %2 ], [ %4, %12 ]
  %.0 = phi i8* [ %0, %2 ], [ %.1, %12 ]
  %4 = getelementptr inbounds i8, i8* %.01, i64 1
  %5 = load i8, i8* %.01, align 1
  %6 = getelementptr inbounds i8, i8* %.0, i64 1
  store i8 %5, i8* %.0, align 1
  %7 = sext i8 %5 to i32
  switch i32 %7, label %12 [
    i32 0, label %8
    i32 34, label %9
    i32 92, label %9
  ]

8:                                                ; preds = %3
  br label %13

9:                                                ; preds = %3, %3
  store i8 92, i8* %.0, align 1
  %10 = load i8, i8* %.01, align 1
  %11 = getelementptr inbounds i8, i8* %.0, i64 2
  store i8 %10, i8* %6, align 1
  br label %12

12:                                               ; preds = %9, %3
  %.1 = phi i8* [ %6, %3 ], [ %11, %9 ]
  br label %3

13:                                               ; preds = %8
  %14 = ptrtoint i8* %6 to i64
  %15 = sub i64 ptrtoint ([6 x i8]* @a to i64), %14
  %16 = ptrtoint i8* %4 to i64
  %17 = sub i64 ptrtoint ([6 x i8]* @b to i64), %16
  %.not = icmp eq i64 %15, %17
  br i1 %.not, label %19, label %18

18:                                               ; preds = %13
  call void @abort() #3
  unreachable

19:                                               ; preds = %13
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  call void @loop(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @a, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @b, i64 0, i64 0))
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
