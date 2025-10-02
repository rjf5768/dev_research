; ModuleID = './20140326-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20140326-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly uwtable willreturn
define dso_local i32 @main() #0 {
  %1 = alloca i16, align 2
  store i16 0, i16* %1, align 2
  %2 = load i32, i32* @a, align 4
  %3 = icmp eq i32 %2, 131072
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %tmpcast = bitcast i16* %1 to [2 x i8]*
  %5 = load i32, i32* @a, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [2 x i8], [2 x i8]* %tmpcast, i64 0, i64 %6
  %8 = load i8, i8* %7, align 1
  %phi.cast = sext i8 %8 to i32
  br label %9

9:                                                ; preds = %4, %0
  %.0 = phi i32 [ %phi.cast, %4 ], [ 0, %0 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree noinline nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
