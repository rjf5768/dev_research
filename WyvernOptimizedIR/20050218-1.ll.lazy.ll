; ModuleID = './20050218-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050218-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"fgh\00", align 1
@a = dso_local global <{ i8*, i8*, i8*, i8*, [12 x i8*] }> <{ i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), [12 x i8*] zeroinitializer }>, align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"abcde\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  br label %4

4:                                                ; preds = %22, %3
  %.02 = phi i64 [ 0, %3 ], [ %23, %22 ]
  %.01 = phi i64 [ 0, %3 ], [ %.1, %22 ]
  %5 = icmp ult i64 %.02, %2
  br i1 %5, label %6, label %24

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %0, i64 %.01
  %8 = getelementptr inbounds [16 x i8*], [16 x i8*]* bitcast (<{ i8*, i8*, i8*, i8*, [12 x i8*] }>* @a to [16 x i8*]*), i64 0, i64 %.02
  %9 = load i8*, i8** %8, align 8
  %10 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %9) #3
  %11 = call i32 @strncmp(i8* noundef %7, i8* noundef %9, i64 noundef %10) #3
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %13, label %12

12:                                               ; preds = %6
  br label %25

13:                                               ; preds = %6
  %14 = getelementptr inbounds [16 x i8*], [16 x i8*]* bitcast (<{ i8*, i8*, i8*, i8*, [12 x i8*] }>* @a to [16 x i8*]*), i64 0, i64 %.02
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %15) #3
  %17 = add i64 %.01, %16
  %.not3 = icmp eq i8* %1, null
  br i1 %.not3, label %21, label %18

18:                                               ; preds = %13
  %19 = call i64 @strlen(i8* noundef nonnull %1) #3
  %20 = add i64 %17, %19
  br label %21

21:                                               ; preds = %18, %13
  %.1 = phi i64 [ %20, %18 ], [ %17, %13 ]
  br label %22

22:                                               ; preds = %21
  %23 = add i64 %.02, 1
  br label %4, !llvm.loop !4

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %24, %12
  %.0 = phi i32 [ 2, %12 ], [ 0, %24 ]
  ret i32 %.0
}

declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @foo(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* noundef null, i64 noundef 3)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
