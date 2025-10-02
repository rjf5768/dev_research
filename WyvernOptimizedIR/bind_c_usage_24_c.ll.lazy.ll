; ModuleID = './bind_c_usage_24_c.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_usage_24_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @c_proc(i1 noundef zeroext %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  br i1 %0, label %6, label %4

4:                                                ; preds = %2
  %.not = icmp eq i32* %1, null
  br i1 %.not, label %6, label %5

5:                                                ; preds = %4
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4, %2
  br i1 %0, label %7, label %13

7:                                                ; preds = %6
  %.not2 = icmp eq i32* %1, null
  br i1 %.not2, label %8, label %9

8:                                                ; preds = %7
  call void @abort() #3
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  %10 = load i32, i32* %1, align 4
  %.not3 = icmp eq i32 %10, 4
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %9
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  store i32 7, i32* %1, align 4
  br label %13

13:                                               ; preds = %12, %6
  br label %14

14:                                               ; preds = %13
  store i32 43, i32* %3, align 4
  call void @subtest(i1 noundef zeroext true, i32* noundef nonnull %3) #4
  call void @subtest(i1 noundef zeroext false, i32* noundef null) #4
  %15 = load i32, i32* %3, align 4
  %.not1 = icmp eq i32 %15, -45
  br i1 %.not1, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #3
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  ret void

UnifiedUnreachableBlock:                          ; preds = %16, %11, %8, %5
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

declare dso_local void @subtest(i1 noundef zeroext, i32* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
