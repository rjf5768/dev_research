; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_usage_16_c.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_usage_16_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  store i8 122, i8* %2, align 1
  %3 = call signext i8 @returnA(i8* noundef %2)
  store i8 %3, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp ne i32 %5, 65
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #3
  unreachable

8:                                                ; preds = %0
  %9 = call signext i8 @returnB()
  store i8 %9, i8* %2, align 1
  %10 = load i8, i8* %2, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 66
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  call void @abort() #3
  unreachable

14:                                               ; preds = %8
  call void @test()
  ret i32 0
}

declare dso_local signext i8 @returnA(i8* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

declare dso_local signext i8 @returnB() #1

declare dso_local void @test() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
