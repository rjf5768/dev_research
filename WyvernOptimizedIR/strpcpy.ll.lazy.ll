; ModuleID = './strpcpy.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strpcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s1 = dso_local constant [4 x i8] c"123\00", align 1
@p = dso_local global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"defg\00", align 1
@s2 = dso_local global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"FGH\00", align 1
@s3 = dso_local global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), align 8
@l1 = dso_local global i64 1, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"abcde\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"vwxyz\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"wxyz\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"a\00cde\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"fghij\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"a\00cfghij\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"23\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"z\0023\00\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"ABCD\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"EFG\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"ABCDEFG\00", align 1
@inside_main = external dso_local global i32, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"abcFGH\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 6, i1 false) #5
  br i1 false, label %2, label %1

1:                                                ; preds = %0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 6)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1, %0
  call void @abort() #6
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(5) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16), i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 1), i64 5, i1 false) #5
  br i1 false, label %5, label %4

4:                                                ; preds = %3
  %bcmp1 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16), i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 5)
  %.not2 = icmp eq i32 %bcmp1, 0
  br i1 %.not2, label %6, label %5

5:                                                ; preds = %4, %3
  call void @abort() #6
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  store i8 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1), align 1
  br i1 false, label %8, label %7

7:                                                ; preds = %6
  %bcmp3 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 6)
  %.not4 = icmp eq i32 %bcmp3, 0
  br i1 %.not4, label %9, label %8

8:                                                ; preds = %7, %6
  call void @abort() #6
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 3), i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 6, i1 false) #5
  br i1 false, label %11, label %10

10:                                               ; preds = %9
  %bcmp5 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i64 9)
  %.not6 = icmp eq i32 %bcmp5, 0
  br i1 %.not6, label %12, label %11

11:                                               ; preds = %10, %9
  call void @abort() #6
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 21), i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 3, i1 false) #5
  br i1 false, label %15, label %13

13:                                               ; preds = %12
  br i1 false, label %15, label %14

14:                                               ; preds = %13
  %bcmp7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 19), i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 5)
  %.not8 = icmp eq i32 %bcmp7, 0
  br i1 %.not8, label %16, label %15

15:                                               ; preds = %14, %13, %12
  call void @abort() #6
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(5) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 5, i1 false) #5
  store i32 4671045, i32* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 4) to i32*), align 4
  br i1 false, label %18, label %17

17:                                               ; preds = %16
  %lhsv = load i64, i64* bitcast ([32 x i8]* @p to i64*), align 16
  %.not9 = icmp eq i64 %lhsv, 20061986658402881
  br i1 %.not9, label %19, label %18

18:                                               ; preds = %17, %16
  call void @abort() #6
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 6, i1 false) #5
  br i1 false, label %21, label %20

20:                                               ; preds = %19
  %bcmp10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 6)
  %.not11 = icmp eq i32 %bcmp10, 0
  br i1 %.not11, label %22, label %21

21:                                               ; preds = %20, %19
  call void @abort() #6
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %20
  store i32 1, i32* @inside_main, align 4
  %23 = load i8*, i8** @s3, align 8
  %strcpy = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 3), i8* noundef nonnull dereferenceable(1) %23)
  %bcmp12 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i64 6)
  %.not13 = icmp eq i32 %bcmp12, 0
  br i1 %.not13, label %25, label %24

24:                                               ; preds = %22
  call void @abort() #6
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %22
  ret void

UnifiedUnreachableBlock:                          ; preds = %24, %21, %18, %15, %11, %8, %5, %2
  unreachable
}

declare dso_local i8* @stpcpy(i8* noundef, i8* noundef) #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
