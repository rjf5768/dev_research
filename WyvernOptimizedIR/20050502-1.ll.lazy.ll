; ModuleID = './20050502-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050502-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"abcde'fgh\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"fgh\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"abcde\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ABCDEFG\22HI\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"HI\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ABCDEFG\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"abcd\22e'fgh\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"e'fgh\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"abcd\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"ABCDEF'G\22HI\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"G\22HI\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"ABCDEF\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"abcdef@gh\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"gh\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"abcdef\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @bar(i8** nocapture noundef %0) #0 {
  %2 = load i8*, i8** %0, align 8
  %3 = getelementptr inbounds i8, i8* %2, i64 1
  store i8* %3, i8** %0, align 8
  %4 = load i8, i8* %2, align 1
  %5 = sext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @baz(i32 noundef %0) #1 {
  %2 = icmp ne i32 %0, 64
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @foo(i8** nocapture noundef %0, i8* nocapture noundef writeonly %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #2 {
  %5 = call i32 @bar(i8** noundef %0)
  br label %6

6:                                                ; preds = %24, %4
  %.01.in = phi i32 [ %5, %4 ], [ %10, %24 ]
  %.0 = phi i32 [ 0, %4 ], [ %7, %24 ]
  %.01 = trunc i32 %.01.in to i8
  %7 = add nuw nsw i32 %.0, 1
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds i8, i8* %1, i64 %8
  store i8 %.01, i8* %9, align 1
  %10 = call i32 @bar(i8** noundef %0)
  br i1 %2, label %11, label %14

11:                                               ; preds = %6
  %sext5.mask = and i32 %10, 255
  %12 = icmp eq i32 %sext5.mask, 39
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  br label %25

14:                                               ; preds = %11, %6
  br i1 %3, label %15, label %18

15:                                               ; preds = %14
  %sext4.mask = and i32 %10, 255
  %16 = icmp eq i32 %sext4.mask, 34
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %25

18:                                               ; preds = %15, %14
  br i1 %2, label %24, label %19

19:                                               ; preds = %18
  br i1 %3, label %24, label %20

20:                                               ; preds = %19
  %sext = shl i32 %10, 24
  %21 = ashr exact i32 %sext, 24
  %22 = call i32 @baz(i32 noundef %21)
  %.not = icmp eq i32 %22, 0
  br i1 %.not, label %23, label %24

23:                                               ; preds = %20
  br label %25

24:                                               ; preds = %20, %19, %18
  br label %6

25:                                               ; preds = %23, %17, %13
  %26 = zext i32 %7 to i64
  %27 = getelementptr inbounds i8, i8* %1, i64 %26
  store i8 0, i8* %27, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca i8*, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %3 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @foo(i8** noundef nonnull %2, i8* noundef nonnull %3, i1 noundef zeroext true, i1 noundef zeroext false)
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %4, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #7
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %6, label %8

6:                                                ; preds = %0
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %7, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 6)
  %.not1 = icmp eq i32 %bcmp, 0
  br i1 %.not1, label %9, label %8

8:                                                ; preds = %6, %0
  call void @abort() #8
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @foo(i8** noundef nonnull %2, i8* noundef nonnull %10, i1 noundef zeroext false, i1 noundef zeroext true)
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %11, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %13, label %15

13:                                               ; preds = %9
  %14 = bitcast [64 x i8]* %1 to i64*
  %lhsv = load i64, i64* %14, align 16
  %.not4 = icmp eq i64 %lhsv, 20061986658402881
  br i1 %.not4, label %16, label %15

15:                                               ; preds = %13, %9
  call void @abort() #8
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %13
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @foo(i8** noundef nonnull %2, i8* noundef nonnull %17, i1 noundef zeroext true, i1 noundef zeroext true)
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %18, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #7
  %.not5 = icmp eq i32 %19, 0
  br i1 %.not5, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp6 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %21, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 5)
  %.not7 = icmp eq i32 %bcmp6, 0
  br i1 %.not7, label %23, label %22

22:                                               ; preds = %20, %16
  call void @abort() #8
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %20
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @foo(i8** noundef nonnull %2, i8* noundef nonnull %24, i1 noundef zeroext true, i1 noundef zeroext true)
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %25, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #7
  %.not8 = icmp eq i32 %26, 0
  br i1 %.not8, label %27, label %29

27:                                               ; preds = %23
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp9 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %28, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i64 7)
  %.not10 = icmp eq i32 %bcmp9, 0
  br i1 %.not10, label %30, label %29

29:                                               ; preds = %27, %23
  call void @abort() #8
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %27
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @foo(i8** noundef nonnull %2, i8* noundef nonnull %31, i1 noundef zeroext false, i1 noundef zeroext false)
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %32, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #7
  %.not11 = icmp eq i32 %33, 0
  br i1 %.not11, label %34, label %36

34:                                               ; preds = %30
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp12 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %35, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i64 7)
  %.not13 = icmp eq i32 %bcmp12, 0
  br i1 %.not13, label %37, label %36

36:                                               ; preds = %34, %30
  call void @abort() #8
  br label %UnifiedUnreachableBlock

37:                                               ; preds = %34
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %36, %29, %22, %15, %8
  unreachable
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: noreturn
declare dso_local void @abort() #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
