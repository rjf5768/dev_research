; ModuleID = './pr80421.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr80421.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"x %c\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"case default\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"This should never be reached.\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"case 'D'\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"case 'I'\0A\00", align 1
@__const.bar.c = private unnamed_addr constant <{ [402 x i8], [18 x i8] }> <{ [402 x i8] c"\02\04\01\02\05\05\02\04\04\00\00\00\00\00\00\03\04\04\02\04\01\02\05\05\02\04\01\00\00\00\02\04\04\03\04\03\03\05\01\03\05\05\02\04\04\02\04\01\03\05\03\03\05\01\03\05\01\02\04\04\02\04\02\03\05\01\03\05\01\03\05\05\02\04\01\02\04\02\03\05\03\03\05\01\03\05\05\02\04\01\02\04\01\03\05\03\03\05\01\03\05\05\02\04\04\02\04\01\03\05\03\03\05\01\03\05\01\02\04\01\02\04\02\03\05\01\03\05\01\03\05\01\02\04\01\02\04\01\03\05\01\03\05\01\03\05\01\02\04\04\02\04\01\03\05\01\03\05\01\03\05\05\02\04\04\02\04\02\03\05\03\03\05\01\03\05\05\02\04\04\02\04\01\03\05\03\03\05\01\03\05\01\02\05\05\02\04\02\03\05\01\03\04\01\03\05\01\02\05\05\02\04\01\02\05\01\03\05\03\03\05\01\02\05\05\02\04\02\02\05\01\03\05\03\03\05\01\02\05\01\02\04\01\02\05\02\03\05\01\03\05\01\02\05\01\02\04\02\02\05\01\03\05\01\03\05\01\02\05\05\02\04\02\02\05\02\03\05\03\03\05\01\02\05\05\02\04\02\02\05\02\03\05\03\03\05\01\02\05\05\02\04\02\02\05\01\03\05\03\03\05\01\02\05\05\02\04\02\02\05\01\03\05\03\03\05\01\02\05\01\02\04\01\02\05\02\03\05\01\03\05\01\02\05\05\02\04\02\02\05\02\03\05\03\03\05\01\02\05\05\02\04\01\02\05\01\03\05\03\03\05\01\02\05\05\02\04\02\02\05\01\03\05\03\03\05\01\02\05\05\02\04\02\02\05\01\03\05\03\03\05\01", [18 x i8] zeroinitializer }>, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz(i8* noundef %0, ...) #0 {
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #3, !srcloc !4
  %2 = load i8, i8* %0, align 1
  %3 = icmp eq i8 %2, 84
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @abort() #4
  unreachable

5:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i8 noundef signext %0) #0 {
  %2 = sext i8 %0 to i32
  call void (i8*, ...) @baz(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef %2)
  %3 = sext i8 %0 to i32
  switch i32 %3, label %4 [
    i32 68, label %10
    i32 73, label %11
  ]

4:                                                ; preds = %1
  call void (i8*, ...) @baz(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %5 = icmp eq i8 %0, 68
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = icmp eq i8 %0, 73
  br i1 %7, label %8, label %9

8:                                                ; preds = %6, %4
  call void (i8*, ...) @baz(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %9

9:                                                ; preds = %8, %6
  br label %12

10:                                               ; preds = %1
  call void (i8*, ...) @baz(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %12

11:                                               ; preds = %1
  call void (i8*, ...) @baz(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %10, %9
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar() #0 {
  %1 = alloca [420 x i8], align 16
  %2 = getelementptr inbounds [420 x i8], [420 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(420) %2, i8* noundef nonnull align 16 dereferenceable(420) getelementptr inbounds (<{ [402 x i8], [18 x i8] }>, <{ [402 x i8], [18 x i8] }>* @__const.bar.c, i64 0, i32 0, i64 0), i64 420, i1 false)
  %3 = getelementptr inbounds [420 x i8], [420 x i8]* %1, i64 0, i64 390
  br label %4

4:                                                ; preds = %40, %0
  %.011 = phi i32 [ 2, %0 ], [ %.112, %40 ]
  %.09 = phi i8 [ 77, %0 ], [ %.110, %40 ]
  %.07 = phi i32 [ undef, %0 ], [ %.18, %40 ]
  %.05 = phi i32 [ 25, %0 ], [ %.16, %40 ]
  %.03 = phi i32 [ 26, %0 ], [ %.14, %40 ]
  %.01 = phi i8* [ %3, %0 ], [ %.12, %40 ]
  %.0 = phi i8 [ 77, %0 ], [ %.1, %40 ]
  %5 = icmp sgt i32 %.03, 0
  br i1 %5, label %6, label %41

6:                                                ; preds = %4
  %7 = icmp sgt i32 %.03, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = add nsw i32 %.03, -2
  br label %11

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ 0, %10 ]
  %13 = sub nsw i32 %.05, %12
  %14 = mul nsw i32 %13, 3
  %15 = add nsw i32 %14, %.011
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %.01, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %34 [
    i32 1, label %20
    i32 2, label %24
    i32 3, label %27
    i32 4, label %30
    i32 5, label %32
  ]

20:                                               ; preds = %11
  %21 = add nsw i32 %.03, -1
  %22 = add nsw i32 %.05, -1
  %23 = getelementptr inbounds i8, i8* %.01, i64 -15
  br label %34

24:                                               ; preds = %11
  %25 = add nsw i32 %.03, -1
  %26 = getelementptr inbounds i8, i8* %.01, i64 -15
  br label %34

27:                                               ; preds = %11
  %28 = add nsw i32 %.03, -1
  %29 = getelementptr inbounds i8, i8* %.01, i64 -15
  br label %34

30:                                               ; preds = %11
  %31 = add nsw i32 %.05, -1
  br label %34

32:                                               ; preds = %11
  %33 = add nsw i32 %.05, -1
  br label %34

34:                                               ; preds = %32, %30, %27, %24, %20, %11
  %.112 = phi i32 [ %.011, %11 ], [ 2, %32 ], [ 1, %30 ], [ 2, %27 ], [ 0, %24 ], [ 2, %20 ]
  %.110 = phi i8 [ %.09, %11 ], [ 68, %32 ], [ 68, %30 ], [ 73, %27 ], [ 73, %24 ], [ 77, %20 ]
  %.16 = phi i32 [ %.05, %11 ], [ %33, %32 ], [ %31, %30 ], [ %.05, %27 ], [ %.05, %24 ], [ %22, %20 ]
  %.14 = phi i32 [ %.03, %11 ], [ %.03, %32 ], [ %.03, %30 ], [ %28, %27 ], [ %25, %24 ], [ %21, %20 ]
  %.12 = phi i8* [ %.01, %11 ], [ %.01, %32 ], [ %.01, %30 ], [ %29, %27 ], [ %26, %24 ], [ %23, %20 ]
  %35 = icmp eq i8 %.110, %.0
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = add nsw i32 %.07, 1
  br label %40

38:                                               ; preds = %34
  %39 = call i32 @foo(i8 noundef signext %.0)
  br label %40

40:                                               ; preds = %38, %36
  %.18 = phi i32 [ %37, %36 ], [ %.07, %38 ]
  %.1 = phi i8 [ %.0, %36 ], [ %.110, %38 ]
  br label %4, !llvm.loop !5

41:                                               ; preds = %4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @foo(i8 noundef signext 68)
  call void @bar()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 113}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
