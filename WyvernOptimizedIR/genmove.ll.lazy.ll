; ModuleID = './genmove.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/genmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@umove = external dso_local global i32, align 4
@rd = external dso_local global i32, align 4
@lib = external dso_local global i32, align 4
@mymove = external dso_local global i32, align 4
@p = external dso_local global [19 x [19 x i8]], align 16
@pass = external dso_local global i32, align 4
@.str = private unnamed_addr constant [9 x i8] c"I pass.\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"my move: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%1d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%2d\0A\00", align 1
@str = private unnamed_addr constant [8 x i8] c"I pass.\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @genmove(i32* nocapture noundef %0, i32* nocapture noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 -1, i32* %0, align 4
  store i32 -1, i32* %1, align 4
  %6 = load i32, i32* @umove, align 4
  call void @eval(i32 noundef %6) #3
  %7 = call i32 @findwinner(i32* noundef nonnull %3, i32* noundef nonnull %4, i32* noundef nonnull %5) #3
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %16, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %0, align 4
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %11, %8
  %.01 = phi i32 [ %12, %11 ], [ -1, %8 ]
  br label %16

16:                                               ; preds = %15, %2
  %.12 = phi i32 [ %.01, %15 ], [ -1, %2 ]
  %17 = call i32 @findsaver(i32* noundef nonnull %3, i32* noundef nonnull %4, i32* noundef nonnull %5) #3
  %.not4 = icmp eq i32 %17, 0
  br i1 %.not4, label %26, label %18

18:                                               ; preds = %16
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, %.12
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  store i32 %23, i32* %0, align 4
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %21, %18
  %.2 = phi i32 [ %22, %21 ], [ %.12, %18 ]
  br label %26

26:                                               ; preds = %25, %16
  %.3 = phi i32 [ %.2, %25 ], [ %.12, %16 ]
  %27 = call i32 @findpatn(i32* noundef nonnull %3, i32* noundef nonnull %4, i32* noundef nonnull %5) #3
  %.not5 = icmp eq i32 %27, 0
  br i1 %.not5, label %36, label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %29, %.3
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %3, align 4
  store i32 %33, i32* %0, align 4
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %31, %28
  %.4 = phi i32 [ %32, %31 ], [ %.3, %28 ]
  br label %36

36:                                               ; preds = %35, %26
  %.5 = phi i32 [ %.4, %35 ], [ %.3, %26 ]
  %37 = icmp slt i32 %.5, 0
  br i1 %37, label %38, label %114

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %111, %38
  %.0 = phi i32 [ 0, %38 ], [ %92, %111 ]
  call void @random_nasko(i32* noundef nonnull @rd) #3
  %40 = load i32, i32* @rd, align 4
  %41 = srem i32 %40, 19
  store i32 %41, i32* %0, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %0, align 4
  %45 = icmp sgt i32 %44, 16
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %0, align 4
  %48 = icmp sgt i32 %47, 5
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load i32, i32* %0, align 4
  %51 = icmp slt i32 %50, 13
  br i1 %51, label %52, label %63

52:                                               ; preds = %49, %43, %39
  call void @random_nasko(i32* noundef nonnull @rd) #3
  %53 = load i32, i32* @rd, align 4
  %54 = srem i32 %53, 19
  store i32 %54, i32* %0, align 4
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %0, align 4
  %58 = icmp sgt i32 %57, 16
  br i1 %58, label %59, label %62

59:                                               ; preds = %56, %52
  call void @random_nasko(i32* noundef nonnull @rd) #3
  %60 = load i32, i32* @rd, align 4
  %61 = srem i32 %60, 19
  store i32 %61, i32* %0, align 4
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %49, %46
  call void @random_nasko(i32* noundef nonnull @rd) #3
  %64 = load i32, i32* @rd, align 4
  %65 = srem i32 %64, 19
  store i32 %65, i32* %1, align 4
  %66 = icmp slt i32 %65, 2
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %1, align 4
  %69 = icmp sgt i32 %68, 16
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %1, align 4
  %72 = icmp sgt i32 %71, 5
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = load i32, i32* %1, align 4
  %75 = icmp slt i32 %74, 13
  br i1 %75, label %76, label %87

