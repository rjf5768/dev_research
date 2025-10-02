; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/struct2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/struct2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Globals = type { i8, [1 x %struct.min_info], %struct.min_info* }
%struct.min_info = type { i32, i32 }

@G = dso_local global %struct.Globals zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"error\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @assign() #0 {
  %1 = alloca i32, align 4
  store %struct.min_info* getelementptr inbounds (%struct.Globals, %struct.Globals* @G, i32 0, i32 1, i64 0), %struct.min_info** getelementptr inbounds (%struct.Globals, %struct.Globals* @G, i32 0, i32 2), align 8
  %2 = load i32, i32* %1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @assign()
  %3 = load %struct.min_info*, %struct.min_info** getelementptr inbounds (%struct.Globals, %struct.Globals* @G, i32 0, i32 2), align 8
  %4 = icmp ne %struct.min_info* %3, getelementptr inbounds (%struct.Globals, %struct.Globals* @G, i32 0, i32 1, i64 0)
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
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
