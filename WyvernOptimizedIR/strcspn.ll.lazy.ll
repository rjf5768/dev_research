; ModuleID = './strcspn.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strcspn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca [64 x i8], align 16
  br i1 false, label %2, label %3

2:                                                ; preds = %0
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  br i1 false, label %4, label %5

4:                                                ; preds = %3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  br i1 false, label %6, label %7

6:                                                ; preds = %5
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  br i1 false, label %8, label %9

8:                                                ; preds = %7
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  br i1 false, label %10, label %11

10:                                               ; preds = %9
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %9
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %12, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #5
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %strlen = call i64 @strlen(i8* noundef nonnull %13)
  %.not = icmp eq i64 %strlen, 11
  br i1 %.not, label %15, label %14

14:                                               ; preds = %11
  call void @abort() #6
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %11
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %16, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #5
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 1
  %strlen1 = call i64 @strlen(i8* noundef nonnull %17)
  %.not2 = icmp eq i64 %strlen1, 10
  br i1 %.not2, label %18, label %19

18:                                               ; preds = %15
  br i1 false, label %19, label %20

19:                                               ; preds = %18, %15
  call void @abort() #6
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %18
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %21, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #5
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 6
  %strlen3 = call i64 @strlen(i8* noundef nonnull %22)
  %.not4 = icmp eq i64 %strlen3, 5
  br i1 %.not4, label %23, label %24

23:                                               ; preds = %20
  br i1 false, label %24, label %25

24:                                               ; preds = %23, %20
  call void @abort() #6
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %23
  br i1 false, label %26, label %27

26:                                               ; preds = %25
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %25
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %28, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #5
  br i1 false, label %29, label %30

29:                                               ; preds = %27
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %27
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %31, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #5
  br i1 false, label %33, label %32

32:                                               ; preds = %30
  br i1 false, label %33, label %34

33:                                               ; preds = %32, %30
  br label %UnifiedUnreachableBlock

34:                                               ; preds = %32
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %35, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false) #5
  br i1 false, label %37, label %36

36:                                               ; preds = %34
  br i1 false, label %37, label %38

37:                                               ; preds = %36, %34
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %36
  br i1 false, label %39, label %40

39:                                               ; preds = %38
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %38
  ret void

UnifiedUnreachableBlock:                          ; preds = %39, %37, %33, %29, %26, %24, %19, %14, %10, %8, %6, %4, %2
  unreachable
}

declare dso_local i64 @strcspn(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) #4

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
