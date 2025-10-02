; ModuleID = './memset-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memset-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { x86_fp80, [80 x i8] }

@A = dso_local global i8 65, align 1
@u = internal global %union.anon zeroinitializer, align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %124, %0
  %.01 = phi i32 [ 0, %0 ], [ %125, %124 ]
  %2 = icmp ult i32 %.01, 8
  br i1 %2, label %3, label %126

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %121, %3
  %.02 = phi i32 [ 1, %3 ], [ %122, %121 ]
  %5 = icmp ult i32 %.02, 80
  br i1 %5, label %6, label %123

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %12, %6
  %.03 = phi i32 [ 0, %6 ], [ %13, %12 ]
  %8 = icmp ult i32 %.03, 96
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = zext i32 %.03 to i64
  %11 = getelementptr inbounds [96 x i8], [96 x i8]* bitcast (%union.anon* @u to [96 x i8]*), i64 0, i64 %10
  store i8 97, i8* %11, align 1
  br label %12

12:                                               ; preds = %9
  %13 = add nuw nsw i32 %.03, 1
  br label %7, !llvm.loop !4

14:                                               ; preds = %7
  %15 = zext i32 %.01 to i64
  %16 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %15
  %17 = zext i32 %.02 to i64
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1) %16, i8 0, i64 %17, i1 false)
  br i1 true, label %19, label %18

18:                                               ; preds = %14
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %26, %19
  %.14 = phi i32 [ 0, %19 ], [ %27, %26 ]
  %.0 = phi i8* [ bitcast (%union.anon* @u to i8*), %19 ], [ %28, %26 ]
  %21 = icmp ult i32 %.14, %.01
  br i1 %21, label %22, label %29

22:                                               ; preds = %20
  %23 = load i8, i8* %.0, align 1
  %.not25 = icmp eq i8 %23, 97
  br i1 %.not25, label %25, label %24

24:                                               ; preds = %22
  call void @abort() #3
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25
  %27 = add nuw nsw i32 %.14, 1
  %28 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %20, !llvm.loop !6

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %36, %29
  %.25 = phi i32 [ 0, %29 ], [ %37, %36 ]
  %.1 = phi i8* [ %.0, %29 ], [ %38, %36 ]
  %31 = icmp ult i32 %.25, %.02
  br i1 %31, label %32, label %39

32:                                               ; preds = %30
  %33 = load i8, i8* %.1, align 1
  %.not24 = icmp eq i8 %33, 0
  br i1 %.not24, label %35, label %34

34:                                               ; preds = %32
  call void @abort() #3
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %35
  %37 = add nuw nsw i32 %.25, 1
  %38 = getelementptr inbounds i8, i8* %.1, i64 1
  br label %30, !llvm.loop !7

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %46, %39
  %.36 = phi i32 [ 0, %39 ], [ %47, %46 ]
  %.2 = phi i8* [ %.1, %39 ], [ %48, %46 ]
  %41 = icmp ult i32 %.36, 8
  br i1 %41, label %42, label %49

42:                                               ; preds = %40
  %43 = load i8, i8* %.2, align 1
  %.not23 = icmp eq i8 %43, 97
  br i1 %.not23, label %45, label %44

44:                                               ; preds = %42
  call void @abort() #3
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45
  %47 = add nuw nsw i32 %.36, 1
  %48 = getelementptr inbounds i8, i8* %.2, i64 1
  br label %40, !llvm.loop !8

49:                                               ; preds = %40
  %50 = zext i32 %.01 to i64
  %51 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %50
  %52 = load i8, i8* @A, align 1
  %53 = zext i32 %.02 to i64
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1) %51, i8 %52, i64 %53, i1 false)
  br i1 true, label %55, label %54

54:                                               ; preds = %49
  br label %UnifiedUnreachableBlock

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %62, %55
  %.47 = phi i32 [ 0, %55 ], [ %63, %62 ]
  %.3 = phi i8* [ bitcast (%union.anon* @u to i8*), %55 ], [ %64, %62 ]
  %57 = icmp ult i32 %.47, %.01
  br i1 %57, label %58, label %65

58:                                               ; preds = %56
  %59 = load i8, i8* %.3, align 1
  %.not22 = icmp eq i8 %59, 97
  br i1 %.not22, label %61, label %60

60:                                               ; preds = %58
  call void @abort() #3
  br label %UnifiedUnreachableBlock

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61
  %63 = add nuw nsw i32 %.47, 1
  %64 = getelementptr inbounds i8, i8* %.3, i64 1
  br label %56, !llvm.loop !9

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %72, %65
  %.58 = phi i32 [ 0, %65 ], [ %73, %72 ]
  %.4 = phi i8* [ %.3, %65 ], [ %74, %72 ]
  %67 = icmp ult i32 %.58, %.02
  br i1 %67, label %68, label %75

