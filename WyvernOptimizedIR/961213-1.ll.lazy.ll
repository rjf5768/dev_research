; ModuleID = './961213-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/961213-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_wyvern_thunk_type.0 = type { i32* (%_wyvern_thunk_type.0*)*, i32*, i1 }

@__const.main.ar = private unnamed_addr constant [5 x i32] [i32 10, i32 11, i32 12, i32 13, i32 14], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @g(i64* nocapture noundef %0, i32 noundef returned %1, i32* nocapture noundef readonly %2, i32 noundef %3) #0 {
  store i64 0, i64* %0, align 8
  br label %5

5:                                                ; preds = %16, %4
  %.0 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %6 = icmp slt i32 %.0, %1
  br i1 %6, label %7, label %18

7:                                                ; preds = %5
  %8 = load i64, i64* %0, align 8
  %9 = sext i32 %3 to i64
  %10 = mul i64 %8, %9
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds i32, i32* %2, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = zext i32 %13 to i64
  %15 = add i64 %10, %14
  store i64 %15, i64* %0, align 8
  br label %16

16:                                               ; preds = %7
  %17 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !4

18:                                               ; preds = %5
  ret i32 %1
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %1 = alloca i64, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_main_82424217, i32* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %2 = call i32 @_wyvern_calleeclone_g_2429066806(i64* noundef nonnull %1, i32 noundef 5, %_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i32 noundef 16)
  %3 = load i64, i64* %1, align 8
  %.not = icmp eq i64 %3, 703710
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %0
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %5, %4
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
define i32* @_wyvern_slice_memo_main_82424217(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32*, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [5 x i32], align 16
  %1 = getelementptr inbounds [5 x i32], [5 x i32]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32* %1, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_g_2429066806(i64* nocapture noundef %0, i32 noundef returned %1, %_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i32 noundef %2) #0 {
  store i64 0, i64* %0, align 8
  br label %4

4:                                                ; preds = %15, %3
  %.0 = phi i32 [ 0, %3 ], [ %16, %15 ]
  %5 = icmp slt i32 %.0, %1
  br i1 %5, label %6, label %17

6:                                                ; preds = %4
  %7 = load i64, i64* %0, align 8
  %8 = sext i32 %2 to i64
  %9 = mul i64 %7, %8
  %10 = zext i32 %.0 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32* (%_wyvern_thunk_type.0*)*, i32* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #6
  %11 = getelementptr inbounds i32, i32* %_wyvern_thunkcall, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  %14 = add i64 %9, %13
  store i64 %14, i64* %0, align 8
  br label %15

15:                                               ; preds = %6
  %16 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

17:                                               ; preds = %4
  ret i32 %1
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
