; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49390.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49390.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { %struct.V, [48 x i8] }
%struct.V = type { %struct.U, %struct.T }
%struct.U = type { i16, i16 }
%struct.T = type { i32, %struct.S }
%struct.S = type { i32, i32 }

@u = dso_local global %union.anon zeroinitializer, align 4
@v = dso_local global i32 0, align 4
@a = dso_local global %struct.S zeroinitializer, align 4
@b = dso_local global i8* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 4
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, bitcast (%struct.T* getelementptr inbounds (%union.anon, %union.anon* @u, i32 0, i32 0, i32 1) to i8*)
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %4
  call void @abort() #3
  unreachable

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add i32 %16, %17
  store volatile i32 %18, i32* @v, align 4
  store volatile i32 16384, i32* @v, align 4
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i64 %0) #0 {
  %2 = alloca %struct.S, align 4
  %3 = bitcast %struct.S* %2 to i64*
  store i64 %0, i64* %3, align 4
  %4 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  store volatile i32 %5, i32* @v, align 4
  %6 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  store volatile i32 %7, i32* @v, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @baz(%struct.S* noundef %0) #0 {
  %2 = alloca %struct.S*, align 8
  store %struct.S* %0, %struct.S** %2, align 8
  %3 = load %struct.S*, %struct.S** %2, align 8
  %4 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  store volatile i32 %5, i32* @v, align 4
  %6 = load %struct.S*, %struct.S** %2, align 8
  %7 = getelementptr inbounds %struct.S, %struct.S* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store volatile i32 %8, i32* @v, align 4
  store volatile i32 0, i32* @v, align 4
  %9 = load volatile i32, i32* @v, align 4
  %10 = add nsw i32 %9, 1
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(%struct.S* noundef %0) #0 {
  %2 = alloca %struct.S*, align 8
  %3 = alloca %struct.T*, align 8
  %4 = alloca %struct.S, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.S* %0, %struct.S** %2, align 8
  %7 = bitcast %struct.S* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.S* @a to i8*), i64 8, i1 false)
  %8 = load %struct.S*, %struct.S** %2, align 8
  %9 = icmp eq %struct.S* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.S* %4, %struct.S** %2, align 8
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.S*, %struct.S** %2, align 8
  %13 = getelementptr inbounds %struct.S, %struct.S* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = urem i32 %14, 8192
  %16 = icmp ule i32 %15, 15
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = load %struct.S*, %struct.S** %2, align 8
  %19 = getelementptr inbounds %struct.S, %struct.S* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = urem i32 %20, 8192
  %22 = sub i32 8192, %21
  %23 = icmp ule i32 %22, 31
  br i1 %23, label %24, label %31

24:                                               ; preds = %17, %11
  %25 = load %struct.S*, %struct.S** %2, align 8
  %26 = getelementptr inbounds %struct.S, %struct.S* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.S*, %struct.S** %2, align 8
  %29 = getelementptr inbounds %struct.S, %struct.S* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  call void @foo(i32 noundef 1, i8* noundef null, i32 noundef %27, i32 noundef %30)
  br label %31

31:                                               ; preds = %24, %17
  br label %32

