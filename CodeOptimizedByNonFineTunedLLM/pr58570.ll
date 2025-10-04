; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58570.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58570.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [6 x i8] }

@e = dso_local global i32 1, align 4
@d = internal global [6 x %struct.S] zeroinitializer, align 16
@i = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @e, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %19

4:                                                ; preds = %0
  %5 = load i32, i32* @i, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* @d, i64 0, i64 %6
  %8 = bitcast %struct.S* %7 to i48*
  %9 = load i48, i48* %8, align 2
  %10 = and i48 %9, -32768
  %11 = or i48 %10, 1
  store i48 %11, i48* %8, align 2
  %12 = load i32, i32* @i, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* @d, i64 0, i64 %13
  %15 = bitcast %struct.S* %14 to i48*
  %16 = load i48, i48* %15, align 2
  %17 = and i48 %16, -17592186011649
  %18 = or i48 %17, 32768
  store i48 %18, i48* %15, align 2
  br label %19

19:                                               ; preds = %4, %0
  %20 = load i48, i48* bitcast ([6 x %struct.S]* @d to i48*), align 16
  %21 = shl i48 %20, 4
  %22 = ashr i48 %21, 19
  %23 = trunc i48 %22 to i32
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  call void @abort() #2
  unreachable

26:                                               ; preds = %19
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
