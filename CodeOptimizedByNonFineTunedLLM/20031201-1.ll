; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20031201-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20031201-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io = type { %struct.s1, %struct.s2 }
%struct.s1 = type { i32 }
%struct.s2 = type { i32 }

@i = internal global %struct.io* null, align 8
@test_t1 = internal global i64 0, align 8
@m = internal global i32 1, align 4
@test_length = internal global i32 2, align 4
@test_t0 = internal global i64 0, align 8
@d = internal global i32 1, align 4
@f0.washere = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.s1, align 4
  %6 = alloca %struct.s2, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = bitcast %struct.s1* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = bitcast %struct.s2* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.io*
  store %struct.io* %12, %struct.io** @i, align 8
  %13 = bitcast %struct.s2* %6 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, -65536
  %16 = or i32 %15, 32
  store i32 %16, i32* %13, align 4
  %17 = bitcast %struct.s1* %5 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, -65536
  %20 = or i32 %19, 32
  store i32 %20, i32* %17, align 4
  %21 = load %struct.io*, %struct.io** @i, align 8
  %22 = getelementptr inbounds %struct.io, %struct.io* %21, i32 0, i32 0
  %23 = bitcast %struct.s1* %22 to i8*
  %24 = bitcast %struct.s1* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.io*, %struct.io** @i, align 8
  %26 = getelementptr inbounds %struct.io, %struct.io* %25, i32 0, i32 1
  %27 = bitcast %struct.s2* %26 to i8*
  %28 = bitcast %struct.s2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  br label %29

29:                                               ; preds = %30, %1
  call void @f0()
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* @test_t1, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %29, label %33, !llvm.loop !4

33:                                               ; preds = %30
  %34 = bitcast %struct.s2* %6 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, -65536
  %37 = or i32 %36, 8
  store i32 %37, i32* %34, align 4
  %38 = bitcast %struct.s1* %5 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, -65536
  %41 = or i32 %40, 8
  store i32 %41, i32* %38, align 4
  %42 = load %struct.io*, %struct.io** @i, align 8
  %43 = getelementptr inbounds %struct.io, %struct.io* %42, i32 0, i32 0
  %44 = bitcast %struct.s1* %43 to i8*
  %45 = bitcast %struct.s1* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  %46 = load %struct.io*, %struct.io** @i, align 8
  %47 = getelementptr inbounds %struct.io, %struct.io* %46, i32 0, i32 1
  %48 = bitcast %struct.s2* %47 to i8*
  %49 = bitcast %struct.s2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 4, i1 false)
  call void @test()
  %50 = load i32, i32* @m, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %33
  %53 = load i32, i32* @test_length, align 4
  %54 = mul nsw i32 2170, %53
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* @test_t1, align 8
  %57 = load i64, i64* @test_t0, align 8
  %58 = sub i64 %56, %57
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sub i64 %59, %60
  %62 = and i64 %61, 2147483647
  %63 = icmp ugt i64 %62, 1000
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  call void @f0()
  br label %65

65:                                               ; preds = %64, %52
  br label %66

66:                                               ; preds = %65, %33
  %67 = load i32, i32* @d, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load i32, i32* @test_length, align 4
  %71 = mul nsw i32 2170, %70
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* @test_t1, align 8
  %74 = load i64, i64* @test_t0, align 8
  %75 = sub i64 %73, %74
  store i64 %75, i64* %4, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* %8, align 8
  %78 = sub i64 %76, %77
  %79 = and i64 %78, 2147483647
  %80 = icmp ugt i64 %79, 1000
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  call void @f0()
  br label %82

82:                                               ; preds = %81, %69
  br label %83

83:                                               ; preds = %82, %66
  %84 = load i32, i32* %3, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  ret i32 %87
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @f0() #0 {
  %1 = alloca %struct.io*, align 8
  %2 = load %struct.io*, %struct.io** @i, align 8
  store %struct.io* %2, %struct.io** %1, align 8
  %3 = load i32, i32* @f0.washere, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @f0.washere, align 4
  %5 = icmp ne i32 %3, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %0
  %7 = load %struct.io*, %struct.io** %1, align 8
  %8 = getelementptr inbounds %struct.io, %struct.io* %7, i32 0, i32 0
  %9 = bitcast %struct.s1* %8 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 65535
  %12 = icmp ne i32 %11, 32
  br i1 %12, label %20, label %13

13:                                               ; preds = %6
  %14 = load %struct.io*, %struct.io** %1, align 8
  %15 = getelementptr inbounds %struct.io, %struct.io* %14, i32 0, i32 1
  %16 = bitcast %struct.s2* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 65535
  %19 = icmp ne i32 %18, 32
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %6, %0
  call void @abort() #4
  unreachable

21:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test() #0 {
  %1 = alloca %struct.io*, align 8
  %2 = load %struct.io*, %struct.io** @i, align 8
  store %struct.io* %2, %struct.io** %1, align 8
  %3 = load %struct.io*, %struct.io** %1, align 8
  %4 = getelementptr inbounds %struct.io, %struct.io* %3, i32 0, i32 0
  %5 = bitcast %struct.s1* %4 to i32*
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 65535
  %8 = icmp ne i32 %7, 8
  br i1 %8, label %16, label %9

9:                                                ; preds = %0
  %10 = load %struct.io*, %struct.io** %1, align 8
  %11 = getelementptr inbounds %struct.io, %struct.io* %10, i32 0, i32 1
  %12 = bitcast %struct.s2* %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 65535
  %15 = icmp ne i32 %14, 8
  br i1 %15, label %16, label %17

16:                                               ; preds = %9, %0
  call void @abort() #4
  unreachable

17:                                               ; preds = %9
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.io, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.io* %2 to i8*
  %4 = call i32 @f1(i8* noundef %3)
  call void @abort() #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
