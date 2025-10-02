; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/Stopwatch.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/Stopwatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Stopwatch_struct = type { i32, double, double }

@seconds.t = internal global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local double @seconds() #0 {
  %1 = load double, double* @seconds.t, align 8
  %2 = fadd double %1, 1.000000e+00
  store double %2, double* @seconds.t, align 8
  ret double %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Stopwtach_reset(%struct.Stopwatch_struct* noundef %0) #0 {
  %2 = alloca %struct.Stopwatch_struct*, align 8
  store %struct.Stopwatch_struct* %0, %struct.Stopwatch_struct** %2, align 8
  %3 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %4 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %3, i32 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %6 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %5, i32 0, i32 1
  store double 0.000000e+00, double* %6, align 8
  %7 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %8 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %7, i32 0, i32 2
  store double 0.000000e+00, double* %8, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Stopwatch_struct* @new_Stopwatch() #0 {
  %1 = alloca %struct.Stopwatch_struct*, align 8
  %2 = alloca %struct.Stopwatch_struct*, align 8
  %3 = call noalias i8* @malloc(i64 noundef 24) #2
  %4 = bitcast i8* %3 to %struct.Stopwatch_struct*
  store %struct.Stopwatch_struct* %4, %struct.Stopwatch_struct** %2, align 8
  %5 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %6 = icmp eq %struct.Stopwatch_struct* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store %struct.Stopwatch_struct* null, %struct.Stopwatch_struct** %1, align 8
  br label %11

8:                                                ; preds = %0
  %9 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  call void @Stopwtach_reset(%struct.Stopwatch_struct* noundef %9)
  %10 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  store %struct.Stopwatch_struct* %10, %struct.Stopwatch_struct** %1, align 8
  br label %11

11:                                               ; preds = %8, %7
  %12 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %1, align 8
  ret %struct.Stopwatch_struct* %12
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Stopwatch_delete(%struct.Stopwatch_struct* noundef %0) #0 {
  %2 = alloca %struct.Stopwatch_struct*, align 8
  store %struct.Stopwatch_struct* %0, %struct.Stopwatch_struct** %2, align 8
  %3 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %4 = icmp ne %struct.Stopwatch_struct* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %7 = bitcast %struct.Stopwatch_struct* %6 to i8*
  call void @free(i8* noundef %7) #2
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Stopwatch_start(%struct.Stopwatch_struct* noundef %0) #0 {
  %2 = alloca %struct.Stopwatch_struct*, align 8
  store %struct.Stopwatch_struct* %0, %struct.Stopwatch_struct** %2, align 8
  %3 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %4 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %9 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %11 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %10, i32 0, i32 2
  store double 0.000000e+00, double* %11, align 8
  %12 = call double @seconds()
  %13 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %14 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %13, i32 0, i32 1
  store double %12, double* %14, align 8
  br label %15

15:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Stopwatch_resume(%struct.Stopwatch_struct* noundef %0) #0 {
  %2 = alloca %struct.Stopwatch_struct*, align 8
  store %struct.Stopwatch_struct* %0, %struct.Stopwatch_struct** %2, align 8
  %3 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %4 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = call double @seconds()
  %9 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %10 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %9, i32 0, i32 1
  store double %8, double* %10, align 8
  %11 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %12 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  br label %13

13:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Stopwatch_stop(%struct.Stopwatch_struct* noundef %0) #0 {
  %2 = alloca %struct.Stopwatch_struct*, align 8
  store %struct.Stopwatch_struct* %0, %struct.Stopwatch_struct** %2, align 8
  %3 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %4 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = call double @seconds()
  %9 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %10 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %9, i32 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = fsub double %8, %11
  %13 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %14 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %13, i32 0, i32 2
  %15 = load double, double* %14, align 8
  %16 = fadd double %15, %12
  store double %16, double* %14, align 8
  %17 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %18 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  br label %19

19:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @Stopwatch_read(%struct.Stopwatch_struct* noundef %0) #0 {
  %2 = alloca %struct.Stopwatch_struct*, align 8
  %3 = alloca double, align 8
  store %struct.Stopwatch_struct* %0, %struct.Stopwatch_struct** %2, align 8
  %4 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %5 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = call double @seconds()
  store double %9, double* %3, align 8
  %10 = load double, double* %3, align 8
  %11 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %12 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %11, i32 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = fsub double %10, %13
  %15 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %16 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %15, i32 0, i32 2
  %17 = load double, double* %16, align 8
  %18 = fadd double %17, %14
  store double %18, double* %16, align 8
  %19 = load double, double* %3, align 8
  %20 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %21 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %20, i32 0, i32 1
  store double %19, double* %21, align 8
  br label %22

22:                                               ; preds = %8, %1
  %23 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %24 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %23, i32 0, i32 2
  %25 = load double, double* %24, align 8
  ret double %25
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
