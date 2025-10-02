; ModuleID = './bind_c_dts_2_driver.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_dts_2_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_type_1 = type { %struct.c_type_0, i32*, i32 }
%struct.c_type_0 = type { i32, i32*, [3 x i32] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.c_type_1, align 8
  %4 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %3, i64 0, i32 0, i32 0
  store i32 10, i32* %4, align 8
  %5 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %3, i64 0, i32 0, i32 0
  %6 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %3, i64 0, i32 0, i32 1
  store i32* %5, i32** %6, align 8
  %7 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %3, i64 0, i32 0, i32 2, i64 0
  store i32 1, i32* %7, align 8
  %8 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %3, i64 0, i32 0, i32 2, i64 1
  store i32 2, i32* %8, align 4
  %9 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %3, i64 0, i32 0, i32 2, i64 2
  store i32 3, i32* %9, align 8
  %10 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %3, i64 0, i32 2
  %11 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %3, i64 0, i32 1
  store i32* %10, i32** %11, align 8
  %12 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %3, i64 0, i32 2
  store i32 11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %3, i64 0, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %3, i64 0, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %3, i64 0, i32 0, i32 2, i64 0
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %3, i64 0, i32 0, i32 2, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %3, i64 0, i32 0, i32 2, i64 2
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %3, i64 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %3, i64 0, i32 2
  %26 = load i32, i32* %25, align 8
  call void @sub0(%struct.c_type_1* noundef nonnull %3, i32 noundef %14, i32* noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32* noundef %24, i32 noundef %26) #2
  ret i32 0
}

declare dso_local void @sub0(%struct.c_type_1* noundef, i32 noundef, i32* noundef, i32 noundef, i32 noundef, i32 noundef, i32* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
