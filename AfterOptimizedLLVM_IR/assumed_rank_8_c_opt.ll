; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/assumed_rank_8_c.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/assumed_rank_8_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a = type { i32* }
%struct.b = type { %struct.a }

; Function Attrs: noinline nounwind uwtable
define dso_local void @check_(%struct.a* noundef %0) #0 {
  %2 = alloca %struct.a*, align 8
  store %struct.a* %0, %struct.a** %2, align 8
  %3 = load %struct.a*, %struct.a** %2, align 8
  %4 = getelementptr inbounds %struct.a, %struct.a* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 489
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void @abort() #2
  unreachable

9:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @check2_(%struct.b* noundef %0) #0 {
  %2 = alloca %struct.b*, align 8
  store %struct.b* %0, %struct.b** %2, align 8
  %3 = load %struct.b*, %struct.b** %2, align 8
  %4 = getelementptr inbounds %struct.b, %struct.b* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.a, %struct.a* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 489
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  call void @abort() #2
  unreachable

10:                                               ; preds = %1
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