68:                                               ; preds = %66
  %69 = load i8, i8* %.4, align 1
  %.not21 = icmp eq i8 %69, 65
  br i1 %.not21, label %71, label %70

70:                                               ; preds = %68
  call void @abort() #3
  br label %UnifiedUnreachableBlock

71:                                               ; preds = %68
  br label %72

72:                                               ; preds = %71
  %73 = add nuw nsw i32 %.58, 1
  %74 = getelementptr inbounds i8, i8* %.4, i64 1
  br label %66, !llvm.loop !10

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %82, %75
  %.69 = phi i32 [ 0, %75 ], [ %83, %82 ]
  %.5 = phi i8* [ %.4, %75 ], [ %84, %82 ]
  %77 = icmp ult i32 %.69, 8
  br i1 %77, label %78, label %85

78:                                               ; preds = %76
  %79 = load i8, i8* %.5, align 1
  %.not20 = icmp eq i8 %79, 97
  br i1 %.not20, label %81, label %80

80:                                               ; preds = %78
  call void @abort() #3
  br label %UnifiedUnreachableBlock

81:                                               ; preds = %78
  br label %82

82:                                               ; preds = %81
  %83 = add nuw nsw i32 %.69, 1
  %84 = getelementptr inbounds i8, i8* %.5, i64 1
  br label %76, !llvm.loop !11

85:                                               ; preds = %76
  %86 = zext i32 %.01 to i64
  %87 = getelementptr inbounds i8, i8* bitcast (%union.anon* @u to i8*), i64 %86
  %88 = zext i32 %.02 to i64
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1) %87, i8 66, i64 %88, i1 false)
  br i1 true, label %90, label %89

89:                                               ; preds = %85
  br label %UnifiedUnreachableBlock

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %97, %90
  %.710 = phi i32 [ 0, %90 ], [ %98, %97 ]
  %.6 = phi i8* [ bitcast (%union.anon* @u to i8*), %90 ], [ %99, %97 ]
  %92 = icmp ult i32 %.710, %.01
  br i1 %92, label %93, label %100

93:                                               ; preds = %91
  %94 = load i8, i8* %.6, align 1
  %.not19 = icmp eq i8 %94, 97
  br i1 %.not19, label %96, label %95

95:                                               ; preds = %93
  call void @abort() #3
  br label %UnifiedUnreachableBlock

96:                                               ; preds = %93
  br label %97

97:                                               ; preds = %96
  %98 = add nuw nsw i32 %.710, 1
  %99 = getelementptr inbounds i8, i8* %.6, i64 1
  br label %91, !llvm.loop !12

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %107, %100
  %.811 = phi i32 [ 0, %100 ], [ %108, %107 ]
  %.7 = phi i8* [ %.6, %100 ], [ %109, %107 ]
  %102 = icmp ult i32 %.811, %.02
  br i1 %102, label %103, label %110

103:                                              ; preds = %101
  %104 = load i8, i8* %.7, align 1
  %.not18 = icmp eq i8 %104, 66
  br i1 %.not18, label %106, label %105

105:                                              ; preds = %103
  call void @abort() #3
  br label %UnifiedUnreachableBlock

106:                                              ; preds = %103
  br label %107

107:                                              ; preds = %106
  %108 = add nuw nsw i32 %.811, 1
  %109 = getelementptr inbounds i8, i8* %.7, i64 1
  br label %101, !llvm.loop !13

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %117, %110
  %.9 = phi i32 [ 0, %110 ], [ %118, %117 ]
  %.8 = phi i8* [ %.7, %110 ], [ %119, %117 ]
  %112 = icmp ult i32 %.9, 8
  br i1 %112, label %113, label %120

113:                                              ; preds = %111
  %114 = load i8, i8* %.8, align 1
  %.not = icmp eq i8 %114, 97
  br i1 %.not, label %116, label %115

115:                                              ; preds = %113
  call void @abort() #3
  br label %UnifiedUnreachableBlock

116:                                              ; preds = %113
  br label %117

117:                                              ; preds = %116
  %118 = add nuw nsw i32 %.9, 1
  %119 = getelementptr inbounds i8, i8* %.8, i64 1
  br label %111, !llvm.loop !14

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120
  %122 = add nuw nsw i32 %.02, 1
  br label %4, !llvm.loop !15

123:                                              ; preds = %4
  br label %124

124:                                              ; preds = %123
  %125 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !16

126:                                              ; preds = %1
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %126, %115, %105, %95, %89, %80, %70, %60, %54, %44, %34, %24, %18
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
