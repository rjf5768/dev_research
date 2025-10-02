; ModuleID = './pr69691.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr69691.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [10 x i8], [31 x %struct.S*] }

@u = dso_local global [6 x i8] c".ach4\00", align 1
@v = dso_local global [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @u, i32 0, i32 0), i8* null], align 16
@r = dso_local global [7 x %struct.S] zeroinitializer, align 16
@r2 = dso_local global %struct.S* getelementptr inbounds ([7 x %struct.S], [7 x %struct.S]* @r, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [8 x i8] c"foo %d\0A\00", align 1
@w = internal global %struct.S* null, align 8
@__const.main.c = private unnamed_addr constant [6 x i8] c"aaaaa\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn(i32 noundef returned %0) #0 {
  %2 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @u, i64 0, i64 0), i32 noundef %0) #6
  %.not = icmp eq i8* %2, null
  br i1 %.not, label %3, label %5

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 96
  br i1 %4, label %5, label %6

5:                                                ; preds = %3, %1
  ret i32 %0

6:                                                ; preds = %3
  call void @abort() #7
  unreachable
}

; Function Attrs: nounwind
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i8 noundef signext %0) #0 {
  %2 = icmp eq i8 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  call void @abort() #7
  unreachable

4:                                                ; preds = %1
  %5 = sext i8 %0 to i32
  %6 = call i32 @fn(i32 noundef %5)
  %7 = icmp sgt i8 %0, 95
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = sext i8 %0 to i32
  %10 = call i32 @fn(i32 noundef %9)
  %11 = icmp slt i8 %0, 123
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = sext i8 %0 to i32
  %14 = call i32 @fn(i32 noundef %13)
  %15 = add nsw i32 %13, -96
  br label %22

16:                                               ; preds = %8, %4
  %17 = icmp eq i8 %0, 46
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  br label %22

19:                                               ; preds = %16
  %20 = sext i8 %0 to i32
  %21 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %20) #6
  br label %22

22:                                               ; preds = %19, %18, %12
  %.0 = phi i32 [ %15, %12 ], [ 0, %18 ], [ -1, %19 ]
  ret i32 %.0
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i8** nocapture noundef readonly %0) #0 {
  %2 = alloca [500 x i8], align 16
  %3 = alloca [10 x i8], align 1
  %4 = load %struct.S*, %struct.S** @r2, align 8
  %5 = getelementptr inbounds %struct.S, %struct.S* %4, i64 1
  store %struct.S* %5, %struct.S** @r2, align 8
  store %struct.S* %4, %struct.S** @w, align 8
  br label %6

6:                                                ; preds = %64, %1
  %.01 = phi i8** [ %0, %1 ], [ %65, %64 ]
  %7 = load i8*, i8** %.01, align 8
  %.not = icmp eq i8* %7, null
  br i1 %.not, label %66, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds [500 x i8], [500 x i8]* %2, i64 0, i64 0
  %10 = load i8*, i8** %.01, align 8
  %11 = call i8* @strcpy(i8* noundef nonnull %9, i8* noundef nonnull dereferenceable(1) %10) #6
  %12 = getelementptr inbounds [500 x i8], [500 x i8]* %2, i64 0, i64 0
  br label %13

13:                                               ; preds = %62, %8
  %.05 = phi i8* [ %12, %8 ], [ %.16, %62 ]
  %14 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %.05, i32 noundef 32) #6
  %.not8 = icmp eq i8* %14, null
  br i1 %.not8, label %16, label %15

15:                                               ; preds = %13
  store i8 0, i8* %14, align 1
  br label %16

16:                                               ; preds = %15, %13
  %17 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %.05) #6
  %18 = trunc i64 %17 to i32
  %19 = load %struct.S*, %struct.S** @w, align 8
  %20 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %20, i8 0, i64 10, i1 false)
  br label %21

21:                                               ; preds = %54, %16
  %.04 = phi i32 [ 0, %16 ], [ %55, %54 ]
  %.02 = phi i32 [ 0, %16 ], [ %.13, %54 ]
  %.0 = phi %struct.S* [ %19, %16 ], [ %.1, %54 ]
  %22 = icmp slt i32 %.04, %18
  br i1 %22, label %23, label %56

