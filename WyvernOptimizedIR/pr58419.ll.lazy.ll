; ModuleID = './pr58419.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58419.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i16 0, align 2
@p = dso_local global i32* null, align 8
@b = dso_local global i8 0, align 1
@h = dso_local global i16 0, align 2
@e = dso_local global i8 0, align 1
@a = dso_local global i32 0, align 4
@k = dso_local global i32 0, align 4
@d = internal global i16* @c, align 8
@i = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @dummy() #0 {
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i8 @foo(i32 noundef %0, i32 noundef %1) #1 {
  %3 = sub nsw i32 %0, %1
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @bar() #2 {
  store i16 1, i16* @c, align 2
  %1 = load i32*, i32** @p, align 8
  store i32 0, i32* %1, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %25, %0
  %storemerge = phi i8 [ -22, %0 ], [ %27, %25 ]
  store i8 %storemerge, i8* @b, align 1
  %2 = icmp sgt i8 %storemerge, -30
  br i1 %2, label %3, label %28

3:                                                ; preds = %1
  %4 = load i32, i32* @a, align 4
  %5 = trunc i32 %4 to i16
  store i16 %5, i16* @h, align 2
  %6 = load i32, i32* @k, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %11, label %7

7:                                                ; preds = %3
  %8 = load i16*, i16** @d, align 8
  %9 = load i16, i16* %8, align 2
  %10 = icmp ne i16 %9, 0
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i1 [ false, %3 ], [ %10, %7 ]
  %13 = zext i1 %12 to i8
  store i8 %13, i8* @e, align 1
  %14 = zext i1 %12 to i32
  %15 = load i32, i32* @i, align 4
  %16 = icmp slt i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call signext i8 @foo(i32 noundef %14, i32 noundef %17)
  %.not1 = icmp eq i8 %18, 0
  br i1 %.not1, label %19, label %22

19:                                               ; preds = %11
  %20 = call i32 @bar()
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %19, %11
  %23 = phi i1 [ true, %11 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* @g, align 4
  br label %25

25:                                               ; preds = %22
  %26 = load i8, i8* @b, align 1
  %27 = add i8 %26, -1
  br label %1, !llvm.loop !5

28:                                               ; preds = %1
  call void @dummy()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 63}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
