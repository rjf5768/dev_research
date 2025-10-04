; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/c_char_tests_3_c.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/c_char_tests_3_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @test_char(i8 noundef signext 97, i8 noundef signext 98, i8 noundef signext 99, i8 noundef signext 100, i8 noundef signext 101, i8 noundef signext 102, i8 noundef signext 103, i8 noundef signext 104, i8 noundef signext 105, i8 noundef signext 106, i8 noundef signext 107, i8 noundef signext 108, i8 noundef signext 109, i8 noundef signext 110, i8 noundef signext 111)
  call void @test_int(i8 noundef signext 97, i8 noundef signext 98, i8 noundef signext 99, i8 noundef signext 100, i8 noundef signext 101, i8 noundef signext 102, i8 noundef signext 103, i8 noundef signext 104, i8 noundef signext 105, i8 noundef signext 106, i8 noundef signext 107, i8 noundef signext 108, i8 noundef signext 109, i8 noundef signext 110, i8 noundef signext 111)
  ret i32 0
}

declare dso_local void @test_char(i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext) #1

declare dso_local void @test_int(i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
