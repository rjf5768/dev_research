; ModuleID = './20020402-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020402-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WorkEntrySType = type { i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64* }
%struct.ShrPcPteSType = type { %struct.ShrPcStatsSType }
%struct.ShrPcStatsSType = type { i32, i32, %struct.ShrPcCommonStatSType, %union.ShrPcStatUnion }
%struct.ShrPcCommonStatSType = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.ShrPcStatUnion = type { %struct.ShrPcGemStatSType }
%struct.ShrPcGemStatSType = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [40 x i64] }

@Local1 = dso_local global i64* null, align 8
@Local2 = dso_local global i64* null, align 8
@Local3 = dso_local global i64* null, align 8
@RDbf1 = dso_local global i64* null, align 8
@RDbf2 = dso_local global i64* null, align 8
@RDbf3 = dso_local global i64* null, align 8
@IntVc1 = dso_local global i64* null, align 8
@IntVc2 = dso_local global i64* null, align 8
@IntCode3 = dso_local global i64* null, align 8
@IntCode4 = dso_local global i64* null, align 8
@IntCode5 = dso_local global i64* null, align 8
@IntCode6 = dso_local global i64* null, align 8
@Lom1 = dso_local global i64* null, align 8
@Lom2 = dso_local global i64* null, align 8
@Lom3 = dso_local global i64* null, align 8
@Lom4 = dso_local global i64* null, align 8
@Lom5 = dso_local global i64* null, align 8
@Lom6 = dso_local global i64* null, align 8
@Lom7 = dso_local global i64* null, align 8
@Lom8 = dso_local global i64* null, align 8
@Lom9 = dso_local global i64* null, align 8
@Lom10 = dso_local global i64* null, align 8
@RDbf11 = dso_local global i64* null, align 8
@RDbf12 = dso_local global i64* null, align 8
@Workspace = dso_local global %struct.WorkEntrySType zeroinitializer, align 8
@MyPte = dso_local global %struct.ShrPcPteSType zeroinitializer, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @InitCache(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  call void @initPte(i8* noundef null, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @initPte(i8* nocapture noundef readnone %0, i64 noundef %1) #0 {
  call void @setStatPointers(%struct.ShrPcStatsSType* noundef getelementptr inbounds (%struct.ShrPcPteSType, %struct.ShrPcPteSType* @MyPte, i64 0, i32 0), i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  call void @InitCache(i32 noundef 5)
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @setStatPointers(%struct.ShrPcStatsSType* noundef %0, i64 noundef %1) #0 {
  %3 = trunc i64 %1 to i32
  %4 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 1
  store i32 %3, i32* %4, align 4
  %5 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 2, i32 0
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 2, i32 1
  store i64 5, i64* %6, align 8
  %7 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 2, i32 2
  store i64* %7, i64** @Local1, align 8
  %8 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 2, i32 3
  store i64* %8, i64** @Local2, align 8
  %9 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 2, i32 4
  store i64* %9, i64** @Local3, align 8
  %10 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 2, i32 5
  store i64* %10, i64** @RDbf1, align 8
  %11 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 2, i32 6
  store i64* %11, i64** @RDbf2, align 8
  %12 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 2, i32 7
  store i64* %12, i64** @RDbf3, align 8
  store i64 1, i64* %12, align 8
  %13 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 12
  store i64* %13, i64** @IntVc1, align 8
  %14 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 13
  store i64* %14, i64** @IntVc2, align 8
  %15 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 14
  store i64* %15, i64** @IntCode3, align 8
  %16 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 15
  store i64* %16, i64** @IntCode4, align 8
  %17 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 16
  store i64* %17, i64** @IntCode5, align 8
  %18 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 17
  store i64* %18, i64** @IntCode6, align 8
  %19 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 18
  store i64* %19, i64** getelementptr inbounds (%struct.WorkEntrySType, %struct.WorkEntrySType* @Workspace, i64 0, i32 0), align 8
  %20 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 19
  store i64* %20, i64** getelementptr inbounds (%struct.WorkEntrySType, %struct.WorkEntrySType* @Workspace, i64 0, i32 1), align 8
  %21 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 20
  store i64* %21, i64** getelementptr inbounds (%struct.WorkEntrySType, %struct.WorkEntrySType* @Workspace, i64 0, i32 2), align 8
  %22 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 21
  store i64* %22, i64** getelementptr inbounds (%struct.WorkEntrySType, %struct.WorkEntrySType* @Workspace, i64 0, i32 3), align 8
  %23 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 22
  store i64* %23, i64** getelementptr inbounds (%struct.WorkEntrySType, %struct.WorkEntrySType* @Workspace, i64 0, i32 4), align 8
  %24 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 23
  store i64* %24, i64** getelementptr inbounds (%struct.WorkEntrySType, %struct.WorkEntrySType* @Workspace, i64 0, i32 5), align 8
  %25 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 24
  store i64* %25, i64** getelementptr inbounds (%struct.WorkEntrySType, %struct.WorkEntrySType* @Workspace, i64 0, i32 6), align 8
  %26 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 25
  store i64* %26, i64** getelementptr inbounds (%struct.WorkEntrySType, %struct.WorkEntrySType* @Workspace, i64 0, i32 7), align 8
  %27 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 26
  store i64* %27, i64** getelementptr inbounds (%struct.WorkEntrySType, %struct.WorkEntrySType* @Workspace, i64 0, i32 8), align 8
  %28 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 27
  store i64* %28, i64** getelementptr inbounds (%struct.WorkEntrySType, %struct.WorkEntrySType* @Workspace, i64 0, i32 9), align 8
  %29 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 28
  store i64* %29, i64** getelementptr inbounds (%struct.WorkEntrySType, %struct.WorkEntrySType* @Workspace, i64 0, i32 10), align 8
  %30 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 0
  store i64* %30, i64** @Lom1, align 8
  %31 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 1
  store i64* %31, i64** @Lom2, align 8
  %32 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 2
  store i64* %32, i64** @Lom3, align 8
  %33 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 3
  store i64* %33, i64** @Lom4, align 8
  %34 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 4
  store i64* %34, i64** @Lom5, align 8
  %35 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 5
  store i64* %35, i64** @Lom6, align 8
  %36 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 6
  store i64* %36, i64** @Lom7, align 8
  %37 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 7
  store i64* %37, i64** @Lom8, align 8
  %38 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 8
  store i64* %38, i64** @Lom9, align 8
  %39 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 9
  store i64* %39, i64** @Lom10, align 8
  %40 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 10
  store i64* %40, i64** @RDbf11, align 8
  %41 = getelementptr inbounds %struct.ShrPcStatsSType, %struct.ShrPcStatsSType* %0, i64 0, i32 3, i32 0, i32 11
  store i64* %41, i64** @RDbf12, align 8
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
