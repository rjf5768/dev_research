; ModuleID = './pr87623.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr87623.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be = type { [1 x i16], i8, i8 }
%struct.le = type { [3 x i16], i8, i8 }

@__const.main.x = private unnamed_addr constant %struct.be { [1 x i16] zeroinitializer, i8 1, i8 2 }, align 2
@__const.main.y = private unnamed_addr constant %struct.le { [3 x i16] zeroinitializer, i8 1, i8 2 }, align 2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @a_or_b_different(%struct.be* nocapture noundef readonly %0, %struct.le* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.be, %struct.be* %0, i64 0, i32 1
  %4 = load i8, i8* %3, align 2
  %5 = getelementptr inbounds %struct.le, %struct.le* %1, i64 0, i32 1
  %6 = load i8, i8* %5, align 2
  %.not = icmp eq i8 %4, %6
  br i1 %.not, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.be, %struct.be* %0, i64 0, i32 2
  %9 = load i8, i8* %8, align 1
  %10 = getelementptr inbounds %struct.le, %struct.le* %1, i64 0, i32 2
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %9, %11
  %phi.cast = zext i1 %12 to i32
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i32 [ 1, %2 ], [ %phi.cast, %7 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @a_or_b_different(%struct.be* noundef nonnull @__const.main.x, %struct.le* noundef nonnull @__const.main.y)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
