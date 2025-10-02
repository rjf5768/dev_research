; ModuleID = './keyUnion.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/keyUnion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexNode = type { i64, %struct.IndexEntry* }

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/keyUnion.c\00", align 1
@__PRETTY_FUNCTION__.keyUnion = private unnamed_addr constant [50 x i8] c"void keyUnion(IndexKey *, IndexKey *, IndexKey *)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@__PRETTY_FUNCTION__.keysUnion = private unnamed_addr constant [41 x i8] c"void keysUnion(IndexEntry *, IndexKey *)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @keyUnion(%struct.IndexKey* noundef readonly %0, %struct.IndexKey* noundef readonly %1, %struct.IndexKey* noundef writeonly %2) #0 {
  %.not = icmp eq %struct.IndexKey* %0, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %3
  br label %6

5:                                                ; preds = %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.keyUnion, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  %.not1 = icmp eq %struct.IndexKey* %1, null
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %6
  br label %9

8:                                                ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.keyUnion, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  %.not2 = icmp eq %struct.IndexKey* %2, null
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %9
  br label %12

11:                                               ; preds = %9
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.keyUnion, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 0, i32 0
  %14 = load float, float* %13, align 4
  %15 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 0, i32 0
  %16 = load float, float* %15, align 4
  %17 = fcmp olt float %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %20

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %18
  %.pn16 = phi %struct.IndexKey* [ %0, %18 ], [ %1, %19 ]
  %.in = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %.pn16, i64 0, i32 0, i32 0
  %21 = load float, float* %.in, align 4
  %22 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %2, i64 0, i32 0, i32 0
  store float %21, float* %22, align 4
  %23 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 0, i32 1
  %24 = load float, float* %23, align 4
  %25 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 0, i32 1
  %26 = load float, float* %25, align 4
  %27 = fcmp olt float %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %30

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %28
  %.pn15 = phi %struct.IndexKey* [ %0, %28 ], [ %1, %29 ]
  %.in3 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %.pn15, i64 0, i32 0, i32 1
  %31 = load float, float* %.in3, align 4
  %32 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %2, i64 0, i32 0, i32 1
  store float %31, float* %32, align 4
  %33 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 0, i32 2
  %34 = load float, float* %33, align 4
  %35 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 0, i32 2
  %36 = load float, float* %35, align 4
  %37 = fcmp olt float %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %40

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %38
  %.pn14 = phi %struct.IndexKey* [ %0, %38 ], [ %1, %39 ]
  %.in4 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %.pn14, i64 0, i32 0, i32 2
  %41 = load float, float* %.in4, align 4
  %42 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %2, i64 0, i32 0, i32 2
  store float %41, float* %42, align 4
  %43 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 0, i32 3
  %44 = load float, float* %43, align 4
  %45 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 0, i32 3
  %46 = load float, float* %45, align 4
  %47 = fcmp olt float %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %50

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %48
  %.pn13 = phi %struct.IndexKey* [ %0, %48 ], [ %1, %49 ]
  %.in5 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %.pn13, i64 0, i32 0, i32 3
  %51 = load float, float* %.in5, align 4
  %52 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %2, i64 0, i32 0, i32 3
  store float %51, float* %52, align 4
  %53 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 1, i32 0
  %54 = load float, float* %53, align 4
  %55 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 1, i32 0
  %56 = load float, float* %55, align 4
  %57 = fcmp ogt float %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %60

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %58
  %.pn12 = phi %struct.IndexKey* [ %0, %58 ], [ %1, %59 ]
  %.in6 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %.pn12, i64 0, i32 1, i32 0
  %61 = load float, float* %.in6, align 4
  %62 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %2, i64 0, i32 1, i32 0
  store float %61, float* %62, align 4
  %63 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 1, i32 1
  %64 = load float, float* %63, align 4
  %65 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 1, i32 1
  %66 = load float, float* %65, align 4
  %67 = fcmp ogt float %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %70

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %68
  %.pn11 = phi %struct.IndexKey* [ %0, %68 ], [ %1, %69 ]
  %.in7 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %.pn11, i64 0, i32 1, i32 1
  %71 = load float, float* %.in7, align 4
  %72 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %2, i64 0, i32 1, i32 1
  store float %71, float* %72, align 4
  %73 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 1, i32 2
  %74 = load float, float* %73, align 4
  %75 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 1, i32 2
  %76 = load float, float* %75, align 4
  %77 = fcmp ogt float %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %80

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %78
  %.pn10 = phi %struct.IndexKey* [ %0, %78 ], [ %1, %79 ]
  %.in8 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %.pn10, i64 0, i32 1, i32 2
  %81 = load float, float* %.in8, align 4
  %82 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %2, i64 0, i32 1, i32 2
  store float %81, float* %82, align 4
  %83 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 1, i32 3
  %84 = load float, float* %83, align 4
  %85 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 1, i32 3
  %86 = load float, float* %85, align 4
  %87 = fcmp ogt float %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %90

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %88
  %.pn = phi %struct.IndexKey* [ %0, %88 ], [ %1, %89 ]
  %.in9 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %.pn, i64 0, i32 1, i32 3
  %91 = load float, float* %.in9, align 4
  %92 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %2, i64 0, i32 1, i32 3
  store float %91, float* %92, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %11, %8, %5
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @keysUnion(%struct.IndexEntry* noundef readonly %0, %struct.IndexKey* noundef %1) #0 {
  %.not = icmp eq %struct.IndexEntry* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.keysUnion, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  %.not1 = icmp eq %struct.IndexKey* %1, null
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %5
  br label %8

7:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.keysUnion, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %0, i64 0, i32 1
  %10 = bitcast %struct.IndexKey* %1 to i8*
  %11 = bitcast %struct.IndexKey* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(32) %10, i8* noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  br label %12

12:                                               ; preds = %15, %8
  %.pn = phi %struct.IndexEntry* [ %0, %8 ], [ %.0, %15 ]
  %.0.in = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.pn, i64 0, i32 2
  %.0 = load %struct.IndexEntry*, %struct.IndexEntry** %.0.in, align 8
  %.not2 = icmp eq %struct.IndexEntry* %.0, null
  br i1 %.not2, label %16, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.0, i64 0, i32 1
  call void @keyUnion(%struct.IndexKey* noundef nonnull %14, %struct.IndexKey* noundef nonnull %1, %struct.IndexKey* noundef nonnull %1)
  br label %15

15:                                               ; preds = %13
  br label %12, !llvm.loop !4

16:                                               ; preds = %12
  ret void

UnifiedUnreachableBlock:                          ; preds = %7, %4
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
