; ModuleID = './pr20527-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr20527-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_wyvern_thunk_type.0 = type { i64* (%_wyvern_thunk_type.0*)*, i64*, i1 }

@b = dso_local global [4 x i64] [i64 1, i64 5, i64 11, i64 23], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @f(i64* nocapture noundef writeonly %0, i64* nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) #0 {
  br label %5

5:                                                ; preds = %16, %4
  %.01 = phi i64 [ %2, %4 ], [ %17, %16 ]
  %.0 = phi i64 [ 0, %4 ], [ %13, %16 ]
  %.not = icmp sgt i64 %.01, %3
  br i1 %.not, label %18, label %6

6:                                                ; preds = %5
  %7 = add nsw i64 %.01, 1
  %8 = getelementptr inbounds i64, i64* %1, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i64, i64* %1, i64 %.01
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %9, %11
  %13 = add nsw i64 %.0, %12
  %14 = add nsw i64 %13, -1
  %15 = getelementptr inbounds i64, i64* %0, i64 %.01
  store i64 %14, i64* %15, align 8
  br label %16

16:                                               ; preds = %6
  %17 = add nsw i64 %.01, 1
  br label %5, !llvm.loop !4

18:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %1 = alloca [3 x i64], align 16
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i64* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_main_311024030, i64* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  call void @_wyvern_calleeclone_f_0585007719(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @b, i64 0, i64 0), i64 noundef 0, i64 noundef 2)
  %2 = getelementptr inbounds [3 x i64], [3 x i64]* %1, i64 0, i64 0
  %3 = load i64, i64* %2, align 16
  %.not = icmp eq i64 %3, 3
  br i1 %.not, label %4, label %10

4:                                                ; preds = %0
  %5 = getelementptr inbounds [3 x i64], [3 x i64]* %1, i64 0, i64 1
  %6 = load i64, i64* %5, align 8
  %.not1 = icmp eq i64 %6, 9
  br i1 %.not1, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds [3 x i64], [3 x i64]* %1, i64 0, i64 2
  %9 = load i64, i64* %8, align 16
  %.not2 = icmp eq i64 %9, 21
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %7, %4, %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %7
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %11, %10
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: nounwind readonly willreturn
define i64* @_wyvern_slice_memo_main_311024030(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i64*, i64** %_wyvern_memo_val_addr, align 8
  ret i64* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [3 x i64], align 16
  %1 = getelementptr inbounds [3 x i64], [3 x i64]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i64* %1, i64** %_wyvern_memo_val_addr, align 8
  ret i64* %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @_wyvern_calleeclone_f_0585007719(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i64* nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #0 {
  br label %4

4:                                                ; preds = %15, %3
  %.01 = phi i64 [ %1, %3 ], [ %16, %15 ]
  %.0 = phi i64 [ 0, %3 ], [ %12, %15 ]
  %.not = icmp sgt i64 %.01, %2
  br i1 %.not, label %17, label %5

5:                                                ; preds = %4
  %6 = add nsw i64 %.01, 1
  %7 = getelementptr inbounds i64, i64* %0, i64 %6
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i64, i64* %0, i64 %.01
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %8, %10
  %12 = add nsw i64 %.0, %11
  %13 = add nsw i64 %12, -1
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i64* (%_wyvern_thunk_type.0*)*, i64* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i64* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %14 = getelementptr inbounds i64, i64* %_wyvern_thunkcall, i64 %.01
  store i64 %13, i64* %14, align 8
  br label %15

15:                                               ; preds = %5
  %16 = add nsw i64 %.01, 1
  br label %4, !llvm.loop !4

17:                                               ; preds = %4
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
