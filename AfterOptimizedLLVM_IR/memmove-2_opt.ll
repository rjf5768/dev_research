; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/memmove-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/memmove-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = dso_local global [32 x i8] c"abcdefg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@q = dso_local global i8* getelementptr inbounds ([32 x i8], [32 x i8]* @p, i32 0, i64 4), align 8
@.str = private unnamed_addr constant [8 x i8] c"abddefg\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"abddeff\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 2), i8* align 1 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 3), i64 1, i1 false)
  br i1 false, label %4, label %1

1:                                                ; preds = %0
  %2 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 noundef 8)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1, %0
  call void @abort() #4
  unreachable

5:                                                ; preds = %1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1), i8* align 1 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1), i64 1, i1 false)
  br i1 false, label %9, label %6

6:                                                ; preds = %5
  %7 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 noundef 8)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %5
  call void @abort() #4
  unreachable

10:                                               ; preds = %6
  %11 = load i8*, i8** @q, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 4), i64 1, i1 false)
  %12 = icmp ne i8* %11, getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 4)
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 noundef 8)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10
  call void @abort() #4
  unreachable

17:                                               ; preds = %13
  call void @bcopy(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 5), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 6), i64 noundef 1)
  %18 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 noundef 8)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @abort() #4
  unreachable

21:                                               ; preds = %17
  call void @bcopy(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 1), i64 noundef 1)
  %22 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 noundef 8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @abort() #4
  unreachable

25:                                               ; preds = %21
  %26 = load i8*, i8** @q, align 8
  call void @bcopy(i8* noundef %26, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 4), i64 noundef 1)
  %27 = call i32 @memcmp(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @p, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 noundef 8)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void @abort() #4
  unreachable

30:                                               ; preds = %25
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

declare dso_local void @bcopy(i8* noundef, i8* noundef, i64 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
