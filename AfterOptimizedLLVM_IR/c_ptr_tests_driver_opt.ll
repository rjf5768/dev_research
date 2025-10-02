; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/c_ptr_tests_driver.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/c_ptr_tests_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.services = type { i32, i8* }
%struct.comp = type { i8*, void (%struct.comp*, %struct.services*)*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.services, align 8
  %7 = alloca %struct.comp, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = getelementptr inbounds %struct.services, %struct.services* %6, i32 0, i32 0
  store i32 17, i32* %8, align 8
  %9 = getelementptr inbounds %struct.services, %struct.services* %6, i32 0, i32 1
  store i8* null, i8** %9, align 8
  %10 = bitcast %struct.services* %6 to i8*
  %11 = getelementptr inbounds %struct.comp, %struct.comp* %7, i32 0, i32 0
  store i8* %10, i8** %11, align 8
  %12 = getelementptr inbounds %struct.comp, %struct.comp* %7, i32 0, i32 1
  store void (%struct.comp*, %struct.services*)* null, void (%struct.comp*, %struct.services*)** %12, align 8
  %13 = getelementptr inbounds %struct.comp, %struct.comp* %7, i32 0, i32 2
  store i8* null, i8** %13, align 8
  call void @sub0(%struct.comp* noundef %7, %struct.services* noundef %6)
  ret i32 0
}

declare dso_local void @sub0(%struct.comp* noundef, %struct.services* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
