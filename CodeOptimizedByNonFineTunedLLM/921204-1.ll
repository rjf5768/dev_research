; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921204-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921204-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bu = type { %struct.bf }
%struct.bf = type { i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 %0) #0 {
  %2 = alloca %union.bu, align 4
  %3 = alloca %union.bu, align 4
  %4 = getelementptr inbounds %union.bu, %union.bu* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.bf, %struct.bf* %4, i32 0, i32 0
  store i32 %0, i32* %5, align 4
  %6 = bitcast %union.bu* %2 to i8*
  %7 = bitcast %union.bu* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 4, i1 false)
  %8 = bitcast %union.bu* %2 to %struct.bf*
  %9 = bitcast %struct.bf* %8 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = bitcast %union.bu* %2 to %struct.bf*
  %15 = bitcast %struct.bf* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, -262145
  %18 = or i32 %17, 262144
  store i32 %18, i32* %15, align 4
  %19 = bitcast %union.bu* %2 to %struct.bf*
  %20 = bitcast %struct.bf* %19 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, -1048577
  %23 = or i32 %22, 1048576
  store i32 %23, i32* %20, align 4
  br label %35

24:                                               ; preds = %1
  %25 = bitcast %union.bu* %2 to %struct.bf*
  %26 = bitcast %struct.bf* %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, -262145
  %29 = or i32 %28, 0
  store i32 %29, i32* %26, align 4
  %30 = bitcast %union.bu* %2 to %struct.bf*
  %31 = bitcast %struct.bf* %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, -1048577
  %34 = or i32 %33, 0
  store i32 %34, i32* %31, align 4
  br label %35

35:                                               ; preds = %24, %13
  %36 = getelementptr inbounds %union.bu, %union.bu* %2, i32 0, i32 0
  %37 = getelementptr inbounds %struct.bf, %struct.bf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.bu, align 4
  %3 = alloca %union.bu, align 4
  %4 = alloca %union.bu, align 4
  store i32 0, i32* %1, align 4
  %5 = bitcast %union.bu* %2 to i32*
  store i32 67108864, i32* %5, align 4
  %6 = bitcast %union.bu* %2 to %struct.bf*
  %7 = bitcast %struct.bf* %6 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, -2
  %10 = or i32 %9, 0
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds %union.bu, %union.bu* %2, i32 0, i32 0
  %12 = getelementptr inbounds %struct.bf, %struct.bf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @f(i32 %13)
  %15 = getelementptr inbounds %union.bu, %union.bu* %4, i32 0, i32 0
  %16 = getelementptr inbounds %struct.bf, %struct.bf* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = bitcast %union.bu* %3 to i8*
  %18 = bitcast %union.bu* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = bitcast %union.bu* %2 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = bitcast %union.bu* %3 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %0
  call void @abort() #3
  unreachable

25:                                               ; preds = %0
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
