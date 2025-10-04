; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071120-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071120-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ggc_root_tab = type { i8* }
%struct.VEC_deferred_access_gc = type { %struct.VEC_deferred_access_base }
%struct.VEC_deferred_access_base = type { i32, [1 x %struct.deferred_access] }
%struct.deferred_access = type { %struct.deferred_access_check*, i32 }
%struct.deferred_access_check = type {}

@deferred_access_no_check = internal global i32 0, align 4
@gt_pch_rs_gt_cp_semantics_h = dso_local constant [1 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (i32* @deferred_access_no_check to i8*) }], align 8
@deferred_access_stack = internal global %struct.VEC_deferred_access_gc* null, align 8

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @vec_assert_fail() #0 {
  call void @abort() #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @perform_access_checks(%struct.deferred_access_check* noundef %0) #2 {
  %2 = alloca %struct.deferred_access_check*, align 8
  store %struct.deferred_access_check* %0, %struct.deferred_access_check** %2, align 8
  call void @abort() #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @pop_to_parent_deferring_access_checks() #2 {
  %1 = alloca %struct.deferred_access_check*, align 8
  %2 = alloca %struct.deferred_access*, align 8
  %3 = load i32, i32* @deferred_access_no_check, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @deferred_access_no_check, align 4
  %7 = add i32 %6, -1
  store i32 %7, i32* @deferred_access_no_check, align 4
  br label %44

8:                                                ; preds = %0
  %9 = load %struct.VEC_deferred_access_gc*, %struct.VEC_deferred_access_gc** @deferred_access_stack, align 8
  %10 = icmp ne %struct.VEC_deferred_access_gc* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load %struct.VEC_deferred_access_gc*, %struct.VEC_deferred_access_gc** @deferred_access_stack, align 8
  %13 = getelementptr inbounds %struct.VEC_deferred_access_gc, %struct.VEC_deferred_access_gc* %12, i32 0, i32 0
  br label %15

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi %struct.VEC_deferred_access_base* [ %13, %11 ], [ null, %14 ]
  %17 = call %struct.deferred_access* @VEC_deferred_access_base_last(%struct.VEC_deferred_access_base* noundef %16)
  %18 = getelementptr inbounds %struct.deferred_access, %struct.deferred_access* %17, i32 0, i32 0
  %19 = load %struct.deferred_access_check*, %struct.deferred_access_check** %18, align 8
  store %struct.deferred_access_check* %19, %struct.deferred_access_check** %1, align 8
  %20 = load %struct.VEC_deferred_access_gc*, %struct.VEC_deferred_access_gc** @deferred_access_stack, align 8
  %21 = icmp ne %struct.VEC_deferred_access_gc* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.VEC_deferred_access_gc*, %struct.VEC_deferred_access_gc** @deferred_access_stack, align 8
  %24 = getelementptr inbounds %struct.VEC_deferred_access_gc, %struct.VEC_deferred_access_gc* %23, i32 0, i32 0
  br label %26

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi %struct.VEC_deferred_access_base* [ %24, %22 ], [ null, %25 ]
  call void @VEC_deferred_access_base_pop(%struct.VEC_deferred_access_base* noundef %27)
  %28 = load %struct.VEC_deferred_access_gc*, %struct.VEC_deferred_access_gc** @deferred_access_stack, align 8
  %29 = icmp ne %struct.VEC_deferred_access_gc* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.VEC_deferred_access_gc*, %struct.VEC_deferred_access_gc** @deferred_access_stack, align 8
  %32 = getelementptr inbounds %struct.VEC_deferred_access_gc, %struct.VEC_deferred_access_gc* %31, i32 0, i32 0
  br label %34

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi %struct.VEC_deferred_access_base* [ %32, %30 ], [ null, %33 ]
  %36 = call %struct.deferred_access* @VEC_deferred_access_base_last(%struct.VEC_deferred_access_base* noundef %35)
  store %struct.deferred_access* %36, %struct.deferred_access** %2, align 8
  %37 = load %struct.deferred_access*, %struct.deferred_access** %2, align 8
  %38 = getelementptr inbounds %struct.deferred_access, %struct.deferred_access* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load %struct.deferred_access_check*, %struct.deferred_access_check** %1, align 8
  call void @perform_access_checks(%struct.deferred_access_check* noundef %42)
  br label %43

