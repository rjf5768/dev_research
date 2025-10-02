; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bf-pack-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bf-pack-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i48 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(%struct.foo* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.foo*, align 8
  store %struct.foo* %0, %struct.foo** %3, align 8
  %4 = load %struct.foo*, %struct.foo** %3, align 8
  %5 = bitcast %struct.foo* %4 to i64*
  %6 = load i64, i64* %5, align 4
  %7 = and i64 %6, 65535
  %8 = trunc i64 %7 to i32
  %9 = icmp ne i32 %8, 4660
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  call void @abort() #2
  unreachable

11:                                               ; preds = %1
  %12 = load %struct.foo*, %struct.foo** %3, align 8
  %13 = bitcast %struct.foo* %12 to i64*
  %14 = load i64, i64* %13, align 4
  %15 = lshr i64 %14, 16
  %16 = and i64 %15, 4294967295
  %17 = icmp ne i64 %16, 1450744508
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  call void @abort() #2
  unreachable

19:                                               ; preds = %11
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.foo, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.foo* %2 to i64*
  %4 = load i64, i64* %3, align 4
  %5 = and i64 %4, -65536
  %6 = or i64 %5, 4660
  store i64 %6, i64* %3, align 4
  %7 = bitcast %struct.foo* %2 to i64*
  %8 = load i64, i64* %7, align 4
  %9 = and i64 %8, -281474976645121
  %10 = or i64 %9, 95075992076288
  store i64 %10, i64* %7, align 4
  %11 = call i32 @f(%struct.foo* noundef %2)
  call void @exit(i32 noundef 0) #2
  unreachable
}

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
