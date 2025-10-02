; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/configuration.c'
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
define dso_local %struct.SearchOptionsStruct* @SearchOptions_new() #0 {
  %1 = alloca %struct.SearchOptionsStruct*, align 8
  %2 = alloca %struct.SearchOptionsStruct*, align 8
  %3 = call noalias i8* @malloc(i64 noundef 24) #2
  %4 = bitcast i8* %3 to %struct.SearchOptionsStruct*
  store %struct.SearchOptionsStruct* %4, %struct.SearchOptionsStruct** %2, align 8
  %5 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %2, align 8
  %6 = icmp ne %struct.SearchOptionsStruct* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.SearchOptionsStruct* null, %struct.SearchOptionsStruct** %1, align 8
  br label %22

8:                                                ; preds = %0
  %9 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %2, align 8
  %10 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %2, align 8
  %12 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %11, i32 0, i32 1
  store i8 0, i8* %12, align 4
  %13 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %2, align 8
  %14 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %13, i32 0, i32 2
  store i8 0, i8* %14, align 1
  %15 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %2, align 8
  %16 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %15, i32 0, i32 3
  store i8 0, i8* %16, align 2
  %17 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %2, align 8
  %18 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %17, i32 0, i32 4
  store i8* null, i8** %18, align 8
  %19 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %2, align 8
  %20 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %19, i32 0, i32 5
  store i32 0, i32* %20, align 8
  %21 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %2, align 8
  store %struct.SearchOptionsStruct* %21, %struct.SearchOptionsStruct** %1, align 8
  br label %22

22:                                               ; preds = %8, %7
  %23 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %1, align 8
  ret %struct.SearchOptionsStruct* %23
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.ConfigurationStruct* @Configuration_new() #0 {
  %1 = alloca %struct.ConfigurationStruct*, align 8
  %2 = alloca %struct.ConfigurationStruct*, align 8
  %3 = alloca %struct.SearchOptionsStruct*, align 8
  %4 = call noalias i8* @malloc(i64 noundef 32) #2
  %5 = bitcast i8* %4 to %struct.ConfigurationStruct*
  store %struct.ConfigurationStruct* %5, %struct.ConfigurationStruct** %2, align 8
  %6 = call %struct.SearchOptionsStruct* @SearchOptions_new()
  store %struct.SearchOptionsStruct* %6, %struct.SearchOptionsStruct** %3, align 8
  %7 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %8 = icmp ne %struct.ConfigurationStruct* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %3, align 8
  %11 = icmp ne %struct.SearchOptionsStruct* %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %9, %0
  %13 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %14 = icmp ne %struct.ConfigurationStruct* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %17 = bitcast %struct.ConfigurationStruct* %16 to i8*
  call void @free(i8* noundef %17) #2
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %3, align 8
  %20 = icmp ne %struct.SearchOptionsStruct* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %3, align 8
  %23 = bitcast %struct.SearchOptionsStruct* %22 to i8*
  call void @free(i8* noundef %23) #2
  br label %24

24:                                               ; preds = %21, %18
  store %struct.ConfigurationStruct* null, %struct.ConfigurationStruct** %1, align 8
  br label %36

25:                                               ; preds = %9
  %26 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %27 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %26, i32 0, i32 0
  store %struct.GraphStruct** null, %struct.GraphStruct*** %27, align 8
  %28 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %29 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %28, i32 0, i32 1
  store i8*** null, i8**** %29, align 8
  %30 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %3, align 8
  %31 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %32 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %31, i32 0, i32 2
  store %struct.SearchOptionsStruct* %30, %struct.SearchOptionsStruct** %32, align 8
  %33 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %34 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %33, i32 0, i32 3
  store i32 0, i32* %34, align 8
  %35 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  store %struct.ConfigurationStruct* %35, %struct.ConfigurationStruct** %1, align 8
  br label %36

36:                                               ; preds = %25, %24
  %37 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %1, align 8
  ret %struct.ConfigurationStruct* %37
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