43:                                               ; preds = %41, %34
  br label %44

44:                                               ; preds = %43, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.deferred_access* @VEC_deferred_access_base_last(%struct.VEC_deferred_access_base* noundef %0) #2 {
  %2 = alloca %struct.VEC_deferred_access_base*, align 8
  store %struct.VEC_deferred_access_base* %0, %struct.VEC_deferred_access_base** %2, align 8
  %3 = load %struct.VEC_deferred_access_base*, %struct.VEC_deferred_access_base** %2, align 8
  %4 = icmp ne %struct.VEC_deferred_access_base* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.VEC_deferred_access_base*, %struct.VEC_deferred_access_base** %2, align 8
  %7 = getelementptr inbounds %struct.VEC_deferred_access_base, %struct.VEC_deferred_access_base* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %13

11:                                               ; preds = %5, %1
  call void @vec_assert_fail() #4
  unreachable

12:                                               ; No predecessors!
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ 0, %10 ], [ 0, %12 ]
  %15 = load %struct.VEC_deferred_access_base*, %struct.VEC_deferred_access_base** %2, align 8
  %16 = getelementptr inbounds %struct.VEC_deferred_access_base, %struct.VEC_deferred_access_base* %15, i32 0, i32 1
  %17 = load %struct.VEC_deferred_access_base*, %struct.VEC_deferred_access_base** %2, align 8
  %18 = getelementptr inbounds %struct.VEC_deferred_access_base, %struct.VEC_deferred_access_base* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [1 x %struct.deferred_access], [1 x %struct.deferred_access]* %16, i64 0, i64 %21
  ret %struct.deferred_access* %22
}

; Function Attrs: noinline nounwind uwtable
define internal void @VEC_deferred_access_base_pop(%struct.VEC_deferred_access_base* noundef %0) #2 {
  %2 = alloca %struct.VEC_deferred_access_base*, align 8
  store %struct.VEC_deferred_access_base* %0, %struct.VEC_deferred_access_base** %2, align 8
  %3 = load %struct.VEC_deferred_access_base*, %struct.VEC_deferred_access_base** %2, align 8
  %4 = getelementptr inbounds %struct.VEC_deferred_access_base, %struct.VEC_deferred_access_base* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %10

8:                                                ; preds = %1
  call void @vec_assert_fail() #4
  unreachable

9:                                                ; No predecessors!
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i32 [ 0, %7 ], [ 0, %9 ]
  %12 = load %struct.VEC_deferred_access_base*, %struct.VEC_deferred_access_base** %2, align 8
  %13 = getelementptr inbounds %struct.VEC_deferred_access_base, %struct.VEC_deferred_access_base* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add i32 %14, -1
  store i32 %15, i32* %13, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i8* @malloc(i64 noundef 152) #5
  %3 = bitcast i8* %2 to %struct.VEC_deferred_access_gc*
  store %struct.VEC_deferred_access_gc* %3, %struct.VEC_deferred_access_gc** @deferred_access_stack, align 8
  %4 = load %struct.VEC_deferred_access_gc*, %struct.VEC_deferred_access_gc** @deferred_access_stack, align 8
  %5 = getelementptr inbounds %struct.VEC_deferred_access_gc, %struct.VEC_deferred_access_gc* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.VEC_deferred_access_base, %struct.VEC_deferred_access_base* %5, i32 0, i32 0
  store i32 2, i32* %6, align 8
  %7 = load %struct.VEC_deferred_access_gc*, %struct.VEC_deferred_access_gc** @deferred_access_stack, align 8
  %8 = getelementptr inbounds %struct.VEC_deferred_access_gc, %struct.VEC_deferred_access_gc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.VEC_deferred_access_base, %struct.VEC_deferred_access_base* %8, i32 0, i32 1
  %10 = getelementptr inbounds [1 x %struct.deferred_access], [1 x %struct.deferred_access]* %9, i64 0, i64 0
  %11 = getelementptr inbounds %struct.deferred_access, %struct.deferred_access* %10, i32 0, i32 1
  store i32 1, i32* %11, align 8
  call void @pop_to_parent_deferring_access_checks()
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i8* @malloc(i64 noundef) #3

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
