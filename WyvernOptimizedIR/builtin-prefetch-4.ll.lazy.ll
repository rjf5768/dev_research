; ModuleID = './builtin-prefetch-4.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtin-prefetch-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arr = dso_local global [100 x i32] zeroinitializer, align 16
@ptr = dso_local global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([100 x i32]* @arr to i8*), i64 80) to i32*), align 8
@arrindex = dso_local global i32 4, align 4
@getptrcnt = dso_local global i32 0, align 4
@getintcnt = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @assign_arg_ptr(i32* noundef readonly %0) #0 {
  %2 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %2, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0i8(i8* nocapture readonly, i32 immarg, i32 immarg, i32) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @assign_glob_ptr() #0 {
  %1 = load i8*, i8** bitcast (i32** @ptr to i8**), align 8
  call void @llvm.prefetch.p0i8(i8* %1, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @assign_arg_idx(i32* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = bitcast i32* %4 to i8*
  call void @llvm.prefetch.p0i8(i8* %5, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @assign_glob_idx() #0 {
  %1 = load i32*, i32** @ptr, align 8
  %2 = load i32, i32* @arrindex, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds i32, i32* %1, i64 %3
  %5 = bitcast i32* %4 to i8*
  call void @llvm.prefetch.p0i8(i8* %5, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @preinc_arg_ptr(i32* noundef readonly %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 1
  %3 = bitcast i32* %2 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %3, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @preinc_glob_ptr() #0 {
  %1 = load i32*, i32** @ptr, align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 1
  store i32* %2, i32** @ptr, align 8
  %3 = bitcast i32* %2 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %3, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @postinc_arg_ptr(i32* noundef readonly %0) #0 {
  %2 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %2, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @postinc_glob_ptr() #0 {
  %1 = load i32*, i32** @ptr, align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 1
  store i32* %2, i32** @ptr, align 8
  %3 = bitcast i32* %1 to i8*
  call void @llvm.prefetch.p0i8(i8* %3, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @predec_arg_ptr(i32* noundef readonly %0) #0 {
  %2 = getelementptr inbounds i32, i32* %0, i64 -1
  %3 = bitcast i32* %2 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %3, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @predec_glob_ptr() #0 {
  %1 = load i32*, i32** @ptr, align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 -1
  store i32* %2, i32** @ptr, align 8
  %3 = bitcast i32* %2 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %3, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @postdec_arg_ptr(i32* noundef readonly %0) #0 {
  %2 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %2, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @postdec_glob_ptr() #0 {
  %1 = load i32*, i32** @ptr, align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 -1
  store i32* %2, i32** @ptr, align 8
  %3 = bitcast i32* %1 to i8*
  call void @llvm.prefetch.p0i8(i8* %3, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @preinc_arg_idx(i32* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = add nsw i32 %1, 1
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @preinc_glob_idx() #0 {
  %1 = load i32, i32* @arrindex, align 4
  %2 = load i32*, i32** @ptr, align 8
  %3 = add nsw i32 %1, 1
  store i32 %3, i32* @arrindex, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %2, i64 %4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @postinc_arg_idx(i32* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = bitcast i32* %4 to i8*
  call void @llvm.prefetch.p0i8(i8* %5, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @postinc_glob_idx() #0 {
  %1 = load i32, i32* @arrindex, align 4
  %2 = load i32*, i32** @ptr, align 8
  %3 = add nsw i32 %1, 1
  store i32 %3, i32* @arrindex, align 4
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds i32, i32* %2, i64 %4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @predec_arg_idx(i32* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = add nsw i32 %1, -1
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @predec_glob_idx() #0 {
  %1 = load i32, i32* @arrindex, align 4
  %2 = load i32*, i32** @ptr, align 8
  %3 = add nsw i32 %1, -1
  store i32 %3, i32* @arrindex, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %2, i64 %4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @postdec_arg_idx(i32* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = bitcast i32* %4 to i8*
  call void @llvm.prefetch.p0i8(i8* %5, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @postdec_glob_idx() #0 {
  %1 = load i32, i32* @arrindex, align 4
  %2 = load i32*, i32** @ptr, align 8
  %3 = add nsw i32 %1, -1
  store i32 %3, i32* @arrindex, align 4
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds i32, i32* %2, i64 %4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 0, i32 0, i32 1)
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local nonnull i32* @getptr(i32* noundef readnone %0) #2 {
  %2 = load i32, i32* @getptrcnt, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @getptrcnt, align 4
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  ret i32* %4
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @funccall_arg_ptr(i32* noundef %0) #0 {
  %2 = call i32* @getptr(i32* noundef %0)
  %3 = bitcast i32* %2 to i8*
  call void @llvm.prefetch.p0i8(i8* nonnull %3, i32 0, i32 0, i32 1)
  %4 = load i32, i32* @getptrcnt, align 4
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @getint(i32 noundef %0) #2 {
  %2 = load i32, i32* @getintcnt, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @getintcnt, align 4
  %4 = add nsw i32 %0, 1
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @funccall_arg_idx(i32* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = call i32 @getint(i32 noundef %1)
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 0, i32 0, i32 1)
  %7 = load i32, i32* @getintcnt, align 4
  %8 = icmp eq i32 %7, 1
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = load i32*, i32** @ptr, align 8
  %2 = call i32 @assign_arg_ptr(i32* noundef %1)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %3, label %4

3:                                                ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  %5 = call i32 @assign_glob_ptr()
  %.not1 = icmp eq i32 %5, 0
  br i1 %.not1, label %6, label %7

6:                                                ; preds = %4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  %8 = load i32*, i32** @ptr, align 8
  %9 = call i32 @assign_arg_idx(i32* noundef %8, i32 noundef 4)
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %10, label %11

10:                                               ; preds = %7
  call void @abort() #5
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %7
  %12 = call i32 @assign_glob_idx()
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %13, label %14

13:                                               ; preds = %11
  call void @abort() #5
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %11
  %15 = load i32*, i32** @ptr, align 8
  %16 = call i32 @preinc_arg_ptr(i32* noundef %15)
  %.not4 = icmp eq i32 %16, 0
  br i1 %.not4, label %17, label %18

17:                                               ; preds = %14
  call void @abort() #5
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %14
  %19 = call i32 @preinc_glob_ptr()
  %.not5 = icmp eq i32 %19, 0
  br i1 %.not5, label %20, label %21

20:                                               ; preds = %18
  call void @abort() #5
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %18
  %22 = load i32*, i32** @ptr, align 8
  %23 = call i32 @postinc_arg_ptr(i32* noundef %22)
  %.not6 = icmp eq i32 %23, 0
  br i1 %.not6, label %24, label %25

24:                                               ; preds = %21
  call void @abort() #5
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %21
  %26 = call i32 @postinc_glob_ptr()
  %.not7 = icmp eq i32 %26, 0
  br i1 %.not7, label %27, label %28

27:                                               ; preds = %25
  call void @abort() #5
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %25
  %29 = load i32*, i32** @ptr, align 8
  %30 = call i32 @predec_arg_ptr(i32* noundef %29)
  %.not8 = icmp eq i32 %30, 0
  br i1 %.not8, label %31, label %32

31:                                               ; preds = %28
  call void @abort() #5
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %28
  %33 = call i32 @predec_glob_ptr()
  %.not9 = icmp eq i32 %33, 0
  br i1 %.not9, label %34, label %35

34:                                               ; preds = %32
  call void @abort() #5
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %32
  %36 = load i32*, i32** @ptr, align 8
  %37 = call i32 @postdec_arg_ptr(i32* noundef %36)
  %.not10 = icmp eq i32 %37, 0
  br i1 %.not10, label %38, label %39

38:                                               ; preds = %35
  call void @abort() #5
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %35
  %40 = call i32 @postdec_glob_ptr()
  %.not11 = icmp eq i32 %40, 0
  br i1 %.not11, label %41, label %42

41:                                               ; preds = %39
  call void @abort() #5
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %39
  %43 = load i32*, i32** @ptr, align 8
  %44 = call i32 @preinc_arg_idx(i32* noundef %43, i32 noundef 3)
  %.not12 = icmp eq i32 %44, 0
  br i1 %.not12, label %45, label %46

45:                                               ; preds = %42
  call void @abort() #5
  br label %UnifiedUnreachableBlock

46:                                               ; preds = %42
  %47 = call i32 @preinc_glob_idx()
  %.not13 = icmp eq i32 %47, 0
  br i1 %.not13, label %48, label %49

48:                                               ; preds = %46
  call void @abort() #5
  br label %UnifiedUnreachableBlock

49:                                               ; preds = %46
  %50 = load i32*, i32** @ptr, align 8
  %51 = call i32 @postinc_arg_idx(i32* noundef %50, i32 noundef 3)
  %.not14 = icmp eq i32 %51, 0
  br i1 %.not14, label %52, label %53

52:                                               ; preds = %49
  call void @abort() #5
  br label %UnifiedUnreachableBlock

53:                                               ; preds = %49
  %54 = call i32 @postinc_glob_idx()
  %.not15 = icmp eq i32 %54, 0
  br i1 %.not15, label %55, label %56

55:                                               ; preds = %53
  call void @abort() #5
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %53
  %57 = load i32*, i32** @ptr, align 8
  %58 = call i32 @predec_arg_idx(i32* noundef %57, i32 noundef 3)
  %.not16 = icmp eq i32 %58, 0
  br i1 %.not16, label %59, label %60

59:                                               ; preds = %56
  call void @abort() #5
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %56
  %61 = call i32 @predec_glob_idx()
  %.not17 = icmp eq i32 %61, 0
  br i1 %.not17, label %62, label %63

62:                                               ; preds = %60
  call void @abort() #5
  br label %UnifiedUnreachableBlock

63:                                               ; preds = %60
  %64 = load i32*, i32** @ptr, align 8
  %65 = call i32 @postdec_arg_idx(i32* noundef %64, i32 noundef 3)
  %.not18 = icmp eq i32 %65, 0
  br i1 %.not18, label %66, label %67

66:                                               ; preds = %63
  call void @abort() #5
  br label %UnifiedUnreachableBlock

67:                                               ; preds = %63
  %68 = call i32 @postdec_glob_idx()
  %.not19 = icmp eq i32 %68, 0
  br i1 %.not19, label %69, label %70

69:                                               ; preds = %67
  call void @abort() #5
  br label %UnifiedUnreachableBlock

70:                                               ; preds = %67
  %71 = load i32*, i32** @ptr, align 8
  %72 = call i32 @funccall_arg_ptr(i32* noundef %71)
  %.not20 = icmp eq i32 %72, 0
  br i1 %.not20, label %73, label %74

73:                                               ; preds = %70
  call void @abort() #5
  br label %UnifiedUnreachableBlock

74:                                               ; preds = %70
  %75 = load i32*, i32** @ptr, align 8
  %76 = call i32 @funccall_arg_idx(i32* noundef %75, i32 noundef 3)
  %.not21 = icmp eq i32 %76, 0
  br i1 %.not21, label %77, label %78

77:                                               ; preds = %74
  call void @abort() #5
  br label %UnifiedUnreachableBlock

78:                                               ; preds = %74
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %78, %77, %73, %69, %66, %62, %59, %55, %52, %48, %45, %41, %38, %34, %31, %27, %24, %20, %17, %13, %10, %6, %3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblemem_or_argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
