; ModuleID = './libclamav_special.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"in cli_check_mydoom_log()\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Mydoom: key: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Mydoom: check: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Worm.Mydoom.M.log\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"in cli_check_jpeg_exploit()\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"in cli_check_riff_exploit()\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"RIFX\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ACON\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Photoshop 3.0\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Found Photoshop segment\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"read bim failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"8BIM\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"missed 8bim: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"ID: 0x%.4x\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"found thumbnail\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Exploit found in thumbnail\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"riff_read_chunk: recursion level exceeded\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"PROP\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"FORM\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"CAT \00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"riff_read_chunk: read list type failed\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @cli_check_mydoom_log(i32 noundef %0, i8** noundef writeonly %1) #0 {
  %3 = alloca [8 x i32], align 16
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)) #8
  br label %4

4:                                                ; preds = %41, %2
  %.01 = phi i32 [ 0, %2 ], [ %42, %41 ]
  %5 = icmp ult i32 %.01, 5
  br i1 %5, label %6, label %.loopexit

6:                                                ; preds = %4
  %7 = bitcast [8 x i32]* %3 to i8*
  %8 = call i32 @cli_readn(i32 noundef %0, i8* noundef nonnull %7, i32 noundef 32) #8
  %.not8 = icmp eq i32 %8, 32
  br i1 %.not8, label %10, label %9

9:                                                ; preds = %6
  br label %43

10:                                               ; preds = %6
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %12 = load i32, i32* %11, align 16
  %13 = call i32 @ntohl(i32 noundef %12) #9
  %14 = xor i32 %13, -1
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  store i32 %14, i32* %15, align 16
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef %14) #8
  br label %16

16:                                               ; preds = %28, %10
  %.04 = phi i32 [ 1, %10 ], [ %33, %28 ]
  %.03 = phi i32 [ 0, %10 ], [ %32, %28 ]
  %17 = icmp ult i32 %.04, 8
  br i1 %17, label %18, label %34

18:                                               ; preds = %16
  %19 = zext i32 %.04 to i64
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntohl(i32 noundef %21) #9
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %24 = load i32, i32* %23, align 16
  %25 = xor i32 %22, %24
  %26 = zext i32 %.04 to i64
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %26
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %18
  %29 = zext i32 %.04 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %.03, %31
  %33 = add nuw nsw i32 %.04, 1
  br label %16, !llvm.loop !4

34:                                               ; preds = %16
  %35 = xor i32 %.03, -1
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef %35) #8
  %36 = xor i32 %.03, -1
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %38 = load i32, i32* %37, align 16
  %.not9 = icmp eq i32 %38, %36
  br i1 %.not9, label %40, label %39

39:                                               ; preds = %34
  br label %52

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40
  %42 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !6

.loopexit:                                        ; preds = %4
  br label %43

43:                                               ; preds = %.loopexit, %9
  %44 = icmp ult i32 %.01, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  br label %51

46:                                               ; preds = %43
  br i1 true, label %47, label %50

47:                                               ; preds = %46
  %.not = icmp eq i8** %1, null
  br i1 %.not, label %49, label %48

48:                                               ; preds = %47
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %49

49:                                               ; preds = %48, %47
  br label %50

50:                                               ; preds = %49, %46
  br label %51

51:                                               ; preds = %50, %45
  %.02 = phi i32 [ 0, %45 ], [ 1, %50 ]
  br label %52

52:                                               ; preds = %51, %39
  %.0 = phi i32 [ %.02, %51 ], [ 0, %39 ]
  ret i32 %.0
}

declare dso_local void @cli_dbgmsg(i8* noundef, ...) #1

declare dso_local i32 @cli_readn(i32 noundef, i8* noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32 @ntohl(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @cli_check_jpeg_exploit(i32 noundef %0) #0 {
  %2 = alloca [4 x i8], align 1
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0)) #8
  %3 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %4 = call i32 @cli_readn(i32 noundef %0, i8* noundef nonnull %3, i32 noundef 2) #8
  %.not = icmp eq i32 %4, 2
  br i1 %.not, label %6, label %5