23:                                               ; preds = %21
  %24 = zext i32 %.04 to i64
  %25 = getelementptr inbounds i8, i8* %.05, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = icmp sgt i8 %26, 47
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = icmp slt i8 %26, 58
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = add i8 %26, -48
  %32 = sext i32 %.02 to i64
  %33 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 %32
  store i8 %31, i8* %33, align 1
  br label %53

34:                                               ; preds = %28, %23
  %35 = call i32 @foo(i8 noundef signext %26)
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.S, %struct.S* %.0, i64 0, i32 1, i64 %36
  %38 = load %struct.S*, %struct.S** %37, align 8
  %.not11 = icmp eq %struct.S* %38, null
  br i1 %.not11, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.S*, %struct.S** @r2, align 8
  %41 = getelementptr inbounds %struct.S, %struct.S* %40, i64 1
  store %struct.S* %41, %struct.S** @r2, align 8
  %42 = sext i32 %35 to i64
  %43 = getelementptr inbounds %struct.S, %struct.S* %.0, i64 0, i32 1, i64 %42
  store %struct.S* %40, %struct.S** %43, align 8
  %44 = load %struct.S*, %struct.S** @r2, align 8
  %45 = icmp eq %struct.S* %44, getelementptr inbounds ([7 x %struct.S], [7 x %struct.S]* @r, i64 1, i64 0)
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  call void @abort() #7
  unreachable

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %34
  %49 = sext i32 %35 to i64
  %50 = getelementptr inbounds %struct.S, %struct.S* %.0, i64 0, i32 1, i64 %49
  %51 = load %struct.S*, %struct.S** %50, align 8
  %52 = add nsw i32 %.02, 1
  br label %53

53:                                               ; preds = %48, %30
  %.13 = phi i32 [ %.02, %30 ], [ %52, %48 ]
  %.1 = phi %struct.S* [ %.0, %30 ], [ %51, %48 ]
  br label %54

54:                                               ; preds = %53
  %55 = add nuw nsw i32 %.04, 1
  br label %21, !llvm.loop !4

56:                                               ; preds = %21
  %57 = getelementptr inbounds %struct.S, %struct.S* %.0, i64 0, i32 0, i64 0
  %58 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(10) %57, i8* noundef nonnull align 1 dereferenceable(10) %58, i64 10, i1 false)
  %.not9 = icmp eq i8* %14, null
  br i1 %.not9, label %61, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, i8* %14, i64 1
  br label %61

61:                                               ; preds = %59, %56
  %.16 = phi i8* [ %60, %59 ], [ %.05, %56 ]
  br label %62

62:                                               ; preds = %61
  %.not10 = icmp eq i8* %14, null
  br i1 %.not10, label %63, label %13, !llvm.loop !6

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds i8*, i8** %.01, i64 1
  br label %6, !llvm.loop !7

66:                                               ; preds = %6
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz(i8* noundef %0) #0 {
  %2 = alloca [300 x i8], align 16
  %3 = alloca [300 x i8], align 16
  %4 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #6
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds [300 x i8], [300 x i8]* %2, i64 0, i64 0
  store i8 96, i8* %6, align 16
  br label %7

7:                                                ; preds = %26, %1
  %.01 = phi i32 [ 0, %1 ], [ %27, %26 ]
  %8 = icmp slt i32 %.01, %5
  br i1 %8, label %9, label %28

9:                                                ; preds = %7
  %10 = zext i32 %.01 to i64
  %11 = getelementptr inbounds i8, i8* %0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = call i32 @fn(i32 noundef %13)
  %15 = add nuw nsw i32 %.01, 1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [300 x i8], [300 x i8]* %2, i64 0, i64 %16
  store i8 %12, i8* %17, align 1
  %18 = add nuw nsw i32 %.01, 1
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [300 x i8], [300 x i8]* %2, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = call i32 @foo(i8 noundef signext %21)
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %9
  br label %95

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %25
  %27 = add nuw nsw i32 %.01, 1
  br label %7, !llvm.loop !8

28:                                               ; preds = %7
  %29 = shl i64 %4, 32
  %sext = add i64 %29, 4294967296
  %30 = ashr exact i64 %sext, 32
  %31 = getelementptr inbounds [300 x i8], [300 x i8]* %2, i64 0, i64 %30
  store i8 96, i8* %31, align 1
  %32 = add nsw i32 %5, 2
  %33 = getelementptr inbounds [300 x i8], [300 x i8]* %3, i64 0, i64 0
  %34 = shl i64 %4, 32
  %sext5 = add i64 %34, 17179869184
  %35 = ashr exact i64 %sext5, 32
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %33, i8 0, i64 %35, i1 false)
  %36 = load %struct.S*, %struct.S** @w, align 8
  %.not = icmp eq %struct.S* %36, null
  br i1 %.not, label %37, label %38

