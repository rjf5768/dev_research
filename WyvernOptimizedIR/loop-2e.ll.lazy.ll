; ModuleID = './loop-2e.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-2e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_wyvern_thunk_type.0 = type { i32* (%_wyvern_thunk_type.0*)*, i32*, i1 }

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @f(i32* noundef %0, i32** nocapture noundef writeonly %1) #0 {
  br label %3

3:                                                ; preds = %8, %2
  %.01 = phi i32** [ %1, %2 ], [ %9, %8 ]
  %.0 = phi i32 [ 0, %2 ], [ %10, %8 ]
  %4 = icmp ult i32 %.0, 40
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  store i32* %7, i32** %.01, align 8
  br label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds i32*, i32** %.01, i64 1
  %10 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !4

11:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %1 = alloca [40 x i32*], align 16
  %2 = getelementptr inbounds [40 x i32*], [40 x i32*]* %1, i64 0, i64 39
  store i32* null, i32** %2, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_main_508545031, i32* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %3 = getelementptr inbounds [40 x i32*], [40 x i32*]* %1, i64 0, i64 0
  call void @_wyvern_calleeclone_f_069951110(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i32** noundef nonnull %3)
  %4 = getelementptr inbounds [40 x i32*], [40 x i32*]* %1, i64 0, i64 39
  %5 = load i32*, i32** %4, align 8
  %.not = icmp eq i32* %5, inttoptr (i64 -9223372036854775684 to i32*)
  br i1 %.not, label %7, label %6

6:                                                ; preds = %0
  call void @abort() #4
  unreachable

7:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: nounwind readonly willreturn
define i32* @_wyvern_slice_memo_main_508545031(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32*, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32* inttoptr (i64 9223372036854775776 to i32*), i32** %_wyvern_memo_val_addr, align 8
  ret i32* inttoptr (i64 9223372036854775776 to i32*)
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @_wyvern_calleeclone_f_069951110(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i32** nocapture noundef writeonly %0) #0 {
  br label %2

2:                                                ; preds = %7, %1
  %.01 = phi i32** [ %0, %1 ], [ %8, %7 ]
  %.0 = phi i32 [ 0, %1 ], [ %9, %7 ]
  %3 = icmp ult i32 %.0, 40
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32* (%_wyvern_thunk_type.0*)*, i32* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %6 = getelementptr inbounds i32, i32* %_wyvern_thunkcall, i64 %5
  store i32* %6, i32** %.01, align 8
  br label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i32*, i32** %.01, i64 1
  %9 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

10:                                               ; preds = %2
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
