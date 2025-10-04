; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960301-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960301-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i16, [2 x i8] }

@foo = dso_local global %struct.foo zeroinitializer, align 4
@oldfoo = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i16, i16* getelementptr inbounds (%struct.foo, %struct.foo* @foo, i32 0, i32 0), align 4
  %5 = lshr i16 %4, 12
  %6 = zext i16 %5 to i32
  store i32 %6, i32* @oldfoo, align 4
  %7 = load i32, i32* %3, align 4
  %8 = trunc i32 %7 to i16
  %9 = load i16, i16* getelementptr inbounds (%struct.foo, %struct.foo* @foo, i32 0, i32 0), align 4
  %10 = and i16 %8, 15
  %11 = shl i16 %10, 12
  %12 = and i16 %9, 4095
  %13 = or i16 %12, %11
  store i16 %13, i16* getelementptr inbounds (%struct.foo, %struct.foo* @foo, i32 0, i32 0), align 4
  %14 = zext i16 %10 to i32
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %19

18:                                               ; preds = %1
  store i32 2, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @bar(i32 noundef 1)
  %3 = icmp ne i32 %2, 1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
