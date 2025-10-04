; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/local-union.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/local-union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.foo = type { i32 }
%union.foo.0 = type { float }

@.str = private unnamed_addr constant [14 x i8] c"return  = %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @test(%union.foo* noundef %0) #0 {
  %2 = alloca %union.foo*, align 8
  %3 = alloca %union.foo.0, align 4
  store %union.foo* %0, %union.foo** %2, align 8
  %4 = bitcast %union.foo.0* %3 to i32*
  store i32 -1, i32* %4, align 4
  %5 = bitcast %union.foo.0* %3 to float*
  %6 = load float, float* %5, align 4
  %7 = fpext float %6 to double
  ret double %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.foo, align 4
  store i32 0, i32* %1, align 4
  %3 = call double @test(%union.foo* noundef %2)
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), double noundef %3)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
