; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030717-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030717-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.C = type { [1 x %struct.B], i32, i32 }
%struct.B = type { i32, i32, i32, i32, i32 }
%struct.A = type { i16, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(%struct.C* noundef %0, %struct.A* noundef %1) #0 {
  %3 = alloca %struct.C*, align 8
  %4 = alloca %struct.A*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.C* %0, %struct.C** %3, align 8
  store %struct.A* %1, %struct.A** %4, align 8
  %11 = load %struct.C*, %struct.C** %3, align 8
  %12 = getelementptr inbounds %struct.C, %struct.C* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.A*, %struct.A** %4, align 8
  %15 = getelementptr inbounds %struct.A, %struct.A* %14, i32 0, i32 0
  %16 = load i16, i16* %15, align 8
  %17 = zext i16 %16 to i32
  %18 = ashr i32 %17, 9
  store i32 %18, i32* %6, align 4
  %19 = load %struct.A*, %struct.A** %4, align 8
  %20 = getelementptr inbounds %struct.A, %struct.A* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.C*, %struct.C** %3, align 8
  %25 = getelementptr inbounds %struct.C, %struct.C* %24, i32 0, i32 0
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [1 x %struct.B], [1 x %struct.B]* %25, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.B, %struct.B* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 %23, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @foo(i32 noundef %33)
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %10, align 8
  br label %36

36:                                               ; preds = %65, %2
  %37 = load i32, i32* %8, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.C*, %struct.C** %3, align 8
  %41 = getelementptr inbounds %struct.C, %struct.C* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %8, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.C*, %struct.C** %3, align 8
  %48 = getelementptr inbounds %struct.C, %struct.C* %47, i32 0, i32 0
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [1 x %struct.B], [1 x %struct.B]* %48, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.B, %struct.B* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 %46, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @foo(i32 noundef %56)
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %43
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %43
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.C*, %struct.C** %3, align 8
  %68 = getelementptr inbounds %struct.C, %struct.C* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %36, label %71, !llvm.loop !4

71:                                               ; preds = %65
  %72 = load i64, i64* %7, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %72, %74
  %76 = trunc i64 %75 to i32
  %77 = load %struct.C*, %struct.C** %3, align 8
  %78 = getelementptr inbounds %struct.C, %struct.C* %77, i32 0, i32 0
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [1 x %struct.B], [1 x %struct.B]* %78, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.B, %struct.B* %81, i32 0, i32 3
  store i32 %76, i32* %82, align 4
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = sub nsw i32 0, %6
  br label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %7, %5 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.A, align 8
  %3 = alloca %struct.C, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = getelementptr inbounds %struct.A, %struct.A* %2, i32 0, i32 0
  store i16 512, i16* %5, align 8
  %6 = getelementptr inbounds %struct.A, %struct.A* %2, i32 0, i32 1
  store i64 4242, i64* %6, align 8
  %7 = bitcast %struct.C* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 28, i1 false)
  %8 = getelementptr inbounds %struct.C, %struct.C* %3, i32 0, i32 0
  %9 = getelementptr inbounds [1 x %struct.B], [1 x %struct.B]* %8, i64 0, i64 0
  %10 = getelementptr inbounds %struct.B, %struct.B* %9, i32 0, i32 2
  store i32 424242, i32* %10, align 4
  %11 = getelementptr inbounds %struct.C, %struct.C* %3, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = call i32 @bar(%struct.C* noundef %3, %struct.A* noundef %2)
  store i32 %12, i32* %4, align 4
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
