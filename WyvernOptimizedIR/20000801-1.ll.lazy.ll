; ModuleID = './20000801-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000801-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @foo(i8* noundef %0, i32 noundef %1) #0 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds i8, i8* %0, i64 %3
  br label %5

5:                                                ; preds = %7, %2
  %.0 = phi i8* [ %0, %2 ], [ %15, %7 ]
  %6 = icmp ult i8* %.0, %4
  br i1 %6, label %7, label %16

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %.0, i64 3
  %9 = load i8, i8* %8, align 1
  %10 = load i8, i8* %.0, align 1
  store i8 %10, i8* %8, align 1
  %11 = getelementptr inbounds i8, i8* %.0, i64 1
  store i8 %9, i8* %.0, align 1
  %12 = getelementptr inbounds i8, i8* %.0, i64 2
  %13 = load i8, i8* %12, align 1
  %14 = load i8, i8* %11, align 1
  store i8 %14, i8* %12, align 1
  store i8 %13, i8* %11, align 1
  %15 = getelementptr inbounds i8, i8* %.0, i64 4
  br label %5, !llvm.loop !4

16:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  %2 = bitcast i32* %1 to i8*
  call void @foo(i8* noundef nonnull %2, i32 noundef 4)
  %3 = bitcast i32* %1 to i8*
  call void @foo(i8* noundef nonnull %3, i32 noundef 4)
  %4 = load i32, i32* %1, align 4
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %6, %5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
