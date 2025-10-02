; ModuleID = './pr49419.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49419.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, i32 }
%_wyvern_thunk_type.0 = type { i32* (%_wyvern_thunk_type.0*)*, i32*, i1 }

@t = dso_local global %struct.S* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %0, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %46

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %19, %7
  %.02 = phi i32 [ %0, %7 ], [ %23, %19 ]
  %.01 = phi i32 [ 0, %7 ], [ %24, %19 ]
  %9 = load %struct.S*, %struct.S** @t, align 8
  %10 = sext i32 %.02 to i64
  %11 = getelementptr inbounds %struct.S, %struct.S* %9, i64 %10, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = icmp slt i32 %.01, %3
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi i1 [ false, %8 ], [ %15, %14 ]
  br i1 %17, label %18, label %25

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.S*, %struct.S** @t, align 8
  %21 = sext i32 %.02 to i64
  %22 = getelementptr inbounds %struct.S, %struct.S* %20, i64 %21, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nuw nsw i32 %.01, 1
  br label %8, !llvm.loop !4

25:                                               ; preds = %16
  %26 = icmp eq i32 %.01, %3
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  call void @abort() #4
  unreachable

28:                                               ; preds = %25
  %29 = add nuw nsw i32 %.01, 1
  br label %30

30:                                               ; preds = %39, %28
  %.13 = phi i32 [ %0, %28 ], [ %43, %39 ]
  %.1 = phi i32 [ %.01, %28 ], [ %44, %39 ]
  %31 = icmp sgt i32 %.1, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %30
  %33 = load %struct.S*, %struct.S** @t, align 8
  %34 = sext i32 %.13 to i64
  %35 = getelementptr inbounds %struct.S, %struct.S* %33, i64 %34, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %.1 to i64
  %38 = getelementptr inbounds i32, i32* %2, i64 %37
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %32
  %40 = load %struct.S*, %struct.S** @t, align 8
  %41 = sext i32 %.13 to i64
  %42 = getelementptr inbounds %struct.S, %struct.S* %40, i64 %41, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %.1, -1
  br label %30, !llvm.loop !6

45:                                               ; preds = %30
  store i32 %.13, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %6
  %.0 = phi i32 [ 0, %6 ], [ %29, %45 ]
  ret i32 %.0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %1 = alloca [3 x i32], align 4
  %2 = alloca [3 x %struct.S], align 16
  %3 = bitcast [3 x %struct.S]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(36) %3, i8 0, i64 36, i1 false)
  %4 = getelementptr inbounds [3 x %struct.S], [3 x %struct.S]* %2, i64 0, i64 0, i32 0
  store i32 1, i32* %4, align 16
  %5 = getelementptr inbounds [3 x %struct.S], [3 x %struct.S]* %2, i64 0, i64 0, i32 1
  store i32 1, i32* %5, align 4
  %6 = getelementptr inbounds [3 x %struct.S], [3 x %struct.S]* %2, i64 0, i64 0, i32 2
  store i32 2, i32* %6, align 8
  %7 = getelementptr inbounds [3 x %struct.S], [3 x %struct.S]* %2, i64 0, i64 0
  store %struct.S* %7, %struct.S** @t, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_main_540461531, i32* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %8 = call i32 @_wyvern_calleeclone_foo_2675999495(i32 noundef 0, i32 noundef 1, %_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i32 noundef 3)
  %.not = icmp eq i32 %8, 2
  br i1 %.not, label %10, label %9

9:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %0
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %12 = load i32, i32* %11, align 4
  %.not1 = icmp eq i32 %12, 1
  br i1 %.not1, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 1
  %15 = load i32, i32* %14, align 4
  %.not2 = icmp eq i32 %15, 2
  br i1 %.not2, label %17, label %16

16:                                               ; preds = %13, %10
  call void @abort() #4
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %13
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %16, %9
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
define i32* @_wyvern_slice_memo_main_540461531(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32*, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [3 x i32], align 4
  %1 = getelementptr inbounds [3 x i32], [3 x i32]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32* %1, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_foo_2675999495(i32 noundef %0, i32 noundef %1, %_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i32 noundef %2) #0 {
  %4 = icmp eq i32 %0, -1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %45

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %18, %6
  %.02 = phi i32 [ %0, %6 ], [ %22, %18 ]
  %.01 = phi i32 [ 0, %6 ], [ %23, %18 ]
  %8 = load %struct.S*, %struct.S** @t, align 8
  %9 = sext i32 %.02 to i64
  %10 = getelementptr inbounds %struct.S, %struct.S* %8, i64 %9, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = icmp slt i32 %.01, %2
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i1 [ false, %7 ], [ %14, %13 ]
  br i1 %16, label %17, label %24

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.S*, %struct.S** @t, align 8
  %20 = sext i32 %.02 to i64
  %21 = getelementptr inbounds %struct.S, %struct.S* %19, i64 %20, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nuw nsw i32 %.01, 1
  br label %7, !llvm.loop !4

24:                                               ; preds = %15
  %25 = icmp eq i32 %.01, %2
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  call void @abort() #4
  unreachable

27:                                               ; preds = %24
  %28 = add nuw nsw i32 %.01, 1
  br label %29

29:                                               ; preds = %38, %27
  %.13 = phi i32 [ %0, %27 ], [ %42, %38 ]
  %.1 = phi i32 [ %.01, %27 ], [ %43, %38 ]
  %30 = icmp sgt i32 %.1, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %29
  %32 = load %struct.S*, %struct.S** @t, align 8
  %33 = sext i32 %.13 to i64
  %34 = getelementptr inbounds %struct.S, %struct.S* %32, i64 %33, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %.1 to i64
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i32* (%_wyvern_thunk_type.0*)*, i32* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i32* %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %37 = getelementptr inbounds i32, i32* %_wyvern_thunkcall3, i64 %36
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %31
  %39 = load %struct.S*, %struct.S** @t, align 8
  %40 = sext i32 %.13 to i64
  %41 = getelementptr inbounds %struct.S, %struct.S* %39, i64 %40, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %.1, -1
  br label %29, !llvm.loop !6

44:                                               ; preds = %29
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32* (%_wyvern_thunk_type.0*)*, i32* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  store i32 %.13, i32* %_wyvern_thunkcall, align 4
  br label %45

45:                                               ; preds = %44, %5
  %.0 = phi i32 [ 0, %5 ], [ %28, %44 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
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
!6 = distinct !{!6, !5}
