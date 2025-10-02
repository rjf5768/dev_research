; ModuleID = './pr34971.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr34971.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i40 }

@x = dso_local global %struct.foo zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1(i64 noundef %0) #0 {
  %2 = load i64, i64* bitcast (%struct.foo* @x to i64*), align 8
  %3 = shl i64 %2, 8
  %4 = and i64 %3, 281474976710400
  %5 = lshr i64 %2, 32
  %6 = and i64 %5, 255
  %7 = or i64 %4, %6
  %.not = icmp eq i64 %7, %0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %1
  call void @abort() #2
  unreachable

9:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i64, i64* bitcast (%struct.foo* @x to i64*), align 8
  %2 = and i64 %1, -1099511627776
  %3 = or i64 %2, 4294967297
  store i64 %3, i64* bitcast (%struct.foo* @x to i64*), align 8
  call void @test1(i64 noundef 257)
  %4 = load i64, i64* bitcast (%struct.foo* @x to i64*), align 8
  %5 = and i64 %4, -1099511627776
  %6 = or i64 %5, 4294967296
  store i64 %6, i64* bitcast (%struct.foo* @x to i64*), align 8
  call void @test1(i64 noundef 1)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
