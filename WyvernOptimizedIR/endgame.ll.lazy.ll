; ModuleID = './endgame.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/endgame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"\0ATo count score, we need the following steps:\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"First, I need you to remove all dead pieces on the board.\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Second, I need you to fill in neutral territories with \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pieces.\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Last, I will fill in all pieces and anounce the winner.\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"\0AFirst, you should enter the dead pieces (blank and white) to\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c" be removed.  Enter\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c" 'stop' when you have finished.\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Dead piece? \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@p = external dso_local global [19 x [19 x i8]], align 16
@mymove = external dso_local global i32, align 4
@mk = external dso_local global i32, align 4
@umove = external dso_local global i32, align 4
@uk = external dso_local global i32, align 4
@.str.11 = private unnamed_addr constant [66 x i8] c"Next, you need to fill in pieces (black and white) in all neutral\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c" territories.\0A\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"Enter your and my pieces alternately and enter 'stop' when finish\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Your piece? \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"My piece? \00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Your total number of pieces %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"My total number of pieces %d\0A\00", align 1
@str = private unnamed_addr constant [46 x i8] c"\0ATo count score, we need the following steps:\00", align 1
@str.1 = private unnamed_addr constant [58 x i8] c"First, I need you to remove all dead pieces on the board.\00", align 1
@str.2 = private unnamed_addr constant [8 x i8] c"pieces.\00", align 1
@str.3 = private unnamed_addr constant [56 x i8] c"Last, I will fill in all pieces and anounce the winner.\00", align 1
@str.4 = private unnamed_addr constant [20 x i8] c" be removed.  Enter\00", align 1
@str.5 = private unnamed_addr constant [32 x i8] c" 'stop' when you have finished.\00", align 1
@str.6 = private unnamed_addr constant [14 x i8] c" territories.\00", align 1
@str.7 = private unnamed_addr constant [66 x i8] c"Enter your and my pieces alternately and enter 'stop' when finish\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @endgame() #0 {
  %1 = alloca [10 x i8], align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @str, i64 0, i64 0))
  %puts8 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([58 x i8], [58 x i8]* @str.1, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0)) #5
  %puts9 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @str.2, i64 0, i64 0))
  %puts10 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @str.3, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0)) #5
  %puts11 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @str.4, i64 0, i64 0))
  %puts12 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @str.5, i64 0, i64 0))
  br label %6

6:                                                ; preds = %53, %0
  %.04 = phi i32 [ 1, %0 ], [ %.15, %53 ]
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0)) #5
  %8 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %9 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %8) #5
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %10, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 5)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %51, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %13 = call i32 @getij(i8* noundef nonnull %12, i32* noundef nonnull %2, i32* noundef nonnull %3) #5
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i32, i32* @mymove, align 4
  %22 = icmp eq i32 %21, %20
  br i1 %22, label %23, label %31

23:                                               ; preds = %11
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %25, i64 %27
  store i8 0, i8* %28, align 1
  %29 = load i32, i32* @mk, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @mk, align 4
  br label %50

31:                                               ; preds = %11
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = load i32, i32* @umove, align 4
  %40 = icmp eq i32 %39, %38
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %43, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load i32, i32* @uk, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @uk, align 4
  br label %49

49:                                               ; preds = %41, %31
  br label %50

50:                                               ; preds = %49, %23
  call void @showboard() #5
  br label %52

51:                                               ; preds = %6
  br label %52

52:                                               ; preds = %51, %50
  %.15 = phi i32 [ %.04, %50 ], [ 0, %51 ]
  br label %53

53:                                               ; preds = %52
  %.not13 = icmp eq i32 %.15, 0
  br i1 %.not13, label %54, label %6, !llvm.loop !4

54:                                               ; preds = %53
  %55 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0)) #5
  %puts14 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str.6, i64 0, i64 0))
  %puts15 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([66 x i8], [66 x i8]* @str.7, i64 0, i64 0))
  br label %56

56:                                               ; preds = %85, %54
  %.26 = phi i32 [ 1, %54 ], [ %.37, %85 ]
  %57 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0)) #5
  %58 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %59 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %58) #5
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %bcmp16 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %60, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 5)
  %.not17 = icmp eq i32 %bcmp16, 0
  br i1 %.not17, label %83, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %63 = call i32 @getij(i8* noundef nonnull %62, i32* noundef nonnull %2, i32* noundef nonnull %3) #5
  %64 = load i32, i32* @umove, align 4
  %65 = trunc i32 %64 to i8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %67, i64 %69
  store i8 %65, i8* %70, align 1
  %71 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0)) #5
  %72 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %73 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %72) #5
  %74 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %75 = call i32 @getij(i8* noundef nonnull %74, i32* noundef nonnull %2, i32* noundef nonnull %3) #5
  %76 = load i32, i32* @mymove, align 4
  %77 = trunc i32 %76 to i8
  %78 = load i32, i32* %2, align 4
  %79 = sext i32 %78 to i64
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %79, i64 %81
  store i8 %77, i8* %82, align 1
  call void @showboard() #5
  br label %84

