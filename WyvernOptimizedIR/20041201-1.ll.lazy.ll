; ModuleID = './20041201-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041201-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scc2 = type { { i8, i8 }, { i8, i8 } }

@s = dso_local global %struct.Scc2 { { i8, i8 } { i8 1, i8 2 }, { i8, i8 } { i8 3, i8 4 } }, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @checkScc2(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = bitcast i32* %2 to { i8, i8 }*
  %4 = bitcast i32* %2 to i8*
  %5 = load i8, i8* %4, align 4
  %6 = getelementptr inbounds { i8, i8 }, { i8, i8 }* %3, i64 0, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %5, 1
  %9 = icmp ne i8 %7, 2
  %10 = or i1 %8, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %tmpcast = bitcast i32* %2 to %struct.Scc2*
  %12 = getelementptr inbounds %struct.Scc2, %struct.Scc2* %tmpcast, i64 0, i32 1, i32 0
  %13 = load i8, i8* %12, align 2
  %14 = getelementptr inbounds %struct.Scc2, %struct.Scc2* %tmpcast, i64 0, i32 1, i32 1
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %13, 3
  %17 = icmp ne i8 %15, 4
  %18 = or i1 %16, %17
  %phi.cast = zext i1 %18 to i32
  br label %19

19:                                               ; preds = %11, %1
  %20 = phi i32 [ 1, %1 ], [ %phi.cast, %11 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @main() #1 {
  %1 = load i32, i32* bitcast (%struct.Scc2* @s to i32*), align 4
  %2 = call i32 @checkScc2(i32 %1)
  ret i32 %2
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
