; ModuleID = './20120808-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20120808-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global [32 x i8] zeroinitializer, align 16
@i = dso_local global i32 0, align 4
@cp = dso_local global i8* null, align 8

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [32 x i8], align 16
  %2 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %3 = load volatile i32, i32* @i, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* @d, i64 0, i64 %4
  br label %6

6:                                                ; preds = %19, %0
  %.02 = phi i32 [ 0, %0 ], [ %20, %19 ]
  %.01 = phi i8* [ %5, %0 ], [ %9, %19 ]
  %7 = icmp ult i32 %.02, 30
  br i1 %7, label %8, label %21

8:                                                ; preds = %6
  %9 = getelementptr inbounds i8, i8* %.01, i64 1
  %10 = load i8, i8* %9, align 1
  switch i32 %.02, label %14 [
    i32 1, label %11
    i32 2, label %12
    i32 25, label %13
  ]

11:                                               ; preds = %8
  br label %15

12:                                               ; preds = %8
  br label %15

13:                                               ; preds = %8
  br label %15

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %14, %13, %12, %11
  %.0 = phi i8 [ -1, %14 ], [ -2, %13 ], [ -5, %12 ], [ -3, %11 ]
  %16 = or i8 %.0, %10
  %17 = zext i32 %.02 to i64
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 %17
  store i8 %16, i8* %18, align 1
  store volatile i8* %9, i8** @cp, align 8
  br label %19

19:                                               ; preds = %15
  %20 = add nuw nsw i32 %.02, 1
  br label %6, !llvm.loop !4

21:                                               ; preds = %6
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0
  %23 = load i8, i8* %22, align 16
  %.not = icmp eq i8 %23, -1
  br i1 %.not, label %24, label %41

24:                                               ; preds = %21
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 1
  %26 = load i8, i8* %25, align 1
  %.not3 = icmp eq i8 %26, -3
  br i1 %.not3, label %27, label %41

27:                                               ; preds = %24
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 2
  %29 = load i8, i8* %28, align 2
  %.not4 = icmp eq i8 %29, -5
  br i1 %.not4, label %30, label %41

30:                                               ; preds = %27
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 3
  %32 = load i8, i8* %31, align 1
  %.not5 = icmp eq i8 %32, -1
  br i1 %.not5, label %33, label %41

33:                                               ; preds = %30
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 4
  %35 = load i8, i8* %34, align 4
  %.not6 = icmp eq i8 %35, -1
  br i1 %.not6, label %36, label %41

36:                                               ; preds = %33
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 25
  %38 = load i8, i8* %37, align 1
  %.not7 = icmp eq i8 %38, -2
  br i1 %.not7, label %39, label %41

39:                                               ; preds = %36
  %40 = load volatile i8*, i8** @cp, align 8
  %.not8 = icmp eq i8* %40, getelementptr inbounds ([32 x i8], [32 x i8]* @d, i64 0, i64 30)
  br i1 %.not8, label %42, label %41

41:                                               ; preds = %39, %36, %33, %30, %27, %24, %21
  call void @abort() #3
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %39
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %42, %41
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
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
