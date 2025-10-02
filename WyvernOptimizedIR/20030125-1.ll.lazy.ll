; ModuleID = './20030125-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030125-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float @t(float noundef %0) #0 {
  %2 = fpext float %0 to double
  %3 = call double @sin(double noundef %2) #6
  %4 = fptrunc double %3 to float
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local double @sin(double noundef %0) #0 {
  ret double %0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local float @q(float noundef %0) #1 {
  %2 = call float @llvm.floor.f32(float %0)
  ret float %2
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local double @q1(float noundef %0) #1 {
  %2 = call float @llvm.floor.f32(float %0)
  %3 = fpext float %2 to double
  ret double %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @main() #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define weak dso_local double @floor(double noundef %0) #1 {
  call void @abort() #7
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define weak dso_local float @floorf(float noundef %0) #1 {
  ret float %0
}

; Function Attrs: noinline nounwind uwtable
define weak dso_local float @sinf(float noundef %0) #0 {
  call void @abort() #7
  unreachable
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
