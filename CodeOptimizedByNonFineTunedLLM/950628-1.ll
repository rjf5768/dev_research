; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950628-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950628-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { i8, i8, i8, i16 }

; Function Attrs: noinline nounwind uwtable
define dso_local i48 @g() #0 {
  %1 = alloca %struct.T, align 2
  %2 = alloca i48, align 8
  %3 = getelementptr inbounds %struct.T, %struct.T* %1, i32 0, i32 0
  store i8 1, i8* %3, align 2
  %4 = getelementptr inbounds %struct.T, %struct.T* %1, i32 0, i32 1
  store i8 2, i8* %4, align 1
  %5 = getelementptr inbounds %struct.T, %struct.T* %1, i32 0, i32 2
  store i8 3, i8* %5, align 2
  %6 = getelementptr inbounds %struct.T, %struct.T* %1, i32 0, i32 3
  store i16 4, i16* %6, align 2
  %7 = bitcast i48* %2 to i8*
  %8 = bitcast %struct.T* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 2 %8, i64 6, i1 false)
  %9 = load i48, i48* %2, align 8
  ret i48 %9
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i48 @f() #0 {
  %1 = alloca %struct.T, align 2
  %2 = alloca %struct.T, align 2
  %3 = alloca i48, align 8
  %4 = alloca i48, align 8
  %5 = call i48 @g()
  store i48 %5, i48* %3, align 8
  %6 = bitcast %struct.T* %2 to i8*
  %7 = bitcast i48* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %6, i8* align 8 %7, i64 6, i1 false)
  %8 = bitcast %struct.T* %1 to i8*
  %9 = bitcast %struct.T* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %8, i8* align 2 %9, i64 6, i1 false)
  %10 = bitcast i48* %4 to i8*
  %11 = bitcast %struct.T* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 2 %11, i64 6, i1 false)
  %12 = load i48, i48* %4, align 8
  ret i48 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.T, align 2
  %3 = alloca i48, align 8
  %4 = alloca %struct.T, align 2
  %5 = alloca i48, align 8
  %6 = alloca %struct.T, align 2
  %7 = alloca i48, align 8
  %8 = alloca %struct.T, align 2
  %9 = alloca i48, align 8
  store i32 0, i32* %1, align 4
  %10 = call i48 @f()
  store i48 %10, i48* %3, align 8
  %11 = bitcast %struct.T* %2 to i8*
  %12 = bitcast i48* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %11, i8* align 8 %12, i64 6, i1 false)
  %13 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 0
  %14 = load i8, i8* %13, align 2
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %41, label %17

17:                                               ; preds = %0
  %18 = call i48 @f()
  store i48 %18, i48* %5, align 8
  %19 = bitcast %struct.T* %4 to i8*
  %20 = bitcast i48* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %19, i8* align 8 %20, i64 6, i1 false)
  %21 = getelementptr inbounds %struct.T, %struct.T* %4, i32 0, i32 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 2
  br i1 %24, label %41, label %25

25:                                               ; preds = %17
  %26 = call i48 @f()
  store i48 %26, i48* %7, align 8
  %27 = bitcast %struct.T* %6 to i8*
  %28 = bitcast i48* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %27, i8* align 8 %28, i64 6, i1 false)
  %29 = getelementptr inbounds %struct.T, %struct.T* %6, i32 0, i32 2
  %30 = load i8, i8* %29, align 2
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 3
  br i1 %32, label %41, label %33

33:                                               ; preds = %25
  %34 = call i48 @f()
  store i48 %34, i48* %9, align 8
  %35 = bitcast %struct.T* %8 to i8*
  %36 = bitcast i48* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %35, i8* align 8 %36, i64 6, i1 false)
  %37 = getelementptr inbounds %struct.T, %struct.T* %8, i32 0, i32 3
  %38 = load i16, i16* %37, align 2
  %39 = sext i16 %38 to i32
  %40 = icmp ne i32 %39, 4
  br i1 %40, label %41, label %42

41:                                               ; preds = %33, %25, %17, %0
  call void @abort() #3
  unreachable

42:                                               ; preds = %33
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
