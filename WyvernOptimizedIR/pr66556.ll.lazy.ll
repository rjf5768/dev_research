; ModuleID = './pr66556.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr66556.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global { i32, i8, i8, i8, i16 } { i32 8355840, i8 6, i8 -128, i8 2, i16 0 }, align 4
@g = dso_local global { i32, i8, i8, i8, i16 } { i32 8, i8 0, i8 -128, i8 2, i16 0 }, align 4
@h = dso_local global i32 8, align 4
@e = dso_local global <{ i8, [236 x i8] }> <{ i8 4, [236 x i8] zeroinitializer }>, align 16
@d = dso_local global i16 0, align 2
@f = dso_local global i16* @d, align 8
@i = dso_local global [5 x i16] [i16 3, i16 0, i16 0, i16 0, i16 0], align 2
@c = dso_local global i32 0, align 4
@k = dso_local global i32* @c, align 8
@a = dso_local global i32 0, align 4
@j = dso_local global i8 0, align 1
@l = dso_local global i16 0, align 2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @fn1(i32 noundef %0) #0 {
  %2 = sub i32 0, %0
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define dso_local void @fn2(i8 noundef signext %0) #1 {
  %2 = sext i8 %0 to i32
  store i32 %2, i32* @a, align 4
  %3 = load volatile i8, i8* getelementptr inbounds (<{ i8, [236 x i8] }>, <{ i8, [236 x i8] }>* @e, i64 0, i32 0), align 16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local signext i16 @fn3() #2 {
  %1 = load i32*, i32** @k, align 8
  store i32 4, i32* %1, align 4
  %2 = load i16*, i16** @f, align 8
  %3 = load i16, i16* %2, align 2
  ret i16 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = load i32, i32* @h, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %5, label %2

2:                                                ; preds = %0
  %3 = load i8, i8* @j, align 1
  %4 = icmp ne i8 %3, 0
  %phi.cast = zext i1 %4 to i32
  br label %5

5:                                                ; preds = %2, %0
  %6 = phi i32 [ 0, %0 ], [ %phi.cast, %2 ]
  %7 = load i32, i32* bitcast (i8* getelementptr inbounds ({ i32, i8, i8, i8, i16 }, { i32, i8, i8, i8, i16 }* @b, i64 0, i32 1) to i32*), align 4
  %8 = lshr i32 %7, 15
  %9 = and i32 %8, 7
  %10 = icmp ule i32 %6, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @fn1(i32 noundef %11)
  %13 = load i32, i32* bitcast (i8* getelementptr inbounds ({ i32, i8, i8, i8, i16 }, { i32, i8, i8, i8, i16 }* @g, i64 0, i32 1) to i32*), align 4
  %14 = and i32 %13, 32767
  %15 = icmp ugt i32 %12, %14
  %16 = zext i1 %15 to i16
  store i16 %16, i16* @l, align 2
  store i16 3, i16* getelementptr inbounds ([5 x i16], [5 x i16]* @i, i64 0, i64 4), align 2
  %17 = load i32, i32* getelementptr inbounds ({ i32, i8, i8, i8, i16 }, { i32, i8, i8, i8, i16 }* @b, i64 0, i32 0), align 4
  %18 = lshr i32 %17, 15
  %19 = trunc i32 %18 to i8
  call void @fn2(i8 noundef signext %19)
  %20 = load i32, i32* @a, align 4
  %21 = and i32 %20, 255
  %.not1 = icmp eq i32 %21, 255
  br i1 %.not1, label %23, label %22

22:                                               ; preds = %5
  call void @abort() #5
  unreachable

23:                                               ; preds = %5
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
