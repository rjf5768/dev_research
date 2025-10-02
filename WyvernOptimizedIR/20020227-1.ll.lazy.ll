; ModuleID = './20020227-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020227-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x = type <{ i8, { float, float } }>

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  call void @f1()
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1() #1 {
  %1 = alloca %struct.x, align 1
  %2 = getelementptr inbounds %struct.x, %struct.x* %1, i64 0, i32 1, i32 0
  %3 = getelementptr inbounds %struct.x, %struct.x* %1, i64 0, i32 1, i32 1
  store float 1.000000e+00, float* %2, align 1
  store float 0.000000e+00, float* %3, align 1
  %4 = getelementptr inbounds %struct.x, %struct.x* %1, i64 0, i32 0
  store i8 42, i8* %4, align 1
  call void @f2(%struct.x* noundef nonnull %1)
  ret void
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2(%struct.x* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.x, %struct.x* %0, i64 0, i32 1, i32 0
  %3 = load float, float* %2, align 1
  %4 = getelementptr inbounds %struct.x, %struct.x* %0, i64 0, i32 1, i32 1
  %5 = load float, float* %4, align 1
  %6 = fcmp une float %3, 1.000000e+00
  %7 = fcmp une float %5, 0.000000e+00
  %8 = or i1 %6, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.x, %struct.x* %0, i64 0, i32 0
  %11 = load i8, i8* %10, align 1
  %.not = icmp eq i8 %11, 42
  br i1 %.not, label %13, label %12

12:                                               ; preds = %9, %1
  call void @abort() #3
  unreachable

13:                                               ; preds = %9
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
