; ModuleID = './20071120-1.ll'
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

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @perform_access_checks(%struct.deferred_access_check* nocapture noundef readnone %0) #0 {
  call void @abort() #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @pop_to_parent_deferring_access_checks() #2 {
  %1 = load i32, i32* @deferred_access_no_check, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %5, label %2

2:                                                ; preds = %0
  %3 = load i32, i32* @deferred_access_no_check, align 4
  %4 = add i32 %3, -1
  store i32 %4, i32* @deferred_access_no_check, align 4
  br label %36

5:                                                ; preds = %0
  %6 = load %struct.VEC_deferred_access_gc*, %struct.VEC_deferred_access_gc** @deferred_access_stack, align 8
  %.not1 = icmp eq %struct.VEC_deferred_access_gc* %6, null
  br i1 %.not1, label %10, label %7

7:                                                ; preds = %5
  %8 = load %struct.VEC_deferred_access_gc*, %struct.VEC_deferred_access_gc** @deferred_access_stack, align 8
  %9 = getelementptr inbounds %struct.VEC_deferred_access_gc, %struct.VEC_deferred_access_gc* %8, i64 0, i32 0
  br label %11

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi %struct.VEC_deferred_access_base* [ %9, %7 ], [ null, %10 ]
  %13 = call %struct.deferred_access* @VEC_deferred_access_base_last(%struct.VEC_deferred_access_base* noundef %12)
  %14 = getelementptr inbounds %struct.deferred_access, %struct.deferred_access* %13, i64 0, i32 0
  %15 = load %struct.deferred_access_check*, %struct.deferred_access_check** %14, align 8
  %16 = load %struct.VEC_deferred_access_gc*, %struct.VEC_deferred_access_gc** @deferred_access_stack, align 8
  %.not2 = icmp eq %struct.VEC_deferred_access_gc* %16, null
  br i1 %.not2, label %20, label %17

17:                                               ; preds = %11
  %18 = load %struct.VEC_deferred_access_gc*, %struct.VEC_deferred_access_gc** @deferred_access_stack, align 8
  %19 = getelementptr inbounds %struct.VEC_deferred_access_gc, %struct.VEC_deferred_access_gc* %18, i64 0, i32 0
  br label %21

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi %struct.VEC_deferred_access_base* [ %19, %17 ], [ null, %20 ]
  call void @VEC_deferred_access_base_pop(%struct.VEC_deferred_access_base* noundef %22)
  %23 = load %struct.VEC_deferred_access_gc*, %struct.VEC_deferred_access_gc** @deferred_access_stack, align 8
  %.not3 = icmp eq %struct.VEC_deferred_access_gc* %23, null
  br i1 %.not3, label %27, label %24

24:                                               ; preds = %21
  %25 = load %struct.VEC_deferred_access_gc*, %struct.VEC_deferred_access_gc** @deferred_access_stack, align 8
  %26 = getelementptr inbounds %struct.VEC_deferred_access_gc, %struct.VEC_deferred_access_gc* %25, i64 0, i32 0
  br label %28

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi %struct.VEC_deferred_access_base* [ %26, %24 ], [ null, %27 ]
  %30 = call %struct.deferred_access* @VEC_deferred_access_base_last(%struct.VEC_deferred_access_base* noundef %29)
  %31 = getelementptr inbounds %struct.deferred_access, %struct.deferred_access* %30, i64 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  call void @perform_access_checks(%struct.deferred_access_check* noundef %15)
  br label %35

35:                                               ; preds = %34, %28
  br label %36

36:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal nonnull %struct.deferred_access* @VEC_deferred_access_base_last(%struct.VEC_deferred_access_base* noundef readonly %0) #2 {
  %.not = icmp eq %struct.VEC_deferred_access_base* %0, null
  br i1 %.not, label %6, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.VEC_deferred_access_base, %struct.VEC_deferred_access_base* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %.not1 = icmp eq i32 %4, 0
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %2
  br label %8

6:                                                ; preds = %2, %1
  call void @vec_assert_fail() #5
  unreachable

7:                                                ; No predecessors!
  br label %8

8:                                                ; preds = %7, %5
  %9 = getelementptr inbounds %struct.VEC_deferred_access_base, %struct.VEC_deferred_access_base* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add i32 %10, -1
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.VEC_deferred_access_base, %struct.VEC_deferred_access_base* %0, i64 0, i32 1, i64 %12
  ret %struct.deferred_access* %13
}

; Function Attrs: noinline nounwind uwtable
define internal void @VEC_deferred_access_base_pop(%struct.VEC_deferred_access_base* nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.VEC_deferred_access_base, %struct.VEC_deferred_access_base* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  br label %7

5:                                                ; preds = %1
  call void @vec_assert_fail() #5
  unreachable

6:                                                ; No predecessors!
  br label %7

7:                                                ; preds = %6, %4
  %8 = getelementptr inbounds %struct.VEC_deferred_access_base, %struct.VEC_deferred_access_base* %0, i64 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add i32 %9, -1
  store i32 %10, i32* %8, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call dereferenceable_or_null(152) i8* @malloc(i64 noundef 152) #6
  store i8* %1, i8** bitcast (%struct.VEC_deferred_access_gc** @deferred_access_stack to i8**), align 8
  %.cast = bitcast i8* %1 to %struct.VEC_deferred_access_gc*
  %2 = getelementptr inbounds %struct.VEC_deferred_access_gc, %struct.VEC_deferred_access_gc* %.cast, i64 0, i32 0, i32 0
  store i32 2, i32* %2, align 8
  %.cast1 = bitcast i8* %1 to %struct.VEC_deferred_access_gc*
  %3 = getelementptr inbounds %struct.VEC_deferred_access_gc, %struct.VEC_deferred_access_gc* %.cast1, i64 0, i32 0, i32 1, i64 0, i32 1
  store i32 1, i32* %3, align 8
  call void @pop_to_parent_deferring_access_checks()
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i8* @malloc(i64 noundef) #3

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
