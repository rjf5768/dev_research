; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/prepair.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/prepair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnode = type { i32, %struct.nnode*, %struct.list2* }
%struct.nnode = type { i32, i32, i16, i16 }
%struct.list2 = type { i32, %struct.list2* }

@pnodeArray = external dso_local global %struct.pnode*, align 8
@numnodes = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @prepair(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.list2*, align 8
  %6 = alloca %struct.list2*, align 8
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  br label %7

7:                                                ; preds = %93, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %96

11:                                               ; preds = %7
  %12 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.pnode, %struct.pnode* %12, i64 %14
  %16 = getelementptr inbounds %struct.pnode, %struct.pnode* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  store i32 1, i32* %4, align 4
  br label %17

17:                                               ; preds = %64, %11
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @numnodes, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %19, %20
  %22 = icmp sle i32 %18, %21
  br i1 %22, label %23, label %67

23:                                               ; preds = %17
  %24 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pnode, %struct.pnode* %24, i64 %26
  %28 = getelementptr inbounds %struct.pnode, %struct.pnode* %27, i32 0, i32 1
  %29 = load %struct.nnode*, %struct.nnode** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.nnode, %struct.nnode* %29, i64 %31
  %33 = getelementptr inbounds %struct.nnode, %struct.nnode* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.pnode, %struct.pnode* %34, i64 %36
  %38 = getelementptr inbounds %struct.pnode, %struct.pnode* %37, i32 0, i32 1
  %39 = load %struct.nnode*, %struct.nnode** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.nnode, %struct.nnode* %39, i64 %41
  %43 = getelementptr inbounds %struct.nnode, %struct.nnode* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.pnode, %struct.pnode* %44, i64 %46
  %48 = getelementptr inbounds %struct.pnode, %struct.pnode* %47, i32 0, i32 1
  %49 = load %struct.nnode*, %struct.nnode** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.nnode, %struct.nnode* %49, i64 %51
  %53 = getelementptr inbounds %struct.nnode, %struct.nnode* %52, i32 0, i32 2
  store i16 0, i16* %53, align 4
  %54 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.pnode, %struct.pnode* %54, i64 %56
  %58 = getelementptr inbounds %struct.pnode, %struct.pnode* %57, i32 0, i32 1
  %59 = load %struct.nnode*, %struct.nnode** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.nnode, %struct.nnode* %59, i64 %61
  %63 = getelementptr inbounds %struct.nnode, %struct.nnode* %62, i32 0, i32 3
  store i16 0, i16* %63, align 2
  br label %64

64:                                               ; preds = %23
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %17, !llvm.loop !4

67:                                               ; preds = %17
  %68 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.pnode, %struct.pnode* %68, i64 %70
  %72 = getelementptr inbounds %struct.pnode, %struct.pnode* %71, i32 0, i32 2
  %73 = load %struct.list2*, %struct.list2** %72, align 8
  store %struct.list2* %73, %struct.list2** %5, align 8
  %74 = icmp ne %struct.list2* %73, null
  br i1 %74, label %75, label %92

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %83, %75
  %77 = load %struct.list2*, %struct.list2** %5, align 8
  %78 = getelementptr inbounds %struct.list2, %struct.list2* %77, i32 0, i32 1
  %79 = load %struct.list2*, %struct.list2** %78, align 8
  store %struct.list2* %79, %struct.list2** %6, align 8
  %80 = load %struct.list2*, %struct.list2** %5, align 8
  %81 = bitcast %struct.list2* %80 to i8*
  call void @free(i8* noundef %81) #2
  %82 = load %struct.list2*, %struct.list2** %6, align 8
  store %struct.list2* %82, %struct.list2** %5, align 8
  br label %83

83:                                               ; preds = %76
  %84 = load %struct.list2*, %struct.list2** %5, align 8
  %85 = icmp ne %struct.list2* %84, null
  br i1 %85, label %76, label %86, !llvm.loop !6

86:                                               ; preds = %83
  %87 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.pnode, %struct.pnode* %87, i64 %89
  %91 = getelementptr inbounds %struct.pnode, %struct.pnode* %90, i32 0, i32 2
  store %struct.list2* null, %struct.list2** %91, align 8
  br label %92

92:                                               ; preds = %86, %67
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %7, !llvm.loop !7

96:                                               ; preds = %7
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
!7 = distinct !{!7, !5}
