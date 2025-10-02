; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr52760.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr52760.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { i16, i16, i16, i16 }

@__const.main.t = private unnamed_addr constant %struct.T { i16 1, i16 515, i16 1029, i16 1543 }, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, %struct.T* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.T*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.T* %1, %struct.T** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %111, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %114

10:                                               ; preds = %6
  %11 = load %struct.T*, %struct.T** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.T, %struct.T* %11, i64 %13
  %15 = getelementptr inbounds %struct.T, %struct.T* %14, i32 0, i32 0
  %16 = load i16, i16* %15, align 2
  %17 = zext i16 %16 to i32
  %18 = ashr i32 %17, 8
  %19 = and i32 255, %18
  %20 = load %struct.T*, %struct.T** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.T, %struct.T* %20, i64 %22
  %24 = getelementptr inbounds %struct.T, %struct.T* %23, i32 0, i32 0
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = shl i32 %26, 8
  %28 = and i32 65280, %27
  %29 = or i32 %19, %28
  %30 = trunc i32 %29 to i16
  %31 = load %struct.T*, %struct.T** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.T, %struct.T* %31, i64 %33
  %35 = getelementptr inbounds %struct.T, %struct.T* %34, i32 0, i32 0
  store i16 %30, i16* %35, align 2
  %36 = load %struct.T*, %struct.T** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.T, %struct.T* %36, i64 %38
  %40 = getelementptr inbounds %struct.T, %struct.T* %39, i32 0, i32 1
  %41 = load i16, i16* %40, align 2
  %42 = zext i16 %41 to i32
  %43 = ashr i32 %42, 8
  %44 = and i32 255, %43
  %45 = load %struct.T*, %struct.T** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.T, %struct.T* %45, i64 %47
  %49 = getelementptr inbounds %struct.T, %struct.T* %48, i32 0, i32 1
  %50 = load i16, i16* %49, align 2
  %51 = zext i16 %50 to i32
  %52 = shl i32 %51, 8
  %53 = and i32 65280, %52
  %54 = or i32 %44, %53
  %55 = trunc i32 %54 to i16
  %56 = load %struct.T*, %struct.T** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.T, %struct.T* %56, i64 %58
  %60 = getelementptr inbounds %struct.T, %struct.T* %59, i32 0, i32 1
  store i16 %55, i16* %60, align 2
  %61 = load %struct.T*, %struct.T** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.T, %struct.T* %61, i64 %63
  %65 = getelementptr inbounds %struct.T, %struct.T* %64, i32 0, i32 2
  %66 = load i16, i16* %65, align 2
  %67 = zext i16 %66 to i32
  %68 = ashr i32 %67, 8
  %69 = and i32 255, %68
  %70 = load %struct.T*, %struct.T** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.T, %struct.T* %70, i64 %72
  %74 = getelementptr inbounds %struct.T, %struct.T* %73, i32 0, i32 2
  %75 = load i16, i16* %74, align 2
  %76 = zext i16 %75 to i32
  %77 = shl i32 %76, 8
  %78 = and i32 65280, %77
  %79 = or i32 %69, %78
  %80 = trunc i32 %79 to i16
  %81 = load %struct.T*, %struct.T** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.T, %struct.T* %81, i64 %83
  %85 = getelementptr inbounds %struct.T, %struct.T* %84, i32 0, i32 2
  store i16 %80, i16* %85, align 2
  %86 = load %struct.T*, %struct.T** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.T, %struct.T* %86, i64 %88
  %90 = getelementptr inbounds %struct.T, %struct.T* %89, i32 0, i32 3
  %91 = load i16, i16* %90, align 2
  %92 = zext i16 %91 to i32
  %93 = ashr i32 %92, 8
  %94 = and i32 255, %93
  %95 = load %struct.T*, %struct.T** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.T, %struct.T* %95, i64 %97
  %99 = getelementptr inbounds %struct.T, %struct.T* %98, i32 0, i32 3
  %100 = load i16, i16* %99, align 2
  %101 = zext i16 %100 to i32
  %102 = shl i32 %101, 8
  %103 = and i32 65280, %102
  %104 = or i32 %94, %103
  %105 = trunc i32 %104 to i16
  %106 = load %struct.T*, %struct.T** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.T, %struct.T* %106, i64 %108
  %110 = getelementptr inbounds %struct.T, %struct.T* %109, i32 0, i32 3
  store i16 %105, i16* %110, align 2
  br label %111

111:                                              ; preds = %10
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %6, !llvm.loop !4

114:                                              ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.T, align 2
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.T* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %3, i8* align 2 bitcast (%struct.T* @__const.main.t to i8*), i64 8, i1 false)
  call void @foo(i32 noundef 1, %struct.T* noundef %2)
  %4 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 0
  %5 = load i16, i16* %4, align 2
  %6 = zext i16 %5 to i32
  %7 = icmp ne i32 %6, 256
  br i1 %7, label %23, label %8

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 1
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp ne i32 %11, 770
  br i1 %12, label %23, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 2
  %15 = load i16, i16* %14, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp ne i32 %16, 1284
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.T, %struct.T* %2, i32 0, i32 3
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp ne i32 %21, 1798
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %13, %8, %0
  call void @abort() #3
  unreachable

24:                                               ; preds = %18
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
