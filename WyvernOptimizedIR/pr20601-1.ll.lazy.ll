; ModuleID = './pr20601-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr20601-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { i8*, [4096 x i8], i8** }

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@g = dso_local global [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)], align 16
@c = dso_local global i8** null, align 8
@b = dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@t = dso_local global %struct.T zeroinitializer, align 8
@a = dso_local global [5 x i32] zeroinitializer, align 16
@d = dso_local global i32 0, align 4
@e = dso_local global i8** null, align 8
@f = dso_local global [16 x i8*] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse noreturn nosync nounwind readnone uwtable
define dso_local void @foo() #0 {
  br label %1

1:                                                ; preds = %1, %0
  br label %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias i8* @bar(i8* nocapture noundef readnone %0, i32 noundef %1) #1 {
  ret i8* null
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @g, i64 0, i64 0), i8*** @c, align 8
  store i32 4, i32* @b, align 4
  %1 = call i32 @setup2()
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.T, %struct.T* @t, i64 0, i32 0), align 8
  %2 = call i32 @setup1(i32 noundef %1)
  %3 = and i32 %1, 1024
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @a, i64 0, i64 4), align 16
  %.not1 = icmp eq i32 %5, 0
  br i1 %.not1, label %6, label %7

6:                                                ; preds = %4
  call void @abort() #6
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4, %0
  call void @exit(i32 noundef 0) #6
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %7, %6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @setup2() #3 {
  %1 = load i8**, i8*** @c, align 8
  %2 = getelementptr inbounds i8*, i8** %1, i64 1
  store i8** %2, i8*** @e, align 8
  %3 = load i32, i32* @b, align 4
  %4 = add nsw i32 %3, -1
  store i32 %4, i32* @d, align 4
  br label %5

5:                                                ; preds = %54, %0
  %.01 = phi i32 [ 1, %0 ], [ %.2, %54 ]
  %6 = load i32, i32* @d, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load i8**, i8*** @e, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp eq i8 %11, 45
  br label %13

13:                                               ; preds = %8, %5
  %14 = phi i1 [ false, %5 ], [ %12, %8 ]
  br i1 %14, label %15, label %59

15:                                               ; preds = %13
  %16 = load i8**, i8*** @e, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %.not5 = icmp eq i8 %19, 0
  br i1 %.not5, label %26, label %20

20:                                               ; preds = %15
  %21 = load i8**, i8*** @e, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  %24 = load i8, i8* %23, align 1
  %.not7 = icmp eq i8 %24, 0
  br i1 %.not7, label %26, label %25

25:                                               ; preds = %20
  call void @abort() #6
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %20, %15
  %27 = load i8**, i8*** @e, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  switch i32 %31, label %54 [
    i32 117, label %32
    i32 80, label %43
    i32 45, label %45
  ]

32:                                               ; preds = %26
  %33 = load i8**, i8*** @e, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %.not6 = icmp eq i8* %35, null
  br i1 %.not6, label %36, label %37

36:                                               ; preds = %32
  call void @abort() #6
  br label %UnifiedUnreachableBlock

37:                                               ; preds = %32
  %38 = load i8**, i8*** @e, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  store i8** %39, i8*** getelementptr inbounds (%struct.T, %struct.T* @t, i64 0, i32 2), align 8
  %40 = load i32, i32* @d, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* @d, align 4
  %42 = getelementptr inbounds i8*, i8** %38, i64 1
  store i8** %42, i8*** @e, align 8
  br label %54

43:                                               ; preds = %26
  %44 = or i32 %.01, 4096
  br label %54

45:                                               ; preds = %26
  %46 = load i32, i32* @d, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* @d, align 4
  %48 = load i8**, i8*** @e, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  store i8** %49, i8*** @e, align 8
  %50 = icmp eq i32 %.01, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = or i32 %.01, 1536
  br label %53

53:                                               ; preds = %51, %45
  %.1 = phi i32 [ %52, %51 ], [ %.01, %45 ]
  br label %66

54:                                               ; preds = %43, %37, %26
  %.2 = phi i32 [ %.01, %26 ], [ %44, %43 ], [ %.01, %37 ]
  %55 = load i32, i32* @d, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* @d, align 4
  %57 = load i8**, i8*** @e, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  store i8** %58, i8*** @e, align 8
  br label %5, !llvm.loop !4

59:                                               ; preds = %13
  %60 = load i32, i32* @d, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = and i32 %.01, 1
  %.not = icmp eq i32 %63, 0
  br i1 %.not, label %64, label %65

64:                                               ; preds = %62
  call void @abort() #6
  br label %UnifiedUnreachableBlock

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65, %53
  %.0 = phi i32 [ %.1, %53 ], [ %.01, %65 ]
  ret i32 %.0

UnifiedUnreachableBlock:                          ; preds = %64, %36, %25
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @setup1(i32 noundef %0) #3 {
  %2 = call i8* @baz(i8* noundef getelementptr inbounds (%struct.T, %struct.T* @t, i64 0, i32 1, i64 0), i32 noundef 4096)
  %.not = icmp eq i8* %2, null
  br i1 %.not, label %3, label %5

3:                                                ; preds = %1
  %4 = call i8* @baz(i8* noundef getelementptr inbounds (%struct.T, %struct.T* @t, i64 0, i32 1, i64 0), i32 noundef 4096)
  br label %5

5:                                                ; preds = %3, %1
  %6 = and i32 %0, 512
  %.not2 = icmp eq i32 %6, 0
  br i1 %.not2, label %27, label %7

7:                                                ; preds = %5
  %8 = load i8**, i8*** @e, align 8
  %9 = load i32, i32* @d, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @d, align 4
  store i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @f, i64 0, i64 0), i8*** @e, align 8
  %11 = load i8*, i8** getelementptr inbounds (%struct.T, %struct.T* @t, i64 0, i32 0), align 8
  %.not3 = icmp eq i8* %11, null
  br i1 %.not3, label %18, label %12

12:                                               ; preds = %7
  %13 = load i8*, i8** getelementptr inbounds (%struct.T, %struct.T* @t, i64 0, i32 0), align 8
  %14 = load i8, i8* %13, align 1
  %.not4 = icmp eq i8 %14, 0
  br i1 %.not4, label %18, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** getelementptr inbounds (%struct.T, %struct.T* @t, i64 0, i32 0), align 8
  %17 = load i8**, i8*** @e, align 8
  store i8* %16, i8** %17, align 8
  br label %19

18:                                               ; preds = %12, %7
  call void @abort() #6
  unreachable

19:                                               ; preds = %15
  %20 = load i8**, i8*** @e, align 8
  br label %21

21:                                               ; preds = %24, %19
  %.pn = phi i8** [ %20, %19 ], [ %.01, %24 ]
  %.0 = phi i8** [ %8, %19 ], [ %25, %24 ]
  %.01 = getelementptr inbounds i8*, i8** %.pn, i64 1
  %22 = load i8*, i8** %.0, align 8
  store i8* %22, i8** %.01, align 8
  %.not5 = icmp eq i8* %22, null
  br i1 %.not5, label %26, label %23

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds i8*, i8** %.0, i64 1
  br label %21, !llvm.loop !6

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %5
  ret i32 1
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal noalias i8* @baz(i8* nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = icmp ugt i32 %1, 4096
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  call void @foo() #7
  unreachable

5:                                                ; preds = %2
  %6 = call i8* @bar(i8* noundef %0, i32 noundef %1)
  ret i8* %6
}

attributes #0 = { nofree noinline norecurse noreturn nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