32:                                               ; preds = %31, %10
  %33 = load %struct.S*, %struct.S** %2, align 8
  %34 = call i32 @baz(%struct.S* noundef %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %139

37:                                               ; preds = %32
  %38 = load i8*, i8** @b, align 8
  %39 = bitcast i8* %38 to %struct.U*
  %40 = getelementptr inbounds %struct.U, %struct.U* %39, i32 0, i32 1
  %41 = load i16, i16* %40, align 2
  %42 = zext i16 %41 to i32
  %43 = and i32 %42, 2
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i64 32, i64 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %6, align 4
  %48 = load %struct.S*, %struct.S** %2, align 8
  %49 = getelementptr inbounds %struct.S, %struct.S* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = urem i32 %50, 8192
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %37
  %55 = load i32, i32* %6, align 4
  %56 = getelementptr inbounds %struct.S, %struct.S* %4, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add i32 %57, %55
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %5, align 4
  br label %72

60:                                               ; preds = %37
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load %struct.S*, %struct.S** %2, align 8
  %66 = getelementptr inbounds %struct.S, %struct.S* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.S*, %struct.S** %2, align 8
  %69 = getelementptr inbounds %struct.S, %struct.S* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  call void @foo(i32 noundef 2, i8* noundef null, i32 noundef %67, i32 noundef %70)
  br label %139

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %54
  %73 = load i8*, i8** @b, align 8
  %74 = bitcast i8* %73 to %struct.U*
  %75 = getelementptr inbounds %struct.U, %struct.U* %74, i32 0, i32 1
  %76 = load i16, i16* %75, align 2
  %77 = zext i16 %76 to i32
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %72
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load %struct.S*, %struct.S** %2, align 8
  %86 = bitcast %struct.S* %85 to i64*
  %87 = load i64, i64* %86, align 4
  call void @bar(i64 %87)
  %88 = load %struct.S*, %struct.S** %2, align 8
  %89 = getelementptr inbounds %struct.S, %struct.S* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.S*, %struct.S** %2, align 8
  %92 = getelementptr inbounds %struct.S, %struct.S* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  call void @foo(i32 noundef 3, i8* noundef null, i32 noundef %90, i32 noundef %93)
  br label %139

94:                                               ; preds = %80, %72
  %95 = load i8*, i8** @b, align 8
  %96 = load %struct.S*, %struct.S** %2, align 8
  %97 = getelementptr inbounds %struct.S, %struct.S* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = urem i32 %98, 8192
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %95, i64 %100
  %102 = bitcast i8* %101 to %struct.T*
  store %struct.T* %102, %struct.T** %3, align 8
  %103 = load %struct.T*, %struct.T** %3, align 8
  %104 = getelementptr inbounds %struct.T, %struct.T* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.S, %struct.S* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.S*, %struct.S** %2, align 8
  %108 = getelementptr inbounds %struct.S, %struct.S* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp uge i32 %106, %109
  br i1 %110, label %111, label %138

111:                                              ; preds = %94
  %112 = load %struct.T*, %struct.T** %3, align 8
  %113 = getelementptr inbounds %struct.T, %struct.T* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.S, %struct.S* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.S*, %struct.S** %2, align 8
  %117 = getelementptr inbounds %struct.S, %struct.S* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %115, %118
  br i1 %119, label %129, label %120

120:                                              ; preds = %111
  %121 = load %struct.T*, %struct.T** %3, align 8
  %122 = getelementptr inbounds %struct.T, %struct.T* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.S, %struct.S* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.S*, %struct.S** %2, align 8
  %126 = getelementptr inbounds %struct.S, %struct.S* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp uge i32 %124, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %120, %111
  %130 = load %struct.T*, %struct.T** %3, align 8
  %131 = bitcast %struct.T* %130 to i8*
  %132 = load %struct.S*, %struct.S** %2, align 8
  %133 = getelementptr inbounds %struct.S, %struct.S* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.S*, %struct.S** %2, align 8
  %136 = getelementptr inbounds %struct.S, %struct.S* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  call void @foo(i32 noundef 4, i8* noundef %131, i32 noundef %134, i32 noundef %137)
  br label %138

138:                                              ; preds = %129, %120, %94
  br label %139

139:                                              ; preds = %138, %84, %64, %36
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S*, align 8
  store i32 0, i32* %1, align 4
  store %struct.S* null, %struct.S** %2, align 8
  %3 = load %struct.S*, %struct.S** %2, align 8
  %4 = call %struct.S* asm "", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(%struct.S* @a, %struct.S* %3) #4, !srcloc !4
  store %struct.S* %4, %struct.S** %2, align 8
  store i32 8192, i32* getelementptr inbounds (%union.anon, %union.anon* @u, i32 0, i32 0, i32 1, i32 1, i32 0), align 4
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* bitcast (%union.anon* @u to [64 x i8]*), i64 0, i64 0), i8** @b, align 8
  %5 = load %struct.S*, %struct.S** %2, align 8
  call void @test(%struct.S* noundef %5)
  %6 = load volatile i32, i32* @v, align 4
  %7 = icmp ne i32 %6, 16384
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @abort() #3
  unreachable

9:                                                ; preds = %0
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 1508}
