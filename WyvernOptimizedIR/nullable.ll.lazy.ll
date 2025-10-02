; ModuleID = './nullable.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/nullable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shorts = type { %struct.shorts*, i16 }

@nvars = external dso_local global i32, align 4
@ntokens = external dso_local global i32, align 4
@nullable = dso_local global i8* null, align 8
@nrules = external dso_local global i32, align 4
@nitems = external dso_local global i32, align 4
@ritem = external dso_local global i16*, align 8
@rlhs = external dso_local global i16*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_nullable() #0 {
  %1 = load i32, i32* @nvars, align 4
  %2 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %1) #3
  %3 = load i32, i32* @ntokens, align 4
  %4 = sext i32 %3 to i64
  %5 = sub nsw i64 0, %4
  %6 = getelementptr inbounds i8, i8* %2, i64 %5
  store i8* %6, i8** @nullable, align 8
  %7 = load i32, i32* @nvars, align 4
  %8 = shl i32 %7, 1
  %9 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %8) #3
  %10 = bitcast i8* %9 to i16*
  %11 = load i32, i32* @nrules, align 4
  %12 = shl i32 %11, 1
  %13 = add i32 %12, 2
  %14 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %13) #3
  %15 = bitcast i8* %14 to i16*
  %16 = load i32, i32* @nvars, align 4
  %17 = shl i32 %16, 3
  %18 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %17) #3
  %19 = bitcast i8* %18 to %struct.shorts**
  %20 = load i32, i32* @ntokens, align 4
  %21 = sext i32 %20 to i64
  %22 = sub nsw i64 0, %21
  %23 = getelementptr inbounds %struct.shorts*, %struct.shorts** %19, i64 %22
  %24 = load i32, i32* @nitems, align 4
  %25 = load i32, i32* @nvars, align 4
  %26 = add nsw i32 %24, %25
  %27 = shl i32 %26, 4
  %28 = add i32 %27, 16
  %29 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %28) #3
  %30 = bitcast i8* %29 to %struct.shorts*
  %31 = load i16*, i16** @ritem, align 8
  br label %32

32:                                               ; preds = %86, %0
  %.09 = phi %struct.shorts* [ %30, %0 ], [ %.312, %86 ]
  %.02 = phi i16* [ %10, %0 ], [ %.24, %86 ]
  %.0 = phi i16* [ %31, %0 ], [ %.4, %86 ]
  %33 = load i16, i16* %.0, align 2
  %.not = icmp eq i16 %33, 0
  br i1 %.not, label %87, label %34

34:                                               ; preds = %32
  %35 = load i16, i16* %.0, align 2
  %36 = icmp slt i16 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load i16*, i16** @rlhs, align 8
  %39 = getelementptr inbounds i16, i16* %.0, i64 1
  %40 = load i16, i16* %.0, align 2
  %41 = sext i16 %40 to i64
  %42 = sub nsw i64 0, %41
  %43 = getelementptr inbounds i16, i16* %38, i64 %42
  %44 = load i16, i16* %43, align 2
  %45 = load i8*, i8** @nullable, align 8
  %46 = sext i16 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i8, i8* %47, align 1
  %.not23 = icmp eq i8 %48, 0
  br i1 %.not23, label %49, label %54

49:                                               ; preds = %37
  %50 = load i8*, i8** @nullable, align 8
  %51 = sext i16 %44 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 1, i8* %52, align 1
  %53 = getelementptr inbounds i16, i16* %.02, i64 1
  store i16 %44, i16* %.02, align 2
  br label %54

54:                                               ; preds = %49, %37
  %.13 = phi i16* [ %.02, %37 ], [ %53, %49 ]
  br label %86

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %63, %55
  %.014 = phi i8 [ 0, %55 ], [ %.115, %63 ]
  %.07.in.in = phi i16* [ %.0, %55 ], [ %.1, %63 ]
  %.1 = getelementptr inbounds i16, i16* %.07.in.in, i64 1
  %.07.in = load i16, i16* %.07.in.in, align 2
  %.07 = sext i16 %.07.in to i32
  %57 = icmp sgt i16 %.07.in, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %56
  %59 = load i32, i32* @ntokens, align 4
  %60 = icmp sgt i32 %59, %.07
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61, %58
  %.115 = phi i8 [ 1, %61 ], [ %.014, %58 ]
  br label %63

63:                                               ; preds = %62
  br label %56, !llvm.loop !4

64:                                               ; preds = %56
  %.not22 = icmp eq i8 %.014, 0
  br i1 %.not22, label %65, label %85

65:                                               ; preds = %64
  %66 = sub nsw i32 0, %.07
  br label %67

67:                                               ; preds = %82, %65
  %.110 = phi %struct.shorts* [ %.09, %65 ], [ %83, %82 ]
  %.18.in.in = phi i16* [ %.0, %65 ], [ %.2, %82 ]
  %.2 = getelementptr inbounds i16, i16* %.18.in.in, i64 1
  %.18.in = load i16, i16* %.18.in.in, align 2
  %68 = icmp sgt i16 %.18.in, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %67
  %70 = sext i32 %66 to i64
  %71 = getelementptr inbounds i16, i16* %15, i64 %70
  %72 = load i16, i16* %71, align 2
  %73 = add i16 %72, 1
  store i16 %73, i16* %71, align 2
  %74 = sext i16 %.18.in to i64
  %75 = getelementptr inbounds %struct.shorts*, %struct.shorts** %23, i64 %74
  %76 = load %struct.shorts*, %struct.shorts** %75, align 8
  %77 = getelementptr inbounds %struct.shorts, %struct.shorts* %.110, i64 0, i32 0
  store %struct.shorts* %76, %struct.shorts** %77, align 8
  %78 = trunc i32 %66 to i16
  %79 = getelementptr inbounds %struct.shorts, %struct.shorts* %.110, i64 0, i32 1
  store i16 %78, i16* %79, align 8
  %80 = sext i16 %.18.in to i64
  %81 = getelementptr inbounds %struct.shorts*, %struct.shorts** %23, i64 %80
  store %struct.shorts* %.110, %struct.shorts** %81, align 8
  br label %82

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct.shorts, %struct.shorts* %.110, i64 1
  br label %67, !llvm.loop !6

