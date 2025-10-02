; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr39339.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr39339.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.E = type { i64, i64, %struct.C }
%struct.C = type { i32, %struct.D }
%struct.D = type { i32 }
%struct.B = type { %struct.A*, i8 }
%struct.A = type { %struct.C*, i32 }

@__const.main.e = private unnamed_addr constant { i64, i64, { i32, { i8, i8, i8, i8 } } } { i64 5, i64 0, { i32, { i8, i8, i8, i8 } } { i32 6, { i8, i8, i8, i8 } { i8 -1, i8 -1, i8 127, i8 85 } } }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.E* noundef %0, i32 noundef %1, i32 noundef %2, %struct.B* noundef %3) #0 {
  %5 = alloca %struct.E*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.B*, align 8
  %9 = alloca %struct.D, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.E* %0, %struct.E** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.B* %3, %struct.B** %8, align 8
  %12 = load %struct.E*, %struct.E** %5, align 8
  %13 = getelementptr inbounds %struct.E, %struct.E* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.E*, %struct.E** %5, align 8
  %16 = getelementptr inbounds %struct.E, %struct.E* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.C, %struct.C* %16, i32 0, i32 1
  %18 = bitcast %struct.D* %9 to i8*
  %19 = bitcast %struct.D* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load i32, i32* %7, align 4
  %21 = bitcast %struct.D* %9 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %20, 15
  %24 = and i32 %22, -16
  %25 = or i32 %24, %23
  store i32 %25, i32* %21, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.B*, %struct.B** %8, align 8
  %28 = getelementptr inbounds %struct.B, %struct.B* %27, i32 0, i32 0
  %29 = load %struct.A*, %struct.A** %28, align 8
  %30 = getelementptr inbounds %struct.A, %struct.A* %29, i32 0, i32 0
  %31 = load %struct.C*, %struct.C** %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.C, %struct.C* %31, i64 %32
  %34 = getelementptr inbounds %struct.C, %struct.C* %33, i32 0, i32 0
  store i32 %26, i32* %34, align 4
  %35 = load %struct.B*, %struct.B** %8, align 8
  %36 = getelementptr inbounds %struct.B, %struct.B* %35, i32 0, i32 0
  %37 = load %struct.A*, %struct.A** %36, align 8
  %38 = getelementptr inbounds %struct.A, %struct.A* %37, i32 0, i32 0
  %39 = load %struct.C*, %struct.C** %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds %struct.C, %struct.C* %39, i64 %40
  %42 = getelementptr inbounds %struct.C, %struct.C* %41, i32 0, i32 1
  %43 = bitcast %struct.D* %42 to i8*
  %44 = bitcast %struct.D* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  %45 = load i64, i64* %10, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %10, align 8
  %47 = bitcast %struct.D* %9 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, -4194305
  %50 = or i32 %49, 4194304
  store i32 %50, i32* %47, align 4
  store i32 1, i32* %11, align 4
  br label %51

51:                                               ; preds = %77, %4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.B*, %struct.B** %8, align 8
  %58 = getelementptr inbounds %struct.B, %struct.B* %57, i32 0, i32 0
  %59 = load %struct.A*, %struct.A** %58, align 8
  %60 = getelementptr inbounds %struct.A, %struct.A* %59, i32 0, i32 0
  %61 = load %struct.C*, %struct.C** %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds %struct.C, %struct.C* %61, i64 %62
  %64 = getelementptr inbounds %struct.C, %struct.C* %63, i32 0, i32 0
  store i32 %56, i32* %64, align 4
  %65 = load %struct.B*, %struct.B** %8, align 8
  %66 = getelementptr inbounds %struct.B, %struct.B* %65, i32 0, i32 0
  %67 = load %struct.A*, %struct.A** %66, align 8
  %68 = getelementptr inbounds %struct.A, %struct.A* %67, i32 0, i32 0
  %69 = load %struct.C*, %struct.C** %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds %struct.C, %struct.C* %69, i64 %70
  %72 = getelementptr inbounds %struct.C, %struct.C* %71, i32 0, i32 1
  %73 = bitcast %struct.D* %72 to i8*
  %74 = bitcast %struct.D* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 4, i1 false)
  %75 = load i64, i64* %10, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %10, align 8
  br label %77

77:                                               ; preds = %55
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %51, !llvm.loop !4

80:                                               ; preds = %51
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.E, align 8
  %3 = alloca [4 x %struct.C], align 16
  %4 = alloca %struct.A, align 8
  %5 = alloca %struct.B, align 8
  %6 = alloca %struct.D, align 4
  store i32 0, i32* %1, align 4
  %7 = bitcast %struct.E* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast ({ i64, i64, { i32, { i8, i8, i8, i8 } } }* @__const.main.e to i8*), i64 24, i1 false)
  %8 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 0
  %9 = getelementptr inbounds [4 x %struct.C], [4 x %struct.C]* %3, i64 0, i64 0
  store %struct.C* %9, %struct.C** %8, align 8
  %10 = getelementptr inbounds %struct.A, %struct.A* %4, i32 0, i32 1
  store i32 4, i32* %10, align 8
  %11 = getelementptr inbounds %struct.B, %struct.B* %5, i32 0, i32 0
  store %struct.A* %4, %struct.A** %11, align 8
  %12 = getelementptr inbounds %struct.B, %struct.B* %5, i32 0, i32 1
  %13 = load i8, i8* %12, align 8
  %14 = and i8 %13, -2
  %15 = or i8 %14, 1
  store i8 %15, i8* %12, align 8
  %16 = bitcast [4 x %struct.C]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 32, i1 false)
  call void @foo(%struct.E* noundef %2, i32 noundef 65, i32 noundef 2, %struct.B* noundef %5)
  %17 = getelementptr inbounds %struct.E, %struct.E* %2, i32 0, i32 2
  %18 = getelementptr inbounds %struct.C, %struct.C* %17, i32 0, i32 1
  %19 = bitcast %struct.D* %6 to i8*
  %20 = bitcast %struct.D* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = bitcast %struct.D* %6 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, -16
  %24 = or i32 %23, 2
  store i32 %24, i32* %21, align 4
  %25 = bitcast %struct.D* %6 to i8*
  %26 = getelementptr inbounds [4 x %struct.C], [4 x %struct.C]* %3, i64 0, i64 0
  %27 = getelementptr inbounds %struct.C, %struct.C* %26, i32 0, i32 1
  %28 = bitcast %struct.D* %27 to i8*
  %29 = call i32 @memcmp(i8* noundef %25, i8* noundef %28, i64 noundef 4) #5
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %0
  call void @abort() #6
  unreachable

32:                                               ; preds = %0
  %33 = bitcast %struct.D* %6 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, -4194305
  %36 = or i32 %35, 4194304
  store i32 %36, i32* %33, align 4
  %37 = bitcast %struct.D* %6 to i8*
  %38 = getelementptr inbounds [4 x %struct.C], [4 x %struct.C]* %3, i64 0, i64 1
  %39 = getelementptr inbounds %struct.C, %struct.C* %38, i32 0, i32 1
  %40 = bitcast %struct.D* %39 to i8*
  %41 = call i32 @memcmp(i8* noundef %37, i8* noundef %40, i64 noundef 4) #5
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  call void @abort() #6
  unreachable

44:                                               ; preds = %32
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
