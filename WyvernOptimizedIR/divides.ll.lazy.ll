; ModuleID = './divides.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/divides.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.SV = type { <4 x i32> }
%union.UV = type { <4 x i32> }

@.str = private unnamed_addr constant [22 x i8] c"U3.V = <%u %u %u %u>\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"S3.V = <%u %u %u %u>\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @testuvec(<4 x i32>* nocapture noundef readonly %0, <4 x i32>* nocapture noundef readonly %1, <4 x i32>* nocapture noundef writeonly %2) #0 {
  %4 = load <4 x i32>, <4 x i32>* %0, align 16
  %5 = load <4 x i32>, <4 x i32>* %1, align 16
  %6 = udiv <4 x i32> %4, %5
  store <4 x i32> %6, <4 x i32>* %2, align 16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @testsvec(<4 x i32>* nocapture noundef readonly %0, <4 x i32>* nocapture noundef readonly %1, <4 x i32>* nocapture noundef writeonly %2) #0 {
  %4 = load <4 x i32>, <4 x i32>* %0, align 16
  %5 = load <4 x i32>, <4 x i32>* %1, align 16
  %6 = sdiv <4 x i32> %4, %5
  store <4 x i32> %6, <4 x i32>* %2, align 16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #1 {
  %3 = alloca %union.SV, align 16
  %4 = alloca %union.SV, align 16
  %5 = alloca %union.SV, align 16
  %6 = alloca %union.UV, align 16
  %7 = alloca %union.UV, align 16
  %8 = alloca %union.UV, align 16
  %9 = getelementptr inbounds %union.SV, %union.SV* %4, i64 0, i32 0, i64 0
  store i32 2, i32* %9, align 16
  %10 = getelementptr inbounds %union.SV, %union.SV* %3, i64 0, i32 0, i64 0
  store i32 2, i32* %10, align 16
  %11 = getelementptr inbounds %union.SV, %union.SV* %4, i64 0, i32 0, i64 1
  store i32 -3, i32* %11, align 4
  %12 = getelementptr inbounds %union.SV, %union.SV* %3, i64 0, i32 0, i64 1
  store i32 -3, i32* %12, align 4
  %13 = getelementptr inbounds %union.SV, %union.SV* %4, i64 0, i32 0, i64 2
  store i32 5, i32* %13, align 8
  %14 = getelementptr inbounds %union.SV, %union.SV* %3, i64 0, i32 0, i64 2
  store i32 5, i32* %14, align 8
  %15 = getelementptr inbounds %union.SV, %union.SV* %4, i64 0, i32 0, i64 3
  store i32 -8, i32* %15, align 4
  %16 = getelementptr inbounds %union.SV, %union.SV* %3, i64 0, i32 0, i64 3
  store i32 -8, i32* %16, align 4
  %17 = getelementptr inbounds %union.UV, %union.UV* %7, i64 0, i32 0, i64 0
  store i32 2, i32* %17, align 16
  %18 = getelementptr inbounds %union.UV, %union.UV* %6, i64 0, i32 0, i64 0
  store i32 2, i32* %18, align 16
  %19 = getelementptr inbounds %union.UV, %union.UV* %7, i64 0, i32 0, i64 1
  store i32 3, i32* %19, align 4
  %20 = getelementptr inbounds %union.UV, %union.UV* %6, i64 0, i32 0, i64 1
  store i32 3, i32* %20, align 4
  %21 = getelementptr inbounds %union.UV, %union.UV* %7, i64 0, i32 0, i64 2
  store i32 5, i32* %21, align 8
  %22 = getelementptr inbounds %union.UV, %union.UV* %6, i64 0, i32 0, i64 2
  store i32 5, i32* %22, align 8
  %23 = getelementptr inbounds %union.UV, %union.UV* %7, i64 0, i32 0, i64 3
  store i32 8, i32* %23, align 4
  %24 = getelementptr inbounds %union.UV, %union.UV* %6, i64 0, i32 0, i64 3
  store i32 8, i32* %24, align 4
  %25 = getelementptr inbounds %union.UV, %union.UV* %6, i64 0, i32 0
  %26 = getelementptr inbounds %union.UV, %union.UV* %7, i64 0, i32 0
  %27 = getelementptr inbounds %union.UV, %union.UV* %8, i64 0, i32 0
  call void @testuvec(<4 x i32>* noundef nonnull %25, <4 x i32>* noundef nonnull %26, <4 x i32>* noundef nonnull %27)
  %28 = getelementptr inbounds %union.SV, %union.SV* %3, i64 0, i32 0
  %29 = getelementptr inbounds %union.SV, %union.SV* %4, i64 0, i32 0
  %30 = getelementptr inbounds %union.SV, %union.SV* %5, i64 0, i32 0
  call void @testsvec(<4 x i32>* noundef nonnull %28, <4 x i32>* noundef nonnull %29, <4 x i32>* noundef nonnull %30)
  %31 = getelementptr inbounds %union.UV, %union.UV* %8, i64 0, i32 0, i64 0
  %32 = load i32, i32* %31, align 16
  %33 = getelementptr inbounds %union.UV, %union.UV* %8, i64 0, i32 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %union.UV, %union.UV* %8, i64 0, i32 0, i64 2
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %union.UV, %union.UV* %8, i64 0, i32 0, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38) #3
  %40 = getelementptr inbounds %union.SV, %union.SV* %5, i64 0, i32 0, i64 0
  %41 = load i32, i32* %40, align 16
  %42 = getelementptr inbounds %union.SV, %union.SV* %5, i64 0, i32 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %union.SV, %union.SV* %5, i64 0, i32 0, i64 2
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %union.SV, %union.SV* %5, i64 0, i32 0, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47) #3
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
