; ModuleID = './981001-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/981001-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flg = dso_local global i64 0, align 8

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define dso_local i64 @sub(i32 noundef %0) #0 {
  %2 = icmp sgt i32 %0, 1
  br i1 %2, label %3, label %27

3:                                                ; preds = %1
  %4 = and i32 %0, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = sdiv i32 %0, 2
  %8 = call i64 @sub(i32 noundef %7)
  %sext = shl i64 %8, 32
  %9 = ashr exact i64 %sext, 32
  %10 = sdiv i32 %0, 2
  %11 = add nsw i32 %10, -1
  %12 = call i64 @sub(i32 noundef %11)
  %13 = shl nsw i64 %12, 1
  %14 = add nsw i64 %9, %13
  %sext1 = shl i64 %8, 32
  %15 = ashr exact i64 %sext1, 32
  %16 = mul nsw i64 %14, %15
  br label %29

17:                                               ; preds = %3
  %18 = sdiv i32 %0, 2
  %19 = add nsw i32 %18, 1
  %20 = call i64 @sub(i32 noundef %19)
  %21 = sdiv i32 %0, 2
  %22 = call i64 @sub(i32 noundef %21)
  %23 = mul i64 %20, %20
  %24 = mul i64 %22, %22
  %25 = add i64 %23, %24
  %26 = and i64 %25, 4294967295
  br label %29

27:                                               ; preds = %1
  %28 = sext i32 %0 to i64
  br label %29

29:                                               ; preds = %27, %17, %6
  %.0 = phi i64 [ %16, %6 ], [ %26, %17 ], [ %28, %27 ]
  ret i64 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i64 @sub(i32 noundef 30)
  %.not = icmp eq i64 %1, 832040
  br i1 %.not, label %5, label %2

2:                                                ; preds = %0
  %3 = load i64, i64* @flg, align 8
  %4 = or i64 %3, 256
  store i64 %4, i64* @flg, align 8
  br label %5

5:                                                ; preds = %2, %0
  %6 = load i64, i64* @flg, align 8
  %.not1 = icmp eq i64 %6, 0
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %5
  call void @abort() #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %5
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %8, %7
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { nofree noinline nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
