; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/treecc/skeleton.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/treecc/skeleton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._tagTreeCCContext = type { [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCOperation*], %struct.TreeCCInput*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, i16, i8*, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct._tagTreeCCNode = type { %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, i8*, i32, i32, i32, i8*, i64, %struct._tagTreeCCField*, %struct._tagTreeCCVirtual*, %struct._tagTreeCCNode*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCField = type { i8*, i8*, i8*, i32, i8*, i64, %struct._tagTreeCCField* }
%struct._tagTreeCCVirtual = type { i8*, i8*, %struct._tagTreeCCParam*, %struct._tagTreeCCOperation*, %struct._tagTreeCCVirtual* }
%struct._tagTreeCCParam = type { i8*, i8*, i32, i32, %struct._tagTreeCCParam* }
%struct._tagTreeCCOperation = type { i8*, i8*, i8*, i8*, %struct._tagTreeCCParam*, i32, i32, i8*, i64, %struct._tagTreeCCOperation*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase**, i32, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCOperationCase = type { %struct._tagTreeCCTrigger*, i8*, %struct._tagTreeCCOperation*, i32, i8*, i64, i8*, i64, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase* }
%struct._tagTreeCCTrigger = type { %struct._tagTreeCCNode*, %struct._tagTreeCCTrigger* }
%struct.TreeCCInput = type { i32, i8*, i8*, %struct._IO_FILE*, i8*, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct._tagTreeCCStream = type { %struct._tagTreeCCContext*, i8*, i8*, i64, %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf*, i32, i8, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStream* }
%struct._tagTreeCCStreamBuf = type { [2048 x i8], %struct._tagTreeCCStreamBuf* }
%struct._tagTreeCCStreamDefn = type { i8*, i8*, i64, i32, i32, %struct._tagTreeCCStreamDefn* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [55 x i8] c"treecc: internal error - could not find skeleton \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"YYNODESTATE\00", align 1
@TreeCCSkelFiles = external dso_local constant [0 x i8*], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @TreeCCIncludeSkeleton(%struct._tagTreeCCContext* noundef %0, %struct._tagTreeCCStream* noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct._tagTreeCCContext*, align 8
  %5 = alloca %struct._tagTreeCCStream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [8192 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %4, align 8
  store %struct._tagTreeCCStream* %1, %struct._tagTreeCCStream** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @FindSkeletonString(i8* noundef %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* noundef %17)
  call void @exit(i32 noundef 1) #4
  unreachable

19:                                               ; preds = %3
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %5, align 8
  %21 = load i8*, i8** %6, align 8
  call void @TreeCCStreamLine(%struct._tagTreeCCStream* noundef %20, i64 noundef 1, i8* noundef %21)
  br label %22

22:                                               ; preds = %132, %19
  %23 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 0
  %24 = call i32 @ReadSkeletonLine(i8* noundef %23, i32 noundef 8192, i8** noundef %7)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %133

26:                                               ; preds = %22
  %27 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 0
  %28 = call i8* @strchr(i8* noundef %27, i32 noundef 89) #5
  %29 = icmp ne i8* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 0
  %32 = call i8* @strchr(i8* noundef %31, i32 noundef 121) #5
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %129

34:                                               ; preds = %30, %26
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %117, %34
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %118

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 89
  br i1 %48, label %49, label %77

49:                                               ; preds = %42
  %50 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 0
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = call i32 @strncmp(i8* noundef %53, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 noundef 11) #5
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %77, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %5, align 8
  %65 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 0
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* noundef %64, i8* noundef %68)
  br label %69

69:                                               ; preds = %63, %56
  %70 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %5, align 8
  %71 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %4, align 8
  %72 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %71, i32 0, i32 10
  %73 = load i8*, i8** %72, align 8
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* noundef %70, i8* noundef %73)
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 11
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %10, align 4
  br label %117

77:                                               ; preds = %49, %42
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 121
  br i1 %83, label %84, label %113

84:                                               ; preds = %77
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 121
  br i1 %91, label %92, label %113

92:                                               ; preds = %84
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %5, align 8
  %101 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 0
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* noundef %100, i8* noundef %104)
  br label %105

105:                                              ; preds = %99, %92
  %106 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %5, align 8
  %107 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %4, align 8
  %108 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %107, i32 0, i32 9
  %109 = load i8*, i8** %108, align 8
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* noundef %106, i8* noundef %109)
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 2
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %10, align 4
  br label %116

113:                                              ; preds = %84, %77
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %113, %105
  br label %117

117:                                              ; preds = %116, %69
  br label %35, !llvm.loop !4

118:                                              ; preds = %35
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %5, align 8
  %124 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 0
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* noundef %123, i8* noundef %127)
  br label %128

128:                                              ; preds = %122, %118
  br label %132

129:                                              ; preds = %30
  %130 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %5, align 8
  %131 = getelementptr inbounds [8192 x i8], [8192 x i8]* %8, i64 0, i64 0
  call void @TreeCCStreamCode(%struct._tagTreeCCStream* noundef %130, i8* noundef %131)
  br label %132

132:                                              ; preds = %129, %128
  br label %22, !llvm.loop !6

133:                                              ; preds = %22
  %134 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %5, align 8
  call void @TreeCCStreamFixLine(%struct._tagTreeCCStream* noundef %134)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @FindSkeletonString(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  store i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @TreeCCSkelFiles, i64 0, i64 0), i8*** %4, align 8
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i8**, i8*** %4, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strcmp(i8* noundef %11, i8* noundef %12) #5
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = load i8**, i8*** %4, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %2, align 8
  br label %23

19:                                               ; preds = %9
  %20 = load i8**, i8*** %4, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 2
  store i8** %21, i8*** %4, align 8
  br label %5, !llvm.loop !7

22:                                               ; preds = %5
  store i8* null, i8** %2, align 8
  br label %23

23:                                               ; preds = %22, %15
  %24 = load i8*, i8** %2, align 8
  ret i8* %24
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local void @TreeCCStreamLine(%struct._tagTreeCCStream* noundef, i64 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ReadSkeletonLine(i8* noundef %0, i32 noundef %1, i8** noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = load i8**, i8*** %7, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %57

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %39, %16
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 10
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ false, %17 ], [ %26, %22 ]
  br i1 %28, label %29, label %42

29:                                               ; preds = %27
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 2
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %5, align 8
  store i8 %34, i8* %35, align 1
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %32, %29
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %8, align 8
  br label %17, !llvm.loop !8

42:                                               ; preds = %27
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %8, align 8
  %50 = load i8, i8* %48, align 1
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  store i8 %50, i8* %51, align 1
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i8*, i8** %5, align 8
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %8, align 8
  %56 = load i8**, i8*** %7, align 8
  store i8* %55, i8** %56, align 8
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local void @TreeCCStreamCode(%struct._tagTreeCCStream* noundef, i8* noundef) #1

declare dso_local void @TreeCCStreamFixLine(%struct._tagTreeCCStream* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
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
