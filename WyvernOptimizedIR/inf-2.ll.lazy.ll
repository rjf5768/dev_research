; ModuleID = './inf-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/inf-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(double noundef %0, double noundef %1) #0 {
  %3 = fcmp oeq double %0, 0x7FF0000000000000
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  call void @abort() #2
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %2
  %6 = fcmp oeq double %0, 0xFFF0000000000000
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  call void @abort() #2
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %5
  %9 = fcmp oeq double %1, 0xFFF0000000000000
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @abort() #2
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %8
  %12 = fcmp une double %1, 0x7FF0000000000000
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @abort() #2
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %11
  %15 = fcmp ult double %0, 0x7FF0000000000000
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #2
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  br i1 false, label %18, label %19

18:                                               ; preds = %17
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %17
  br i1 false, label %20, label %21

20:                                               ; preds = %19
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %19
  %22 = fcmp ugt double %0, 0xFFF0000000000000
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  call void @abort() #2
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %21
  br i1 false, label %25, label %26

25:                                               ; preds = %24
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %24
  ret void

UnifiedUnreachableBlock:                          ; preds = %25, %23, %20, %18, %16, %13, %10, %7, %4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testf(float noundef %0, float noundef %1) #0 {
  %3 = fcmp oeq float %0, 0x7FF0000000000000
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  call void @abort() #2
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %2
  %6 = fcmp oeq float %0, 0xFFF0000000000000
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  call void @abort() #2
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %5
  %9 = fcmp oeq float %1, 0xFFF0000000000000
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @abort() #2
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %8
  %12 = fcmp une float %1, 0x7FF0000000000000
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @abort() #2
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %11
  %15 = fcmp ult float %0, 0x7FF0000000000000
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #2
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  br i1 false, label %18, label %19

18:                                               ; preds = %17
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %17
  br i1 false, label %20, label %21

20:                                               ; preds = %19
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %19
  %22 = fcmp ugt float %0, 0xFFF0000000000000
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  call void @abort() #2
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %21
  br i1 false, label %25, label %26

25:                                               ; preds = %24
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %24
  ret void

UnifiedUnreachableBlock:                          ; preds = %25, %23, %20, %18, %16, %13, %10, %7, %4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @testl(x86_fp80 noundef %0, x86_fp80 noundef %1) #0 {
  %3 = fcmp oeq x86_fp80 %0, 0xK7FFF8000000000000000
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  call void @abort() #2
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %2
  %6 = fcmp oeq x86_fp80 %0, 0xKFFFF8000000000000000
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  call void @abort() #2
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %5
  %9 = fcmp oeq x86_fp80 %1, 0xKFFFF8000000000000000
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  call void @abort() #2
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %8
  %12 = fcmp une x86_fp80 %1, 0xK7FFF8000000000000000
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @abort() #2
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %11
  %15 = fcmp ult x86_fp80 %0, 0xK7FFF8000000000000000
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #2
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  br i1 false, label %18, label %19

18:                                               ; preds = %17
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %17
  br i1 false, label %20, label %21

20:                                               ; preds = %19
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %19
  %22 = fcmp ugt x86_fp80 %0, 0xKFFFF8000000000000000
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  call void @abort() #2
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %21
  br i1 false, label %25, label %26

25:                                               ; preds = %24
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %24
  ret void

UnifiedUnreachableBlock:                          ; preds = %25, %23, %20, %18, %16, %13, %10, %7, %4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @test(double noundef 3.400000e+01, double noundef 0x7FF0000000000000)
  call void @testf(float noundef 3.400000e+01, float noundef 0x7FF0000000000000)
  call void @testl(x86_fp80 noundef 0xK40048800000000000000, x86_fp80 noundef 0xK7FFF8000000000000000)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
