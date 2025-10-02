; ModuleID = './20020201-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020201-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cx = dso_local global i8 7, align 1
@sx = dso_local global i16 14, align 2
@ix = dso_local global i32 21, align 4
@lx = dso_local global i64 28, align 8
@Lx = dso_local global i64 35, align 8

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i8, i8* @cx, align 1
  %.off = add i8 %1, -6
  %2 = icmp ult i8 %.off, 6
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #2
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  %5 = load i8, i8* @cx, align 1
  %6 = urem i8 %5, 6
  %.not = icmp eq i8 %6, 1
  br i1 %.not, label %8, label %7

7:                                                ; preds = %4
  call void @abort() #2
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %4
  %9 = load i16, i16* @sx, align 2
  %.off2 = add i16 %9, -12
  %10 = icmp ult i16 %.off2, 6
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  call void @abort() #2
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %8
  %13 = load i16, i16* @sx, align 2
  %14 = urem i16 %13, 6
  %.not3 = icmp eq i16 %14, 2
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %12
  call void @abort() #2
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %12
  %17 = load i32, i32* @ix, align 4
  %.off5 = add i32 %17, -18
  %18 = icmp ult i32 %.off5, 6
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  call void @abort() #2
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %16
  %21 = load i32, i32* @ix, align 4
  %22 = urem i32 %21, 6
  %.not6 = icmp eq i32 %22, 3
  br i1 %.not6, label %24, label %23

23:                                               ; preds = %20
  call void @abort() #2
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %20
  %25 = load i64, i64* @lx, align 8
  %.off8 = add i64 %25, -24
  %26 = icmp ult i64 %.off8, 6
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  call void @abort() #2
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %24
  %29 = load i64, i64* @lx, align 8
  %30 = urem i64 %29, 6
  %.not9 = icmp eq i64 %30, 4
  br i1 %.not9, label %32, label %31

31:                                               ; preds = %28
  call void @abort() #2
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %28
  %33 = load i64, i64* @Lx, align 8
  %.off11 = add i64 %33, -30
  %34 = icmp ult i64 %.off11, 6
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  call void @abort() #2
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %32
  %37 = load i64, i64* @Lx, align 8
  %38 = urem i64 %37, 6
  %.not12 = icmp eq i64 %38, 5
  br i1 %.not12, label %40, label %39

39:                                               ; preds = %36
  call void @abort() #2
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %36
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %40, %39, %35, %31, %27, %23, %19, %15, %11, %7, %3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
