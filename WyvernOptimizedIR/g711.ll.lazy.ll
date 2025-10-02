; ModuleID = './g711.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/g721/g721encode/g711.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_wyvern_thunk_type.2 = type { i32 (%_wyvern_thunk_type.2*)*, i32, i1, i32 }
%_wyvern_thunk_type.0 = type { i32 (%_wyvern_thunk_type.0*)*, i32, i1, i32 }

@_u2a = dso_local global [128 x i8] c"\01\01\02\02\03\03\04\04\05\05\06\06\07\07\08\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1B\1D\1F!\22#$%&'()*+,.0123456789:;<=>@ABCDEFGHIJKLMNOQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80", align 16
@_a2u = dso_local global [128 x i8] c"\01\03\05\07\09\0B\0D\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F  !!\22\22##$%&'()*+,-./001123456789:;<=>?@@ABCDEFGHIJKLMNOOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F", align 16
@seg_end = internal global [8 x i16] [i16 255, i16 511, i16 1023, i16 2047, i16 4095, i16 8191, i16 16383, i16 32767], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local zeroext i8 @linear2alaw(i32 noundef %0) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.2, align 8
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3
  %.02 = phi i8 [ -43, %3 ], [ 85, %4 ]
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.2*)* @_wyvern_slice_memo_linear2alaw_.01167483045, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 4
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 3
  store i32 %0, i32* %_wyvern_thunk_arg_gep_, align 8
  %6 = call i32 @_wyvern_calleeclone_search_0800553803(%_wyvern_thunk_type.2* noundef nonnull %_wyvern_thunk_alloca, i16* noundef getelementptr inbounds ([8 x i16], [8 x i16]* @seg_end, i64 0, i64 0), i32 noundef 8)
  %7 = icmp sgt i32 %6, 7
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = xor i8 %.02, 127
  br label %23

10:                                               ; preds = %5
  %.tr = trunc i32 %6 to i8
  %11 = shl i8 %.tr, 4
  %12 = icmp slt i32 %6, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %_wyvern_thunkcall4 = call i32 @_wyvern_slice_memo_linear2alaw_.01167483045(%_wyvern_thunk_type.2* nonnull %_wyvern_thunk_alloca)
  %14 = trunc i32 %_wyvern_thunkcall4 to i8
  %15 = lshr i8 %14, 4
  br label %21

16:                                               ; preds = %10
  %17 = add nsw i32 %6, 3
  %_wyvern_thunkcall = call i32 @_wyvern_slice_memo_linear2alaw_.01167483045(%_wyvern_thunk_type.2* nonnull %_wyvern_thunk_alloca)
  %18 = ashr i32 %_wyvern_thunkcall, %17
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 15
  br label %21

21:                                               ; preds = %16, %13
  %.pn = phi i8 [ %15, %13 ], [ %20, %16 ]
  %.03 = or i8 %.pn, %11
  %22 = xor i8 %.03, %.02
  br label %23

