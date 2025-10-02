; ModuleID = './pr58570.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58570.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [6 x i8] }

@e = dso_local global i32 1, align 4
@d = internal global [6 x %struct.S] zeroinitializer, align 16
@i = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i32, i32* @e, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %17, label %2

2:                                                ; preds = %0
  %3 = load i32, i32* @i, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* @d, i64 0, i64 %4
  %6 = bitcast %struct.S* %5 to i48*
  %7 = load i48, i48* %6, align 2
  %8 = and i48 %7, -32768
  %9 = or i48 %8, 1
  store i48 %9, i48* %6, align 2
  %10 = load i32, i32* @i, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [6 x %struct.S], [6 x %struct.S]* @d, i64 0, i64 %11
  %13 = bitcast %struct.S* %12 to i48*
  %14 = load i48, i48* %13, align 2
  %15 = and i48 %14, -17592186011649
  %16 = or i48 %15, 32768
  store i48 %16, i48* %13, align 2
  br label %17

17:                                               ; preds = %2, %0
  %18 = load i48, i48* bitcast ([6 x %struct.S]* @d to i48*), align 16
  %19 = shl i48 %18, 4
  %20 = ashr i48 %19, 19
  %21 = trunc i48 %20 to i32
  %.not1 = icmp eq i32 %21, 1
  br i1 %.not1, label %23, label %22

22:                                               ; preds = %17
  call void @abort() #2
  unreachable

23:                                               ; preds = %17
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
