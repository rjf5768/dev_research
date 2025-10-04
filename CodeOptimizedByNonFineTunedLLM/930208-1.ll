; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930208-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930208-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.T = type { i64 }
%struct.anon = type { i8, i8, i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i64 %0) #0 {
  %2 = alloca %union.T, align 8
  %3 = getelementptr inbounds %union.T, %union.T* %2, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = bitcast %union.T* %2 to %struct.anon*
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 3
  %6 = load i8, i8* %5, align 1
  %7 = add i8 %6, 1
  store i8 %7, i8* %5, align 1
  %8 = bitcast %union.T* %2 to %struct.anon*
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 8
  %11 = add i8 %10, 1
  store i8 %11, i8* %9, align 8
  %12 = bitcast %union.T* %2 to %struct.anon*
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 2
  %14 = load i8, i8* %13, align 2
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = bitcast %union.T* %2 to %struct.anon*
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 2
  br label %23

23:                                               ; preds = %17, %1
  %24 = phi i1 [ true, %1 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.T, align 8
  store i32 0, i32* %1, align 4
  %3 = bitcast %union.T* %2 to %struct.anon*
  %4 = getelementptr inbounds %struct.anon, %struct.anon* %3, i32 0, i32 2
  store i8 2, i8* %4, align 2
  %5 = bitcast %union.T* %2 to %struct.anon*
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 1
  store i8 2, i8* %6, align 1
  %7 = bitcast %union.T* %2 to %struct.anon*
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 3
  store i8 -1, i8* %8, align 1
  %9 = bitcast %union.T* %2 to %struct.anon*
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  store i8 -1, i8* %10, align 8
  %11 = getelementptr inbounds %union.T, %union.T* %2, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @f(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  call void @abort() #2
  unreachable

16:                                               ; preds = %0
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
