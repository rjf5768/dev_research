; ModuleID = './conditional-gnu-ext.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/conditional-gnu-ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getComplex.count = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getComplex(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i32, i32* @getComplex.count, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @getComplex.count, align 4
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %1
  call void @abort() #2
  unreachable

7:                                                ; preds = %1
  %tmpcast1 = bitcast i64* %2 to { i32, i32 }*
  %tmpcast = bitcast i64* %3 to { i32, i32 }*
  %8 = bitcast i64* %3 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %tmpcast, i64 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = bitcast i64* %2 to i32*
  %13 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %tmpcast1, i64 0, i32 1
  store i32 %9, i32* %12, align 8
  store i32 %11, i32* %13, align 4
  %14 = load i64, i64* %2, align 8
  ret i64 %14
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @doo() #0 {
  %1 = alloca i64, align 8
  %2 = alloca { i32, i32 }, align 4
  %3 = alloca i64, align 8
  %tmpcast = bitcast i64* %3 to { i32, i32 }*
  %4 = alloca i64, align 8
  %tmpcast1 = bitcast i64* %4 to { i32, i32 }*
  %5 = bitcast i64* %3 to i32*
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %tmpcast, i64 0, i32 1
  store i32 1, i32* %5, align 8
  store i32 2, i32* %6, align 4
  %7 = load i64, i64* %3, align 8
  %8 = call i64 @getComplex(i64 noundef %7)
  store i64 %8, i64* %4, align 8
  %9 = bitcast i64* %4 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %tmpcast1, i64 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %10, %12
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %15, label %14

14:                                               ; preds = %0
  br label %20

15:                                               ; preds = %0
  %16 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i64 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i64 0, i32 1
  %19 = load i32, i32* %18, align 4
  br label %20

20:                                               ; preds = %15, %14
  %21 = phi i32 [ %10, %14 ], [ %17, %15 ]
  %22 = phi i32 [ %12, %14 ], [ %19, %15 ]
  %tmpcast2 = bitcast i64* %1 to { i32, i32 }*
  %23 = bitcast i64* %1 to i32*
  %24 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %tmpcast2, i64 0, i32 1
  store i32 %21, i32* %23, align 8
  store i32 %22, i32* %24, align 4
  %25 = load i64, i64* %1, align 8
  ret i64 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i64 @doo()
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