5:                                                ; preds = %1
  br label %86

6:                                                ; preds = %1
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %8 = load i8, i8* %7, align 1
  %.not1 = icmp eq i8 %8, -1
  br i1 %.not1, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  %11 = load i8, i8* %10, align 1
  %.not2 = icmp eq i8 %11, -40
  br i1 %.not2, label %13, label %12

12:                                               ; preds = %9, %6
  br label %86

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %.backedge, %13
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %16 = call i32 @cli_readn(i32 noundef %0, i8* noundef nonnull %15, i32 noundef 4) #8
  %.not3 = icmp eq i32 %16, 4
  br i1 %.not3, label %18, label %17

17:                                               ; preds = %14
  br label %86

18:                                               ; preds = %14
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = icmp eq i8 %20, -1
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = icmp eq i8 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i64 @lseek(i32 noundef %0, i64 noundef -3, i32 noundef 1) #8
  br label %.backedge

.backedge:                                        ; preds = %26, %85
  br label %14

28:                                               ; preds = %22, %18
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = icmp eq i8 %30, -1
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = icmp eq i8 %34, -2
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 3
  %42 = load i8, i8* %41, align 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 3
  %46 = load i8, i8* %45, align 1
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %40
  br label %86

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %36
  br label %51

51:                                               ; preds = %50, %32, %28
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %53 = load i8, i8* %52, align 1
  %.not4 = icmp eq i8 %53, -1
  br i1 %.not4, label %55, label %54

54:                                               ; preds = %51
  br label %86

55:                                               ; preds = %51
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = icmp eq i8 %57, -38
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %86

60:                                               ; preds = %55
  %61 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i64
  %64 = shl nuw nsw i64 %63, 8
  %65 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 3
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i64
  %68 = or i64 %64, %67
  %69 = icmp ult i64 %68, 2
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %86

71:                                               ; preds = %60
  %72 = add nsw i64 %68, -2
  %73 = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #8
  %74 = add nsw i64 %72, %73
  %75 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = icmp eq i8 %76, -19
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = call i32 @jpeg_check_photoshop(i32 noundef %0)
  %.not6 = icmp eq i32 %79, 0
  br i1 %.not6, label %81, label %80

80:                                               ; preds = %78
  br label %86

81:                                               ; preds = %78
  br label %82

82:                                               ; preds = %81, %71
  %83 = call i64 @lseek(i32 noundef %0, i64 noundef %74, i32 noundef 0) #8
  %.not5 = icmp eq i64 %83, %74
  br i1 %.not5, label %85, label %84

84:                                               ; preds = %82
  br label %86

85:                                               ; preds = %82
  br label %.backedge

86:                                               ; preds = %84, %80, %70, %59, %54, %48, %17, %12, %5
  %.0 = phi i32 [ 0, %5 ], [ 0, %12 ], [ 0, %17 ], [ 1, %48 ], [ -1, %54 ], [ 0, %59 ], [ 1, %70 ], [ %79, %80 ], [ -1, %84 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @jpeg_check_photoshop(i32 noundef %0) #0 {
  %2 = alloca [14 x i8], align 1
  %3 = getelementptr inbounds [14 x i8], [14 x i8]* %2, i64 0, i64 0
  %4 = call i32 @cli_readn(i32 noundef %0, i8* noundef nonnull %3, i32 noundef 14) #8
  %.not = icmp eq i32 %4, 14
  br i1 %.not, label %6, label %5

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  %7 = getelementptr inbounds [14 x i8], [14 x i8]* %2, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(14) %7, i8* noundef nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i64 14)
  %.not3 = icmp eq i32 %bcmp, 0
  br i1 %.not3, label %9, label %8

8:                                                ; preds = %6
  br label %22

9:                                                ; preds = %6
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0)) #8
  br label %10

