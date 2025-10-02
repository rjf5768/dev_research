; ModuleID = './frame-address.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/frame-address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @check_fa_work(i8* noundef readnone %0, i8* noundef readnone %1) #0 {
  %3 = alloca i8, align 1
  store i8 0, i8* %3, align 1
  %.not = icmp ugt i8* %3, %0
  br i1 %.not, label %9, label %4

4:                                                ; preds = %2
  %.not2 = icmp ult i8* %0, %1
  br i1 %.not2, label %7, label %5

5:                                                ; preds = %4
  %6 = icmp ule i8* %3, %1
  %phi.cast3 = zext i1 %6 to i32
  br label %7

7:                                                ; preds = %5, %4
  %8 = phi i32 [ 0, %4 ], [ %phi.cast3, %5 ]
  br label %14

9:                                                ; preds = %2
  %.not1 = icmp ugt i8* %0, %1
  br i1 %.not1, label %12, label %10

10:                                               ; preds = %9
  %11 = icmp uge i8* %3, %1
  %phi.cast = zext i1 %11 to i32
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi i32 [ 0, %9 ], [ %phi.cast, %10 ]
  br label %14

14:                                               ; preds = %12, %7
  %.0 = phi i32 [ %8, %7 ], [ %13, %12 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i32 @check_fa_mid(i8* noundef readnone %0) #1 {
  %2 = call i8* @llvm.frameaddress.p0i8(i32 0)
  %3 = call i32 @check_fa_work(i8* noundef %0, i8* noundef %2)
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i32 @check_fa(i8* nocapture noundef readnone %0) #1 {
  %2 = alloca i8, align 1
  store i8 0, i8* %2, align 1
  %3 = call i32 @check_fa_mid(i8* noundef nonnull %2)
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @how_much() #0 {
  ret i32 8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = call i32 @how_much()
  %2 = sext i32 %1 to i64
  %3 = alloca i8, i64 %2, align 16
  %4 = call i32 @check_fa(i8* noundef nonnull %3)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %6

5:                                                ; preds = %0
  call void @abort() #5
  unreachable

6:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
