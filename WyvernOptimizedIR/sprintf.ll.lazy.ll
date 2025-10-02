; ModuleID = './sprintf.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/sprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buffer = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"barf\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  store i32 7303014, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  ret void
}

declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2() #0 {
  store i32 7303014, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  ret i32 3
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3() #0 {
  store i32 7496034, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test4() #0 {
  store i32 7496034, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  ret i32 3
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test5(i8* noundef %0) #0 {
  %strcpy = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  call void @test1()
  %lhsv = load i32, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  %.not = icmp eq i32 %lhsv, 7303014
  br i1 %.not, label %1, label %3

1:                                                ; preds = %0
  %2 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %.not1 = icmp eq i8 %2, 65
  br i1 %.not1, label %4, label %3

3:                                                ; preds = %1, %0
  call void @abort() #6
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %5 = call i32 @test2()
  %.not2 = icmp eq i32 %5, 3
  br i1 %.not2, label %7, label %6

6:                                                ; preds = %4
  call void @abort() #6
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  %lhsv3 = load i32, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  %.not4 = icmp eq i32 %lhsv3, 7303014
  br i1 %.not4, label %8, label %10

8:                                                ; preds = %7
  %9 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %.not5 = icmp eq i8 %9, 65
  br i1 %.not5, label %11, label %10

10:                                               ; preds = %8, %7
  call void @abort() #6
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  call void @test3()
  %lhsv6 = load i32, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  %.not7 = icmp eq i32 %lhsv6, 7496034
  br i1 %.not7, label %12, label %14

12:                                               ; preds = %11
  %13 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %.not8 = icmp eq i8 %13, 65
  br i1 %.not8, label %15, label %14

14:                                               ; preds = %12, %11
  call void @abort() #6
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  %16 = call i32 @test4()
  %.not9 = icmp eq i32 %16, 3
  br i1 %.not9, label %18, label %17

17:                                               ; preds = %15
  call void @abort() #6
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %15
  %lhsv10 = load i32, i32* bitcast ([32 x i8]* @buffer to i32*), align 16
  %.not11 = icmp eq i32 %lhsv10, 7496034
  br i1 %.not11, label %19, label %21

19:                                               ; preds = %18
  %20 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 4), align 4
  %.not12 = icmp eq i8 %20, 65
  br i1 %.not12, label %22, label %21

21:                                               ; preds = %19, %18
  call void @abort() #6
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %19
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8 65, i64 32, i1 false)
  call void @test5(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 5)
  %.not13 = icmp eq i32 %bcmp, 0
  br i1 %.not13, label %23, label %25

23:                                               ; preds = %22
  %24 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buffer, i64 0, i64 5), align 1
  %.not14 = icmp eq i8 %24, 65
  br i1 %.not14, label %26, label %25

25:                                               ; preds = %23, %22
  call void @abort() #6
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %23
  ret void

UnifiedUnreachableBlock:                          ; preds = %25, %21, %17, %14, %10, %6, %3
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
