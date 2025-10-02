; ModuleID = './tc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colstr = type { i8*, i8* }

@F2 = external dso_local global i32, align 4
@F1 = external dso_local global i32, align 4
@nlin = external dso_local global i32, align 4
@instead = external dso_local global [0 x i8*], align 8
@fullbot = external dso_local global [0 x i32], align 4
@ncol = external dso_local global i32, align 4
@table = external dso_local global [0 x %struct.colstr*], align 8
@.str = private unnamed_addr constant [71 x i8] c"\02\03\05\06\07!%&#/?,:;<=>@`^~_{}+-*ABCDEFGHIJKMNOPQRSTUVWXYZabcdefgjkoqrstwxyz\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"\02\03\05\06\07:_~^`@;,<=>#%&!/?{}+-*ABCDEFGHIJKMNOPQRSTUVWXZabcdefgjkoqrstuwxyz\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"couldn't find characters to use for delimiters\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @choochar() #0 {
  %1 = alloca [128 x i32], align 16
  br label %2

2:                                                ; preds = %7, %0
  %.01 = phi i32 [ 0, %0 ], [ %8, %7 ]
  %3 = icmp ult i32 %.01, 128
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = zext i32 %.01 to i64
  %6 = getelementptr inbounds [128 x i32], [128 x i32]* %1, i64 0, i64 %5
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %4
  %8 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !4

9:                                                ; preds = %2
  store i32 0, i32* @F2, align 4
  store i32 0, i32* @F1, align 4
  br label %10

10:                                               ; preds = %77, %9
  %.0 = phi i32 [ 0, %9 ], [ %78, %77 ]
  %11 = load i32, i32* @nlin, align 4
  %12 = icmp slt i32 %.0, %11
  br i1 %12, label %13, label %79

13:                                               ; preds = %10
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %14
  %16 = load i8*, i8** %15, align 8
  %.not8 = icmp eq i8* %16, null
  br i1 %.not8, label %18, label %17

17:                                               ; preds = %13
  br label %77

18:                                               ; preds = %13
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %.not9 = icmp eq i32 %21, 0
  br i1 %.not9, label %23, label %22

22:                                               ; preds = %18
  br label %77

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %74, %23
  %.1 = phi i32 [ 0, %23 ], [ %75, %74 ]
  %25 = load i32, i32* @ncol, align 4
  %26 = icmp slt i32 %.1, %25
  br i1 %26, label %27, label %76

27:                                               ; preds = %24
  %28 = call i32 @ctype(i32 noundef %.0, i32 noundef %.1) #3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = icmp eq i32 %28, 45
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = icmp eq i32 %28, 61
  br i1 %33, label %34, label %35

34:                                               ; preds = %32, %30, %27
  br label %74

35:                                               ; preds = %32
  %36 = zext i32 %.0 to i64
  %37 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %36
  %38 = load %struct.colstr*, %struct.colstr** %37, align 8
  %39 = zext i32 %.1 to i64
  %40 = getelementptr inbounds %struct.colstr, %struct.colstr* %38, i64 %39, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = trunc i64 %42 to i32
  %44 = call i32 @point(i32 noundef %43)
  %.not10 = icmp eq i32 %44, 0
  br i1 %.not10, label %54, label %45

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %48, %45
  %.02 = phi i8* [ %41, %45 ], [ %49, %48 ]
  %47 = load i8, i8* %.02, align 1
  %.not13 = icmp eq i8 %47, 0
  br i1 %.not13, label %53, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds i8, i8* %.02, i64 1
  %50 = load i8, i8* %.02, align 1
  %51 = sext i8 %50 to i64
  %52 = getelementptr inbounds [128 x i32], [128 x i32]* %1, i64 0, i64 %51
  store i32 1, i32* %52, align 4
  br label %46, !llvm.loop !6

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %35
  %55 = zext i32 %.0 to i64
  %56 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %55
  %57 = load %struct.colstr*, %struct.colstr** %56, align 8
  %58 = zext i32 %.1 to i64
  %59 = getelementptr inbounds %struct.colstr, %struct.colstr* %57, i64 %58, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = ptrtoint i8* %60 to i64
  %62 = trunc i64 %61 to i32
  %63 = call i32 @point(i32 noundef %62)
  %.not11 = icmp eq i32 %63, 0
  br i1 %.not11, label %73, label %64

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %67, %64
  %.13 = phi i8* [ %60, %64 ], [ %68, %67 ]
  %66 = load i8, i8* %.13, align 1
  %.not12 = icmp eq i8 %66, 0
  br i1 %.not12, label %72, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds i8, i8* %.13, i64 1
  %69 = load i8, i8* %.13, align 1
  %70 = sext i8 %69 to i64
  %71 = getelementptr inbounds [128 x i32], [128 x i32]* %1, i64 0, i64 %70
  store i32 1, i32* %71, align 4
  br label %65, !llvm.loop !7

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %54
  br label %74

74:                                               ; preds = %73, %34
  %75 = add nuw nsw i32 %.1, 1
  br label %24, !llvm.loop !8

76:                                               ; preds = %24
  br label %77

77:                                               ; preds = %76, %22, %17
  %78 = add nuw nsw i32 %.0, 1
  br label %10, !llvm.loop !9

79:                                               ; preds = %10
  br label %80

80:                                               ; preds = %94, %79
  %.2 = phi i8* [ getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), %79 ], [ %95, %94 ]
  %81 = load i8, i8* %.2, align 1
  %.not = icmp eq i8 %81, 0
  br i1 %.not, label %.loopexit4, label %82

82:                                               ; preds = %80
  %83 = load i8, i8* %.2, align 1
  %84 = sext i8 %83 to i64
  %85 = getelementptr inbounds [128 x i32], [128 x i32]* %1, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load i8, i8* %.2, align 1
  %90 = sext i8 %89 to i32
  store i32 %90, i32* @F1, align 4
  %91 = sext i8 %89 to i64
  %92 = getelementptr inbounds [128 x i32], [128 x i32]* %1, i64 0, i64 %91
  store i32 1, i32* %92, align 4
  br label %96

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93
  %95 = getelementptr inbounds i8, i8* %.2, i64 1
  br label %80, !llvm.loop !10

.loopexit4:                                       ; preds = %80
  br label %96

96:                                               ; preds = %.loopexit4, %88
  br label %97

97:                                               ; preds = %109, %96
  %.3 = phi i8* [ getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), %96 ], [ %110, %109 ]
  %98 = load i8, i8* %.3, align 1
  %.not7 = icmp eq i8 %98, 0
  br i1 %.not7, label %.loopexit, label %99

99:                                               ; preds = %97
  %100 = load i8, i8* %.3, align 1
  %101 = sext i8 %100 to i64
  %102 = getelementptr inbounds [128 x i32], [128 x i32]* %1, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i8, i8* %.3, align 1
  %107 = sext i8 %106 to i32
  store i32 %107, i32* @F2, align 4
  br label %111

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108
  %110 = getelementptr inbounds i8, i8* %.3, i64 1
  br label %97, !llvm.loop !11

.loopexit:                                        ; preds = %97
  br label %111

111:                                              ; preds = %.loopexit, %105
  %112 = load i32, i32* @F1, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* @F2, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114, %111
  call void @error(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0)) #3
  br label %118

118:                                              ; preds = %117, %114
  ret void
}

declare dso_local i32 @ctype(i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @point(i32 noundef %0) #2 {
  %2 = icmp sgt i32 %0, 127
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  %.lobit = lshr i32 %0, 31
  br label %4

4:                                                ; preds = %3, %1
  %5 = phi i32 [ 1, %1 ], [ %.lobit, %3 ]
  ret i32 %5
}

declare dso_local void @error(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
