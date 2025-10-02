; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/01-qbsort/benchmark.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/01-qbsort/benchmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.LinkList = type { i32, %struct.LinkList* }
%struct.List = type { i32, i32* }

@.str = private unnamed_addr constant [29 x i8] c"\0AList read (reverse order): \00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"\0ABubbleSort: \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\0AQuickSort:  \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Comma expected in list number %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Last list read\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Program Error: Unrecognized errorcode from ReadList\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @LessThan(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.LinkList*, align 8
  %9 = alloca %struct.List*, align 8
  %10 = alloca %struct.LinkList*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strtol(i8* noundef %18, i8** noundef null, i32 noundef 0) #5
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %12, align 4
  br label %21

21:                                               ; preds = %15, %2
  br label %22

22:                                               ; preds = %73, %21
  %23 = call i32 @ReadList(%struct.LinkList** noundef %8, %struct.List** noundef %9)
  store i32 %23, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %103

25:                                               ; preds = %22
  %26 = load %struct.LinkList*, %struct.LinkList** %8, align 8
  store %struct.LinkList* %26, %struct.LinkList** %10, align 8
  %27 = load %struct.List*, %struct.List** %9, align 8
  %28 = getelementptr inbounds %struct.List, %struct.List* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %11, align 8
  %30 = load %struct.List*, %struct.List** %9, align 8
  %31 = getelementptr inbounds %struct.List, %struct.List* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = call noalias i8* @malloc(i64 noundef %34) #5
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.List*, %struct.List** %9, align 8
  %38 = getelementptr inbounds %struct.List, %struct.List* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.List*, %struct.List** %9, align 8
  %40 = getelementptr inbounds %struct.List, %struct.List* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = load i32*, i32** %11, align 8
  %44 = bitcast i32* %43 to i8*
  %45 = load %struct.List*, %struct.List** %9, align 8
  %46 = getelementptr inbounds %struct.List, %struct.List* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = mul i64 4, %48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %44, i64 %49, i1 false)
  br label %50

50:                                               ; preds = %70, %25
  %51 = load i32, i32* %12, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %50
  %54 = load %struct.List*, %struct.List** %9, align 8
  %55 = call %struct.List* @BubbleSort(%struct.List* noundef %54, i32 (i32, i32)* noundef @LessThan)
  store %struct.List* %55, %struct.List** %9, align 8
  %56 = load %struct.List*, %struct.List** %9, align 8
  %57 = getelementptr inbounds %struct.List, %struct.List* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = bitcast i32* %58 to i8*
  %60 = load i32*, i32** %11, align 8
  %61 = bitcast i32* %60 to i8*
  %62 = load %struct.List*, %struct.List** %9, align 8
  %63 = getelementptr inbounds %struct.List, %struct.List* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = mul i64 4, %65
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %61, i64 %66, i1 false)
  %67 = load %struct.LinkList*, %struct.LinkList** %10, align 8
  %68 = call %struct.LinkList* @QuickSort(%struct.LinkList* noundef %67, i32 (i32, i32)* noundef @LessThan)
  store %struct.LinkList* %68, %struct.LinkList** %8, align 8
  %69 = load %struct.LinkList*, %struct.LinkList** %8, align 8
  call void @FreeLinkList(%struct.LinkList* noundef %69)
  br label %70

70:                                               ; preds = %53
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %12, align 4
  br label %50, !llvm.loop !4

73:                                               ; preds = %50
  %74 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %76 = call i32 @fflush(%struct._IO_FILE* noundef %75)
  %77 = load %struct.List*, %struct.List** %9, align 8
  call void @PrintList(%struct.List* noundef %77)
  %78 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %80 = call i32 @fflush(%struct._IO_FILE* noundef %79)
  %81 = load %struct.List*, %struct.List** %9, align 8
  %82 = call %struct.List* @BubbleSort(%struct.List* noundef %81, i32 (i32, i32)* noundef @LessThan)
  store %struct.List* %82, %struct.List** %9, align 8
  %83 = load %struct.List*, %struct.List** %9, align 8
  call void @PrintList(%struct.List* noundef %83)
  %84 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %86 = call i32 @fflush(%struct._IO_FILE* noundef %85)
  %87 = load %struct.LinkList*, %struct.LinkList** %10, align 8
  %88 = call %struct.LinkList* @QuickSort(%struct.LinkList* noundef %87, i32 (i32, i32)* noundef @LessThan)
  store %struct.LinkList* %88, %struct.LinkList** %8, align 8
  %89 = load %struct.LinkList*, %struct.LinkList** %8, align 8
  call void @PrintLinkList(%struct.LinkList* noundef %89)
  %90 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.LinkList*, %struct.LinkList** %8, align 8
  call void @FreeLinkList(%struct.LinkList* noundef %91)
  %92 = load %struct.LinkList*, %struct.LinkList** %10, align 8
  call void @FreeLinkList(%struct.LinkList* noundef %92)
  %93 = load %struct.List*, %struct.List** %9, align 8
  %94 = getelementptr inbounds %struct.List, %struct.List* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = bitcast i32* %95 to i8*
  call void @free(i8* noundef %96) #5
  %97 = load %struct.List*, %struct.List** %9, align 8
  %98 = bitcast %struct.List* %97 to i8*
  call void @free(i8* noundef %98) #5
  %99 = load i32*, i32** %11, align 8
  %100 = bitcast i32* %99 to i8*
  call void @free(i8* noundef %100) #5
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %22, !llvm.loop !6

103:                                              ; preds = %22
  %104 = load i32, i32* %7, align 4
  switch i32 %104, label %110 [
    i32 42, label %105
    i32 7, label %108
  ]

105:                                              ; preds = %103
  %106 = load i32, i32* %6, align 4
  %107 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 noundef %106)
  call void @exit(i32 noundef 1) #6
  unreachable

108:                                              ; preds = %103
  %109 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %112

110:                                              ; preds = %103
  %111 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

112:                                              ; preds = %108
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8* noundef, i8** noundef, i32 noundef) #1

declare dso_local i32 @ReadList(%struct.LinkList** noundef, %struct.List** noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local %struct.List* @BubbleSort(%struct.List* noundef, i32 (i32, i32)* noundef) #2

declare dso_local %struct.LinkList* @QuickSort(%struct.LinkList* noundef, i32 (i32, i32)* noundef) #2

declare dso_local void @FreeLinkList(%struct.LinkList* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

declare dso_local void @PrintList(%struct.List* noundef) #2

declare dso_local void @PrintLinkList(%struct.LinkList* noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
