; ModuleID = './931009-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931009-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_wyvern_thunk_type.0 = type { i32* (%_wyvern_thunk_type.0*)*, i32*, i1 }

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @f()
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f() #2 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %1 = alloca [2 x i32], align 4
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_f_244197391, i32* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %2 = call i32 @_wyvern_calleeclone_g_0345442868(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i32 noundef 2, i32 noundef 0, i32 noundef 1)
  %3 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %4 = load i32, i32* %3, align 4
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %8

5:                                                ; preds = %0
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  %7 = load i32, i32* %6, align 4
  %.not1 = icmp eq i32 %7, 1
  br i1 %.not1, label %9, label %8

8:                                                ; preds = %5, %0
  call void @abort() #5
  unreachable

9:                                                ; preds = %5
  ret i32 undef
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define internal i32 @g(i32* nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #3 {
  br label %5

5:                                                ; preds = %12, %4
  %.0 = phi i32 [ 0, %4 ], [ %13, %12 ]
  %6 = icmp slt i32 %.0, %1
  br i1 %6, label %7, label %14

7:                                                ; preds = %5
  %8 = sub nsw i32 %3, %2
  %9 = mul nsw i32 %.0, %8
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds i32, i32* %0, i64 %10
  store i32 %9, i32* %11, align 4
  br label %12

12:                                               ; preds = %7
  %13 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !4

14:                                               ; preds = %5
  ret i32 undef
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: nounwind readonly willreturn
define i32* @_wyvern_slice_memo_f_244197391(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32*, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [2 x i32], align 4
  %1 = getelementptr inbounds [2 x i32], [2 x i32]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32* %1, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local i32 @_wyvern_calleeclone_g_0345442868(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i32 noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  br label %4

4:                                                ; preds = %11, %3
  %.0 = phi i32 [ 0, %3 ], [ %12, %11 ]
  %5 = icmp slt i32 %.0, %0
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = sub nsw i32 %2, %1
  %8 = mul nsw i32 %.0, %7
  %9 = zext i32 %.0 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32* (%_wyvern_thunk_type.0*)*, i32* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #6
  %10 = getelementptr inbounds i32, i32* %_wyvern_thunkcall, i64 %9
  store i32 %8, i32* %10, align 4
  br label %11

11:                                               ; preds = %6
  %12 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

13:                                               ; preds = %4
  ret i32 undef
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
