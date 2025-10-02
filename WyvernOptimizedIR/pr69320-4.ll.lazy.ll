; ModuleID = './pr69320-4.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr69320-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local global i8 0, align 1
@d = dso_local global i8 0, align 1
@c = dso_local global i16 0, align 2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i16 @fn1(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %8

5:                                                ; preds = %2
  %6 = icmp sgt i32 %0, %1
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %5, %4
  %9 = phi i32 [ %0, %4 ], [ %7, %5 ]
  %10 = trunc i32 %9 to i16
  ret i16 %10
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %20, %0
  %storemerge = phi i8 [ 1, %0 ], [ %22, %20 ]
  store i8 %storemerge, i8* @b, align 1
  %2 = icmp slt i8 %storemerge, 10
  br i1 %2, label %3, label %23

3:                                                ; preds = %1
  %4 = load i32, i32* @a, align 4
  %.not1 = icmp eq i32 %4, 5
  br i1 %.not1, label %5, label %8

5:                                                ; preds = %3
  %6 = load i8, i8* @d, align 1
  %7 = icmp ne i8 %6, 0
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i1 [ true, %3 ], [ %7, %5 ]
  %10 = zext i1 %9 to i16
  store i16 %10, i16* @c, align 2
  br i1 %9, label %14, label %11

11:                                               ; preds = %8
  %12 = load i8, i8* @b, align 1
  %13 = icmp ne i8 %12, 0
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i1 [ true, %8 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* @a, align 4
  %18 = call signext i16 @fn1(i32 noundef %16, i32 noundef %17)
  %19 = sext i16 %18 to i32
  store i32 %19, i32* @a, align 4
  br label %20

20:                                               ; preds = %14
  %21 = load i8, i8* @b, align 1
  %22 = add i8 %21, 1
  br label %1, !llvm.loop !4

23:                                               ; preds = %1
  %24 = load i32, i32* @a, align 4
  %.not = icmp eq i32 %24, 1
  br i1 %.not, label %26, label %25

25:                                               ; preds = %23
  call void @abort() #3
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %23
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %26, %25
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