84:                                               ; preds = %67
  br label %85

85:                                               ; preds = %84, %64
  %.211 = phi %struct.shorts* [ %.09, %64 ], [ %.110, %84 ]
  %.3 = phi i16* [ %.1, %64 ], [ %.2, %84 ]
  br label %86

86:                                               ; preds = %85, %54
  %.312 = phi %struct.shorts* [ %.09, %54 ], [ %.211, %85 ]
  %.24 = phi i16* [ %.13, %54 ], [ %.02, %85 ]
  %.4 = phi i16* [ %39, %54 ], [ %.3, %85 ]
  br label %32, !llvm.loop !7

87:                                               ; preds = %32
  br label %88

88:                                               ; preds = %123, %87
  %.35 = phi i16* [ %.02, %87 ], [ %.46, %123 ]
  %.01 = phi i16* [ %10, %87 ], [ %91, %123 ]
  %89 = icmp ult i16* %.01, %.35
  br i1 %89, label %90, label %124

90:                                               ; preds = %88
  %91 = getelementptr inbounds i16, i16* %.01, i64 1
  %92 = load i16, i16* %.01, align 2
  %93 = sext i16 %92 to i64
  %94 = getelementptr inbounds %struct.shorts*, %struct.shorts** %23, i64 %93
  %95 = load %struct.shorts*, %struct.shorts** %94, align 8
  br label %96

96:                                               ; preds = %122, %90
  %.413 = phi %struct.shorts* [ %95, %90 ], [ %101, %122 ]
  %.46 = phi i16* [ %.35, %90 ], [ %.6, %122 ]
  %.not20 = icmp eq %struct.shorts* %.413, null
  br i1 %.not20, label %123, label %97

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct.shorts, %struct.shorts* %.413, i64 0, i32 1
  %99 = load i16, i16* %98, align 8
  %100 = getelementptr inbounds %struct.shorts, %struct.shorts* %.413, i64 0, i32 0
  %101 = load %struct.shorts*, %struct.shorts** %100, align 8
  %102 = sext i16 %99 to i64
  %103 = getelementptr inbounds i16, i16* %15, i64 %102
  %104 = load i16, i16* %103, align 2
  %105 = add i16 %104, -1
  store i16 %105, i16* %103, align 2
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %97
  %108 = load i16*, i16** @rlhs, align 8
  %109 = sext i16 %99 to i64
  %110 = getelementptr inbounds i16, i16* %108, i64 %109
  %111 = load i16, i16* %110, align 2
  %112 = load i8*, i8** @nullable, align 8
  %113 = sext i16 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i8, i8* %114, align 1
  %.not21 = icmp eq i8 %115, 0
  br i1 %.not21, label %116, label %121

116:                                              ; preds = %107
  %117 = load i8*, i8** @nullable, align 8
  %118 = sext i16 %111 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8 1, i8* %119, align 1
  %120 = getelementptr inbounds i16, i16* %.46, i64 1
  store i16 %111, i16* %.46, align 2
  br label %121

121:                                              ; preds = %116, %107
  %.5 = phi i16* [ %.46, %107 ], [ %120, %116 ]
  br label %122

122:                                              ; preds = %121, %97
  %.6 = phi i16* [ %.5, %121 ], [ %.46, %97 ]
  br label %96, !llvm.loop !8

123:                                              ; preds = %96
  br label %88, !llvm.loop !9

124:                                              ; preds = %88
  %.not16 = icmp eq i8* %9, null
  br i1 %.not16, label %126, label %125

125:                                              ; preds = %124
  call void @free(i8* noundef %9) #3
  br label %126

126:                                              ; preds = %125, %124
  %.not17 = icmp eq i8* %14, null
  br i1 %.not17, label %128, label %127

127:                                              ; preds = %126
  call void @free(i8* noundef %14) #3
  br label %128

128:                                              ; preds = %127, %126
  %.not18 = icmp eq i8* %18, null
  br i1 %.not18, label %134, label %129

129:                                              ; preds = %128
  %130 = load i32, i32* @ntokens, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.shorts*, %struct.shorts** %23, i64 %131
  %133 = bitcast %struct.shorts** %132 to i8*
  call void @free(i8* noundef %133) #3
  br label %134

134:                                              ; preds = %129, %128
  %.not19 = icmp eq i8* %29, null
  br i1 %.not19, label %136, label %135

135:                                              ; preds = %134
  call void @free(i8* noundef %29) #3
  br label %136

136:                                              ; preds = %135, %134
  ret void
}

declare dso_local i8* @mallocate(...) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_nullable() #0 {
  %1 = load i8*, i8** @nullable, align 8
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %7, label %2

2:                                                ; preds = %0
  %3 = load i8*, i8** @nullable, align 8
  %4 = load i32, i32* @ntokens, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, i8* %3, i64 %5
  call void @free(i8* noundef %6) #3
  br label %7

7:                                                ; preds = %2, %0
  ret void
}

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
!9 = distinct !{!9, !5}
