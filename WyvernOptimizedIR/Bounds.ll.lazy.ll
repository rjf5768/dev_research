; ModuleID = './Bounds.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/Bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TBounds = type { %struct.TVector, %struct.TVector }
%struct.TVector = type { double, double }

@.str = private unnamed_addr constant [12 x i8] c"src && dest\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/Bounds.c\00", align 1
@__PRETTY_FUNCTION__.Bounds_Copy = private unnamed_addr constant [39 x i8] c"void Bounds_Copy(TBounds *, TBounds *)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@__PRETTY_FUNCTION__.Bounds_Infinite = private unnamed_addr constant [32 x i8] c"void Bounds_Infinite(TBounds *)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"b && add\00", align 1
@__PRETTY_FUNCTION__.Bounds_AddBounds = private unnamed_addr constant [44 x i8] c"void Bounds_AddBounds(TBounds *, TBounds *)\00", align 1
@__PRETTY_FUNCTION__.Bounds_AddEpsilon = private unnamed_addr constant [42 x i8] c"void Bounds_AddEpsilon(TBounds *, double)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"b && tst\00", align 1
@__PRETTY_FUNCTION__.Bounds_IsOverlappingBounds = private unnamed_addr constant [55 x i8] c"_Bool Bounds_IsOverlappingBounds(TBounds *, TBounds *)\00", align 1
@__PRETTY_FUNCTION__.Bounds_WidthAxis = private unnamed_addr constant [49 x i8] c"double Bounds_WidthAxis(TBounds *, unsigned int)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@__PRETTY_FUNCTION__.Bounds_CenterAxis = private unnamed_addr constant [50 x i8] c"double Bounds_CenterAxis(TBounds *, unsigned int)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bounds_Copy(%struct.TBounds* noundef readonly %0, %struct.TBounds* noundef writeonly %1) #0 {
  %.not = icmp eq %struct.TBounds* %0, null
  br i1 %.not, label %5, label %3

3:                                                ; preds = %2
  %.not1 = icmp eq %struct.TBounds* %1, null
  br i1 %.not1, label %5, label %4

4:                                                ; preds = %3
  br label %6

5:                                                ; preds = %3, %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.Bounds_Copy, i64 0, i64 0)) #3
  unreachable

6:                                                ; preds = %4
  %7 = bitcast %struct.TBounds* %1 to i8*
  %8 = bitcast %struct.TBounds* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %7, i8* noundef nonnull align 1 dereferenceable(32) %8, i64 32, i1 false)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bounds_Infinite(%struct.TBounds* noundef writeonly %0) #0 {
  %.not = icmp eq %struct.TBounds* %0, null
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  br label %4

3:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.Bounds_Infinite, i64 0, i64 0)) #3
  unreachable

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 0, i32 0
  store double 1.000000e+64, double* %5, align 8
  %6 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 0, i32 1
  store double 1.000000e+64, double* %6, align 8
  %7 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 1, i32 0
  store double -1.000000e+64, double* %7, align 8
  %8 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 1, i32 1
  store double -1.000000e+64, double* %8, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bounds_AddBounds(%struct.TBounds* noundef %0, %struct.TBounds* noundef readonly %1) #0 {
  %.not = icmp eq %struct.TBounds* %0, null
  br i1 %.not, label %5, label %3

3:                                                ; preds = %2
  %.not1 = icmp eq %struct.TBounds* %1, null
  br i1 %.not1, label %5, label %4

4:                                                ; preds = %3
  br label %6

5:                                                ; preds = %3, %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.Bounds_AddBounds, i64 0, i64 0)) #3
  unreachable

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 0, i32 0
  %8 = load double, double* %7, align 8
  %9 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %1, i64 0, i32 0, i32 0
  %10 = load double, double* %9, align 8
  %11 = fcmp olt double %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %14

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %13, %12
  %.pn7 = phi %struct.TBounds* [ %0, %12 ], [ %1, %13 ]
  %.in = getelementptr inbounds %struct.TBounds, %struct.TBounds* %.pn7, i64 0, i32 0, i32 0
  %15 = load double, double* %.in, align 8
  %16 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 0, i32 0
  store double %15, double* %16, align 8
  %17 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 0, i32 1
  %18 = load double, double* %17, align 8
  %19 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %1, i64 0, i32 0, i32 1
  %20 = load double, double* %19, align 8
  %21 = fcmp olt double %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %24

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %22
  %.pn6 = phi %struct.TBounds* [ %0, %22 ], [ %1, %23 ]
  %.in2 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %.pn6, i64 0, i32 0, i32 1
  %25 = load double, double* %.in2, align 8
  %26 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 0, i32 1
  store double %25, double* %26, align 8
  %27 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 1, i32 0
  %28 = load double, double* %27, align 8
  %29 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %1, i64 0, i32 1, i32 0
  %30 = load double, double* %29, align 8
  %31 = fcmp ogt double %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %34

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %32
  %.pn5 = phi %struct.TBounds* [ %0, %32 ], [ %1, %33 ]
  %.in3 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %.pn5, i64 0, i32 1, i32 0
  %35 = load double, double* %.in3, align 8
  %36 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 1, i32 0
  store double %35, double* %36, align 8
  %37 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 1, i32 1
  %38 = load double, double* %37, align 8
  %39 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %1, i64 0, i32 1, i32 1
  %40 = load double, double* %39, align 8
  %41 = fcmp ogt double %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %44

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %42
  %.pn = phi %struct.TBounds* [ %0, %42 ], [ %1, %43 ]
  %.in4 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %.pn, i64 0, i32 1, i32 1
  %45 = load double, double* %.in4, align 8
  %46 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 1, i32 1
  store double %45, double* %46, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bounds_AddEpsilon(%struct.TBounds* noundef %0, double noundef %1) #0 {
  %.not = icmp eq %struct.TBounds* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.Bounds_AddEpsilon, i64 0, i64 0)) #3
  unreachable

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = fsub double %7, %1
  %9 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 0, i32 0
  store double %8, double* %9, align 8
  %10 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = fsub double %11, %1
  %13 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 0, i32 1
  store double %12, double* %13, align 8
  %14 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 1, i32 0
  %15 = load double, double* %14, align 8
  %16 = fadd double %15, %1
  %17 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 1, i32 0
  store double %16, double* %17, align 8
  %18 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 1, i32 1
  %19 = load double, double* %18, align 8
  %20 = fadd double %19, %1
  %21 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 1, i32 1
  store double %20, double* %21, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @Bounds_IsOverlappingBounds(%struct.TBounds* noundef readonly %0, %struct.TBounds* noundef readonly %1) #0 {
  %.not = icmp eq %struct.TBounds* %0, null
  br i1 %.not, label %5, label %3