37:                                               ; preds = %28
  br label %95

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %81, %38
  %.1 = phi i32 [ 0, %38 ], [ %82, %81 ]
  %40 = icmp slt i32 %.1, %32
  br i1 %40, label %41, label %83

41:                                               ; preds = %39
  %42 = load %struct.S*, %struct.S** @w, align 8
  br label %43

43:                                               ; preds = %78, %41
  %.02 = phi i32 [ %.1, %41 ], [ %79, %78 ]
  %.0 = phi %struct.S* [ %42, %41 ], [ %52, %78 ]
  %44 = icmp slt i32 %.02, %32
  br i1 %44, label %45, label %.loopexit4

45:                                               ; preds = %43
  %46 = zext i32 %.02 to i64
  %47 = getelementptr inbounds [300 x i8], [300 x i8]* %2, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @foo(i8 noundef signext %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.S, %struct.S* %.0, i64 0, i32 1, i64 %50
  %52 = load %struct.S*, %struct.S** %51, align 8
  %.not7 = icmp eq %struct.S* %52, null
  br i1 %.not7, label %53, label %54

53:                                               ; preds = %45
  br label %80

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %75, %54
  %.03 = phi i32 [ 0, %54 ], [ %76, %75 ]
  %56 = sub nsw i32 %.02, %.1
  %57 = add nsw i32 %56, 2
  %.not8 = icmp sgt i32 %.03, %57
  br i1 %.not8, label %77, label %58

58:                                               ; preds = %55
  %59 = zext i32 %.03 to i64
  %60 = getelementptr inbounds %struct.S, %struct.S* %52, i64 0, i32 0, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = add nuw nsw i32 %.1, %.03
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [300 x i8], [300 x i8]* %3, i64 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = icmp sgt i8 %61, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %58
  %68 = zext i32 %.03 to i64
  %69 = getelementptr inbounds %struct.S, %struct.S* %52, i64 0, i32 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = add nuw nsw i32 %.1, %.03
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [300 x i8], [300 x i8]* %3, i64 0, i64 %72
  store i8 %70, i8* %73, align 1
  br label %74

74:                                               ; preds = %67, %58
  br label %75

75:                                               ; preds = %74
  %76 = add nuw nsw i32 %.03, 1
  br label %55, !llvm.loop !9

77:                                               ; preds = %55
  br label %78

78:                                               ; preds = %77
  %79 = add nuw nsw i32 %.02, 1
  br label %43, !llvm.loop !10

.loopexit4:                                       ; preds = %43
  br label %80

80:                                               ; preds = %.loopexit4, %53
  br label %81

81:                                               ; preds = %80
  %82 = add nuw nsw i32 %.1, 1
  br label %39, !llvm.loop !11

83:                                               ; preds = %39
  br label %84

84:                                               ; preds = %93, %83
  %.2 = phi i32 [ 3, %83 ], [ %94, %93 ]
  %85 = icmp slt i32 %.2, %5
  br i1 %85, label %86, label %.loopexit

86:                                               ; preds = %84
  %87 = zext i32 %.2 to i64
  %88 = getelementptr inbounds [300 x i8], [300 x i8]* %3, i64 0, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = and i8 %89, 1
  %.not6 = icmp eq i8 %90, 0
  br i1 %.not6, label %92, label %91

91:                                               ; preds = %86
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !12
  br label %92

92:                                               ; preds = %91, %86
  br label %93

93:                                               ; preds = %92
  %94 = add nuw nsw i32 %.2, 1
  br label %84, !llvm.loop !13

.loopexit:                                        ; preds = %84
  br label %95

95:                                               ; preds = %.loopexit, %37, %24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [6 x i8], align 1
  call void @bar(i8** noundef getelementptr inbounds ([2 x i8*], [2 x i8*]* @v, i64 0, i64 0))
  %2 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %2, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @__const.main.c, i64 0, i64 0), i64 6, i1 false)
  %3 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i64 0, i64 0
  call void @baz(i8* noundef nonnull %3)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = !{i64 1976}
!13 = distinct !{!13, !5}
