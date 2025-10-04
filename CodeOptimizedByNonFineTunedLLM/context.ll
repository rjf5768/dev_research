; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/treecc/context.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/treecc/context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tagTreeCCContext = type { [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCOperation*], %struct.TreeCCInput*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, i16, i8*, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct._tagTreeCCNode = type { %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, i8*, i32, i32, i32, i8*, i64, %struct._tagTreeCCField*, %struct._tagTreeCCVirtual*, %struct._tagTreeCCNode*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCField = type { i8*, i8*, i8*, i32, i8*, i64, %struct._tagTreeCCField* }
%struct._tagTreeCCVirtual = type { i8*, i8*, %struct._tagTreeCCParam*, %struct._tagTreeCCOperation*, %struct._tagTreeCCVirtual* }
%struct._tagTreeCCParam = type { i8*, i8*, i32, i32, %struct._tagTreeCCParam* }
%struct._tagTreeCCOperation = type { i8*, i8*, i8*, i8*, %struct._tagTreeCCParam*, i32, i32, i8*, i64, %struct._tagTreeCCOperation*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase**, i32, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCOperationCase = type { %struct._tagTreeCCTrigger*, i8*, %struct._tagTreeCCOperation*, i32, i8*, i64, i8*, i64, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase* }
%struct._tagTreeCCTrigger = type { %struct._tagTreeCCNode*, %struct._tagTreeCCTrigger* }
%struct._tagTreeCCStream = type { %struct._tagTreeCCContext*, i8*, i8*, i64, %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf*, i32, i8, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStream* }
%struct._tagTreeCCStreamBuf = type { [2048 x i8], %struct._tagTreeCCStreamBuf* }
%struct._tagTreeCCStreamDefn = type { i8*, i8*, i64, i32, i32, %struct._tagTreeCCStreamDefn* }
%struct.TreeCCInput = type { i32, i8*, i8*, %struct._IO_FILE*, i8*, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [3 x i8] c"yy\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"YYNODESTATE\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._tagTreeCCContext* @TreeCCContextCreate(%struct.TreeCCInput* noundef %0) #0 {
  %2 = alloca %struct.TreeCCInput*, align 8
  %3 = alloca %struct._tagTreeCCContext*, align 8
  store %struct.TreeCCInput* %0, %struct.TreeCCInput** %2, align 8
  %4 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 8304) #3
  %5 = bitcast i8* %4 to %struct._tagTreeCCContext*
  store %struct._tagTreeCCContext* %5, %struct._tagTreeCCContext** %3, align 8
  %6 = icmp eq %struct._tagTreeCCContext* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load %struct.TreeCCInput*, %struct.TreeCCInput** %2, align 8
  call void @TreeCCOutOfMemory(%struct.TreeCCInput* noundef %8)
  br label %9

9:                                                ; preds = %7, %1
  %10 = load %struct.TreeCCInput*, %struct.TreeCCInput** %2, align 8
  %11 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %12 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %11, i32 0, i32 2
  store %struct.TreeCCInput* %10, %struct.TreeCCInput** %12, align 8
  %13 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %14 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %13, i32 0, i32 8
  %15 = load i16, i16* %14, align 8
  %16 = and i16 %15, -2
  %17 = or i16 %16, 0
  store i16 %17, i16* %14, align 8
  %18 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %19 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %18, i32 0, i32 8
  %20 = load i16, i16* %19, align 8
  %21 = and i16 %20, -3
  %22 = or i16 %21, 2
  store i16 %22, i16* %19, align 8
  %23 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %24 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %23, i32 0, i32 8
  %25 = load i16, i16* %24, align 8
  %26 = and i16 %25, -5
  %27 = or i16 %26, 0
  store i16 %27, i16* %24, align 8
  %28 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %29 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %28, i32 0, i32 8
  %30 = load i16, i16* %29, align 8
  %31 = and i16 %30, -9
  %32 = or i16 %31, 0
  store i16 %32, i16* %29, align 8
  %33 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %34 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %33, i32 0, i32 8
  %35 = load i16, i16* %34, align 8
  %36 = and i16 %35, -17
  %37 = or i16 %36, 0
  store i16 %37, i16* %34, align 8
  %38 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %39 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %38, i32 0, i32 8
  %40 = load i16, i16* %39, align 8
  %41 = and i16 %40, -33
  %42 = or i16 %41, 0
  store i16 %42, i16* %39, align 8
  %43 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %44 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %43, i32 0, i32 8
  %45 = load i16, i16* %44, align 8
  %46 = and i16 %45, -65
  %47 = or i16 %46, 0
  store i16 %47, i16* %44, align 8
  %48 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %49 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %48, i32 0, i32 8
  %50 = load i16, i16* %49, align 8
  %51 = and i16 %50, -129
  %52 = or i16 %51, 0
  store i16 %52, i16* %49, align 8
  %53 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %54 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %53, i32 0, i32 8
  %55 = load i16, i16* %54, align 8
  %56 = and i16 %55, -257
  %57 = or i16 %56, 0
  store i16 %57, i16* %54, align 8
  %58 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %59 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %58, i32 0, i32 8
  %60 = load i16, i16* %59, align 8
  %61 = and i16 %60, -513
  %62 = or i16 %61, 512
  store i16 %62, i16* %59, align 8
  %63 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %64 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %63, i32 0, i32 8
  %65 = load i16, i16* %64, align 8
  %66 = and i16 %65, -1025
  %67 = or i16 %66, 0
  store i16 %67, i16* %64, align 8
  %68 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %69 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %68, i32 0, i32 8
  %70 = load i16, i16* %69, align 8
  %71 = and i16 %70, -2049
  %72 = or i16 %71, 2048
  store i16 %72, i16* %69, align 8
  %73 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %74 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %73, i32 0, i32 8
  %75 = load i16, i16* %74, align 8
  %76 = and i16 %75, -4097
  %77 = or i16 %76, 0
  store i16 %77, i16* %74, align 8
  %78 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %79 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %78, i32 0, i32 9
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %79, align 8
  %80 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %81 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %80, i32 0, i32 10
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %81, align 8
  %82 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %83 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %82, i32 0, i32 11
  store i8* null, i8** %83, align 8
  %84 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %85 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %84, i32 0, i32 13
  store i32 0, i32* %85, align 4
  %86 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %87 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %86, i32 0, i32 14
  store i32 0, i32* %87, align 8
  %88 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %89 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %88, i32 0, i32 12
  store i32 1, i32* %89, align 8
  %90 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  %91 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %90, i32 0, i32 16
  store i8* null, i8** %91, align 8
  %92 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %3, align 8
  ret %struct._tagTreeCCContext* %92
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local void @TreeCCOutOfMemory(%struct.TreeCCInput* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @TreeCCContextDestroy(%struct._tagTreeCCContext* noundef %0) #0 {
  %2 = alloca %struct._tagTreeCCContext*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._tagTreeCCNode*, align 8
  %5 = alloca %struct._tagTreeCCNode*, align 8
  %6 = alloca %struct._tagTreeCCOperation*, align 8
  %7 = alloca %struct._tagTreeCCOperation*, align 8
  %8 = alloca %struct._tagTreeCCStream*, align 8
  %9 = alloca %struct._tagTreeCCStream*, align 8
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %2, align 8
  %10 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %2, align 8
  %11 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %10, i32 0, i32 3
  %12 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %11, align 8
  store %struct._tagTreeCCStream* %12, %struct._tagTreeCCStream** %8, align 8
  br label %13

13:                                               ; preds = %16, %1
  %14 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %8, align 8
  %15 = icmp ne %struct._tagTreeCCStream* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %8, align 8
  %18 = getelementptr inbounds %struct._tagTreeCCStream, %struct._tagTreeCCStream* %17, i32 0, i32 10
  %19 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %18, align 8
  store %struct._tagTreeCCStream* %19, %struct._tagTreeCCStream** %9, align 8
  %20 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %8, align 8
  call void @TreeCCStreamDestroy(%struct._tagTreeCCStream* noundef %20)
  %21 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %9, align 8
  store %struct._tagTreeCCStream* %21, %struct._tagTreeCCStream** %8, align 8
  br label %13, !llvm.loop !4

22:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %43, %22
  %24 = load i32, i32* %3, align 4
  %25 = icmp ult i32 %24, 512
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %2, align 8
  %28 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %27, i32 0, i32 0
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCNode*]* %28, i64 0, i64 %30
  %32 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %31, align 8
  store %struct._tagTreeCCNode* %32, %struct._tagTreeCCNode** %4, align 8
  br label %33

33:                                               ; preds = %36, %26
  %34 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %4, align 8
  %35 = icmp ne %struct._tagTreeCCNode* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %4, align 8
  %38 = getelementptr inbounds %struct._tagTreeCCNode, %struct._tagTreeCCNode* %37, i32 0, i32 12
  %39 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %38, align 8
  store %struct._tagTreeCCNode* %39, %struct._tagTreeCCNode** %5, align 8
  %40 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %4, align 8
  call void @TreeCCNodeFree(%struct._tagTreeCCNode* noundef %40)
  %41 = load %struct._tagTreeCCNode*, %struct._tagTreeCCNode** %5, align 8
  store %struct._tagTreeCCNode* %41, %struct._tagTreeCCNode** %4, align 8
  br label %33, !llvm.loop !6

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %23, !llvm.loop !7

46:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %67, %46
  %48 = load i32, i32* %3, align 4
  %49 = icmp ult i32 %48, 512
  br i1 %49, label %50, label %70

50:                                               ; preds = %47
  %51 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %2, align 8
  %52 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %51, i32 0, i32 1
  %53 = load i32, i32* %3, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [512 x %struct._tagTreeCCOperation*], [512 x %struct._tagTreeCCOperation*]* %52, i64 0, i64 %54
  %56 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %55, align 8
  store %struct._tagTreeCCOperation* %56, %struct._tagTreeCCOperation** %6, align 8
  br label %57

57:                                               ; preds = %60, %50
  %58 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %6, align 8
  %59 = icmp ne %struct._tagTreeCCOperation* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %6, align 8
  %62 = getelementptr inbounds %struct._tagTreeCCOperation, %struct._tagTreeCCOperation* %61, i32 0, i32 9
  %63 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %62, align 8
  store %struct._tagTreeCCOperation* %63, %struct._tagTreeCCOperation** %7, align 8
  %64 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %6, align 8
  call void @TreeCCOperationFree(%struct._tagTreeCCOperation* noundef %64)
  %65 = load %struct._tagTreeCCOperation*, %struct._tagTreeCCOperation** %7, align 8
  store %struct._tagTreeCCOperation* %65, %struct._tagTreeCCOperation** %6, align 8
  br label %57, !llvm.loop !8

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %3, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %47, !llvm.loop !9

70:                                               ; preds = %47
  %71 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %2, align 8
  %72 = bitcast %struct._tagTreeCCContext* %71 to i8*
  call void @free(i8* noundef %72) #3
  ret void
}

declare dso_local void @TreeCCStreamDestroy(%struct._tagTreeCCStream* noundef) #2

declare dso_local void @TreeCCNodeFree(%struct._tagTreeCCNode* noundef) #2

declare dso_local void @TreeCCOperationFree(%struct._tagTreeCCOperation* noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