10:                                               ; preds = %16, %9
  %11 = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #8
  %12 = call i32 @jpeg_check_photoshop_8bim(i32 noundef %0)
  %13 = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #8
  %.not4 = icmp sgt i64 %13, %11
  br i1 %.not4, label %15, label %14

14:                                               ; preds = %10
  br label %18

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15
  %17 = icmp eq i32 %12, 0
  br i1 %17, label %10, label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %16
  br label %18

18:                                               ; preds = %.loopexit, %14
  %19 = icmp eq i32 %12, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20, %18
  %.01 = phi i32 [ 0, %20 ], [ %12, %18 ]
  br label %22

22:                                               ; preds = %21, %8, %5
  %.0 = phi i32 [ 0, %5 ], [ 0, %8 ], [ %.01, %21 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @cli_check_riff_exploit(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0)) #8
  %5 = bitcast i32* %2 to i8*
  %6 = call i32 @cli_readn(i32 noundef %0, i8* noundef nonnull %5, i32 noundef 4) #8
  %.not = icmp eq i32 %6, 4
  br i1 %.not, label %8, label %7

7:                                                ; preds = %1
  br label %38

8:                                                ; preds = %1
  %9 = bitcast i32* %3 to i8*
  %10 = call i32 @cli_readn(i32 noundef %0, i8* noundef nonnull %9, i32 noundef 4) #8
  %.not3 = icmp eq i32 %10, 4
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %8
  br label %38

12:                                               ; preds = %8
  %13 = bitcast i32* %4 to i8*
  %14 = call i32 @cli_readn(i32 noundef %0, i8* noundef nonnull %13, i32 noundef 4) #8
  %.not4 = icmp eq i32 %14, 4
  br i1 %.not4, label %16, label %15

15:                                               ; preds = %12
  br label %38

16:                                               ; preds = %12
  %lhsv = load i32, i32* %2, align 4
  %.not5 = icmp eq i32 %lhsv, 1179011410
  br i1 %.not5, label %17, label %18

17:                                               ; preds = %16
  br label %22

18:                                               ; preds = %16
  %lhsv6 = load i32, i32* %2, align 4
  %.not7 = icmp eq i32 %lhsv6, 1481001298
  br i1 %.not7, label %19, label %20

19:                                               ; preds = %18
  br label %21

20:                                               ; preds = %18
  br label %38

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21, %17
  %.02 = phi i32 [ 0, %17 ], [ 1, %21 ]
  %lhsv8 = load i32, i32* %4, align 4
  %.not9 = icmp eq i32 %lhsv8, 1313817409
  br i1 %.not9, label %24, label %23

23:                                               ; preds = %22
  br label %38

24:                                               ; preds = %22
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @riff_endian_convert_32(i32 noundef %25, i32 noundef %.02)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %29, %24
  %28 = call i32 @riff_read_chunk(i32 noundef %0, i32 noundef %.02, i32 noundef 1)
  br label %29

29:                                               ; preds = %27
  %30 = icmp eq i32 %28, 1
  br i1 %30, label %27, label %31, !llvm.loop !8

31:                                               ; preds = %29
  %32 = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %31
  %.01 = phi i32 [ 2, %36 ], [ %28, %31 ]
  br label %38

