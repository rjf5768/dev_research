; ModuleID = './pr30704.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/pr30704.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i64 @f1() #0 {
  ret i64 4503599627370495
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local double @f2() #0 {
  ret double 0xFEDCBA9876543
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call i64 @f1()
  %.cast = bitcast i64 %1 to double
  %2 = fcmp une double %.cast, 0xFFFFFFFFFFFFF
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  %5 = call double @f2()
  %.cast1 = bitcast double %5 to i64
  %.not = icmp eq i64 %.cast1, 4483583629026627
  br i1 %.not, label %7, label %6

6:                                                ; preds = %4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  br i1 false, label %8, label %9

8:                                                ; preds = %7
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %8, %6, %3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