23:                                               ; preds = %21, %8
  %.0 = phi i8 [ %9, %8 ], [ %22, %21 ]
  ret i8 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal i32 @search(i32 noundef %0, i16* nocapture noundef readonly %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %12, %3
  %.02 = phi i16* [ %1, %3 ], [ %7, %12 ]
  %.01 = phi i32 [ 0, %3 ], [ %13, %12 ]
  %5 = icmp slt i32 %.01, %2
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = getelementptr inbounds i16, i16* %.02, i64 1
  %8 = load i16, i16* %.02, align 2
  %9 = sext i16 %8 to i32
  %.not = icmp slt i32 %9, %0
  br i1 %.not, label %11, label %10

10:                                               ; preds = %6
  br label %15

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !4

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %14, %10
  %.0 = phi i32 [ %.01, %10 ], [ %2, %14 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @alaw2linear(i8 noundef zeroext %0) #1 {
  %2 = xor i8 %0, 85
  %3 = shl i8 %2, 4
  %4 = zext i8 %3 to i32
  %5 = lshr i8 %2, 4
  %6 = and i8 %5, 7
  %7 = zext i8 %6 to i32
  switch i32 %7, label %12 [
    i32 0, label %8
    i32 1, label %10
  ]

8:                                                ; preds = %1
  %9 = or i32 %4, 8
  br label %16

10:                                               ; preds = %1
  %11 = or i32 %4, 264
  br label %16

12:                                               ; preds = %1
  %13 = or i32 %4, 264
  %14 = add nsw i32 %7, -1
  %15 = shl i32 %13, %14
  br label %16

16:                                               ; preds = %12, %10, %8
  %.0 = phi i32 [ %15, %12 ], [ %11, %10 ], [ %9, %8 ]
  %.not = icmp sgt i8 %0, -1
  br i1 %.not, label %18, label %17

17:                                               ; preds = %16
  br label %20

18:                                               ; preds = %16
  %19 = sub nsw i32 0, %.0
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi i32 [ %.0, %17 ], [ %19, %18 ]
  ret i32 %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local zeroext i8 @linear2ulaw(i32 noundef %0) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3
  %.02 = phi i32 [ 127, %3 ], [ 255, %4 ]
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_linear2ulaw_.01806189629, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 4
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store i32 %0, i32* %_wyvern_thunk_arg_gep_, align 8
  %6 = call i32 @_wyvern_calleeclone_search_0283882608(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i16* noundef getelementptr inbounds ([8 x i16], [8 x i16]* @seg_end, i64 0, i64 0), i32 noundef 8)
  %7 = icmp sgt i32 %6, 7
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %15

9:                                                ; preds = %5
  %10 = shl i32 %6, 4
  %11 = add nsw i32 %6, 3
  %_wyvern_thunkcall = call i32 @_wyvern_slice_memo_linear2ulaw_.01806189629(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %12 = ashr i32 %_wyvern_thunkcall, %11
  %13 = and i32 %12, 15
  %14 = or i32 %10, %13
  br label %15

15:                                               ; preds = %9, %8
  %.pn = phi i32 [ 127, %8 ], [ %14, %9 ]
  %.0.in = xor i32 %.pn, %.02
  %.0 = trunc i32 %.0.in to i8
  ret i8 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ulaw2linear(i8 noundef zeroext %0) #1 {
  %2 = xor i8 %0, -1
  %3 = shl i8 %2, 3
  %4 = or i8 %3, -124
  %5 = zext i8 %4 to i32
  %6 = lshr i8 %2, 4
  %7 = and i8 %6, 7
  %8 = zext i8 %7 to i32
  %9 = shl i32 %5, %8
  %.not = icmp slt i8 %0, 0
  br i1 %.not, label %12, label %10

10:                                               ; preds = %1
  %11 = sub nsw i32 132, %9
  br label %14

12:                                               ; preds = %1
  %13 = add nsw i32 %9, -132
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local zeroext i8 @alaw2ulaw(i8 noundef zeroext %0) #2 {
  %.not = icmp sgt i8 %0, -1
  br i1 %.not, label %8, label %2

2:                                                ; preds = %1
  %3 = xor i8 %0, -43
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* @_a2u, i64 0, i64 %4
  %6 = load i8, i8* %5, align 1
  %7 = xor i8 %6, -1
  br label %14

8:                                                ; preds = %1
  %9 = xor i8 %0, 85
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* @_a2u, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = xor i8 %12, 127
  br label %14

14:                                               ; preds = %8, %2
  %15 = phi i8 [ %7, %2 ], [ %13, %8 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local zeroext i8 @ulaw2alaw(i8 noundef zeroext %0) #2 {
  %.not = icmp sgt i8 %0, -1
  br i1 %.not, label %9, label %2

2:                                                ; preds = %1
  %3 = xor i8 %0, -1
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* @_u2a, i64 0, i64 %4
  %6 = load i8, i8* %5, align 1
  %7 = add i8 %6, -1
  %8 = xor i8 %7, -43
  br label %16

9:                                                ; preds = %1
  %10 = xor i8 %0, 127
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* @_u2a, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = add i8 %13, -1
  %15 = xor i8 %14, 85
  br label %16

16:                                               ; preds = %9, %2
  %17 = phi i8 [ %8, %2 ], [ %15, %9 ]
  ret i8 %17
}

; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_memo_linear2ulaw_.01806189629(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i32, i32* %_wyvern_arg_addr_, align 4
  %0 = icmp slt i32 %_wyvern_arg_, 0
  br i1 %0, label %sliceclone_1, label %sliceclone_2

sliceclone_1:                                     ; preds = %sliceclone_
  %1 = sub nsw i32 132, %_wyvern_arg_
  br label %sliceclone_3

sliceclone_2:                                     ; preds = %sliceclone_
  %2 = add nsw i32 %_wyvern_arg_, 132
  br label %sliceclone_3

sliceclone_3:                                     ; preds = %sliceclone_2, %sliceclone_1
  %3 = phi i32 [ %1, %sliceclone_1 ], [ %2, %sliceclone_2 ]
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32 %3, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @_wyvern_calleeclone_search_0283882608(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i16* nocapture noundef readonly %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %11, %2
  %.02 = phi i16* [ %0, %2 ], [ %6, %11 ]
  %.01 = phi i32 [ 0, %2 ], [ %12, %11 ]
  %4 = icmp slt i32 %.01, %1
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds i16, i16* %.02, i64 1
  %7 = load i16, i16* %.02, align 2
  %8 = sext i16 %7 to i32
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32 %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %.not = icmp sgt i32 %_wyvern_thunkcall, %8
  br i1 %.not, label %10, label %9

9:                                                ; preds = %5
  br label %14

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !4

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %9
  %.0 = phi i32 [ %.01, %9 ], [ %1, %13 ]
  ret i32 %.0
}

; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_memo_linear2alaw_.01167483045(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i32, i32* %_wyvern_arg_addr_, align 4
  %0 = icmp sgt i32 %_wyvern_arg_, -1
  br i1 %0, label %sliceclone_1, label %sliceclone_2

sliceclone_1:                                     ; preds = %sliceclone_
  br label %sliceclone_3

sliceclone_2:                                     ; preds = %sliceclone_
  %1 = sub i32 -8, %_wyvern_arg_
  br label %sliceclone_3

sliceclone_3:                                     ; preds = %sliceclone_2, %sliceclone_1
  %2 = phi i32 [ %_wyvern_arg_, %sliceclone_1 ], [ %1, %sliceclone_2 ]
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32 %2, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @_wyvern_calleeclone_search_0800553803(%_wyvern_thunk_type.2* noundef %_wyvern_thunkptr, i16* nocapture noundef readonly %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %11, %2
  %.02 = phi i16* [ %0, %2 ], [ %6, %11 ]
  %.01 = phi i32 [ 0, %2 ], [ %12, %11 ]
  %4 = icmp slt i32 %.01, %1
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds i16, i16* %.02, i64 1
  %7 = load i16, i16* %.02, align 2
  %8 = sext i16 %7 to i32
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32 (%_wyvern_thunk_type.2*)*, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32 %_wyvern_thunkfptr(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #4
  %.not = icmp sgt i32 %_wyvern_thunkcall, %8
  br i1 %.not, label %10, label %9

9:                                                ; preds = %5
  br label %14

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !4

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %9
  %.0 = phi i32 [ %.01, %9 ], [ %1, %13 ]
  ret i32 %.0
}

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
