; ModuleID = './pass1.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/loader/pass1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [9 x i8] c"_GLOBAL \00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"ERROR: Multiply defined global %s. Program not loaded.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"ERROR: Illegal header record = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"ERROR: Illegal define record = %s\0A\00", align 1
@START_ADDRESS = dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"WARNING: Found multiple start addresses.\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c" Expected only one. Using the first.\00", align 1
@MAIN_ROUTINE = dso_local global [9 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"ERROR: Illegal end record = %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"ERROR: Illegal RECORD = %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PASS1(%struct.SYMBOL_TABLE_ENTRY** noundef %0, i32* nocapture noundef %1, i32* nocapture noundef %2, %struct._IO_FILE* noundef %3) #0 {
  %5 = alloca [9 x i8], align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [9 x i8], align 1
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 8
  store i8 0, i8* %11, align 1
  br label %12

12:                                               ; preds = %169, %4
  %.03 = phi i32 [ 0, %4 ], [ %.3, %169 ]
  %13 = call i32 @feof(%struct._IO_FILE* noundef %3) #4
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %14, label %17

14:                                               ; preds = %12
  %15 = load i32, i32* %1, align 4
  %16 = icmp slt i32 %15, 1048577
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi i1 [ false, %12 ], [ %16, %14 ]
  br i1 %18, label %19, label %172

19:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** noundef nonnull %6, %struct._IO_FILE* noundef %3) #4
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %161 [
    i32 72, label %23
    i32 68, label %75
    i32 69, label %134
    i32 77, label %160
    i32 82, label %160
    i32 84, label %160
    i32 0, label %160
  ]

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %24) #5
  %.not13 = icmp eq i64 %25, 21
  br i1 %.not13, label %27, label %26

26:                                               ; preds = %23
  store i32 1, i32* %7, align 4
  br label %69

27:                                               ; preds = %23
  %28 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = call i8* @strncpy(i8* noundef nonnull %28, i8* noundef nonnull %30, i64 noundef 8) #4
  %32 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @INSERT_IN_SYM_TAB(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %32, i32 noundef %33, i32 noundef 3, %struct.SYMBOL_TABLE_ENTRY** noundef %0) #4
  %.not14 = icmp eq i32 %34, 0
  br i1 %.not14, label %35, label %54

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %46, %35
  %.02 = phi i32 [ 7, %35 ], [ %47, %46 ]
  %37 = icmp slt i32 %.02, 1
  br i1 %37, label %43, label %38

38:                                               ; preds = %36
  %39 = sext i32 %.02 to i64
  %40 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = icmp eq i8 %41, 32
  br label %43

43:                                               ; preds = %38, %36
  %44 = phi i1 [ true, %36 ], [ %42, %38 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45
  %47 = add nsw i32 %.02, -1
  br label %36, !llvm.loop !4

48:                                               ; preds = %43
  %49 = add nsw i32 %.02, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 %50
  store i8 0, i8* %51, align 1
  %52 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %53 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %52) #4
  store i32 1, i32* %2, align 4
  br label %68

54:                                               ; preds = %27
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 9
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef nonnull %56, i32 noundef 6, i32 noundef 16, i32* noundef nonnull %8, i32* noundef nonnull %7) #4
  %57 = load i32, i32* %1, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 15
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef nonnull %61, i32 noundef 6, i32 noundef 16, i32* noundef nonnull %8, i32* noundef nonnull %7) #4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %1, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %1, align 4
  %65 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %66 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %65, %struct.SYMBOL_TABLE_ENTRY** noundef %0) #4
  %67 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %66, i64 0, i32 3
  store i32 %62, i32* %67, align 8
  br label %68

68:                                               ; preds = %54, %48
  %.1 = phi i32 [ %59, %54 ], [ %.03, %48 ]
  br label %69

69:                                               ; preds = %68, %26
  %.2 = phi i32 [ %.03, %26 ], [ %.1, %68 ]
  %70 = load i32, i32* %7, align 4
  %.not15 = icmp eq i32 %70, 0
  br i1 %.not15, label %74, label %71

71:                                               ; preds = %69
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* noundef %72) #4
  br label %74

74:                                               ; preds = %71, %69
  br label %164

75:                                               ; preds = %19
  %76 = load i8*, i8** %6, align 8
  %77 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %76) #5
  %78 = icmp ugt i64 %77, 71
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 1, i32* %7, align 4
  br label %128

80:                                               ; preds = %75
  %81 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 8
  store i8 0, i8* %81, align 1
  br label %82

82:                                               ; preds = %120, %80
  %.01 = phi i32 [ 1, %80 ], [ %121, %120 ]
  %83 = add nuw nsw i32 %.01, 14
  %84 = zext i32 %83 to i64
  %85 = load i8*, i8** %6, align 8
  %86 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %85) #5
  %.not9 = icmp ult i64 %86, %84
  br i1 %.not9, label %122, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %89 = load i8*, i8** %6, align 8
  %90 = zext i32 %.01 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = call i8* @strncpy(i8* noundef nonnull %88, i8* noundef nonnull %91, i64 noundef 8) #4
  %93 = load i8*, i8** %6, align 8
  %94 = add nuw nsw i32 %.01, 8
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef nonnull %96, i32 noundef 6, i32 noundef 16, i32* noundef nonnull %10, i32* noundef nonnull %7) #4
  %97 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, %.03
  %100 = call i32 @INSERT_IN_SYM_TAB(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %97, i32 noundef %99, i32 noundef 4, %struct.SYMBOL_TABLE_ENTRY** noundef %0) #4
  %.not12 = icmp eq i32 %100, 0
  br i1 %.not12, label %101, label %120

