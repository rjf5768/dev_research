; ModuleID = './Stopwatch.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/Stopwatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Stopwatch_struct = type { i32, double, double }

@seconds.t = internal global double 0.000000e+00, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local double @seconds() #0 {
  %1 = load double, double* @seconds.t, align 8
  %2 = fadd double %1, 1.000000e+00
  store double %2, double* @seconds.t, align 8
  ret double %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Stopwtach_reset(%struct.Stopwatch_struct* nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i64 0, i32 0
  store i32 0, i32* %2, align 8
  %3 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i64 0, i32 1
  store double 0.000000e+00, double* %3, align 8
  %4 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i64 0, i32 2
  store double 0.000000e+00, double* %4, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.Stopwatch_struct* @new_Stopwatch() #2 {
  %1 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #4
  %2 = bitcast i8* %1 to %struct.Stopwatch_struct*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %6

5:                                                ; preds = %0
  call void @Stopwtach_reset(%struct.Stopwatch_struct* noundef nonnull %2)
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi %struct.Stopwatch_struct* [ null, %4 ], [ %2, %5 ]
  ret %struct.Stopwatch_struct* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Stopwatch_delete(%struct.Stopwatch_struct* noundef %0) #2 {
  %.not = icmp eq %struct.Stopwatch_struct* %0, null
  br i1 %.not, label %4, label %2

2:                                                ; preds = %1
  %3 = bitcast %struct.Stopwatch_struct* %0 to i8*
  call void @free(i8* noundef %3) #4
  br label %4

4:                                                ; preds = %2, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @Stopwatch_start(%struct.Stopwatch_struct* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %9

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i64 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i64 0, i32 2
  store double 0.000000e+00, double* %6, align 8
  %7 = call double @seconds()
  %8 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i64 0, i32 1
  store double %7, double* %8, align 8
  br label %9

9:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @Stopwatch_resume(%struct.Stopwatch_struct* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %8

4:                                                ; preds = %1
  %5 = call double @seconds()
  %6 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i64 0, i32 1
  store double %5, double* %6, align 8
  %7 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i64 0, i32 0
  store i32 1, i32* %7, align 8
  br label %8

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @Stopwatch_stop(%struct.Stopwatch_struct* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %13, label %4

4:                                                ; preds = %1
  %5 = call double @seconds()
  %6 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i64 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = fsub double %5, %7
  %9 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i64 0, i32 2
  %10 = load double, double* %9, align 8
  %11 = fadd double %10, %8
  store double %11, double* %9, align 8
  %12 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i64 0, i32 0
  store i32 0, i32* %12, align 8
  br label %13

13:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local double @Stopwatch_read(%struct.Stopwatch_struct* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %13, label %4

4:                                                ; preds = %1
  %5 = call double @seconds()
  %6 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i64 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = fsub double %5, %7
  %9 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i64 0, i32 2
  %10 = load double, double* %9, align 8
  %11 = fadd double %10, %8
  store double %11, double* %9, align 8
  %12 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i64 0, i32 1
  store double %5, double* %12, align 8
  br label %13

13:                                               ; preds = %4, %1
  %14 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i64 0, i32 2
  %15 = load double, double* %14, align 8
  ret double %15
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
