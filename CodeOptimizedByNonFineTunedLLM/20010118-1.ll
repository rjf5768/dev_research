; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010118-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010118-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, i32, i32, i32, i32, i32 }

@__const.main.w = private unnamed_addr constant %struct.A { i32 100, i32 110, i32 20, i32 30, i32 -1, i32 -1 }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.A* noundef %0, i32 noundef %1, i32 noundef %2, i32* noundef %3, i32* noundef %4) #0 {
  %6 = alloca %struct.A*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.A* %0, %struct.A** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(%struct.A* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.A*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.A* %0, %struct.A** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.A*, %struct.A** %6, align 8
  %18 = getelementptr inbounds %struct.A, %struct.A* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %5
  %23 = load %struct.A*, %struct.A** %6, align 8
  %24 = getelementptr inbounds %struct.A, %struct.A* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %22, %5
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %12, align 4
  %31 = load %struct.A*, %struct.A** %6, align 8
  %32 = getelementptr inbounds %struct.A, %struct.A* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load %struct.A*, %struct.A** %6, align 8
  %35 = getelementptr inbounds %struct.A, %struct.A* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %14, align 4
  %37 = load %struct.A*, %struct.A** %6, align 8
  call void @foo(%struct.A* noundef %37, i32 noundef 0, i32 noundef 0, i32* noundef %9, i32* noundef %10)
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sitofp i32 %40 to double
  %42 = load i32, i32* %13, align 4
  %43 = sitofp i32 %42 to double
  %44 = fmul double %41, %43
  %45 = fdiv double %44, 2.000000e+00
  %46 = fptosi double %45 to i32
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 %47, %48
  %50 = sitofp i32 %49 to double
  %51 = load i32, i32* %14, align 4
  %52 = sitofp i32 %51 to double
  %53 = fmul double %50, %52
  %54 = fdiv double %53, 2.000000e+00
  %55 = fptosi double %54 to i32
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.A*, %struct.A** %6, align 8
  %64 = getelementptr inbounds %struct.A, %struct.A* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.A*, %struct.A** %6, align 8
  %67 = getelementptr inbounds %struct.A, %struct.A* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.A*, %struct.A** %6, align 8
  %70 = getelementptr inbounds %struct.A, %struct.A* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.A*, %struct.A** %6, align 8
  %73 = getelementptr inbounds %struct.A, %struct.A* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %28, %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.A, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.A* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.A* @__const.main.w to i8*), i64 24, i1 false)
  call void @bar(%struct.A* noundef %2, i32 noundef 400, i32 noundef 420, i32 noundef 50, i32 noundef 70)
  %4 = getelementptr inbounds %struct.A, %struct.A* %2, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 70
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #3
  unreachable

8:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

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
