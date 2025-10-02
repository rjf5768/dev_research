; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020129-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020129-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { %struct.C, %struct.A* }
%struct.C = type { %struct.D, i64, i64, i64, i64, i64 }
%struct.D = type { i32, %struct.D* }
%struct.A = type { %struct.A*, %struct.C* }

@y = dso_local global %struct.B zeroinitializer, align 8
@x = dso_local global %struct.B zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.B* noundef %0, %struct.B* noundef %1) #0 {
  %3 = alloca %struct.B*, align 8
  %4 = alloca %struct.B*, align 8
  %5 = alloca %struct.A*, align 8
  store %struct.B* %0, %struct.B** %3, align 8
  store %struct.B* %1, %struct.B** %4, align 8
  %6 = load %struct.B*, %struct.B** %3, align 8
  %7 = getelementptr inbounds %struct.B, %struct.B* %6, i32 0, i32 1
  %8 = load %struct.A*, %struct.A** %7, align 8
  %9 = icmp eq %struct.A* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load %struct.B*, %struct.B** %4, align 8
  %12 = getelementptr inbounds %struct.B, %struct.B* %11, i32 0, i32 1
  %13 = load %struct.A*, %struct.A** %12, align 8
  store %struct.A* %13, %struct.A** %5, align 8
  %14 = load %struct.B*, %struct.B** %3, align 8
  %15 = getelementptr inbounds %struct.B, %struct.B* %14, i32 0, i32 1
  store %struct.A* %13, %struct.A** %15, align 8
  %16 = load %struct.B*, %struct.B** %4, align 8
  %17 = getelementptr inbounds %struct.B, %struct.B* %16, i32 0, i32 1
  store %struct.A* null, %struct.A** %17, align 8
  br label %18

18:                                               ; preds = %26, %10
  %19 = load %struct.A*, %struct.A** %5, align 8
  %20 = icmp ne %struct.A* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load %struct.B*, %struct.B** %3, align 8
  %23 = getelementptr inbounds %struct.B, %struct.B* %22, i32 0, i32 0
  %24 = load %struct.A*, %struct.A** %5, align 8
  %25 = getelementptr inbounds %struct.A, %struct.A* %24, i32 0, i32 1
  store %struct.C* %23, %struct.C** %25, align 8
  br label %26

26:                                               ; preds = %21
  %27 = load %struct.A*, %struct.A** %5, align 8
  %28 = getelementptr inbounds %struct.A, %struct.A* %27, i32 0, i32 0
  %29 = load %struct.A*, %struct.A** %28, align 8
  store %struct.A* %29, %struct.A** %5, align 8
  br label %18, !llvm.loop !4

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.B*, %struct.B** %4, align 8
  %33 = getelementptr inbounds %struct.B, %struct.B* %32, i32 0, i32 1
  %34 = load %struct.A*, %struct.A** %33, align 8
  %35 = icmp ne %struct.A* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  call void @abort() #2
  unreachable

37:                                               ; preds = %31
  %38 = load %struct.B*, %struct.B** %3, align 8
  %39 = getelementptr inbounds %struct.B, %struct.B* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.C, %struct.C* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, -1
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = load %struct.B*, %struct.B** %4, align 8
  %45 = getelementptr inbounds %struct.B, %struct.B* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.C, %struct.C* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.B*, %struct.B** %3, align 8
  %49 = getelementptr inbounds %struct.B, %struct.B* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.C, %struct.C* %49, i32 0, i32 2
  store i64 %47, i64* %50, align 8
  %51 = load %struct.B*, %struct.B** %4, align 8
  %52 = getelementptr inbounds %struct.B, %struct.B* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.C, %struct.C* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.B*, %struct.B** %3, align 8
  %56 = getelementptr inbounds %struct.B, %struct.B* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.C, %struct.C* %56, i32 0, i32 3
  store i64 %54, i64* %57, align 8
  %58 = load %struct.B*, %struct.B** %4, align 8
  %59 = getelementptr inbounds %struct.B, %struct.B* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.C, %struct.C* %59, i32 0, i32 2
  store i64 -1, i64* %60, align 8
  %61 = load %struct.B*, %struct.B** %4, align 8
  %62 = getelementptr inbounds %struct.B, %struct.B* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.C, %struct.C* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %43, %37
  %65 = load %struct.B*, %struct.B** %4, align 8
  %66 = getelementptr inbounds %struct.B, %struct.B* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.C, %struct.C* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  call void @abort() #2
  unreachable

71:                                               ; preds = %64
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 6, i32* getelementptr inbounds (%struct.B, %struct.B* @y, i32 0, i32 0, i32 0, i32 0), align 8
  store i64 145, i64* getelementptr inbounds (%struct.B, %struct.B* @y, i32 0, i32 0, i32 2), align 8
  store i64 2448, i64* getelementptr inbounds (%struct.B, %struct.B* @y, i32 0, i32 0, i32 3), align 8
  store i64 -1, i64* getelementptr inbounds (%struct.B, %struct.B* @x, i32 0, i32 0, i32 2), align 8
  call void @foo(%struct.B* noundef @x, %struct.B* noundef @y)
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
