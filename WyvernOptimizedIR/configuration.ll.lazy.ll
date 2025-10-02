; ModuleID = './configuration.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SearchOptionsStruct = type { i32, i8, i8, i8, i8*, i32 }
%struct.ConfigurationStruct = type { %struct.GraphStruct**, i8***, %struct.SearchOptionsStruct*, i32 }
%struct.GraphStruct = type { i8*, i32, %struct.NodeListStruct*, %struct.SearchDiagramStruct*, %struct.SystemCallMapStruct* }
%struct.NodeListStruct = type { %struct.NodeStruct*, %struct.NodeListStruct* }
%struct.NodeStruct = type { i32, i32, i8*, i32, i32, %struct.NodeStruct*, %struct.NodeListStruct*, %struct.EdgeListStruct*, i32, i32 }
%struct.EdgeListStruct = type { i32, %struct.NodeStruct*, %struct.EdgeListStruct* }
%struct.SearchDiagramStruct = type { %struct.NodeStruct*, %struct.EdgeReferencesStruct* }
%struct.EdgeReferencesStruct = type { %struct.NodeStruct*, %struct.EdgeReferencesStruct* }
%struct.SystemCallMapStruct = type { i32, i32, %struct.SystemCallMapElementStruct** }
%struct.SystemCallMapElementStruct = type { i8*, i32, %struct.NodePtrVecStruct* }
%struct.NodePtrVecStruct = type { i32, i32, %struct.NodeStruct** }

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.SearchOptionsStruct* @SearchOptions_new() #0 {
  %1 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #2
  %2 = bitcast i8* %1 to %struct.SearchOptionsStruct*
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %3, label %4

3:                                                ; preds = %0
  br label %11

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %2, i64 0, i32 0
  store i32 0, i32* %5, align 8
  %6 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %2, i64 0, i32 1
  store i8 0, i8* %6, align 4
  %7 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %2, i64 0, i32 2
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %2, i64 0, i32 3
  store i8 0, i8* %8, align 2
  %9 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %2, i64 0, i32 4
  store i8* null, i8** %9, align 8
  %10 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %2, i64 0, i32 5
  store i32 0, i32* %10, align 8
  br label %11

11:                                               ; preds = %4, %3
  %.0 = phi %struct.SearchOptionsStruct* [ %2, %4 ], [ null, %3 ]
  ret %struct.SearchOptionsStruct* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.ConfigurationStruct* @Configuration_new() #0 {
  %1 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #2
  %2 = bitcast i8* %1 to %struct.ConfigurationStruct*
  %3 = call %struct.SearchOptionsStruct* @SearchOptions_new()
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  %.not3 = icmp eq %struct.SearchOptionsStruct* %3, null
  br i1 %.not3, label %5, label %11

5:                                                ; preds = %4, %0
  %.not1 = icmp eq i8* %1, null
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %5
  call void @free(i8* noundef %1) #2
  br label %7

7:                                                ; preds = %6, %5
  %.not2 = icmp eq %struct.SearchOptionsStruct* %3, null
  br i1 %.not2, label %10, label %8

8:                                                ; preds = %7
  %9 = bitcast %struct.SearchOptionsStruct* %3 to i8*
  call void @free(i8* noundef %9) #2
  br label %10

10:                                               ; preds = %8, %7
  br label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %2, i64 0, i32 0
  store %struct.GraphStruct** null, %struct.GraphStruct*** %12, align 8
  %13 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %2, i64 0, i32 1
  store i8*** null, i8**** %13, align 8
  %14 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %2, i64 0, i32 2
  store %struct.SearchOptionsStruct* %3, %struct.SearchOptionsStruct** %14, align 8
  %15 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %2, i64 0, i32 3
  store i32 0, i32* %15, align 8
  br label %16

16:                                               ; preds = %11, %10
  %.0 = phi %struct.ConfigurationStruct* [ %2, %11 ], [ null, %10 ]
  ret %struct.ConfigurationStruct* %.0
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
