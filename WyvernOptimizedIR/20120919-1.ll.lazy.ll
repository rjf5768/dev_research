; ModuleID = './20120919-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20120919-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_wyvern_thunk_type.0 = type { i32* (%_wyvern_thunk_type.0*)*, i32*, i1 }

@vd = dso_local global [2 x double] [double 1.000000e+00, double 0.000000e+00], align 16
@vi = dso_local global [2 x i32] [i32 1234567890, i32 0], align 4
@pd = dso_local global double* getelementptr inbounds ([2 x double], [2 x double]* @vd, i32 0, i32 0), align 8
@pi = dso_local global i32* getelementptr inbounds ([2 x i32], [2 x i32]* @vi, i32 0, i32 0), align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @init(i32* noundef readnone %0, i32* nocapture noundef writeonly %1) #0 {
  %3 = icmp eq i32* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_main_410570213, i32* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  call void @_wyvern_calleeclone_init_1437749745(i32* noundef nonnull %1, %_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca)
  br label %2

2:                                                ; preds = %35, %0
  %.01 = phi i32 [ -1, %0 ], [ %36, %35 ]
  %.0 = phi i32 [ 0, %0 ], [ %.3, %35 ]
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %.01, %3
  br i1 %4, label %5, label %37

5:                                                ; preds = %2
  %6 = icmp eq i32 %.01, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %5
  %8 = load double*, double** @pd, align 8
  %9 = sext i32 %.01 to i64
  %10 = getelementptr inbounds double, double* %8, i64 %9
  %11 = load double, double* %10, align 8
  %12 = fcmp ogt double %11, 0.000000e+00
  br i1 %12, label %13, label %26

13:                                               ; preds = %7
  %14 = load i32*, i32** @pi, align 8
  %15 = sext i32 %.01 to i64
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load i32*, i32** @pi, align 8
  %21 = sext i32 %.01 to i64
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %.0, %23
  br label %25

25:                                               ; preds = %19, %13
  %.1 = phi i32 [ %24, %19 ], [ %.0, %13 ]
  br label %26

26:                                               ; preds = %25, %7
  %.2 = phi i32 [ %.1, %25 ], [ %.0, %7 ]
  %27 = load i32*, i32** @pi, align 8
  %28 = sext i32 %.01 to i64
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sitofp i32 %30 to double
  %32 = load double*, double** @pd, align 8
  %33 = sext i32 %.01 to i64
  %34 = getelementptr inbounds double, double* %32, i64 %33
  store double %31, double* %34, align 8
  br label %35

35:                                               ; preds = %26, %5
  %.3 = phi i32 [ %.2, %26 ], [ %.0, %5 ]
  %36 = add nsw i32 %.01, 1
  br label %2, !llvm.loop !4

37:                                               ; preds = %2
  %.not = icmp eq i32 %.0, 1234567890
  br i1 %.not, label %39, label %38

38:                                               ; preds = %37
  call void @abort() #4
  unreachable

39:                                               ; preds = %37
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: nounwind readonly willreturn
define i32* @_wyvern_slice_memo_main_410570213(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32*, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [1532 x i32], align 16
  %1 = getelementptr inbounds [1532 x i32], [1532 x i32]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32* %1, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @_wyvern_calleeclone_init_1437749745(i32* noundef readnone %0, %_wyvern_thunk_type.0* noundef %_wyvern_thunkptr) #0 {
  %2 = icmp eq i32* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32* (%_wyvern_thunk_type.0*)*, i32* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  store i32 0, i32* %_wyvern_thunkcall, align 4
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