38:                                               ; preds = %37, %23, %20, %15, %11, %7
  %.0 = phi i32 [ 0, %7 ], [ 0, %11 ], [ 0, %15 ], [ 0, %23 ], [ %.01, %37 ], [ 0, %20 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @riff_endian_convert_32(i32 noundef %0, i32 noundef %1) #5 {
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %2
  %4 = call i32 @llvm.bswap.i32(i32 %0)
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %3
  %.0 = phi i32 [ %4, %3 ], [ %0, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @riff_read_chunk(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = icmp sgt i32 %2, 1000
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0)) #8
  br label %50

9:                                                ; preds = %3
  %10 = bitcast i32* %4 to i8*
  %11 = call i32 @cli_readn(i32 noundef %0, i8* noundef nonnull %10, i32 noundef 4) #8
  %.not = icmp eq i32 %11, 4
  br i1 %.not, label %13, label %12

12:                                               ; preds = %9
  br label %50

13:                                               ; preds = %9
  %14 = bitcast i32* %5 to i8*
  %15 = call i32 @cli_readn(i32 noundef %0, i8* noundef nonnull %14, i32 noundef 4) #8
  %.not2 = icmp eq i32 %15, 4
  br i1 %.not2, label %17, label %16

16:                                               ; preds = %13
  br label %50

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @riff_endian_convert_32(i32 noundef %18, i32 noundef %1)
  store i32 %19, i32* %5, align 4
  %lhsv = load i32, i32* %4, align 4
  %.not3 = icmp eq i32 %lhsv, 1179011410
  br i1 %.not3, label %20, label %21

20:                                               ; preds = %17
  br label %50

21:                                               ; preds = %17
  %lhsv4 = load i32, i32* %4, align 4
  %.not5 = icmp eq i32 %lhsv4, 1481001298
  br i1 %.not5, label %22, label %23

22:                                               ; preds = %21
  br label %50

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23
  %lhsv6 = load i32, i32* %4, align 4
  %.not7 = icmp eq i32 %lhsv6, 1414744396
  br i1 %.not7, label %28, label %25

25:                                               ; preds = %24
  %lhsv8 = load i32, i32* %4, align 4
  %.not9 = icmp eq i32 %lhsv8, 1347375696
  br i1 %.not9, label %28, label %26

26:                                               ; preds = %25
  %lhsv10 = load i32, i32* %4, align 4
  %.not11 = icmp eq i32 %lhsv10, 1297239878
  br i1 %.not11, label %28, label %27

27:                                               ; preds = %26
  %lhsv12 = load i32, i32* %4, align 4
  %.not13 = icmp eq i32 %lhsv12, 542392643
  br i1 %.not13, label %28, label %35

28:                                               ; preds = %27, %26, %25, %24
  %29 = bitcast i32* %6 to i8*
  %30 = call i32 @cli_readn(i32 noundef %0, i8* noundef nonnull %29, i32 noundef 4) #8
  %.not16 = icmp eq i32 %30, 4
  br i1 %.not16, label %32, label %31

31:                                               ; preds = %28
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0)) #8
  br label %50

32:                                               ; preds = %28
  %33 = add nsw i32 %2, 1
  %34 = call i32 @riff_read_chunk(i32 noundef %0, i32 noundef %1, i32 noundef %33)
  br label %50

35:                                               ; preds = %27
  %36 = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = and i64 %39, 1
  %.not14 = icmp eq i64 %40, 0
  br i1 %.not14, label %43, label %41

41:                                               ; preds = %35
  %42 = add nsw i64 %39, 1
  br label %43

43:                                               ; preds = %41, %35
  %.01 = phi i64 [ %42, %41 ], [ %39, %35 ]
  %44 = icmp slt i64 %.01, %36
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  br label %50

46:                                               ; preds = %43
  %47 = call i64 @lseek(i32 noundef %0, i64 noundef %.01, i32 noundef 0) #8
  %.not15 = icmp eq i64 %47, %.01
  br i1 %.not15, label %49, label %48

48:                                               ; preds = %46
  br label %50

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %49, %48, %45, %32, %31, %22, %20, %16, %12, %8
  %.0 = phi i32 [ 0, %8 ], [ 0, %12 ], [ 0, %16 ], [ 0, %20 ], [ 0, %22 ], [ 0, %31 ], [ %34, %32 ], [ 0, %45 ], [ 2, %48 ], [ 1, %49 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @jpeg_check_photoshop_8bim(i32 noundef %0) #0 {
  %2 = alloca [5 x i8], align 1
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %7 = call i32 @cli_readn(i32 noundef %0, i8* noundef nonnull %6, i32 noundef 4) #8
  %.not = icmp eq i32 %7, 4
  br i1 %.not, label %9, label %8

8:                                                ; preds = %1
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0)) #8
  br label %73

