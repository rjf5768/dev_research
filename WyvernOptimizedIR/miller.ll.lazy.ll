; ModuleID = './miller.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/spiff/miller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edt = type { %struct.edt*, i32, i32, i32 }

@Z_err_buf = external dso_local global [0 x i8], align 1
@.str = private unnamed_addr constant [22 x i8] c"found %d differences\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"fell off end of do_miller\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.edt* @G_do_miller(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = add nsw i32 %0, %1
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 3
  %9 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 noundef %8) #3
  %10 = bitcast i32* %9 to %struct.edt**
  %11 = add nsw i32 %5, 1
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  %14 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 noundef %13) #3
  br label %15

15:                                               ; preds = %25, %4
  %.02 = phi i32 [ 0, %4 ], [ %26, %25 ]
  %16 = icmp slt i32 %.02, %0
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = icmp slt i32 %.02, %1
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @X_com to i32 (i32, i32, i32, ...)*)(i32 noundef %.02, i32 noundef %.02, i32 noundef %3) #3
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %19, %17, %15
  %23 = phi i1 [ false, %17 ], [ false, %15 ], [ %21, %19 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24
  %26 = add nuw nsw i32 %.02, 1
  br label %15, !llvm.loop !4

27:                                               ; preds = %22
  %28 = sdiv i32 %5, 2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %14, i64 %29
  store i32 %.02, i32* %30, align 4
  %31 = sdiv i32 %5, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.edt*, %struct.edt** %10, i64 %32
  store %struct.edt* null, %struct.edt** %33, align 8
  %34 = icmp eq i32 %.02, %0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = sdiv i32 %5, 2
  %37 = add nsw i32 %36, 1
  br label %41

38:                                               ; preds = %27
  %39 = sdiv i32 %5, 2
  %40 = add nsw i32 %39, -1
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i32 [ %37, %35 ], [ %40, %38 ]
  %43 = icmp eq i32 %.02, %1
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = sdiv i32 %5, 2
  %46 = add nsw i32 %45, -1
  br label %50

47:                                               ; preds = %41
  %48 = sdiv i32 %5, 2
  %49 = add nsw i32 %48, 1
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i32 [ %46, %44 ], [ %49, %47 ]
  %52 = icmp sgt i32 %42, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %151

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %148, %54
  %.08 = phi i32 [ %42, %54 ], [ %140, %148 ]
  %.05 = phi i32 [ %51, %54 ], [ %141, %148 ]
  %.04 = phi i32 [ 1, %54 ], [ %149, %148 ]
  %.not = icmp sgt i32 %.04, %2
  br i1 %.not, label %150, label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %137, %56
  %.19 = phi i32 [ %.08, %56 ], [ %.210, %137 ]
  %.16 = phi i32 [ %.05, %56 ], [ %.27, %137 ]
  %.03 = phi i32 [ %.08, %56 ], [ %138, %137 ]
  %.not14 = icmp sgt i32 %.03, %.16
  br i1 %.not14, label %139, label %58

58:                                               ; preds = %57
  %59 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 noundef 24) #3
  %60 = sdiv i32 %5, 2
  %61 = sub nsw i32 %60, %.04
  %62 = icmp eq i32 %.03, %61
  br i1 %62, label %75, label %63

63:                                               ; preds = %58
  %64 = sdiv i32 %5, 2
  %65 = add nsw i32 %64, %.04
  %.not15 = icmp eq i32 %.03, %65
  br i1 %.not15, label %87, label %66

66:                                               ; preds = %63
  %67 = add nsw i32 %.03, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %14, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %.03, -1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %14, i64 %72
  %74 = load i32, i32* %73, align 4
  %.not16 = icmp slt i32 %70, %74
  br i1 %.not16, label %87, label %75

75:                                               ; preds = %66, %58
  %76 = add nsw i32 %.03, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %14, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  %81 = add nsw i32 %.03, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.edt*, %struct.edt** %10, i64 %82
  %84 = load %struct.edt*, %struct.edt** %83, align 8
  %85 = bitcast i32* %59 to %struct.edt**
  store %struct.edt* %84, %struct.edt** %85, align 8
  %86 = getelementptr inbounds i32, i32* %59, i64 2
  store i32 2, i32* %86, align 8
  br label %98

87:                                               ; preds = %66, %63
  %88 = add nsw i32 %.03, -1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %14, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %.03, -1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.edt*, %struct.edt** %10, i64 %93
  %95 = load %struct.edt*, %struct.edt** %94, align 8
  %96 = bitcast i32* %59 to %struct.edt**
  store %struct.edt* %95, %struct.edt** %96, align 8
  %97 = getelementptr inbounds i32, i32* %59, i64 2
  store i32 1, i32* %97, align 8
  br label %98

