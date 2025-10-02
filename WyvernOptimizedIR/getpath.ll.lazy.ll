; ModuleID = './getpath.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/getpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@getpath.pathlength = internal global i64 0, align 8
@getpath.file = internal global %struct._IO_FILE* null, align 8
@debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [27 x i8] c"getpath: looking for '%s'\0A\00", align 1
@pathfile = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"can't access %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\09\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getpath(i8* noundef %0, i8* noundef %1, i32* nocapture noundef writeonly %2) #0 {
  %4 = load i32, i32* @debug, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* noundef %0) #6
  br label %8

8:                                                ; preds = %6, %3
  %9 = load i64, i64* @getpath.pathlength, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load i8*, i8** @pathfile, align 8
  %13 = call noalias %struct._IO_FILE* @fopen(i8* noundef %12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  store %struct._IO_FILE* %13, %struct._IO_FILE** @getpath.file, align 8
  %14 = icmp eq %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i8*, i8** @pathfile, align 8
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* noundef %16) #6
  br label %23

18:                                               ; preds = %11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %20 = call i32 @fseek(%struct._IO_FILE* noundef %19, i64 noundef 0, i32 noundef 2) #6
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %22 = call i64 @ftell(%struct._IO_FILE* noundef %21) #6
  br label %23

23:                                               ; preds = %18, %15
  %storemerge = phi i64 [ %22, %18 ], [ -1, %15 ]
  store i64 %storemerge, i64* @getpath.pathlength, align 8
  br label %24

24:                                               ; preds = %23, %8
  %25 = load i64, i64* @getpath.pathlength, align 8
  %26 = icmp eq i64 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %144

28:                                               ; preds = %24
  %29 = load i64, i64* @getpath.pathlength, align 8
  %30 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(1) %0) #6
  %strlen = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)
  %endptr = getelementptr i8, i8* %1, i64 %strlen
  %31 = bitcast i8* %endptr to i16*
  store i16 9, i16* %31, align 1
  br label %32

32:                                               ; preds = %103, %28
  %.09 = phi i64 [ 0, %28 ], [ %.110, %103 ]
  %.07 = phi i64 [ %29, %28 ], [ %.18, %103 ]
  %.04 = phi i32 [ undef, %28 ], [ %.2, %103 ]
  %33 = add nsw i64 %.07, %.09
  %34 = add nsw i64 %33, 1
  %35 = sdiv i64 %34, 2
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %37 = call i32 @fseek(%struct._IO_FILE* noundef %36, i64 noundef %35, i32 noundef 0) #6
  %.off = add i64 %33, 2
  %38 = icmp ult i64 %.off, 3
  br i1 %38, label %49, label %39

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %47, %39
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %42 = call i32 @getc(%struct._IO_FILE* noundef %41) #6
  %.not23 = icmp eq i32 %42, -1
  br i1 %.not23, label %45, label %43

43:                                               ; preds = %40
  %44 = icmp ne i32 %42, 10
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi i1 [ false, %40 ], [ %44, %43 ]
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  br label %40, !llvm.loop !4

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %48, %32
  %.15 = phi i32 [ %42, %48 ], [ %.04, %32 ]
  %50 = icmp eq i32 %.15, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  br label %144

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %92, %52
  %.06 = phi i8* [ %1, %52 ], [ %94, %92 ]
  %.2 = phi i32 [ %.15, %52 ], [ %61, %92 ]
  %.03 = phi i32 [ 0, %52 ], [ %93, %92 ]
  %54 = icmp eq i32 %.03, 0
  br i1 %54, label %55, label %95

55:                                               ; preds = %53
  %56 = load i8, i8* %.06, align 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %104

59:                                               ; preds = %55
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %61 = call i32 @getc(%struct._IO_FILE* noundef %60) #6
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %144

64:                                               ; preds = %59
  %65 = call i16** @__ctype_b_loc() #7
  %66 = load i16*, i16** %65, align 8
  %67 = sext i32 %61 to i64
  %68 = getelementptr inbounds i16, i16* %66, i64 %67
  %69 = load i16, i16* %68, align 2
  %70 = and i16 %69, 256
  %.not17 = icmp eq i16 %70, 0
  br i1 %.not17, label %73, label %71

