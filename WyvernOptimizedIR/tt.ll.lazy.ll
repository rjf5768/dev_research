; ModuleID = './tt.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.colstr = type { i8*, i8* }
%_wyvern_thunk_type.0 = type { i32 (%_wyvern_thunk_type.0*)*, i32, i1, i32 }
%_wyvern_thunk_type.2 = type { i32 (%_wyvern_thunk_type.2*)*, i32, i1, i32 }

@instead = external dso_local global [0 x i8*], align 8
@fullbot = external dso_local global [0 x i32], align 4
@stynum = external dso_local global [0 x i32], align 4
@style = external dso_local global [100 x [20 x i32]], align 16
@ncol = external dso_local global i32, align 4
@tabout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [7 x i8] c"\\h'|0'\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"\\h'(|\\n(%du+|\\n(%du)/2u'\00", align 1
@table = external dso_local global [0 x %struct.colstr*], align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @ctype(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %3
  %5 = load i8*, i8** %4, align 8
  %.not = icmp eq i8* %5, null
  br i1 %.not, label %7, label %6

6:                                                ; preds = %2
  br label %20

7:                                                ; preds = %2
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %.not1 = icmp eq i32 %10, 0
  br i1 %.not1, label %12, label %11

11:                                               ; preds = %7
  br label %20

12:                                               ; preds = %7
  %13 = sext i32 %0 to i64
  %14 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = sext i32 %1 to i64
  %18 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i64 0, i64 %16, i64 %17
  %19 = load i32, i32* %18, align 4
  br label %20

20:                                               ; preds = %12, %11, %6
  %.0 = phi i32 [ 0, %6 ], [ 0, %11 ], [ %19, %12 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @min(i32 noundef %0, i32 noundef %1) #1 {
  %3 = icmp slt i32 %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi i32 [ %0, %4 ], [ %1, %5 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @fspan(i32 noundef %0, i32 noundef %1) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_fspan_946087159, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 4
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store i32 %1, i32* %_wyvern_thunk_arg_gep_, align 8
  %3 = load i32, i32* @ncol, align 4
  %_wyvern_thunkcall = call i32 @_wyvern_slice_memo_fspan_946087159(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %4 = icmp slt i32 %_wyvern_thunkcall, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = call i32 @_wyvern_calleeclone_ctype_1776919436(i32 noundef %0, %_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca)
  %7 = icmp eq i32 %6, 115
  %phi.cast = zext i1 %7 to i32
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ 0, %2 ], [ %phi.cast, %5 ]
  ret i32 %9
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @lspan(i32 noundef %0, i32 noundef %1) #2 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.2, align 8
  %3 = call i32 @ctype(i32 noundef %0, i32 noundef %1)
  %.not = icmp eq i32 %3, 115
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  br label %21

5:                                                ; preds = %2
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.2*)* @_wyvern_slice_memo_lspan_546381301, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 4
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 3
  store i32 %1, i32* %_wyvern_thunk_arg_gep_, align 8
  %6 = load i32, i32* @ncol, align 4
  %_wyvern_thunkcall3 = call i32 @_wyvern_slice_memo_lspan_546381301(%_wyvern_thunk_type.2* nonnull %_wyvern_thunk_alloca)
  %7 = icmp slt i32 %_wyvern_thunkcall3, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = call i32 @_wyvern_calleeclone_ctype_1535518846(i32 noundef %0, %_wyvern_thunk_type.2* noundef nonnull %_wyvern_thunk_alloca)
  %10 = icmp eq i32 %9, 115
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %21

12:                                               ; preds = %8, %5
  %_wyvern_thunkcall = call i32 @_wyvern_slice_memo_lspan_546381301(%_wyvern_thunk_type.2* nonnull %_wyvern_thunk_alloca)
  br label %13

13:                                               ; preds = %18, %12
  %.02 = phi i32 [ %_wyvern_thunkcall, %12 ], [ %14, %18 ]
  %.01 = phi i32 [ 0, %12 ], [ %19, %18 ]
  %14 = add nsw i32 %.02, -1
  %15 = call i32 @ctype(i32 noundef %0, i32 noundef %14)
  %16 = icmp eq i32 %15, 115
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %.01, 1
  br label %13, !llvm.loop !4

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %11, %4
  %.0 = phi i32 [ 0, %4 ], [ 0, %11 ], [ %.01, %20 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @ctspan(i32 noundef %0, i32 noundef %1) #2 {
  br label %3

3:                                                ; preds = %12, %2
  %.01.in = phi i32 [ %1, %2 ], [ %.01, %12 ]
  %.0 = phi i32 [ 1, %2 ], [ %13, %12 ]
  %.01 = add nsw i32 %.01.in, 1
  %4 = load i32, i32* @ncol, align 4
  %5 = icmp slt i32 %.01, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = call i32 @ctype(i32 noundef %0, i32 noundef %.01)
  %8 = icmp eq i32 %7, 115
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i1 [ false, %3 ], [ %8, %6 ]
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !6

14:                                               ; preds = %9
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @tohcol(i32 noundef %0) #3 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %4)
  br label %11

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %8 = add nsw i32 %0, 40
  %9 = add nsw i32 %0, 79
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef %8, i32 noundef %9) #7
  br label %11

11:                                               ; preds = %6, %3
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @allh(i32 noundef %0) #3 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %2
  %4 = load i32, i32* %3, align 4
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %1
  br label %21

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %18, %6
  %.02 = phi i32 [ 0, %6 ], [ %19, %18 ]
  %.01 = phi i32 [ 0, %6 ], [ %.1, %18 ]
  %8 = load i32, i32* @ncol, align 4
  %9 = icmp slt i32 %.02, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = call i32 @thish(i32 noundef %0, i32 noundef %.02)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %21

14:                                               ; preds = %10
  %15 = icmp eq i32 %11, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  br label %18

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %17, %16
  %.1 = phi i32 [ %.01, %16 ], [ 1, %17 ]
  %19 = add nuw nsw i32 %.02, 1
  br label %7, !llvm.loop !7

20:                                               ; preds = %7
  br label %21

21:                                               ; preds = %20, %13, %5
  %.0 = phi i32 [ 1, %5 ], [ 0, %13 ], [ %.01, %20 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @thish(i32 noundef %0, i32 noundef %1) #3 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %64

5:                                                ; preds = %2
  %6 = icmp slt i32 %0, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %64

8:                                                ; preds = %5
  %9 = call i32 @ctype(i32 noundef %0, i32 noundef %1)
  %10 = icmp eq i32 %9, 95
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = icmp eq i32 %9, 45
  br i1 %12, label %13, label %14

13:                                               ; preds = %11, %8
  br label %64

14:                                               ; preds = %11
  %15 = icmp eq i32 %9, 61
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  br label %64

17:                                               ; preds = %14
  %18 = icmp eq i32 %9, 94
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  br label %64

20:                                               ; preds = %17
  %21 = sext i32 %0 to i64
  %22 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %.not = icmp eq i32 %23, 0
  br i1 %.not, label %28, label %24

24:                                               ; preds = %20
  %25 = sext i32 %0 to i64
  %26 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  br label %64

28:                                               ; preds = %20
  %29 = icmp eq i32 %9, 115
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = add nsw i32 %1, -1
  %32 = call i32 @thish(i32 noundef %0, i32 noundef %31)
  br label %64

33:                                               ; preds = %28
  %34 = icmp eq i32 %9, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  br label %64

36:                                               ; preds = %33
  %37 = sext i32 %0 to i64
  %38 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %37
  %39 = load %struct.colstr*, %struct.colstr** %38, align 8
  %40 = sext i32 %1 to i64
  %41 = icmp eq i32 %9, 97
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.colstr, %struct.colstr* %39, i64 %40, i32 1
  br label %46

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.colstr, %struct.colstr* %39, i64 %40, i32 0
  br label %46

46:                                               ; preds = %44, %42
  %.in = phi i8** [ %43, %42 ], [ %45, %44 ]
  %47 = load i8*, i8** %.in, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = ptrtoint i8* %47 to i64
  %51 = trunc i64 %50 to i32
  %52 = call i32 @point(i32 noundef %51) #7
  %.not1 = icmp eq i32 %52, 0
  br i1 %.not1, label %57, label %53

53:                                               ; preds = %49
  %54 = load i8, i8* %47, align 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %46
  br label %64

57:                                               ; preds = %53, %49
  %58 = call i32 @vspen(i8* noundef nonnull %47) #7
  %.not2 = icmp eq i32 %58, 0
  br i1 %.not2, label %60, label %59

59:                                               ; preds = %57
  br label %64

60:                                               ; preds = %57
  %61 = call i32 @barent(i8* noundef nonnull %47) #7
  %.not3 = icmp eq i32 %61, 0
  br i1 %.not3, label %63, label %62

62:                                               ; preds = %60
  br label %64

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %63, %62, %59, %56, %35, %30, %24, %19, %16, %13, %7, %4
  %.0 = phi i32 [ 0, %4 ], [ 0, %7 ], [ 45, %13 ], [ 61, %16 ], [ 1, %19 ], [ %27, %24 ], [ %32, %30 ], [ 1, %35 ], [ 1, %56 ], [ 1, %59 ], [ %61, %62 ], [ 0, %63 ]
  ret i32 %.0
}

declare dso_local i32 @point(i32 noundef) #4

declare dso_local i32 @vspen(i8* noundef) #4

declare dso_local i32 @barent(i8* noundef) #4

; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_memo_fspan_946087159(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5 {
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
  %0 = add nsw i32 %_wyvern_arg_, 1
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32 %0, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @_wyvern_calleeclone_ctype_1776919436(i32 noundef %0, %_wyvern_thunk_type.0* noundef %_wyvern_thunkptr) #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %2
  %4 = load i8*, i8** %3, align 8
  %.not = icmp eq i8* %4, null
  br i1 %.not, label %6, label %5

5:                                                ; preds = %1
  br label %19

6:                                                ; preds = %1
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %6
  br label %19

11:                                               ; preds = %6
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32 %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #7
  %16 = sext i32 %_wyvern_thunkcall to i64
  %17 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i64 0, i64 %15, i64 %16
  %18 = load i32, i32* %17, align 4
  br label %19

19:                                               ; preds = %11, %10, %5
  %.0 = phi i32 [ 0, %5 ], [ 0, %10 ], [ %18, %11 ]
  ret i32 %.0
}

; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_memo_lspan_546381301(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #5 {
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
  %0 = add nsw i32 %_wyvern_arg_, 1
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32 %0, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @_wyvern_calleeclone_ctype_1535518846(i32 noundef %0, %_wyvern_thunk_type.2* noundef %_wyvern_thunkptr) #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %2
  %4 = load i8*, i8** %3, align 8
  %.not = icmp eq i8* %4, null
  br i1 %.not, label %6, label %5

5:                                                ; preds = %1
  br label %19

6:                                                ; preds = %1
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %6
  br label %19

11:                                               ; preds = %6
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32 (%_wyvern_thunk_type.2*)*, i32 (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32 %_wyvern_thunkfptr(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #7
  %16 = sext i32 %_wyvern_thunkcall to i64
  %17 = getelementptr inbounds [100 x [20 x i32]], [100 x [20 x i32]]* @style, i64 0, i64 %15, i64 %16
  %18 = load i32, i32* %17, align 4
  br label %19

19:                                               ; preds = %11, %10, %5
  %.0 = phi i32 [ 0, %5 ], [ 0, %10 ], [ %18, %11 ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
