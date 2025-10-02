; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000917-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000917-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int3 = type { i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i32 } @one() #0 {
  %1 = alloca %struct.int3, align 4
  %2 = alloca { i64, i32 }, align 8
  %3 = getelementptr inbounds %struct.int3, %struct.int3* %1, i32 0, i32 0
  store i32 1, i32* %3, align 4
  %4 = getelementptr inbounds %struct.int3, %struct.int3* %1, i32 0, i32 1
  store i32 1, i32* %4, align 4
  %5 = getelementptr inbounds %struct.int3, %struct.int3* %1, i32 0, i32 2
  store i32 1, i32* %5, align 4
  %6 = bitcast { i64, i32 }* %2 to i8*
  %7 = bitcast %struct.int3* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 4 %7, i64 12, i1 false)
  %8 = load { i64, i32 }, { i64, i32 }* %2, align 8
  ret { i64, i32 } %8
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i32 } @zero() #0 {
  %1 = alloca %struct.int3, align 4
  %2 = alloca { i64, i32 }, align 8
  %3 = getelementptr inbounds %struct.int3, %struct.int3* %1, i32 0, i32 0
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds %struct.int3, %struct.int3* %1, i32 0, i32 1
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.int3, %struct.int3* %1, i32 0, i32 2
  store i32 0, i32* %5, align 4
  %6 = bitcast { i64, i32 }* %2 to i8*
  %7 = bitcast %struct.int3* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 4 %7, i64 12, i1 false)
  %8 = load { i64, i32 }, { i64, i32 }* %2, align 8
  ret { i64, i32 } %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.int3, align 4
  %3 = alloca %struct.int3*, align 8
  %4 = alloca %struct.int3, align 4
  %5 = alloca { i64, i32 }, align 8
  %6 = alloca %struct.int3*, align 8
  %7 = alloca %struct.int3, align 4
  %8 = alloca { i64, i32 }, align 8
  store i32 0, i32* %1, align 4
  %9 = call { i64, i32 } @one()
  store { i64, i32 } %9, { i64, i32 }* %5, align 8
  %10 = bitcast %struct.int3* %4 to i8*
  %11 = bitcast { i64, i32 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 8 %11, i64 12, i1 false)
  store %struct.int3* %2, %struct.int3** %6, align 8
  %12 = load %struct.int3*, %struct.int3** %6, align 8
  store %struct.int3* %12, %struct.int3** %3, align 8
  %13 = load %struct.int3*, %struct.int3** %3, align 8
  %14 = call { i64, i32 } @zero()
  store { i64, i32 } %14, { i64, i32 }* %8, align 8
  %15 = bitcast %struct.int3* %7 to i8*
  %16 = bitcast { i64, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 8 %16, i64 12, i1 false)
  %17 = bitcast %struct.int3* %13 to i8*
  %18 = bitcast %struct.int3* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  %19 = getelementptr inbounds %struct.int3, %struct.int3* %2, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %0
  %23 = getelementptr inbounds %struct.int3, %struct.int3* %2, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.int3, %struct.int3* %2, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  call void @abort() #3
  unreachable

31:                                               ; preds = %26, %22, %0
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