71:                                               ; preds = %64
  %72 = add nsw i32 %61, 32
  br label %74

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ %61, %73 ]
  %76 = call i16** @__ctype_b_loc() #7
  %77 = load i16*, i16** %76, align 8
  %78 = load i8, i8* %.06, align 1
  %79 = sext i8 %78 to i64
  %80 = getelementptr inbounds i16, i16* %77, i64 %79
  %81 = load i16, i16* %80, align 2
  %82 = and i16 %81, 256
  %.not18 = icmp eq i16 %82, 0
  br i1 %.not18, label %87, label %83

83:                                               ; preds = %74
  %84 = load i8, i8* %.06, align 1
  %85 = sext i8 %84 to i32
  %86 = add nsw i32 %85, 32
  br label %90

87:                                               ; preds = %74
  %88 = load i8, i8* %.06, align 1
  %89 = sext i8 %88 to i32
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi i32 [ %86, %83 ], [ %89, %87 ]
  br label %92

92:                                               ; preds = %90
  %93 = sub nsw i32 %75, %91
  %94 = getelementptr inbounds i8, i8* %.06, i64 1
  br label %53, !llvm.loop !6

95:                                               ; preds = %53
  %.not = icmp slt i64 %.09, %35
  br i1 %.not, label %97, label %96

96:                                               ; preds = %95
  br label %144

97:                                               ; preds = %95
  %.not16 = icmp eq i32 %.2, -1
  br i1 %.not16, label %101, label %98

98:                                               ; preds = %97
  %99 = icmp slt i32 %.03, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %98
  br label %103

101:                                              ; preds = %98, %97
  %102 = add nsw i64 %35, -1
  br label %103

103:                                              ; preds = %101, %100
  %.110 = phi i64 [ %35, %100 ], [ %.09, %101 ]
  %.18 = phi i64 [ %.07, %100 ], [ %102, %101 ]
  br label %32

104:                                              ; preds = %58
  br label %105

105:                                              ; preds = %113, %104
  %.02 = phi i8* [ %1, %104 ], [ %115, %113 ]
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %107 = call i32 @getc(%struct._IO_FILE* noundef %106) #6
  %.not20 = icmp eq i32 %107, -1
  br i1 %.not20, label %111, label %108

108:                                              ; preds = %105
  %.not22 = icmp eq i32 %107, 9
  br i1 %.not22, label %111, label %109

109:                                              ; preds = %108
  %110 = icmp ne i32 %107, 10
  br label %111

111:                                              ; preds = %109, %108, %105
  %112 = phi i1 [ false, %108 ], [ false, %105 ], [ %110, %109 ]
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = trunc i32 %107 to i8
  %115 = getelementptr inbounds i8, i8* %.02, i64 1
  store i8 %114, i8* %.02, align 1
  br label %105, !llvm.loop !7

116:                                              ; preds = %111
  store i8 0, i8* %.02, align 1
  %117 = icmp eq i32 %107, 9
  br i1 %117, label %118, label %143

118:                                              ; preds = %116
  br label %119

119:                                              ; preds = %135, %118
  %.01 = phi i32 [ -1, %118 ], [ %138, %135 ]
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %121 = call i32 @getc(%struct._IO_FILE* noundef %120) #6
  %.not21 = icmp eq i32 %121, -1
  br i1 %.not21, label %130, label %122

122:                                              ; preds = %119
  %123 = call i16** @__ctype_b_loc() #7
  %124 = load i16*, i16** %123, align 8
  %125 = sext i32 %121 to i64
  %126 = getelementptr inbounds i16, i16* %124, i64 %125
  %127 = load i16, i16* %126, align 2
  %128 = and i16 %127, 2048
  %129 = icmp ne i16 %128, 0
  br label %130

130:                                              ; preds = %122, %119
  %131 = phi i1 [ false, %119 ], [ %129, %122 ]
  br i1 %131, label %132, label %139

132:                                              ; preds = %130
  %133 = icmp slt i32 %.01, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %134, %132
  %.1 = phi i32 [ 0, %134 ], [ %.01, %132 ]
  %136 = mul nsw i32 %.1, 10
  %137 = add nsw i32 %121, -48
  %138 = add nsw i32 %136, %137
  br label %119, !llvm.loop !8

139:                                              ; preds = %130
  %140 = icmp sgt i32 %.01, -1
  br i1 %140, label %141, label %142

141:                                              ; preds = %139
  store i32 %.01, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %139
  br label %143

143:                                              ; preds = %142, %116
  br label %144

144:                                              ; preds = %143, %96, %63, %51, %27
  %.0 = phi i32 [ 72, %27 ], [ 68, %51 ], [ 0, %143 ], [ 68, %63 ], [ 68, %96 ]
  ret i32 %.0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #2

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }

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