98:                                               ; preds = %87, %75
  %.1 = phi i32 [ %80, %75 ], [ %91, %87 ]
  %99 = getelementptr inbounds i32, i32* %59, i64 3
  store i32 %.1, i32* %99, align 4
  %100 = add nsw i32 %.1, %.03
  %.neg = sdiv i32 %5, -2
  %101 = add i32 %.neg, %100
  %102 = getelementptr inbounds i32, i32* %59, i64 4
  store i32 %101, i32* %102, align 8
  %103 = sext i32 %.03 to i64
  %104 = getelementptr inbounds %struct.edt*, %struct.edt** %10, i64 %103
  %105 = bitcast %struct.edt** %104 to i32**
  store i32* %59, i32** %105, align 8
  br label %106

106:                                              ; preds = %115, %98
  %.2 = phi i32 [ %.1, %98 ], [ %116, %115 ]
  %.01 = phi i32 [ %101, %98 ], [ %117, %115 ]
  %107 = icmp slt i32 %.2, %0
  br i1 %107, label %108, label %113

108:                                              ; preds = %106
  %109 = icmp slt i32 %.01, %1
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @X_com to i32 (i32, i32, i32, ...)*)(i32 noundef %.2, i32 noundef %.01, i32 noundef %3) #3
  %112 = icmp eq i32 %111, 0
  br label %113

113:                                              ; preds = %110, %108, %106
  %114 = phi i1 [ false, %108 ], [ false, %106 ], [ %112, %110 ]
  br i1 %114, label %115, label %118

115:                                              ; preds = %113
  %116 = add nsw i32 %.2, 1
  %117 = add nsw i32 %.01, 1
  br label %106, !llvm.loop !6

118:                                              ; preds = %113
  %119 = sext i32 %.03 to i64
  %120 = getelementptr inbounds i32, i32* %14, i64 %119
  store i32 %.2, i32* %120, align 4
  %121 = icmp eq i32 %.2, %0
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = icmp eq i32 %.01, %1
  br i1 %123, label %124, label %128

124:                                              ; preds = %122
  %125 = sext i32 %.03 to i64
  %126 = getelementptr inbounds %struct.edt*, %struct.edt** %10, i64 %125
  %127 = load %struct.edt*, %struct.edt** %126, align 8
  br label %151

128:                                              ; preds = %122, %118
  %129 = icmp eq i32 %.2, %0
  br i1 %129, label %130, label %132

130:                                              ; preds = %128
  %131 = add nsw i32 %.03, 2
  br label %132

132:                                              ; preds = %130, %128
  %.210 = phi i32 [ %131, %130 ], [ %.19, %128 ]
  %133 = icmp eq i32 %.01, %1
  br i1 %133, label %134, label %136

134:                                              ; preds = %132
  %135 = add nsw i32 %.03, -2
  br label %136

136:                                              ; preds = %134, %132
  %.27 = phi i32 [ %135, %134 ], [ %.16, %132 ]
  br label %137

137:                                              ; preds = %136
  %138 = add nsw i32 %.03, 2
  br label %57, !llvm.loop !7

139:                                              ; preds = %57
  %140 = add nsw i32 %.19, -1
  %141 = add nsw i32 %.16, 1
  br i1 true, label %142, label %147

142:                                              ; preds = %139
  %143 = urem i32 %.04, 100
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %.04) #3
  call void (i8*, ...) bitcast (void (...)* @Z_chatter to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0)) #3
  br label %147

147:                                              ; preds = %145, %142, %139
  br label %148

148:                                              ; preds = %147
  %149 = add nuw nsw i32 %.04, 1
  br label %55, !llvm.loop !8

150:                                              ; preds = %55
  call void (i32, ...) bitcast (void (...)* @Z_exceed to void (i32, ...)*)(i32 noundef %2) #3
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #3
  br label %151

151:                                              ; preds = %150, %124, %53
  %.0 = phi %struct.edt* [ null, %53 ], [ %127, %124 ], [ null, %150 ]
  ret %struct.edt* %.0
}

declare dso_local i32* @_Z_myalloc(...) #1

declare dso_local i32 @X_com(...) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

declare dso_local void @Z_chatter(...) #1

declare dso_local void @Z_exceed(...) #1

declare dso_local void @Z_fatal(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