76:                                               ; preds = %73, %67, %63
  call void @random_nasko(i32* noundef nonnull @rd) #3
  %77 = load i32, i32* @rd, align 4
  %78 = srem i32 %77, 19
  store i32 %78, i32* %1, align 4
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %1, align 4
  %82 = icmp sgt i32 %81, 16
  br i1 %82, label %83, label %86

83:                                               ; preds = %80, %76
  call void @random_nasko(i32* noundef nonnull @rd) #3
  %84 = load i32, i32* @rd, align 4
  %85 = srem i32 %84, 19
  store i32 %85, i32* %1, align 4
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86, %73, %70
  store i32 0, i32* @lib, align 4
  %88 = load i32, i32* %0, align 4
  %89 = load i32, i32* %1, align 4
  %90 = load i32, i32* @mymove, align 4
  call void @countlib(i32 noundef %88, i32 noundef %89, i32 noundef %90) #3
  br label %91

91:                                               ; preds = %87
  %92 = add nuw nsw i32 %.0, 1
  %93 = icmp ult i32 %.0, 399
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = load i32, i32* %0, align 4
  %96 = sext i32 %95 to i64
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %.not6 = icmp eq i8 %100, 0
  br i1 %.not6, label %101, label %109

101:                                              ; preds = %94
  %102 = load i32, i32* @lib, align 4
  %103 = icmp slt i32 %102, 2
  br i1 %103, label %109, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %0, align 4
  %106 = load i32, i32* %1, align 4
  %107 = call i32 @fioe(i32 noundef %105, i32 noundef %106) #3
  %108 = icmp ne i32 %107, 0
  br label %109

109:                                              ; preds = %104, %101, %94
  %110 = phi i1 [ true, %101 ], [ true, %94 ], [ %108, %104 ]
  br label %111

111:                                              ; preds = %109, %91
  %112 = phi i1 [ false, %91 ], [ %110, %109 ]
  br i1 %112, label %39, label %113, !llvm.loop !4

113:                                              ; preds = %111
  %phi.cmp = icmp ugt i32 %.0, 398
  br label %114

114:                                              ; preds = %113, %36
  %.1 = phi i1 [ %phi.cmp, %113 ], [ false, %36 ]
  br i1 %.1, label %115, label %118

115:                                              ; preds = %114
  %116 = load i32, i32* @pass, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* @pass, align 4
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @str, i64 0, i64 0))
  store i32 -1, i32* %0, align 4
  br label %138

118:                                              ; preds = %114
  store i32 0, i32* @pass, align 4
  %119 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #3
  %120 = load i32, i32* %1, align 4
  %121 = icmp slt i32 %120, 8
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* %1, align 4
  %124 = add nsw i32 %123, 65
  br label %128

125:                                              ; preds = %118
  %126 = load i32, i32* %1, align 4
  %127 = add i32 %126, 66
  br label %128

128:                                              ; preds = %125, %122
  %.03 = phi i32 [ %124, %122 ], [ %127, %125 ]
  %sext = shl i32 %.03, 24
  %129 = ashr exact i32 %sext, 24
  %putchar = call i32 @putchar(i32 %129)
  %130 = load i32, i32* %0, align 4
  %131 = sub nsw i32 19, %130
  %132 = icmp sgt i32 %130, 9
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef %131) #3
  br label %137

135:                                              ; preds = %128
  %136 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %131) #3
  br label %137

137:                                              ; preds = %135, %133
  br label %138

138:                                              ; preds = %137, %115
  ret void
}

declare dso_local void @eval(i32 noundef) #1

declare dso_local i32 @findwinner(i32* noundef, i32* noundef, i32* noundef) #1

declare dso_local i32 @findsaver(i32* noundef, i32* noundef, i32* noundef) #1

declare dso_local i32 @findpatn(i32* noundef, i32* noundef, i32* noundef) #1

declare dso_local void @random_nasko(i32* noundef) #1

declare dso_local void @countlib(i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @fioe(i32 noundef, i32 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