101:                                              ; preds = %87
  br label %102

102:                                              ; preds = %112, %101
  %.0 = phi i32 [ 7, %101 ], [ %113, %112 ]
  %103 = icmp slt i32 %.0, 1
  br i1 %103, label %109, label %104

104:                                              ; preds = %102
  %105 = sext i32 %.0 to i64
  %106 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = icmp eq i8 %107, 32
  br label %109

109:                                              ; preds = %104, %102
  %110 = phi i1 [ true, %102 ], [ %108, %104 ]
  br i1 %110, label %111, label %114

111:                                              ; preds = %109
  br label %112

112:                                              ; preds = %111
  %113 = add nsw i32 %.0, -1
  br label %102, !llvm.loop !6

114:                                              ; preds = %109
  %115 = add nsw i32 %.0, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 %116
  store i8 0, i8* %117, align 1
  %118 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %119 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %118) #4
  store i32 1, i32* %2, align 4
  br label %120

120:                                              ; preds = %114, %87
  %121 = add nuw nsw i32 %.01, 14
  br label %82, !llvm.loop !7

122:                                              ; preds = %82
  %123 = zext i32 %.01 to i64
  %124 = load i8*, i8** %6, align 8
  %125 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %124) #5
  %.not10 = icmp eq i64 %125, %123
  br i1 %.not10, label %127, label %126

126:                                              ; preds = %122
  store i32 1, i32* %7, align 4
  br label %127

127:                                              ; preds = %126, %122
  br label %128

128:                                              ; preds = %127, %79
  %129 = load i32, i32* %7, align 4
  %.not11 = icmp eq i32 %129, 0
  br i1 %.not11, label %133, label %130

130:                                              ; preds = %128
  %131 = load i8*, i8** %6, align 8
  %132 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* noundef %131) #4
  br label %133

133:                                              ; preds = %130, %128
  br label %164

134:                                              ; preds = %19
  %135 = load i8*, i8** %6, align 8
  %136 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %135) #5
  %.not5 = icmp eq i64 %136, 1
  br i1 %.not5, label %154, label %137

137:                                              ; preds = %134
  %138 = load i8*, i8** %6, align 8
  %139 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %138) #5
  %.not7 = icmp eq i64 %139, 7
  br i1 %.not7, label %141, label %140

140:                                              ; preds = %137
  store i32 1, i32* %7, align 4
  br label %153

141:                                              ; preds = %137
  %142 = load i32, i32* @START_ADDRESS, align 4
  %.not8 = icmp eq i32 %142, -1
  br i1 %.not8, label %145, label %143

143:                                              ; preds = %141
  %144 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0)) #4
  br label %152

145:                                              ; preds = %141
  %146 = load i8*, i8** %6, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 1
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* noundef nonnull %147, i32 noundef 6, i32 noundef 16, i32* noundef nonnull @START_ADDRESS, i32* noundef nonnull %7) #4
  %148 = load i32, i32* @START_ADDRESS, align 4
  %149 = add nsw i32 %148, %.03
  store i32 %149, i32* @START_ADDRESS, align 4
  %150 = getelementptr inbounds [9 x i8], [9 x i8]* %5, i64 0, i64 0
  %151 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @MAIN_ROUTINE, i64 0, i64 0), i8* noundef nonnull %150) #4
  br label %152

152:                                              ; preds = %145, %143
  br label %153

153:                                              ; preds = %152, %140
  br label %154

154:                                              ; preds = %153, %134
  %155 = load i32, i32* %7, align 4
  %.not6 = icmp eq i32 %155, 0
  br i1 %.not6, label %159, label %156

156:                                              ; preds = %154
  %157 = load i8*, i8** %6, align 8
  %158 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* noundef %157) #4
  br label %159

159:                                              ; preds = %156, %154
  br label %164

160:                                              ; preds = %19, %19, %19, %19
  br label %164

161:                                              ; preds = %19
  %162 = load i8*, i8** %6, align 8
  %163 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* noundef %162) #4
  store i32 1, i32* %7, align 4
  br label %164

164:                                              ; preds = %161, %160, %159, %133, %74
  %.3 = phi i32 [ %.03, %161 ], [ %.03, %160 ], [ %.03, %159 ], [ %.03, %133 ], [ %.2, %74 ]
  %165 = load i32, i32* %2, align 4
  %.not4 = icmp eq i32 %165, 0
  br i1 %.not4, label %166, label %169

166:                                              ; preds = %164
  %167 = load i32, i32* %7, align 4
  %168 = icmp ne i32 %167, 0
  br label %169

169:                                              ; preds = %166, %164
  %170 = phi i1 [ true, %164 ], [ %168, %166 ]
  %171 = zext i1 %170 to i32
  store i32 %171, i32* %2, align 4
  br label %12, !llvm.loop !8

172:                                              ; preds = %17
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #1

declare dso_local void @GET_LINE(...) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @INSERT_IN_SYM_TAB(i8* noundef, i8* noundef, i32 noundef, i32 noundef, %struct.SYMBOL_TABLE_ENTRY** noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local void @STR_TO_NUM(...) #2

declare dso_local %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(...) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

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
