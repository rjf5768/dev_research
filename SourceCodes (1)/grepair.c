; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/grepair.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/grepair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnode = type { i32, i32, i32, i32, i32, i32, i32, %struct.gnode* }

@numnodes = external dso_local global i32, align 4
@maxpnode = external dso_local global i32, align 4
@gnodeArray = external dso_local global %struct.gnode**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @grepair() #0 {
  %1 = alloca %struct.gnode*, align 8
  %2 = alloca %struct.gnode*, align 8
  %3 = alloca i32, align 4
  store i32 1, i32* %3, align 4
  br label %4

4:                                                ; preds = %103, %0
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @numnodes, align 4
  %7 = load i32, i32* @maxpnode, align 4
  %8 = add nsw i32 %6, %7
  %9 = icmp sle i32 %5, %8
  br i1 %9, label %10, label %106

10:                                               ; preds = %4
  %11 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.gnode*, %struct.gnode** %11, i64 %13
  %15 = load %struct.gnode*, %struct.gnode** %14, align 8
  store %struct.gnode* %15, %struct.gnode** %1, align 8
  %16 = load %struct.gnode*, %struct.gnode** %1, align 8
  %17 = icmp eq %struct.gnode* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %103

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @numnodes, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %86

23:                                               ; preds = %19
  %24 = load %struct.gnode*, %struct.gnode** %1, align 8
  %25 = getelementptr inbounds %struct.gnode, %struct.gnode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @numnodes, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %103

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %59, %30
  %32 = load %struct.gnode*, %struct.gnode** %1, align 8
  %33 = icmp ne %struct.gnode* %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load %struct.gnode*, %struct.gnode** %1, align 8
  %36 = getelementptr inbounds %struct.gnode, %struct.gnode* %35, i32 0, i32 7
  %37 = load %struct.gnode*, %struct.gnode** %36, align 8
  store %struct.gnode* %37, %struct.gnode** %2, align 8
  %38 = load %struct.gnode*, %struct.gnode** %1, align 8
  %39 = getelementptr inbounds %struct.gnode, %struct.gnode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @numnodes, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load %struct.gnode*, %struct.gnode** %1, align 8
  %45 = bitcast %struct.gnode* %44 to i8*
  call void @free(i8* noundef %45) #2
  %46 = load %struct.gnode*, %struct.gnode** %2, align 8
  store %struct.gnode* %46, %struct.gnode** %1, align 8
  br label %53

47:                                               ; preds = %34
  %48 = load %struct.gnode*, %struct.gnode** %1, align 8
  %49 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.gnode*, %struct.gnode** %49, i64 %51
  store %struct.gnode* %48, %struct.gnode** %52, align 8
  br label %60

53:                                               ; preds = %43
  br label %59

54:                                               ; preds = %31
  %55 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.gnode*, %struct.gnode** %55, i64 %57
  store %struct.gnode* null, %struct.gnode** %58, align 8
  br label %60

59:                                               ; preds = %53
  br label %31

60:                                               ; preds = %54, %47
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.gnode*, %struct.gnode** %62, i64 %64
  %66 = load %struct.gnode*, %struct.gnode** %65, align 8
  store %struct.gnode* %66, %struct.gnode** %1, align 8
  br label %67

67:                                               ; preds = %71, %61
  %68 = load %struct.gnode*, %struct.gnode** %1, align 8
  %69 = icmp eq %struct.gnode* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %85

71:                                               ; preds = %67
  %72 = load %struct.gnode*, %struct.gnode** %1, align 8
  %73 = getelementptr inbounds %struct.gnode, %struct.gnode* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.gnode*, %struct.gnode** %1, align 8
  %76 = getelementptr inbounds %struct.gnode, %struct.gnode* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.gnode*, %struct.gnode** %1, align 8
  %78 = getelementptr inbounds %struct.gnode, %struct.gnode* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.gnode*, %struct.gnode** %1, align 8
  %81 = getelementptr inbounds %struct.gnode, %struct.gnode* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.gnode*, %struct.gnode** %1, align 8
  %83 = getelementptr inbounds %struct.gnode, %struct.gnode* %82, i32 0, i32 7
  %84 = load %struct.gnode*, %struct.gnode** %83, align 8
  store %struct.gnode* %84, %struct.gnode** %1, align 8
  br label %67

85:                                               ; preds = %70
  br label %102

86:                                               ; preds = %19
  br label %87

87:                                               ; preds = %90, %86
  %88 = load %struct.gnode*, %struct.gnode** %1, align 8
  %89 = icmp ne %struct.gnode* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.gnode*, %struct.gnode** %1, align 8
  %92 = getelementptr inbounds %struct.gnode, %struct.gnode* %91, i32 0, i32 7
  %93 = load %struct.gnode*, %struct.gnode** %92, align 8
  store %struct.gnode* %93, %struct.gnode** %2, align 8
  %94 = load %struct.gnode*, %struct.gnode** %1, align 8
  %95 = bitcast %struct.gnode* %94 to i8*
  call void @free(i8* noundef %95) #2
  %96 = load %struct.gnode*, %struct.gnode** %2, align 8
  store %struct.gnode* %96, %struct.gnode** %1, align 8
  br label %87, !llvm.loop !4

97:                                               ; preds = %87
  %98 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.gnode*, %struct.gnode** %98, i64 %100
  store %struct.gnode* null, %struct.gnode** %101, align 8
  br label %102

102:                                              ; preds = %97, %85
  br label %103

103:                                              ; preds = %102, %29, %18
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %3, align 4
  br label %4, !llvm.loop !6

106:                                              ; preds = %4
  ret void
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
