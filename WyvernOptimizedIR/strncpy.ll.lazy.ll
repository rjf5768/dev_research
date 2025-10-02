; ModuleID = './strncpy.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"hellXXX\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" worXXX\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"XXX\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"hello world\00XXX\00", align 1
@i = dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"xfoo\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"bar\00XXX\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %2, i8 88, i64 64, i1 false)
  %3 = bitcast [64 x i8]* %1 to i32*
  store i32 1819043176, i32* %3, align 16
  br i1 false, label %6, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %5, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 7)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %4, %0
  call void @abort() #6
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %8, i8 88, i64 64, i1 false)
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 16
  %10 = bitcast i8* %9 to i32*
  store i32 1819043176, i32* %10, align 16
  br i1 false, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 16
  %bcmp1 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %12, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 7)
  %.not2 = icmp eq i32 %bcmp1, 0
  br i1 %.not2, label %14, label %13

13:                                               ; preds = %11, %7
  call void @abort() #6
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %11
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %15, i8 88, i64 64, i1 false)
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 32
  %17 = bitcast i8* %16 to i32*
  store i32 1919907616, i32* %17, align 16
  br i1 false, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 32
  %bcmp3 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %19, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 7)
  %.not4 = icmp eq i32 %bcmp3, 0
  br i1 %.not4, label %21, label %20

20:                                               ; preds = %18, %14
  call void @abort() #6
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %18
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %22, i8 88, i64 64, i1 false)
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 1
  %24 = bitcast i8* %23 to i32*
  store i32 1919907616, i32* %24, align 1
  br i1 false, label %27, label %25

25:                                               ; preds = %21
  %bcmp5 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %23, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 7)
  %.not6 = icmp eq i32 %bcmp5, 0
  br i1 %.not6, label %26, label %27

26:                                               ; preds = %25
  br i1 false, label %27, label %28

27:                                               ; preds = %26, %25, %21
  call void @abort() #6
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %26
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %29, i8 88, i64 64, i1 false)
  br i1 false, label %32, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %31, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 3)
  %.not8 = icmp eq i32 %bcmp7, 0
  br i1 %.not8, label %33, label %32

32:                                               ; preds = %30, %28
  call void @abort() #6
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %30
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %34, i8 88, i64 64, i1 false)
  br i1 false, label %39, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 1
  %bcmp9 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %36, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 3)
  %.not10 = icmp eq i32 %bcmp9, 0
  br i1 %.not10, label %37, label %39

37:                                               ; preds = %35
  br i1 false, label %39, label %38

38:                                               ; preds = %37
  br i1 false, label %39, label %40

39:                                               ; preds = %38, %37, %35, %33
  call void @abort() #6
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %38
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %41, i8 88, i64 64, i1 false)
  br i1 false, label %46, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 6
  %bcmp11 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %43, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 3)
  %.not12 = icmp eq i32 %bcmp11, 0
  br i1 %.not12, label %44, label %46

44:                                               ; preds = %42
  br i1 false, label %46, label %45

45:                                               ; preds = %44
  br i1 false, label %46, label %47

46:                                               ; preds = %45, %44, %42, %40
  call void @abort() #6
  br label %UnifiedUnreachableBlock

47:                                               ; preds = %45
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %48, i8 88, i64 64, i1 false)
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %49, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 noundef 12, i1 false) #7
  br i1 false, label %52, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp13 = call i32 @bcmp(i8* noundef nonnull dereferenceable(15) %51, i8* noundef nonnull dereferenceable(15) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 15)
  %.not14 = icmp eq i32 %bcmp13, 0
  br i1 %.not14, label %53, label %52

52:                                               ; preds = %50, %47
  call void @abort() #6
  br label %UnifiedUnreachableBlock

53:                                               ; preds = %50
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %54, i8 88, i64 64, i1 false)
  %55 = bitcast [64 x i8]* %1 to i32*
  store i32 1819043176, i32* %55, align 16
  br i1 false, label %58, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp15 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %57, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 7)
  %.not16 = icmp eq i32 %bcmp15, 0
  br i1 %.not16, label %59, label %58

58:                                               ; preds = %56, %53
  call void @abort() #6
  br label %UnifiedUnreachableBlock

59:                                               ; preds = %56
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %60, i8 88, i64 64, i1 false)
  %61 = load i32, i32* @i, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @i, align 4
  %.not17 = icmp eq i32 %61, 0
  %63 = bitcast [64 x i8]* %1 to i32*
  %64 = select i1 %.not17, i32 7496034, i32 7303014
  store i32 %64, i32* %63, align 16
  br i1 false, label %69, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp18 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %66, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64 7)
  %.not19 = icmp eq i32 %bcmp18, 0
  br i1 %.not19, label %67, label %69

67:                                               ; preds = %65
  %68 = load i32, i32* @i, align 4
  %.not20 = icmp eq i32 %68, 1
  br i1 %.not20, label %70, label %69

69:                                               ; preds = %67, %65, %59
  call void @abort() #6
  br label %UnifiedUnreachableBlock

70:                                               ; preds = %67
  ret void

UnifiedUnreachableBlock:                          ; preds = %69, %58, %52, %46, %39, %32, %27, %20, %13, %6
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
