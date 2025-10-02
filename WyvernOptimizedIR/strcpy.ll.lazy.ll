; ModuleID = './strcpy.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = dso_local global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [6 x i8] c"abcde\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"vwxyz\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"wxyz\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"a\00cde\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"fghij\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"a\00cfghij\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ABCDE\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"VWX\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"WXyz\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"A\00CDE\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"FGHI\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"A\00CFGHIj\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 6, i1 false) #5
  br i1 false, label %2, label %1

1:                                                ; preds = %0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 6)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1, %0
  call void @abort() #6
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(5) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16), i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 1), i64 5, i1 false) #5
  br i1 false, label %5, label %4

4:                                                ; preds = %3
  %bcmp1 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16), i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 5)
  %.not2 = icmp eq i32 %bcmp1, 0
  br i1 %.not2, label %6, label %5

5:                                                ; preds = %4, %3
  call void @abort() #6
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  store i8 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1), align 1
  br i1 false, label %8, label %7

7:                                                ; preds = %6
  %bcmp3 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 6)
  %.not4 = icmp eq i32 %bcmp3, 0
  br i1 %.not4, label %9, label %8

8:                                                ; preds = %7, %6
  call void @abort() #6
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 3), i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 6, i1 false) #5
  br i1 false, label %11, label %10

10:                                               ; preds = %9
  %bcmp5 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 9)
  %.not6 = icmp eq i32 %bcmp5, 0
  br i1 %.not6, label %12, label %11

11:                                               ; preds = %10, %9
  call void @abort() #6
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 6, i1 false)
  br i1 false, label %14, label %13

13:                                               ; preds = %12
  %bcmp7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 6)
  %.not8 = icmp eq i32 %bcmp7, 0
  br i1 %.not8, label %15, label %14

14:                                               ; preds = %13, %12
  call void @abort() #6
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %13
  store i16 22615, i16* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16) to i16*), align 16
  br i1 false, label %17, label %16

16:                                               ; preds = %15
  %bcmp9 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16), i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 5)
  %.not10 = icmp eq i32 %bcmp9, 0
  br i1 %.not10, label %18, label %17

17:                                               ; preds = %16, %15
  call void @abort() #6
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %16
  store i8 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1), align 1
  br i1 false, label %20, label %19

19:                                               ; preds = %18
  %bcmp11 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 6)
  %.not12 = icmp eq i32 %bcmp11, 0
  br i1 %.not12, label %21, label %20

20:                                               ; preds = %19, %18
  call void @abort() #6
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %19
  store i32 1229473606, i32* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 3) to i32*), align 1
  br i1 false, label %23, label %22

22:                                               ; preds = %21
  %bcmp13 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i64 9)
  %.not14 = icmp eq i32 %bcmp13, 0
  br i1 %.not14, label %24, label %23

23:                                               ; preds = %22, %21
  call void @abort() #6
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %22
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 6, i1 false) #5
  br i1 false, label %26, label %25

25:                                               ; preds = %24
  %bcmp15 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 6)
  %.not16 = icmp eq i32 %bcmp15, 0
  br i1 %.not16, label %27, label %26

26:                                               ; preds = %25, %24
  call void @abort() #6
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %25
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 6, i1 false)
  br i1 false, label %29, label %28

28:                                               ; preds = %27
  %bcmp17 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 6)
  %.not18 = icmp eq i32 %bcmp17, 0
  br i1 %.not18, label %30, label %29

29:                                               ; preds = %28, %27
  call void @abort() #6
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %28
  ret void

UnifiedUnreachableBlock:                          ; preds = %29, %26, %23, %20, %17, %14, %11, %8, %5, %2
  unreachable
}

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
