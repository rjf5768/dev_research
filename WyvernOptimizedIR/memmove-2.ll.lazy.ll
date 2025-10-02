; ModuleID = './memmove-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/memmove-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = dso_local global [32 x i8] c"abcdefg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@q = dso_local global i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i32 0, i64 4), align 8
@.str = private unnamed_addr constant [8 x i8] c"abddefg\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"abddeff\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 3), align 1
  store i8 %1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 2), align 2
  br i1 false, label %3, label %2

2:                                                ; preds = %0
  %lhsv = load i64, i64* bitcast ([32 x i8]* @p to i64*), align 16
  %.not = icmp eq i64 %lhsv, 29104508263228001
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2, %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %2
  br i1 false, label %6, label %5

5:                                                ; preds = %4
  %lhsv1 = load i64, i64* bitcast ([32 x i8]* @p to i64*), align 16
  %.not2 = icmp eq i64 %lhsv1, 29104508263228001
  br i1 %.not2, label %7, label %6

6:                                                ; preds = %5, %4
  call void @abort() #4
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  %8 = load i8*, i8** @q, align 8
  %9 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 4), align 4
  store i8 %9, i8* %8, align 1
  %.not3 = icmp eq i8* %8, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 4)
  br i1 %.not3, label %10, label %11

10:                                               ; preds = %7
  %lhsv4 = load i64, i64* bitcast ([32 x i8]* @p to i64*), align 16
  %.not5 = icmp eq i64 %lhsv4, 29104508263228001
  br i1 %.not5, label %12, label %11

11:                                               ; preds = %10, %7
  call void @abort() #4
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  %13 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 5), align 1
  store i8 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 6), align 2
  %lhsv6 = load i64, i64* bitcast ([32 x i8]* @p to i64*), align 16
  %.not7 = icmp eq i64 %lhsv6, 28823033286517345
  br i1 %.not7, label %15, label %14

14:                                               ; preds = %12
  call void @abort() #4
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %12
  %lhsv8 = load i64, i64* bitcast ([32 x i8]* @p to i64*), align 16
  %.not9 = icmp eq i64 %lhsv8, 28823033286517345
  br i1 %.not9, label %17, label %16

16:                                               ; preds = %15
  call void @abort() #4
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %15
  %18 = load i8*, i8** @q, align 8
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 4), align 4
  %lhsv10 = load i64, i64* bitcast ([32 x i8]* @p to i64*), align 16
  %.not11 = icmp eq i64 %lhsv10, 28823033286517345
  br i1 %.not11, label %21, label %20

20:                                               ; preds = %17
  call void @abort() #4
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %17
  ret void

UnifiedUnreachableBlock:                          ; preds = %20, %16, %14, %11, %6, %3
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

declare dso_local void @bcopy(i8* noundef, i8* noundef, i64 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
