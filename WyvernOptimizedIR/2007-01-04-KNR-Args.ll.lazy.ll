; ModuleID = './2007-01-04-KNR-Args.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2007-01-04-KNR-Args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"%c %f %d %f %d %f %d %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @p1(i32 noundef %0, double noundef %1, i32 noundef %2, double noundef %3, i32 noundef %4, double noundef %5, i64 noundef %6, double noundef %7) #0 {
  %9 = fptrunc double %1 to float
  %10 = fptrunc double %5 to float
  %sext = shl i32 %0, 24
  %11 = ashr exact i32 %sext, 24
  %12 = fpext float %9 to double
  %sext1 = shl i32 %2, 16
  %13 = ashr exact i32 %sext1, 16
  %14 = fpext float %10 to double
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef %11, double noundef %12, i32 noundef %13, double noundef %3, i32 noundef %4, double noundef %14, i64 noundef %6, double noundef %7) #2
  ret i32 undef
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @p2(i8 noundef signext %0, float noundef %1, i16 noundef signext %2, double noundef %3, i32 noundef %4, float noundef %5, i64 noundef %6, double noundef %7) #0 {
  %9 = sext i8 %0 to i32
  %10 = fpext float %1 to double
  %11 = sext i16 %2 to i32
  %12 = fpext float %5 to double
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef %9, double noundef %10, i32 noundef %11, double noundef %3, i32 noundef %4, double noundef %12, i64 noundef %6, double noundef %7) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = call i32 @p1(i32 noundef 97, double noundef 4.000000e+00, i32 noundef 1, double noundef 5.000000e+00, i32 noundef 2, double noundef 4.000000e+00, i64 noundef 3, double noundef 5.000000e+00)
  call void @p2(i8 noundef signext 97, float noundef 4.000000e+00, i16 noundef signext 1, double noundef 5.000000e+00, i32 noundef 2, float noundef 4.000000e+00, i64 noundef 3, double noundef 5.000000e+00)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
