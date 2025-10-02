; ModuleID = './20010915-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010915-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@check = dso_local global i32 0, align 4
@o = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@h = dso_local global i8* null, align 8
@u = dso_local global i8* null, align 8
@r.c = internal global [2 x i8] c"b\00", align 1
@r.cnt = internal global i32 0, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = alloca [5 x i8*], align 16
  %4 = bitcast [5 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %5 = getelementptr inbounds [5 x i8*], [5 x i8*]* %3, i64 0, i64 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %5, align 16
  %6 = getelementptr inbounds [5 x i8*], [5 x i8*]* %3, i64 0, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %7 = getelementptr inbounds [5 x i8*], [5 x i8*]* %3, i64 0, i64 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 16
  %8 = getelementptr inbounds [5 x i8*], [5 x i8*]* %3, i64 0, i64 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds [5 x i8*], [5 x i8*]* %3, i64 0, i64 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 16
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* %3, i64 0, i64 0
  %11 = call i32 @x(i32 noundef 5, i8** noundef nonnull %10)
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @check, align 4
  %.not1 = icmp eq i32 %13, 2
  br i1 %.not1, label %14, label %16

14:                                               ; preds = %12
  %15 = load i32, i32* @o, align 4
  %.not2 = icmp eq i32 %15, 5
  br i1 %.not2, label %17, label %16

16:                                               ; preds = %14, %12, %2
  call void @abort() #5
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %17, %16
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @x(i32 noundef %0, i8** nocapture noundef readonly %1) #2 {
  %3 = alloca i8*, align 8
  store i8* null, i8** %3, align 8
  %4 = load i32, i32* @o, align 4
  %5 = icmp slt i32 %4, %0
  br i1 %5, label %6, label %46

6:                                                ; preds = %2
  %7 = icmp sgt i32 %0, 2
  br i1 %7, label %8, label %46

8:                                                ; preds = %6
  %9 = load i32, i32* @o, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8*, i8** %1, i64 %10
  %12 = load i8*, i8** %11, align 8
  %.not = icmp eq i8* %12, null
  br i1 %.not, label %46, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @o, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %1, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @s(i8* noundef %17, i8** noundef nonnull %3)
  %.not1 = icmp eq i8* %18, null
  br i1 %.not1, label %27, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 0, i8* %18, align 1
  %21 = call i8* @s(i8* noundef nonnull %20, i8** noundef nonnull %3)
  store i8* %21, i8** @h, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = icmp eq i8* %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i8* @m(i8* noundef nonnull %20)
  store i8* %25, i8** @h, align 8
  br label %26

26:                                               ; preds = %24, %19
  br label %27

27:                                               ; preds = %26, %13
  %28 = load i32, i32* @o, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %1, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @s(i8* noundef %31, i8** noundef nonnull %3)
  store i8* %32, i8** @u, align 8
  %33 = load i32, i32* @o, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %27
  %40 = load i32, i32* @o, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %1, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @m(i8* noundef %43)
  store i8* %44, i8** @u, align 8
  br label %45

45:                                               ; preds = %39, %27
  br label %47

46:                                               ; preds = %8, %6, %2
  call void @abort() #5
  unreachable

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %60, %47
  %49 = load i32, i32* @o, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @o, align 4
  %51 = icmp slt i32 %50, %0
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i32, i32* @o, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %1, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @r(i8* noundef %56)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %62

60:                                               ; preds = %52
  br label %48, !llvm.loop !4

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61, %59
  %.0 = phi i32 [ 1, %59 ], [ 0, %61 ]
  ret i32 %.0
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @s(i8* noundef %0, i8** nocapture noundef writeonly %1) #2 {
  %3 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #6
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %8

4:                                                ; preds = %2
  %5 = load i32, i32* @check, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @check, align 4
  %7 = icmp sgt i32 %5, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %2
  call void @abort() #5
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %0, i64 1
  store i8* %10, i8** %1, align 8
  ret i8* null
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local noalias nonnull i8* @m(i8* nocapture noundef readnone %0) #0 {
  call void @abort() #5
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @r(i8* nocapture noundef readonly %0) #2 {
  %2 = load i8, i8* %0, align 1
  %3 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @r.c, i64 0, i64 0), align 1
  %.not = icmp eq i8 %2, %3
  br i1 %.not, label %4, label %11

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, i8* %0, i64 1
  %6 = load i8, i8* %5, align 1
  %7 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @r.c, i64 0, i64 1), align 1
  %.not1 = icmp eq i8 %6, %7
  br i1 %.not1, label %8, label %11

8:                                                ; preds = %4
  %9 = load i32, i32* @r.cnt, align 4
  %10 = icmp sgt i32 %9, 3
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %4, %1
  call void @abort() #5
  unreachable

12:                                               ; preds = %8
  %13 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @r.c, i64 0, i64 0), align 1
  %14 = add i8 %13, 1
  store i8 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @r.c, i64 0, i64 0), align 1
  %15 = load i32, i32* @r.cnt, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @r.cnt, align 4
  ret i32 1
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
