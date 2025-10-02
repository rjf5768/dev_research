; ModuleID = './pr43560.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43560.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, [10 x i8] }

@s = dso_local constant %struct.S zeroinitializer, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @test(%struct.S* nocapture noundef %0) #0 {
  br label %2

2:                                                ; preds = %16, %1
  %3 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 2, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = icmp eq i8 %12, 47
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i1 [ false, %2 ], [ %13, %6 ]
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 2, i64 %20
  store i8 0, i8* %21, align 1
  br label %2, !llvm.loop !4

22:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call %struct.S* asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(%struct.S* nonnull @s) #2, !srcloc !6
  call void @test(%struct.S* noundef %1)
  ret i32 0
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{i64 298}
