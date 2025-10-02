; ModuleID = './pr64006.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr64006.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_wyvern_thunk_type.0 = type { i64* (%_wyvern_thunk_type.0*)*, i64*, i1 }

@v = dso_local global i32 0, align 4
@__const.main.d = private unnamed_addr constant [7 x i64] [i64 975, i64 975, i64 975, i64 975, i64 975, i64 975, i64 975], align 16

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i64 @test(i64* nocapture noundef readonly %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %16, %2
  %.01 = phi i32 [ 0, %2 ], [ %17, %16 ]
  %.0 = phi i64 [ 1, %2 ], [ %11, %16 ]
  %4 = icmp slt i32 %.01, %1
  br i1 %4, label %5, label %18

5:                                                ; preds = %3
  %6 = zext i32 %.01 to i64
  %7 = getelementptr inbounds i64, i64* %0, i64 %6
  %8 = load i64, i64* %7, align 8
  %9 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.0, i64 %8)
  %10 = extractvalue { i64, i1 } %9, 1
  %11 = extractvalue { i64, i1 } %9, 0
  br i1 %10, label %12, label %15

12:                                               ; preds = %5
  %13 = load i32, i32* @v, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @v, align 4
  br label %15

15:                                               ; preds = %12, %5
  br label %16

16:                                               ; preds = %15
  %17 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !4

18:                                               ; preds = %3
  ret i64 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i64* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_main_232087399, i64* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %1 = call i64 @_wyvern_calleeclone_test_0863724664(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i32 noundef 7)
  %2 = load i32, i32* @v, align 4
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #6
  unreachable

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

; Function Attrs: nounwind readonly willreturn
define i64* @_wyvern_slice_memo_main_232087399(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i64*, i64** %_wyvern_memo_val_addr, align 8
  ret i64* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [7 x i64], align 16
  %1 = getelementptr inbounds [7 x i64], [7 x i64]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i64* %1, i64** %_wyvern_memo_val_addr, align 8
  ret i64* %1
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i64 @_wyvern_calleeclone_test_0863724664(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %15, %1
  %.01 = phi i32 [ 0, %1 ], [ %16, %15 ]
  %.0 = phi i64 [ 1, %1 ], [ %10, %15 ]
  %3 = icmp slt i32 %.01, %0
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = zext i32 %.01 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i64* (%_wyvern_thunk_type.0*)*, i64* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i64* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #7
  %6 = getelementptr inbounds i64, i64* %_wyvern_thunkcall, i64 %5
  %7 = load i64, i64* %6, align 8
  %8 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.0, i64 %7)
  %9 = extractvalue { i64, i1 } %8, 1
  %10 = extractvalue { i64, i1 } %8, 0
  br i1 %9, label %11, label %14

11:                                               ; preds = %4
  %12 = load i32, i32* @v, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @v, align 4
  br label %14

14:                                               ; preds = %11, %4
  br label %15

15:                                               ; preds = %14
  %16 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !4

17:                                               ; preds = %2
  ret i64 %.0
}

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
