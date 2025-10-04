; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921123-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921123-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.four_quarters = type { i16, i16, i16, i16 }

@b = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@x = dso_local global %struct.four_quarters zeroinitializer, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i64 %0) #0 {
  %2 = alloca %struct.four_quarters, align 2
  %3 = bitcast %struct.four_quarters* %2 to i64*
  store i64 %0, i64* %3, align 2
  %4 = getelementptr inbounds %struct.four_quarters, %struct.four_quarters* %2, i32 0, i32 2
  %5 = load i16, i16* %4, align 2
  %6 = zext i16 %5 to i32
  store i32 %6, i32* @b, align 4
  %7 = getelementptr inbounds %struct.four_quarters, %struct.four_quarters* %2, i32 0, i32 3
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i32
  store i32 %9, i32* @a, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.four_quarters, align 2
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct.four_quarters, %struct.four_quarters* %2, i32 0, i32 2
  store i16 0, i16* %3, align 2
  %4 = getelementptr inbounds %struct.four_quarters, %struct.four_quarters* %2, i32 0, i32 1
  store i16 0, i16* %4, align 2
  %5 = getelementptr inbounds %struct.four_quarters, %struct.four_quarters* %2, i32 0, i32 0
  store i16 0, i16* %5, align 2
  %6 = getelementptr inbounds %struct.four_quarters, %struct.four_quarters* %2, i32 0, i32 3
  store i16 38, i16* %6, align 2
  %7 = bitcast %struct.four_quarters* %2 to i64*
  %8 = load i64, i64* %7, align 2
  call void @f(i64 %8)
  %9 = load i32, i32* @a, align 4
  %10 = icmp ne i32 %9, 38
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  call void @abort() #2
  unreachable

12:                                               ; preds = %0
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
