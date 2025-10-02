; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991118-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991118-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmp = type { i64 }
%struct.tmp2 = type { i64 }
%struct.tmp3 = type { i64 }
%struct.tmp4 = type { i64 }

@tmp = dso_local global { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 35, i8 -47, i8 -68, i8 -102, i8 120, i8 86, i8 52, i8 18 }, align 8
@tmp2 = dso_local global { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -51, i8 -85, i8 -119, i8 103, i8 69, i8 35, i8 49, i8 18 }, align 8
@tmp3 = dso_local global { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 35, i8 1, i8 0, i8 0, i8 0, i8 -8, i8 -1, i8 15 }, align 8
@tmp4 = dso_local global { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 97, i8 36 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @sub(i64 %0) #0 {
  %2 = alloca %struct.tmp, align 8
  %3 = alloca %struct.tmp, align 8
  %4 = getelementptr inbounds %struct.tmp, %struct.tmp* %3, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = bitcast %struct.tmp* %3 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = ashr i64 %6, 12
  %8 = xor i64 %7, 2381903268435576
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
  %9 = xor i64 %8, 2381903268435576
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
define dso_local i64 @sub3(i64 %0) #0 {
  %2 = alloca %struct.tmp3, align 8
  %3 = alloca %struct.tmp3, align 8
  %4 = getelementptr inbounds %struct.tmp3, %struct.tmp3* %3, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = bitcast %struct.tmp3* %3 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = ashr i64 %6, 11
  %8 = xor i64 %7, 6885502895806072
  %9 = load i64, i64* %5, align 8
  %10 = and i64 %8, 9007199254740991
  %11 = shl i64 %10, 11
  %12 = and i64 %9, 2047
  %13 = or i64 %12, %11
  store i64 %13, i64* %5, align 8
  %14 = shl i64 %10, 11
  %15 = ashr i64 %14, 11
  %16 = bitcast %struct.tmp3* %2 to i8*
  %17 = bitcast %struct.tmp3* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = getelementptr inbounds %struct.tmp3, %struct.tmp3* %2, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  ret i64 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @sub4(i64 %0) #0 {
  %2 = alloca %struct.tmp4, align 8
  %3 = alloca %struct.tmp4, align 8
  %4 = getelementptr inbounds %struct.tmp4, %struct.tmp4* %3, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = bitcast %struct.tmp4* %3 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = shl i64 %6, 11
  %8 = ashr i64 %7, 11
  %9 = xor i64 %8, 6885502895806072
  %10 = load i64, i64* %5, align 8
  %11 = and i64 %9, 9007199254740991
  %12 = and i64 %10, -9007199254740992
  %13 = or i64 %12, %11
  store i64 %13, i64* %5, align 8
  %14 = shl i64 %11, 11
  %15 = ashr i64 %14, 11
  %16 = bitcast %struct.tmp4* %2 to i8*
  %17 = bitcast %struct.tmp4* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = getelementptr inbounds %struct.tmp4, %struct.tmp4* %2, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  ret i64 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.tmp, align 8
  %3 = alloca %struct.tmp2, align 8
  %4 = alloca %struct.tmp3, align 8
  %5 = alloca %struct.tmp4, align 8
  store i32 0, i32* %1, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.tmp, %struct.tmp* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp to %struct.tmp*), i32 0, i32 0), align 8
  %7 = call i64 @sub(i64 %6)
  %8 = getelementptr inbounds %struct.tmp, %struct.tmp* %2, i32 0, i32 0
  store i64 %7, i64* %8, align 8
  %9 = bitcast %struct.tmp* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp, i32 0, i32 0), i8* align 8 %9, i64 8, i1 false)
  %10 = load i64, i64* getelementptr inbounds (%struct.tmp2, %struct.tmp2* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp2 to %struct.tmp2*), i32 0, i32 0), align 8
  %11 = call i64 @sub2(i64 %10)
  %12 = getelementptr inbounds %struct.tmp2, %struct.tmp2* %3, i32 0, i32 0
  store i64 %11, i64* %12, align 8
  %13 = bitcast %struct.tmp2* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp2, i32 0, i32 0), i8* align 8 %13, i64 8, i1 false)
  %14 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp to i64*), align 8
  %15 = shl i64 %14, 52
  %16 = ashr i64 %15, 52
  %17 = trunc i64 %16 to i32
  %18 = icmp ne i32 %17, 291
  br i1 %18, label %23, label %19

19:                                               ; preds = %0
  %20 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp to i64*), align 8
  %21 = ashr i64 %20, 12
  %22 = icmp ne i64 %21, -1876791358784075
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %0
  call void @abort() #3
  unreachable

24:                                               ; preds = %19
  %25 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp2 to i64*), align 8
  %26 = ashr i64 %25, 52
  %27 = trunc i64 %26 to i32
  %28 = icmp ne i32 %27, 291
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp2 to i64*), align 8
  %31 = shl i64 %30, 12
  %32 = ashr i64 %31, 12
  %33 = icmp ne i64 %32, -1876791358784075
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %24
  call void @abort() #3
  unreachable

35:                                               ; preds = %29
  %36 = load i64, i64* getelementptr inbounds (%struct.tmp3, %struct.tmp3* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp3 to %struct.tmp3*), i32 0, i32 0), align 8
  %37 = call i64 @sub3(i64 %36)
  %38 = getelementptr inbounds %struct.tmp3, %struct.tmp3* %4, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = bitcast %struct.tmp3* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp3, i32 0, i32 0), i8* align 8 %39, i64 8, i1 false)
  %40 = load i64, i64* getelementptr inbounds (%struct.tmp4, %struct.tmp4* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp4 to %struct.tmp4*), i32 0, i32 0), align 8
  %41 = call i64 @sub4(i64 %40)
  %42 = getelementptr inbounds %struct.tmp4, %struct.tmp4* %5, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = bitcast %struct.tmp4* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp4, i32 0, i32 0), i8* align 8 %43, i64 8, i1 false)
  %44 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp3 to i64*), align 8
  %45 = shl i64 %44, 53
  %46 = ashr i64 %45, 53
  %47 = trunc i64 %46 to i32
  %48 = icmp ne i32 %47, 291
  br i1 %48, label %53, label %49

49:                                               ; preds = %35
  %50 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp3 to i64*), align 8
  %51 = ashr i64 %50, 11
  %52 = icmp ne i64 %51, -1818956999141768
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %35
  call void @abort() #3
  unreachable

54:                                               ; preds = %49
  %55 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp4 to i64*), align 8
  %56 = ashr i64 %55, 53
  %57 = trunc i64 %56 to i32
  %58 = icmp ne i32 %57, 291
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @tmp4 to i64*), align 8
  %61 = shl i64 %60, 11
  %62 = ashr i64 %61, 11
  %63 = icmp ne i64 %62, -1818956999141768
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %54
  call void @abort() #3
  unreachable

65:                                               ; preds = %59
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
