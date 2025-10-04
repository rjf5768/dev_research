; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bf64-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bf64-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmp = type { i64 }
%struct.tmp2 = type { i64 }

@__const.main.tmp = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 35, i8 -15, i8 0, i8 -16, i8 -1, i8 0, i8 -16, i8 -1 }, align 8
@__const.main.tmp2 = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 15, i8 0, i8 -1, i8 15, i8 0, i8 -1, i8 63, i8 18 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @sub(i64 %0) #0 {
  %2 = alloca %struct.tmp, align 8
  %3 = alloca %struct.tmp, align 8
  %4 = getelementptr inbounds %struct.tmp, %struct.tmp* %3, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = bitcast %struct.tmp* %3 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = ashr i64 %6, 12
  %8 = or i64 %7, 2381903268435576
  %9 = load i64, i64* %5, align 8
  %10 = and i64 %8, 4503599627370495
  %11 = shl i64 %10, 12
  %12 = and i64 %9, 4095
  %13 = or i64 %12, %11
  store i64 %13, i64* %5, align 8
  %14 = shl i64 %10, 12
  %15 = ashr i64 %14, 12
  %16 = bitcast %struct.tmp* %2 to i8*
  %17 = bitcast %struct.tmp* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = getelementptr inbounds %struct.tmp, %struct.tmp* %2, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  ret i64 %19
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @sub2(i64 %0) #0 {
  %2 = alloca %struct.tmp2, align 8
  %3 = alloca %struct.tmp2, align 8
  %4 = getelementptr inbounds %struct.tmp2, %struct.tmp2* %3, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = bitcast %struct.tmp2* %3 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = shl i64 %6, 12
  %8 = ashr i64 %7, 12
  %9 = or i64 %8, 2381903268435576
  %10 = load i64, i64* %5, align 8
  %11 = and i64 %9, 4503599627370495
  %12 = and i64 %10, -4503599627370496
  %13 = or i64 %12, %11
  store i64 %13, i64* %5, align 8
  %14 = shl i64 %11, 12
  %15 = ashr i64 %14, 12
  %16 = bitcast %struct.tmp2* %2 to i8*
  %17 = bitcast %struct.tmp2* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = getelementptr inbounds %struct.tmp2, %struct.tmp2* %2, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  ret i64 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.tmp, align 8
  %3 = alloca %struct.tmp2, align 8
  %4 = alloca %struct.tmp, align 8
  %5 = alloca %struct.tmp2, align 8
  store i32 0, i32* %1, align 4
  %6 = bitcast %struct.tmp* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, i8, i8 }* @__const.main.tmp, i32 0, i32 0), i64 8, i1 false)
  %7 = bitcast %struct.tmp2* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, i8, i8 }* @__const.main.tmp2, i32 0, i32 0), i64 8, i1 false)
  %8 = getelementptr inbounds %struct.tmp, %struct.tmp* %2, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @sub(i64 %9)
  %11 = getelementptr inbounds %struct.tmp, %struct.tmp* %4, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = bitcast %struct.tmp* %2 to i8*
  %13 = bitcast %struct.tmp* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %14 = getelementptr inbounds %struct.tmp2, %struct.tmp2* %3, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @sub2(i64 %15)
  %17 = getelementptr inbounds %struct.tmp2, %struct.tmp2* %5, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = bitcast %struct.tmp2* %3 to i8*
  %19 = bitcast %struct.tmp2* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 8, i1 false)
  %20 = bitcast %struct.tmp* %2 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = shl i64 %21, 52
  %23 = ashr i64 %22, 52
  %24 = trunc i64 %23 to i32
  %25 = icmp ne i32 %24, 291
  br i1 %25, label %31, label %26

26:                                               ; preds = %0
  %27 = bitcast %struct.tmp* %2 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = ashr i64 %28, 12
  %30 = icmp ne i64 %29, -738197547393
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %0
  call void @abort() #3
  unreachable

32:                                               ; preds = %26
  %33 = bitcast %struct.tmp2* %3 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = ashr i64 %34, 52
  %36 = trunc i64 %35 to i32
  %37 = icmp ne i32 %36, 291
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = bitcast %struct.tmp2* %3 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = shl i64 %40, 12
  %42 = ashr i64 %41, 12
  %43 = icmp ne i64 %42, -738197547393
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %32
  call void @abort() #3
  unreachable

45:                                               ; preds = %38
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
