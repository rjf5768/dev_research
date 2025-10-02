; ModuleID = './enum-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/enum-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tok = internal global i32 0, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  store i32 0, i32* @tok, align 4
  %1 = call i32 @atom()
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %3, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @atom() #2 {
  %1 = load i32, i32* @tok, align 4
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @tok, align 4
  %5 = icmp slt i32 %4, 256
  br i1 %5, label %30, label %6

6:                                                ; preds = %3, %0
  %7 = load i32, i32* @tok, align 4
  %8 = icmp sgt i32 %7, 272
  br i1 %8, label %30, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* @tok, align 4
  %11 = icmp eq i32 %10, 257
  br i1 %11, label %30, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @tok, align 4
  %14 = icmp eq i32 %13, 258
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @tok, align 4
  %17 = icmp eq i32 %16, 259
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @tok, align 4
  %20 = icmp eq i32 %19, 260
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @tok, align 4
  %23 = icmp eq i32 %22, 261
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @tok, align 4
  %26 = icmp eq i32 %25, 262
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @tok, align 4
  %29 = icmp eq i32 %28, 263
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24, %21, %18, %15, %12, %9, %6, %3
  br label %32

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %30
  %.0 = phi i32 [ 1, %30 ], [ 0, %31 ]
  ret i32 %.0
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