9:                                                ; preds = %1
  %10 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %10, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 4)
  %.not1 = icmp eq i32 %bcmp, 0
  br i1 %.not1, label %14, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 4
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %13) #8
  br label %73

14:                                               ; preds = %9
  %15 = bitcast i16* %3 to i8*
  %16 = call i32 @cli_readn(i32 noundef %0, i8* noundef nonnull %15, i32 noundef 2) #8
  %.not2 = icmp eq i32 %16, 2
  br i1 %.not2, label %18, label %17

17:                                               ; preds = %14
  br label %73

18:                                               ; preds = %14
  %19 = load i16, i16* %3, align 2
  %rev = call i16 @llvm.bswap.i16(i16 %19)
  store i16 %rev, i16* %3, align 2
  %20 = zext i16 %rev to i32
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 noundef %20) #8
  %21 = call i32 @cli_readn(i32 noundef %0, i8* noundef nonnull %4, i32 noundef 1) #8
  %.not3 = icmp eq i32 %21, 1
  br i1 %.not3, label %23, label %22

22:                                               ; preds = %18
  br label %73

23:                                               ; preds = %18
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i64
  %26 = and i8 %24, 1
  %27 = xor i8 %26, 1
  %28 = zext i8 %27 to i64
  %29 = add nuw nsw i64 %25, %28
  %30 = call i64 @lseek(i32 noundef %0, i64 noundef %29, i32 noundef 1) #8
  %31 = bitcast i32* %5 to i8*
  %32 = call i32 @cli_readn(i32 noundef %0, i8* noundef nonnull %31, i32 noundef 4) #8
  %.not4 = icmp eq i32 %32, 4
  br i1 %.not4, label %34, label %33

33:                                               ; preds = %23
  br label %73

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = lshr i32 %35, 24
  %37 = lshr i32 %35, 8
  %38 = and i32 %37, 65280
  %39 = or i32 %36, %38
  %40 = shl i32 %35, 8
  %41 = and i32 %40, 16711680
  %42 = or i32 %39, %41
  %43 = load i32, i32* %5, align 4
  %44 = shl i32 %43, 24
  %45 = or i32 %42, %44
  store i32 %45, i32* %5, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %73

48:                                               ; preds = %34
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 1
  %.not5 = icmp eq i32 %50, 0
  br i1 %.not5, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i16, i16* %3, align 2
  %.not6 = icmp eq i16 %55, 1033
  br i1 %.not6, label %62, label %56

56:                                               ; preds = %54
  %57 = load i16, i16* %3, align 2
  %.not7 = icmp eq i16 %57, 1036
  br i1 %.not7, label %62, label %58

58:                                               ; preds = %56
  %59 = load i32, i32* %5, align 4
  %60 = zext i32 %59 to i64
  %61 = call i64 @lseek(i32 noundef %0, i64 noundef %60, i32 noundef 1) #8
  br label %73

62:                                               ; preds = %56, %54
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0)) #8
  %63 = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #8
  %64 = call i64 @lseek(i32 noundef %0, i64 noundef 28, i32 noundef 1) #8
  %65 = call i32 @cli_check_jpeg_exploit(i32 noundef %0)
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0)) #8
  br label %68

68:                                               ; preds = %67, %62
  %69 = load i32, i32* %5, align 4
  %70 = zext i32 %69 to i64
  %71 = add nsw i64 %63, %70
  %72 = call i64 @lseek(i32 noundef %0, i64 noundef %71, i32 noundef 0) #8
  br label %73

73:                                               ; preds = %68, %58, %47, %33, %22, %17, %11, %8
  %.0 = phi i32 [ -1, %8 ], [ -1, %11 ], [ -1, %17 ], [ -1, %22 ], [ -1, %33 ], [ -1, %47 ], [ 0, %58 ], [ %65, %68 ]
  ret i32 %.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

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
!8 = distinct !{!8, !5}