83:                                               ; preds = %56
  br label %84

84:                                               ; preds = %83, %61
  %.37 = phi i32 [ %.26, %61 ], [ 0, %83 ]
  br label %85

85:                                               ; preds = %84
  %.not18 = icmp eq i32 %.37, 0
  br i1 %.not18, label %86, label %56, !llvm.loop !6

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %115, %86
  %storemerge = phi i32 [ 0, %86 ], [ %117, %115 ]
  store i32 %storemerge, i32* %2, align 4
  %88 = icmp slt i32 %storemerge, 19
  br i1 %88, label %89, label %118

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %111, %89
  %storemerge21 = phi i32 [ 0, %89 ], [ %113, %111 ]
  store i32 %storemerge21, i32* %3, align 4
  %91 = icmp slt i32 %storemerge21, 19
  br i1 %91, label %92, label %114

92:                                               ; preds = %90
  %93 = load i32, i32* %2, align 4
  %94 = sext i32 %93 to i64
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %92
  %101 = load i32, i32* %2, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @findcolor(i32 noundef %101, i32 noundef %102) #5
  %104 = trunc i32 %103 to i8
  %105 = load i32, i32* %2, align 4
  %106 = sext i32 %105 to i64
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %106, i64 %108
  store i8 %104, i8* %109, align 1
  br label %110

110:                                              ; preds = %100, %92
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, 1
  br label %90, !llvm.loop !7

114:                                              ; preds = %90
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %2, align 4
  %117 = add nsw i32 %116, 1
  br label %87, !llvm.loop !8

118:                                              ; preds = %87
  br label %119

119:                                              ; preds = %154, %118
  %storemerge19 = phi i32 [ 0, %118 ], [ %156, %154 ]
  %.01 = phi i32 [ 0, %118 ], [ %.12, %154 ]
  %.0 = phi i32 [ 0, %118 ], [ %.1, %154 ]
  store i32 %storemerge19, i32* %2, align 4
  %120 = icmp slt i32 %storemerge19, 19
  br i1 %120, label %121, label %157

121:                                              ; preds = %119
  br label %122

122:                                              ; preds = %150, %121
  %storemerge20 = phi i32 [ 0, %121 ], [ %152, %150 ]
  %.12 = phi i32 [ %.01, %121 ], [ %.3, %150 ]
  %.1 = phi i32 [ %.0, %121 ], [ %.2, %150 ]
  store i32 %storemerge20, i32* %3, align 4
  %123 = icmp slt i32 %storemerge20, 19
  br i1 %123, label %124, label %153

124:                                              ; preds = %122
  %125 = load i32, i32* %2, align 4
  %126 = sext i32 %125 to i64
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %126, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = load i32, i32* @mymove, align 4
  %133 = icmp eq i32 %132, %131
  br i1 %133, label %134, label %136

134:                                              ; preds = %124
  %135 = add nsw i32 %.1, 1
  br label %149

136:                                              ; preds = %124
  %137 = load i32, i32* %2, align 4
  %138 = sext i32 %137 to i64
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %138, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = load i32, i32* @umove, align 4
  %145 = icmp eq i32 %144, %143
  br i1 %145, label %146, label %148

146:                                              ; preds = %136
  %147 = add nsw i32 %.12, 1
  br label %148

148:                                              ; preds = %146, %136
  %.23 = phi i32 [ %147, %146 ], [ %.12, %136 ]
  br label %149

149:                                              ; preds = %148, %134
  %.3 = phi i32 [ %.12, %134 ], [ %.23, %148 ]
  %.2 = phi i32 [ %135, %134 ], [ %.1, %148 ]
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %3, align 4
  %152 = add nsw i32 %151, 1
  br label %122, !llvm.loop !9

153:                                              ; preds = %122
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %2, align 4
  %156 = add nsw i32 %155, 1
  br label %119, !llvm.loop !10

157:                                              ; preds = %119
  call void @showboard() #5
  %158 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 noundef %.01) #5
  %159 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 noundef %.0) #5
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @__isoc99_scanf(i8* noundef, ...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local i32 @getij(i8* noundef, i32* noundef, i32* noundef) #1

declare dso_local void @showboard() #1

declare dso_local i32 @findcolor(i32 noundef, i32 noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }

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
