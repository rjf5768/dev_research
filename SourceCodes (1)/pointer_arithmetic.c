; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/pointer_arithmetic.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/pointer_arithmetic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1Ty = type { i32 }
%struct.S2Ty = type { %struct.S1Ty, %struct.S1Ty }

; Function Attrs: noinline nounwind uwtable
define dso_local void @takeS1(%struct.S1Ty* noundef %0) #0 {
  %2 = alloca %struct.S1Ty*, align 8
  store %struct.S1Ty* %0, %struct.S1Ty** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @takeVoid(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S2Ty, align 4
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %2, i32 0, i32 1
  call void @takeS1(%struct.S1Ty* noundef %3)
  %4 = bitcast %struct.S2Ty* %2 to i8*
  call void @takeVoid(i8* noundef %4)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
