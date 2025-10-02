; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/conditional-gnu-ext.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/conditional-gnu-ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getComplex.count = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getComplex(i64 noundef %0) #0 {
  %2 = alloca { i32, i32 }, align 4
  %3 = alloca { i32, i32 }, align 4
  %4 = bitcast { i32, i32 }* %3 to i64*
  store i64 %0, i64* %4, align 4
  %5 = load i32, i32* @getComplex.count, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @getComplex.count, align 4
  %7 = icmp ne i32 %5, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void @abort() #2
  unreachable

9:                                                ; preds = %1
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %3, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 0
  %15 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  store i32 %13, i32* %15, align 4
  %16 = bitcast { i32, i32 }* %2 to i64*
  %17 = load i64, i64* %16, align 4
  ret i64 %17
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @doo() #0 {
  %1 = alloca { i32, i32 }, align 4
  %2 = alloca { i32, i32 }, align 4
  %3 = alloca { i32, i32 }, align 4
  %4 = alloca { i32, i32 }, align 4
  %5 = alloca { i32, i32 }, align 4
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %4, i32 0, i32 0
  %7 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %4, i32 0, i32 1
  store i32 1, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %8 = bitcast { i32, i32 }* %4 to i64*
  %9 = load i64, i64* %8, align 4
  %10 = call i64 @getComplex(i64 noundef %9)
  %11 = bitcast { i32, i32 }* %5 to i64*
  store i64 %10, i64* %11, align 4
  %12 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %5, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %13, 0
  %17 = icmp ne i32 %15, 0
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  br label %25

20:                                               ; preds = %0
  %21 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %3, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  br label %25

25:                                               ; preds = %20, %19
  %26 = phi i32 [ %13, %19 ], [ %22, %20 ]
  %27 = phi i32 [ %15, %19 ], [ %24, %20 ]
  %28 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 0
  %29 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  store i32 %27, i32* %29, align 4
  %30 = bitcast { i32, i32 }* %1 to i64*
  %31 = load i64, i64* %30, align 4
  ret i64 %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca { i32, i32 }, align 4
  store i32 0, i32* %1, align 4
  %3 = call i64 @doo()
  %4 = bitcast { i32, i32 }* %2 to i64*
  store i64 %3, i64* %4, align 4
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
