; ModuleID = './bind_c_usage_16_c.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_usage_16_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i8, align 1
  store i8 122, i8* %1, align 1
  %2 = call signext i8 @returnA(i8* noundef nonnull %1) #3
  store i8 %2, i8* %1, align 1
  %.not = icmp eq i8 %2, 65
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  %5 = call signext i8 @returnB() #3
  store i8 %5, i8* %1, align 1
  %.not1 = icmp eq i8 %5, 66
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %4
  call void @abort() #4
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  call void @test() #3
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %6, %3
  unreachable
}

declare dso_local signext i8 @returnA(i8* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

declare dso_local signext i8 @returnB() #1

declare dso_local void @test() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