3:                                                ; preds = %2
  %.not1 = icmp eq %struct.TBounds* %1, null
  br i1 %.not1, label %5, label %4

4:                                                ; preds = %3
  br label %6

5:                                                ; preds = %3, %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.Bounds_IsOverlappingBounds, i64 0, i64 0)) #3
  unreachable

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %1, i64 0, i32 1, i32 0
  %8 = load double, double* %7, align 8
  %9 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 0, i32 0
  %10 = load double, double* %9, align 8
  %11 = fcmp olt double %8, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %1, i64 0, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 1, i32 0
  %16 = load double, double* %15, align 8
  %17 = fcmp ogt double %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %6
  br label %33

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %1, i64 0, i32 1, i32 1
  %21 = load double, double* %20, align 8
  %22 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 0, i32 1
  %23 = load double, double* %22, align 8
  %24 = fcmp olt double %21, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %1, i64 0, i32 0, i32 1
  %27 = load double, double* %26, align 8
  %28 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 1, i32 1
  %29 = load double, double* %28, align 8
  %30 = fcmp ogt double %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %19
  br label %33

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %31, %18
  %.0 = phi i1 [ false, %18 ], [ false, %31 ], [ true, %32 ]
  ret i1 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @Bounds_WidthAxis(%struct.TBounds* noundef readonly %0, i32 noundef %1) #0 {
  %.not = icmp eq %struct.TBounds* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.Bounds_WidthAxis, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 1, i32 0
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 0, i32 0
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  br label %26

13:                                               ; preds = %5
  %14 = icmp eq i32 %1, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 1, i32 1
  %17 = load double, double* %16, align 8
  %18 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 0, i32 1
  %19 = load double, double* %18, align 8
  %20 = fsub double %17, %19
  br label %25

21:                                               ; preds = %13
  br i1 false, label %22, label %23

22:                                               ; preds = %21
  br label %24

23:                                               ; preds = %21
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.Bounds_WidthAxis, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24, %15
  %.0 = phi double [ %20, %15 ], [ undef, %24 ]
  br label %26

26:                                               ; preds = %25, %7
  %.1 = phi double [ %12, %7 ], [ %.0, %25 ]
  ret double %.1

UnifiedUnreachableBlock:                          ; preds = %23, %4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @Bounds_CenterAxis(%struct.TBounds* noundef readonly %0, i32 noundef %1) #0 {
  %.not = icmp eq %struct.TBounds* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.Bounds_CenterAxis, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 1, i32 0
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  %13 = fmul double %12, 5.000000e-01
  br label %28

14:                                               ; preds = %5
  %15 = icmp eq i32 %1, 1
  br i1 %15, label %16, label %23

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 0, i32 1
  %18 = load double, double* %17, align 8
  %19 = getelementptr inbounds %struct.TBounds, %struct.TBounds* %0, i64 0, i32 1, i32 1
  %20 = load double, double* %19, align 8
  %21 = fadd double %18, %20
  %22 = fmul double %21, 5.000000e-01
  br label %27

23:                                               ; preds = %14
  br i1 false, label %24, label %25

24:                                               ; preds = %23
  br label %26

25:                                               ; preds = %23
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.Bounds_CenterAxis, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26, %16
  %.0 = phi double [ %22, %16 ], [ undef, %26 ]
  br label %28

28:                                               ; preds = %27, %7
  %.1 = phi double [ %13, %7 ], [ %.0, %27 ]
  ret double %.1

UnifiedUnreachableBlock:                          ; preds = %25, %4
  unreachable
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
