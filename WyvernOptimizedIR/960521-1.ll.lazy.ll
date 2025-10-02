; ModuleID = './960521-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960521-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@n = dso_local global i32 0, align 4
@a = dso_local global i32* null, align 8
@b = dso_local global i32* null, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @foo() #0 {
  br label %1

1:                                                ; preds = %8, %0
  %.0 = phi i32 [ 0, %0 ], [ %9, %8 ]
  %2 = load i32, i32* @n, align 4
  %3 = icmp slt i32 %.0, %2
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = load i32*, i32** @a, align 8
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  store i32 -1, i32* %7, align 4
  br label %8

8:                                                ; preds = %4
  %9 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %17, %10
  %.1 = phi i32 [ 0, %10 ], [ %18, %17 ]
  %12 = icmp ult i32 %.1, 32767
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = load i32*, i32** @b, align 8
  %15 = zext i32 %.1 to i64
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 -1, i32* %16, align 4
  br label %17

17:                                               ; preds = %13
  %18 = add nuw nsw i32 %.1, 1
  br label %11, !llvm.loop !6

19:                                               ; preds = %11
  ret i32 undef
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  store i32 32768, i32* @n, align 4
  %1 = call noalias dereferenceable_or_null(131072) i8* @malloc(i64 noundef 131072) #4
  store i8* %1, i8** bitcast (i32** @a to i8**), align 8
  %2 = call noalias dereferenceable_or_null(131072) i8* @malloc(i64 noundef 131072) #4
  store i8* %2, i8** bitcast (i32** @b to i8**), align 8
  %.cast = bitcast i8* %2 to i32*
  %3 = getelementptr inbounds i32, i32* %.cast, i64 1
  store i32* %3, i32** @b, align 8
  store i32 0, i32* %.cast, align 4
  %4 = call i32 @foo()
  %5 = load i32*, i32** @b, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 -1
  %7 = load i32, i32* %6, align 4
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %0
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %9, %8
  unreachable
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
