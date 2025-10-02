; ModuleID = './c_ptr_tests_driver.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/c_ptr_tests_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.services = type { i32, i8* }
%struct.comp = type { i8*, void (%struct.comp*, %struct.services*)*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.services, align 8
  %4 = alloca %struct.comp, align 8
  %5 = getelementptr inbounds %struct.services, %struct.services* %3, i64 0, i32 0
  store i32 17, i32* %5, align 8
  %6 = getelementptr inbounds %struct.services, %struct.services* %3, i64 0, i32 1
  store i8* null, i8** %6, align 8
  %7 = bitcast %struct.comp* %4 to %struct.services**
  store %struct.services* %3, %struct.services** %7, align 8
  %8 = getelementptr inbounds %struct.comp, %struct.comp* %4, i64 0, i32 1
  store void (%struct.comp*, %struct.services*)* null, void (%struct.comp*, %struct.services*)** %8, align 8
  %9 = getelementptr inbounds %struct.comp, %struct.comp* %4, i64 0, i32 2
  store i8* null, i8** %9, align 8
  call void @sub0(%struct.comp* noundef nonnull %4, %struct.services* noundef nonnull %3) #2
  ret i32 0
}

declare dso_local void @sub0(%struct.comp* noundef, %struct.services* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
