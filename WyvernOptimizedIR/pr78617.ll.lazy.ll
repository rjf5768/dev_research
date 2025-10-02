; ModuleID = './pr78617.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr78617.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@d = dso_local global i32 1, align 4
@f = dso_local global i32 1, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @fn1() #0 {
  %1 = load i32, i32* @a, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %2, label %5

2:                                                ; preds = %0
  %3 = load i32, i32* @a, align 4
  %4 = icmp eq i32 %3, 0
  %phi.cast = zext i1 %4 to i32
  br label %5

5:                                                ; preds = %2, %0
  %6 = phi i32 [ 1, %0 ], [ %phi.cast, %2 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @fn2(i32 noundef %0, i32 noundef %1) #1 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %7

5:                                                ; preds = %2
  %6 = ashr i32 %0, 1
  br label %7

7:                                                ; preds = %5, %4
  %8 = phi i32 [ %0, %4 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @fn3(i32 noundef %0) #0 {
  %2 = load i32, i32* @d, align 4
  %3 = xor i32 %2, %0
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @fn4(i32 noundef %0, i32 noundef %1) #2 {
  %3 = load i32, i32* @d, align 4
  %4 = call i32 @fn1()
  %5 = add nsw i32 %4, -1000
  store i32 %5, i32* @f, align 4
  %.not1 = icmp eq i32 %5, 0
  br i1 %.not1, label %6, label %8

6:                                                ; preds = %2
  %7 = icmp ne i32 %1, 0
  %phi.cast = zext i1 %7 to i32
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ 1, %2 ], [ %phi.cast, %6 ]
  %.not = icmp eq i32 %3, 0
  %10 = zext i1 %.not to i32
  %11 = call i32 @fn2(i32 noundef %9, i32 noundef %0)
  %12 = icmp slt i32 %11, %10
  %13 = zext i1 %12 to i32
  %14 = call i32 @fn3(i32 noundef %13)
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = call i32 @fn4(i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #5
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
