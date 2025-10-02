; ModuleID = './pr86231.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr86231.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = dso_local global [8 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @foo(i8* noundef readnone %0, i32 noundef %1) #0 {
  %3 = icmp eq i8* %0, inttoptr (i64 1 to i8*)
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %11

5:                                                ; preds = %2
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %6, label %8

6:                                                ; preds = %5
  %.not2 = icmp eq i32 %1, 0
  %7 = select i1 %.not2, i8* inttoptr (i64 1 to i8*), i8* inttoptr (i64 2 to i8*)
  br label %8

8:                                                ; preds = %6, %5
  %.01 = phi i8* [ %0, %5 ], [ %7, %6 ]
  %9 = icmp ne i8* %.01, inttoptr (i64 1 to i8*)
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %8, %4
  %.0 = phi i32 [ 0, %4 ], [ %10, %8 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @foo(i8* noundef null, i32 noundef 0)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %2, label %16

2:                                                ; preds = %0
  %3 = call i32 @foo(i8* noundef null, i32 noundef 1)
  %.not1 = icmp eq i32 %3, 1
  br i1 %.not1, label %4, label %16

4:                                                ; preds = %2
  %5 = call i32 @foo(i8* noundef nonnull inttoptr (i64 1 to i8*), i32 noundef 0)
  %.not2 = icmp eq i32 %5, 0
  br i1 %.not2, label %6, label %16

6:                                                ; preds = %4
  %7 = call i32 @foo(i8* noundef nonnull inttoptr (i64 1 to i8*), i32 noundef 1)
  %.not3 = icmp eq i32 %7, 0
  br i1 %.not3, label %8, label %16

8:                                                ; preds = %6
  %9 = call i32 @foo(i8* noundef nonnull inttoptr (i64 2 to i8*), i32 noundef 0)
  %.not4 = icmp eq i32 %9, 1
  br i1 %.not4, label %10, label %16

10:                                               ; preds = %8
  %11 = call i32 @foo(i8* noundef nonnull inttoptr (i64 2 to i8*), i32 noundef 1)
  %.not5 = icmp eq i32 %11, 1
  br i1 %.not5, label %12, label %16

12:                                               ; preds = %10
  %13 = call i32 @foo(i8* noundef bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @v, i64 0, i64 7) to i8*), i32 noundef 0)
  %.not6 = icmp eq i32 %13, 1
  br i1 %.not6, label %14, label %16

14:                                               ; preds = %12
  %15 = call i32 @foo(i8* noundef bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @v, i64 0, i64 7) to i8*), i32 noundef 1)
  %.not7 = icmp eq i32 %15, 1
  br i1 %.not7, label %17, label %16

16:                                               ; preds = %14, %12, %10, %8, %6, %4, %2, %0
  call void @abort() #3
  unreachable

17:                                               ; preds = %14
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
