; ModuleID = './pr59388.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr59388.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, [3 x i8] }

@b = dso_local global %struct.S zeroinitializer, align 4
@a = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @main() #0 {
  %1 = load i8, i8* getelementptr inbounds (%struct.S, %struct.S* @b, i64 0, i32 0), align 4
  %2 = and i8 %1, 1
  %trunc = icmp ne i8 %2, 0
  %rev = call i1 @llvm.bitreverse.i1(i1 %trunc)
  %3 = zext i1 %rev to i32
  store i32 %3, i32* @a, align 4
  ret i32 %3
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i1 @llvm.bitreverse.i1(i1) #1

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
