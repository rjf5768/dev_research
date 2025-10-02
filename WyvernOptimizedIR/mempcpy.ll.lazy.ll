; ModuleID = './mempcpy.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/mempcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s1 = dso_local constant [4 x i8] c"123\00", align 1
@p = dso_local global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"defg\00", align 1
@s2 = dso_local global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"FGH\00", align 1
@s3 = dso_local global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), align 8
@l1 = dso_local global i64 1, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"ABCDE\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"VWX\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"WX\00\00\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"A\00CDE\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"FGHI\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"A\00CFGHI\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"qrstu\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"QRSTU\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Q123U\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"abcdEFG\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"efg\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"abcdefg\00", align 1
@inside_main = external dso_local global i32, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"ABCDEFg\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"ABCDEF2\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 6, i1 false)
  br i1 false, label %2, label %1

1:                                                ; preds = %0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 6)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1, %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %1
  store i16 22615, i16* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16) to i16*), align 16
  br i1 false, label %5, label %4

4:                                                ; preds = %3
  %bcmp1 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 16), i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 5)
  %.not2 = icmp eq i32 %bcmp1, 0
  br i1 %.not2, label %6, label %5

5:                                                ; preds = %4, %3
  call void @abort() #5
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  store i8 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1), align 1
  br i1 false, label %8, label %7

7:                                                ; preds = %6
  %bcmp3 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 6)
  %.not4 = icmp eq i32 %bcmp3, 0
  br i1 %.not4, label %9, label %8

8:                                                ; preds = %7, %6
  call void @abort() #5
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  store i32 1229473606, i32* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 3) to i32*), align 1
  br i1 false, label %11, label %10

10:                                               ; preds = %9
  %lhsv = load i64, i64* bitcast ([32 x i8]* @p to i64*), align 16
  %.not5 = icmp eq i64 %lhsv, 20627144258551873
  br i1 %.not5, label %12, label %11

11:                                               ; preds = %10, %9
  call void @abort() #5
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 20), i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64 6, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 25), i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 6, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(3) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 26), i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 0), i64 3, i1 false)
  br i1 false, label %14, label %13

13:                                               ; preds = %12
  %bcmp6 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 25), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i64 6)
  %.not7 = icmp eq i32 %bcmp6, 0
  br i1 %.not7, label %15, label %14

14:                                               ; preds = %13, %12
  call void @abort() #5
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %13
  store i32 1684234849, i32* bitcast ([32 x i8]* @p to i32*), align 16
  store i32 6776421, i32* bitcast (i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 4) to i32*), align 4
  br i1 false, label %17, label %16

16:                                               ; preds = %15
  %lhsv8 = load i64, i64* bitcast ([32 x i8]* @p to i64*), align 16
  %.not9 = icmp eq i64 %lhsv8, 29104508263162465
  br i1 %.not9, label %18, label %17

17:                                               ; preds = %16, %15
  call void @abort() #5
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 6, i1 false)
  br i1 false, label %20, label %19

19:                                               ; preds = %18
  %bcmp10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 6)
  %.not11 = icmp eq i32 %bcmp10, 0
  br i1 %.not11, label %21, label %20

20:                                               ; preds = %19, %18
  call void @abort() #5
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %19
  store i32 1, i32* @inside_main, align 4
  %22 = load i8*, i8** @s3, align 8
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 5), align 1
  %lhsv12 = load i64, i64* bitcast ([32 x i8]* @p to i64*), align 16
  %.not13 = icmp eq i64 %lhsv12, 29069185913143873
  br i1 %.not13, label %25, label %24

24:                                               ; preds = %21
  call void @abort() #5
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %21
  %26 = load i64, i64* @l1, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 6), i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @s1, i64 0, i64 1), i64 %26, i1 false)
  %lhsv14 = load i64, i64* bitcast ([32 x i8]* @p to i64*), align 16
  %.not15 = icmp eq i64 %lhsv14, 14151012147479105
  br i1 %.not15, label %28, label %27

27:                                               ; preds = %25
  call void @abort() #5
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %25
  ret void

UnifiedUnreachableBlock:                          ; preds = %27, %24, %20, %17, %14, %11, %8, %5, %2
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
