; ModuleID = './pr67037.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr67037.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_wyvern_thunk_type.0 = type { i16* (%_wyvern_thunk_type.0*)*, i16*, i1 }

@badfunc.ntfsW = internal constant [5 x i16] [i16 78, i16 84, i16 70, i16 83, i16 0], align 2
@extfunc = dso_local global i64 (...)* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @badfunc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i16* nocapture noundef writeonly %4, i32 noundef %5) #0 {
  %7 = alloca [5348 x i8], align 16
  %8 = load i64 (...)*, i64 (...)** @extfunc, align 8
  %9 = call i64 (...) %8() #4
  %.not = icmp eq i64 %9, 0
  br i1 %.not, label %11, label %10

10:                                               ; preds = %6
  br label %20

11:                                               ; preds = %6
  %12 = load i64 (...)*, i64 (...)** @extfunc, align 8
  %13 = call i64 (...) %12() #4
  %.not2 = icmp eq i64 %13, 0
  br i1 %.not2, label %15, label %14

14:                                               ; preds = %11
  br label %19

15:                                               ; preds = %11
  %16 = load i64 (i8*, ...)*, i64 (i8*, ...)** bitcast (i64 (...)** @extfunc to i64 (i8*, ...)**), align 8
  %17 = getelementptr inbounds [5348 x i8], [5348 x i8]* %7, i64 0, i64 0
  %18 = call i64 (i8*, ...) %16(i8* noundef nonnull %17) #4
  call void @lstrcpynW(i16* noundef %4, i16* noundef getelementptr inbounds ([5 x i16], [5 x i16]* @badfunc.ntfsW, i64 0, i64 0), i32 noundef %5)
  br label %19

19:                                               ; preds = %15, %14
  %.01 = phi i32 [ 0, %14 ], [ 1, %15 ]
  br label %20

20:                                               ; preds = %19, %10
  %.0 = phi i32 [ 0, %10 ], [ %.01, %19 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @lstrcpynW(i16* nocapture noundef writeonly %0, i16* nocapture noundef readonly %1, i32 noundef %2) #1 {
  br label %4

4:                                                ; preds = %11, %3
  %.02 = phi i32 [ %2, %3 ], [ %12, %11 ]
  %.01 = phi i16* [ %1, %3 ], [ %13, %11 ]
  %.0 = phi i16* [ %0, %3 ], [ %15, %11 ]
  %5 = icmp ugt i32 %.02, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = load i16, i16* %.01, align 2
  %8 = icmp ne i16 %7, 0
  br label %9

9:                                                ; preds = %6, %4
  %10 = phi i1 [ false, %4 ], [ %8, %6 ]
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = add i32 %.02, -1
  %13 = getelementptr inbounds i16, i16* %.01, i64 1
  %14 = load i16, i16* %.01, align 2
  %15 = getelementptr inbounds i16, i16* %.0, i64 1
  store i16 %14, i16* %.0, align 2
  br label %4, !llvm.loop !4

16:                                               ; preds = %9
  %.not = icmp eq i32 %.02, 0
  br i1 %.not, label %18, label %17

17:                                               ; preds = %16
  store i16 0, i16* %.0, align 2
  br label %18

18:                                               ; preds = %17, %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  store i64 (...)* bitcast (i64 ()* @f to i64 (...)*), i64 (...)** @extfunc, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i16* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_main_935630572, i16* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %1 = call i32 @_wyvern_calleeclone_badfunc_4306098797(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, %_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i32 noundef 6)
  %.not = icmp eq i32 %1, 0
  %2 = zext i1 %.not to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i64 @f() #2 {
  ret i64 0
}

; Function Attrs: nounwind readonly willreturn
define i16* @_wyvern_slice_memo_main_935630572(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i16*, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [6 x i16], align 2
  %1 = getelementptr inbounds [6 x i16], [6 x i16]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i16* %1, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_badfunc_4306098797(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, %_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i32 noundef %4) #0 {
  %6 = alloca [5348 x i8], align 16
  %7 = load i64 (...)*, i64 (...)** @extfunc, align 8
  %8 = call i64 (...) %7() #4
  %.not = icmp eq i64 %8, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %5
  br label %19

10:                                               ; preds = %5
  %11 = load i64 (...)*, i64 (...)** @extfunc, align 8
  %12 = call i64 (...) %11() #4
  %.not1 = icmp eq i64 %12, 0
  br i1 %.not1, label %14, label %13

13:                                               ; preds = %10
  br label %18

14:                                               ; preds = %10
  %15 = load i64 (i8*, ...)*, i64 (i8*, ...)** bitcast (i64 (...)** @extfunc to i64 (i8*, ...)**), align 8
  %16 = getelementptr inbounds [5348 x i8], [5348 x i8]* %6, i64 0, i64 0
  %17 = call i64 (i8*, ...) %15(i8* noundef nonnull %16) #4
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i16* (%_wyvern_thunk_type.0*)*, i16* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i16* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  call void @lstrcpynW(i16* noundef %_wyvern_thunkcall, i16* noundef getelementptr inbounds ([5 x i16], [5 x i16]* @badfunc.ntfsW, i64 0, i64 0), i32 noundef %4)
  br label %18

18:                                               ; preds = %14, %13
  %.01 = phi i32 [ 0, %13 ], [ 1, %14 ]
  br label %19

19:                                               ; preds = %18, %9
  %.0 = phi i32 [ 0, %9 ], [ %.01, %18 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
