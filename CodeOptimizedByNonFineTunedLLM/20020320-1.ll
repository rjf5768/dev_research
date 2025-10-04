; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020320-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020320-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.large = type { i32, [9 x i32] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.large, align 4
  %8 = alloca %struct.large, align 4
  %9 = alloca %struct.large, align 4
  %10 = alloca %struct.large, align 4
  store i32 0, i32* %1, align 4
  store i32 2, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %12, %14
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %0
  call void @abort() #3
  unreachable

19:                                               ; preds = %0
  %20 = getelementptr inbounds %struct.large, %struct.large* %8, i32 0, i32 0
  store i32 2, i32* %20, align 4
  %21 = bitcast %struct.large* %7 to i8*
  %22 = bitcast %struct.large* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 40, i1 false)
  %23 = getelementptr inbounds %struct.large, %struct.large* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.large, %struct.large* %10, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = bitcast %struct.large* %9 to i8*
  %27 = bitcast %struct.large* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 40, i1 false)
  %28 = getelementptr inbounds %struct.large, %struct.large* %9, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %24, %29
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  call void @abort() #3
  unreachable

34:                                               ; preds = %19
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
