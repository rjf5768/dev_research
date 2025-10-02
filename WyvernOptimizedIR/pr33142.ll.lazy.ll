; ModuleID = './pr33142.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr33142.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i32 @lisp_atan2(i64 noundef %0, i64 noundef %1) #0 {
  %3 = icmp slt i64 %1, 1
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = icmp sgt i64 %0, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = trunc i64 %1 to i32
  %8 = call i32 @llvm.abs.i32(i32 %7, i1 true)
  %9 = trunc i64 %0 to i32
  %10 = call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = icmp ule i32 %8, %10
  %12 = zext i1 %11 to i32
  br label %15

13:                                               ; preds = %4
  br label %14

14:                                               ; preds = %13, %2
  br label %15

15:                                               ; preds = %14, %6
  %.0 = phi i32 [ %12, %6 ], [ 0, %14 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32 @abs(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store volatile i64 63, i64* %1, align 8
  store volatile i64 -77, i64* %2, align 8
  %3 = load volatile i64, i64* %1, align 8
  %4 = load volatile i64, i64* %2, align 8
  %5 = call i32 @lisp_atan2(i64 noundef %3, i64 noundef %4)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %0
  call void @abort() #5
  unreachable

7:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
