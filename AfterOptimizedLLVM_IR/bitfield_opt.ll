; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/bitfield.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/bitfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BitfieldStruct = type { i32, i8* }
%struct.NodeStruct = type { i32, i32, i8*, i32, i32, %struct.NodeStruct*, %struct.NodeListStruct*, %struct.EdgeListStruct*, i32, i32 }
%struct.NodeListStruct = type { %struct.NodeStruct*, %struct.NodeListStruct* }
%struct.EdgeListStruct = type { i32, %struct.NodeStruct*, %struct.EdgeListStruct* }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BitfieldStruct* @Bitfield_new(i32 noundef %0) #0 {
  %2 = alloca %struct.BitfieldStruct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.BitfieldStruct*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = add nsw i32 %6, 7
  %8 = sdiv i32 %7, 8
  store i32 %8, i32* %4, align 4
  %9 = call noalias i8* @malloc(i64 noundef 16) #3
  %10 = bitcast i8* %9 to %struct.BitfieldStruct*
  store %struct.BitfieldStruct* %10, %struct.BitfieldStruct** %5, align 8
  %11 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %5, align 8
  %12 = icmp ne %struct.BitfieldStruct* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.BitfieldStruct* null, %struct.BitfieldStruct** %2, align 8
  br label %32

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = call noalias i8* @calloc(i64 noundef %16, i64 noundef 1) #3
  %18 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %5, align 8
  %19 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %5, align 8
  %21 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %5, align 8
  %26 = bitcast %struct.BitfieldStruct* %25 to i8*
  call void @free(i8* noundef %26) #3
  store %struct.BitfieldStruct* null, %struct.BitfieldStruct** %2, align 8
  br label %32

27:                                               ; preds = %14
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %5, align 8
  %30 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %5, align 8
  store %struct.BitfieldStruct* %31, %struct.BitfieldStruct** %2, align 8
  br label %32

32:                                               ; preds = %27, %24, %13
  %33 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %2, align 8
  ret %struct.BitfieldStruct* %33
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bitfield_delete(%struct.BitfieldStruct* noundef %0) #0 {
  %2 = alloca %struct.BitfieldStruct*, align 8
  store %struct.BitfieldStruct* %0, %struct.BitfieldStruct** %2, align 8
  %3 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %2, align 8
  %4 = icmp ne %struct.BitfieldStruct* %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %2, align 8
  %7 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %2, align 8
  %12 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  call void @free(i8* noundef %13) #3
  br label %14

14:                                               ; preds = %10, %5
  %15 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %2, align 8
  %16 = bitcast %struct.BitfieldStruct* %15 to i8*
  call void @free(i8* noundef %16) #3
  br label %17

17:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @Bitfield_nodeVisited(%struct.BitfieldStruct* noundef %0, %struct.NodeStruct* noundef %1) #0 {
  %3 = alloca %struct.BitfieldStruct*, align 8
  %4 = alloca %struct.NodeStruct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.BitfieldStruct* %0, %struct.BitfieldStruct** %3, align 8
  store %struct.NodeStruct* %1, %struct.NodeStruct** %4, align 8
  %9 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %10 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 3
  store i32 %12, i32* %5, align 4
  %13 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %3, align 8
  %14 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %6, align 1
  %20 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %21 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 7
  %24 = shl i32 1, %23
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %7, align 1
  %26 = load i8, i8* %6, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* %7, align 1
  %29 = sext i8 %28 to i32
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %8, align 1
  %33 = load i8, i8* %7, align 1
  %34 = sext i8 %33 to i32
  %35 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %3, align 8
  %36 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = or i32 %42, %34
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %40, align 1
  %45 = load i8, i8* %8, align 1
  %46 = trunc i8 %45 to i1
  ret i1 %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BitfieldStruct* @Bitfield_copy(%struct.BitfieldStruct* noundef %0) #0 {
  %2 = alloca %struct.BitfieldStruct*, align 8
  %3 = alloca %struct.BitfieldStruct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.BitfieldStruct*, align 8
  store %struct.BitfieldStruct* %0, %struct.BitfieldStruct** %3, align 8
  %6 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %3, align 8
  %7 = icmp ne %struct.BitfieldStruct* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.BitfieldStruct* null, %struct.BitfieldStruct** %2, align 8
  br label %44

9:                                                ; preds = %1
  %10 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %3, align 8
  %11 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.BitfieldStruct* @Bitfield_new(i32 noundef %12)
  store %struct.BitfieldStruct* %13, %struct.BitfieldStruct** %5, align 8
  %14 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %5, align 8
  %15 = icmp ne %struct.BitfieldStruct* %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %38, %16
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 %18, 8
  %20 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %3, align 8
  %21 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %17
  %25 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %3, align 8
  %26 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %5, align 8
  %33 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 %31, i8* %37, align 1
  br label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %17, !llvm.loop !4

41:                                               ; preds = %17
  %42 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %5, align 8
  store %struct.BitfieldStruct* %42, %struct.BitfieldStruct** %2, align 8
  br label %44

43:                                               ; preds = %9
  store %struct.BitfieldStruct* null, %struct.BitfieldStruct** %2, align 8
  br label %44

44:                                               ; preds = %43, %41, %8
  %45 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %2, align 8
  ret %struct.BitfieldStruct* %45
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bitfield_clear(%struct.BitfieldStruct* noundef %0) #0 {
  %2 = alloca %struct.BitfieldStruct*, align 8
  %3 = alloca i32, align 4
  store %struct.BitfieldStruct* %0, %struct.BitfieldStruct** %2, align 8
  %4 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %2, align 8
  %5 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, 7
  %8 = sdiv i32 %7, 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %2, align 8
  %10 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 %13, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
