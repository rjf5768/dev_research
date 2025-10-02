; ModuleID = './2003-05-21-UnionBitfields.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/2003-05-21-UnionBitfields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }
%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @target_isinf(double noundef %0) #0 {
  %2 = alloca %union.anon, align 8
  %3 = getelementptr inbounds %union.anon, %union.anon* %2, i64 0, i32 0
  store double %0, double* %3, align 8
  %4 = bitcast %union.anon* %2 to %struct.anon*
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 2146435072
  %8 = icmp eq i32 %7, 2146435072
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = bitcast %union.anon* %2 to %struct.anon*
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i64 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 1048575
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = bitcast %union.anon* %2 to i32*
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  %phi.cast = zext i1 %18 to i32
  br label %19

19:                                               ; preds = %15, %9, %1
  %20 = phi i32 [ 0, %9 ], [ 0, %1 ], [ %phi.cast, %15 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @target_isinf(double noundef 1.234420e+03)
  %2 = call i32 @target_isinf(double noundef 0x7FF0000000000000)
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef %1, i32 noundef %2) #3
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
