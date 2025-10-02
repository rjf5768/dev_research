; ModuleID = './pr84524.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr84524.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_wyvern_thunk_type.0 = type { i16* (%_wyvern_thunk_type.0*)*, i16*, i1 }

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @foo(i16* nocapture noundef writeonly %0) #0 {
  br label %2

2:                                                ; preds = %20, %1
  %.01 = phi i16 [ 0, %1 ], [ %21, %20 ]
  %3 = icmp ult i16 %.01, 256
  br i1 %3, label %4, label %22

4:                                                ; preds = %2
  %5 = shl i16 %.01, 8
  br label %6

6:                                                ; preds = %15, %4
  %.02 = phi i16 [ %5, %4 ], [ %.1, %15 ]
  %.0 = phi i8 [ 0, %4 ], [ %16, %15 ]
  %7 = icmp ult i8 %.0, 8
  br i1 %7, label %8, label %17

8:                                                ; preds = %6
  %.not = icmp sgt i16 %.02, -1
  br i1 %.not, label %12, label %9

9:                                                ; preds = %8
  %10 = shl i16 %.02, 1
  %11 = xor i16 %10, 4129
  br label %14

12:                                               ; preds = %8
  %13 = shl i16 %.02, 1
  br label %14

14:                                               ; preds = %12, %9
  %.1 = phi i16 [ %11, %9 ], [ %13, %12 ]
  br label %15

15:                                               ; preds = %14
  %16 = add i8 %.0, 1
  br label %6, !llvm.loop !4

17:                                               ; preds = %6
  %18 = zext i16 %.01 to i64
  %19 = getelementptr inbounds i16, i16* %0, i64 %18
  store i16 %.02, i16* %19, align 2
  br label %20

20:                                               ; preds = %17
  %21 = add i16 %.01, 1
  br label %2, !llvm.loop !6

22:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %1 = alloca [256 x i16], align 16
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i16* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_main_408400387, i16* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  call void @_wyvern_calleeclone_foo_0447005090(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca)
  br label %2

2:                                                ; preds = %24, %0
  %.01 = phi i32 [ 0, %0 ], [ %25, %24 ]
  %3 = icmp ult i32 %.01, 256
  br i1 %3, label %4, label %26

4:                                                ; preds = %2
  %.01.tr = trunc i32 %.01 to i16
  %5 = shl i16 %.01.tr, 8
  br label %6

6:                                                ; preds = %16, %4
  %.02 = phi i16 [ %5, %4 ], [ %.1, %16 ]
  %.0 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %7 = icmp ult i32 %.0, 8
  br i1 %7, label %8, label %18

8:                                                ; preds = %6
  %9 = call i16 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i16 %.02) #4, !srcloc !7
  %.not3 = icmp sgt i16 %9, -1
  br i1 %.not3, label %13, label %10

10:                                               ; preds = %8
  %11 = shl i16 %9, 1
  %12 = xor i16 %11, 4129
  br label %15

13:                                               ; preds = %8
  %14 = shl i16 %9, 1
  br label %15

15:                                               ; preds = %13, %10
  %.1 = phi i16 [ %12, %10 ], [ %14, %13 ]
  br label %16

16:                                               ; preds = %15
  %17 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !8

18:                                               ; preds = %6
  %19 = zext i32 %.01 to i64
  %20 = getelementptr inbounds [256 x i16], [256 x i16]* %1, i64 0, i64 %19
  %21 = load i16, i16* %20, align 2
  %.not = icmp eq i16 %21, %.02
  br i1 %.not, label %23, label %22

22:                                               ; preds = %18
  call void @abort() #5
  unreachable

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23
  %25 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !9

26:                                               ; preds = %2
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: nounwind readonly willreturn
define i16* @_wyvern_slice_memo_main_408400387(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i16*, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [256 x i16], align 16
  %1 = getelementptr inbounds [256 x i16], [256 x i16]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i16* %1, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @_wyvern_calleeclone_foo_0447005090(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr) #0 {
  br label %1

1:                                                ; preds = %19, %0
  %.01 = phi i16 [ 0, %0 ], [ %20, %19 ]
  %2 = icmp ult i16 %.01, 256
  br i1 %2, label %3, label %21

3:                                                ; preds = %1
  %4 = shl i16 %.01, 8
  br label %5

5:                                                ; preds = %14, %3
  %.02 = phi i16 [ %4, %3 ], [ %.1, %14 ]
  %.0 = phi i8 [ 0, %3 ], [ %15, %14 ]
  %6 = icmp ult i8 %.0, 8
  br i1 %6, label %7, label %16

7:                                                ; preds = %5
  %.not = icmp sgt i16 %.02, -1
  br i1 %.not, label %11, label %8

8:                                                ; preds = %7
  %9 = shl i16 %.02, 1
  %10 = xor i16 %9, 4129
  br label %13

11:                                               ; preds = %7
  %12 = shl i16 %.02, 1
  br label %13

13:                                               ; preds = %11, %8
  %.1 = phi i16 [ %10, %8 ], [ %12, %11 ]
  br label %14

14:                                               ; preds = %13
  %15 = add i8 %.0, 1
  br label %5, !llvm.loop !4

16:                                               ; preds = %5
  %17 = zext i16 %.01 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i16* (%_wyvern_thunk_type.0*)*, i16* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i16* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %18 = getelementptr inbounds i16, i16* %_wyvern_thunkcall, i64 %17
  store i16 %.02, i16* %18, align 2
  br label %19

19:                                               ; preds = %16
  %20 = add i16 %.01, 1
  br label %1, !llvm.loop !6

21:                                               ; preds = %1
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = !{i64 468}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
