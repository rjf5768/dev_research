; ModuleID = './pr72824.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/pr72824.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_wyvern_thunk_type.0 = type { float* (%_wyvern_thunk_type.0*)*, float*, i1 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %1 = alloca [32 x float], align 16
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store float* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_main_289693335, float* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  call void @_wyvern_calleeclone_foo_0379903758(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, float noundef -0.000000e+00)
  %2 = getelementptr inbounds [32 x float], [32 x float]* %1, i64 0, i64 3
  %3 = load float, float* %2, align 4
  %4 = call float @llvm.copysign.f32(float 1.000000e+00, float %3)
  %5 = fcmp une float %4, -1.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #5
  unreachable

7:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define internal void @foo(float* nocapture noundef writeonly %0, float noundef %1) #1 {
  br label %3

3:                                                ; preds = %8, %2
  %.0 = phi i32 [ 0, %2 ], [ %9, %8 ]
  %4 = icmp ult i32 %.0, 32
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds float, float* %0, i64 %6
  store float %1, float* %7, align 4
  br label %8

8:                                                ; preds = %5
  %9 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !4

10:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.copysign.f32(float, float) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: nounwind readonly willreturn
define float* @_wyvern_slice_memo_main_289693335(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load float*, float** %_wyvern_memo_val_addr, align 8
  ret float* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [32 x float], align 16
  %1 = getelementptr inbounds [32 x float], [32 x float]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store float* %1, float** %_wyvern_memo_val_addr, align 8
  ret float* %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @_wyvern_calleeclone_foo_0379903758(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, float noundef %0) #1 {
  br label %2

2:                                                ; preds = %7, %1
  %.0 = phi i32 [ 0, %1 ], [ %8, %7 ]
  %3 = icmp ult i32 %.0, 32
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load float* (%_wyvern_thunk_type.0*)*, float* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call float* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #6
  %6 = getelementptr inbounds float, float* %_wyvern_thunkcall, i64 %5
  store float %0, float* %6, align 4
  br label %7

7:                                                ; preds = %4
  %8 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

9:                                                ; preds = %2
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
