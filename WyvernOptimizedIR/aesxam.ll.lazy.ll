; ModuleID = './aesxam.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/security-rijndael/aesxam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.aes = type { i32, i32, [64 x i32], [64 x i32], i8 }

@fillrand.a = internal global [2 x i64] zeroinitializer, align 16
@fillrand.mt = internal global i64 1, align 8
@fillrand.count = internal global i64 4, align 8
@fillrand.r = internal global [4 x i8] zeroinitializer, align 8
@.str = private unnamed_addr constant [34 x i8] c"Error writing to output file: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Error reading from input file: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\0AThe input file is corrupt\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"usage: rijndael in_filename out_filename [d/e] key_in_hex\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"key must be in hexadecimal notation\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"The key value is too long\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"The key length must be 32, 48 or 64 hexadecimal digits\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"The input file: %s could not be opened\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"The output file: %s could not be opened\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@str = private unnamed_addr constant [55 x i8] c"The key length must be 32, 48 or 64 hexadecimal digits\00", align 1
@str.1 = private unnamed_addr constant [26 x i8] c"The key value is too long\00", align 1
@str.2 = private unnamed_addr constant [36 x i8] c"key must be in hexadecimal notation\00", align 1
@str.3 = private unnamed_addr constant [58 x i8] c"usage: rijndael in_filename out_filename [d/e] key_in_hex\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @fillrand(i8* nocapture noundef writeonly %0, i32 noundef %1) #0 {
  %3 = load i64, i64* @fillrand.mt, align 8
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  store i64 0, i64* @fillrand.mt, align 8
  store i64 60147, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i64 0, i64 0), align 16
  store i64 13822, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i64 0, i64 1), align 8
  br label %5

5:                                                ; preds = %4, %2
  br label %6

6:                                                ; preds = %31, %5
  %.0 = phi i32 [ 0, %5 ], [ %32, %31 ]
  %7 = icmp slt i32 %.0, %1
  br i1 %7, label %8, label %33

8:                                                ; preds = %6
  %9 = load i64, i64* @fillrand.count, align 8
  %10 = icmp eq i64 %9, 4
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i64 0, i64 0), align 16
  %13 = and i64 %12, 65535
  %14 = mul nuw nsw i64 %13, 36969
  %15 = lshr i64 %12, 16
  %16 = add nuw nsw i64 %14, %15
  store i64 %16, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i64 0, i64 0), align 16
  %17 = shl i64 %16, 16
  %18 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i64 0, i64 1), align 8
  %19 = and i64 %18, 65535
  %20 = mul nuw nsw i64 %19, 18000
  %21 = lshr i64 %18, 16
  %22 = add nuw nsw i64 %20, %21
  store i64 %22, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i64 0, i64 1), align 8
  %23 = add i64 %17, %22
  store i64 %23, i64* bitcast ([4 x i8]* @fillrand.r to i64*), align 8
  store i64 0, i64* @fillrand.count, align 8
  br label %24

24:                                               ; preds = %11, %8
  %25 = load i64, i64* @fillrand.count, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* @fillrand.count, align 8
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* @fillrand.r, i64 0, i64 %25
  %28 = load i8, i8* %27, align 1
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds i8, i8* %0, i64 %29
  store i8 %28, i8* %30, align 1
  br label %31

31:                                               ; preds = %24
  %32 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !4

33:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @encfile(%struct._IO_FILE* noundef %0, %struct._IO_FILE* noundef %1, %struct.aes* noundef %2, i8* noundef %3) #1 {
  %5 = alloca [16 x i8], align 16
  %6 = alloca [16 x i8], align 16
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  call void @fillrand(i8* noundef nonnull %7, i32 noundef 16)
  %8 = call i32 @fseek(%struct._IO_FILE* noundef %0, i64 noundef 0, i32 noundef 2) #6
  %9 = call i64 @ftell(%struct._IO_FILE* noundef %0) #6
  %10 = call i32 @fseek(%struct._IO_FILE* noundef %0, i64 noundef 0, i32 noundef 0) #6
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %12 = call i64 @fwrite(i8* noundef nonnull %11, i64 noundef 1, i64 noundef 16, %struct._IO_FILE* noundef %1) #6
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  call void @fillrand(i8* noundef nonnull %13, i32 noundef 1)
  %14 = trunc i64 %9 to i8
  %15 = and i8 %14, 15
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %17 = load i8, i8* %16, align 16
  %18 = and i8 %17, -16
  %19 = or i8 %15, %18
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  store i8 %19, i8* %20, align 16
  br label %21

21:                                               ; preds = %50, %4
  %.02 = phi i64 [ 0, %4 ], [ %.1, %50 ]
  %22 = phi i1 [ true, %4 ], [ false, %50 ]
  %.01 = phi i64 [ 15, %4 ], [ 16, %50 ]
  %23 = call i32 @feof(%struct._IO_FILE* noundef %0) #6
  %.not = icmp eq i32 %23, 0
  br i1 %.not, label %24, label %.loopexit

24:                                               ; preds = %21
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 16
  %26 = sub nsw i64 0, %.01
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = call i64 @fread(i8* noundef nonnull %27, i64 noundef 1, i64 noundef %.01, %struct._IO_FILE* noundef %0) #6
  %29 = icmp ult i64 %28, %.01
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %51

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %40, %31
  %.1 = phi i64 [ 0, %31 ], [ %41, %40 ]
  %33 = icmp ult i64 %.1, 16
  br i1 %33, label %34, label %42

34:                                               ; preds = %32
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %.1
  %36 = load i8, i8* %35, align 1
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %.1
  %38 = load i8, i8* %37, align 1
  %39 = xor i8 %38, %36
  store i8 %39, i8* %37, align 1
  br label %40

40:                                               ; preds = %34
  %41 = add i64 %.1, 1
  br label %32, !llvm.loop !6

42:                                               ; preds = %32
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %45 = call signext i16 @encrypt(i8* noundef nonnull %43, i8* noundef nonnull %44, %struct.aes* noundef %2) #6
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %47 = call i64 @fwrite(i8* noundef nonnull %46, i64 noundef 1, i64 noundef 16, %struct._IO_FILE* noundef %1) #6
  %.not11 = icmp eq i64 %47, 16
  br i1 %.not11, label %50, label %48

48:                                               ; preds = %42
  %49 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* noundef %3) #6
  br label %82

50:                                               ; preds = %42
  br label %21, !llvm.loop !7

.loopexit:                                        ; preds = %21
  br label %51

51:                                               ; preds = %.loopexit, %30
  %.2 = phi i64 [ %28, %30 ], [ %.02, %.loopexit ]
  br i1 %22, label %52, label %54

52:                                               ; preds = %51
  %53 = add i64 %.2, 1
  br label %54

54:                                               ; preds = %52, %51
  %.3 = phi i64 [ %53, %52 ], [ %.2, %51 ]
  %.not9 = icmp eq i64 %.3, 0
  br i1 %.not9, label %81, label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %58, %55
  %.4 = phi i64 [ %.3, %55 ], [ %59, %58 ]
  %57 = icmp ult i64 %.4, 16
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = add i64 %.4, 1
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %.4
  store i8 0, i8* %60, align 1
  br label %56, !llvm.loop !8

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %70, %61
  %.5 = phi i64 [ 0, %61 ], [ %71, %70 ]
  %63 = icmp ult i64 %.5, 16
  br i1 %63, label %64, label %72

64:                                               ; preds = %62
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %.5
  %66 = load i8, i8* %65, align 1
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %.5
  %68 = load i8, i8* %67, align 1
  %69 = xor i8 %68, %66
  store i8 %69, i8* %67, align 1
  br label %70

70:                                               ; preds = %64
  %71 = add i64 %.5, 1
  br label %62, !llvm.loop !9

72:                                               ; preds = %62
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %75 = call signext i16 @encrypt(i8* noundef nonnull %73, i8* noundef nonnull %74, %struct.aes* noundef %2) #6
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %77 = call i64 @fwrite(i8* noundef nonnull %76, i64 noundef 1, i64 noundef 16, %struct._IO_FILE* noundef %1) #6
  %.not10 = icmp eq i64 %77, 16
  br i1 %.not10, label %80, label %78

78:                                               ; preds = %72
  %79 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* noundef %3) #6
  br label %82

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %54
  br label %82

82:                                               ; preds = %81, %78, %48
  %.0 = phi i32 [ -8, %78 ], [ 0, %81 ], [ -7, %48 ]
  ret i32 %.0
}

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #2

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #2

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #3

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

declare dso_local signext i16 @encrypt(i8* noundef, i8* noundef, %struct.aes* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @decfile(%struct._IO_FILE* noundef %0, %struct._IO_FILE* noundef %1, %struct.aes* noundef %2, i8* noundef %3, i8* noundef %4) #1 {
  %6 = alloca [16 x i8], align 16
  %7 = alloca [16 x i8], align 16
  %8 = alloca [16 x i8], align 16
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %10 = call i64 @fread(i8* noundef nonnull %9, i64 noundef 1, i64 noundef 16, %struct._IO_FILE* noundef %0) #6
  %.not = icmp eq i64 %10, 16
  br i1 %.not, label %13, label %11

11:                                               ; preds = %5
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* noundef %3) #6
  br label %87

13:                                               ; preds = %5
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %15 = call i64 @fread(i8* noundef nonnull %14, i64 noundef 1, i64 noundef 16, %struct._IO_FILE* noundef %0) #6
  %16 = trunc i64 %15 to i32
  %.not6 = icmp eq i32 %16, 0
  br i1 %.not6, label %20, label %17

17:                                               ; preds = %13
  %.not11 = icmp eq i32 %16, 16
  br i1 %.not11, label %20, label %18

18:                                               ; preds = %17
  %19 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %87

20:                                               ; preds = %17, %13
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %23 = call signext i16 @decrypt(i8* noundef nonnull %21, i8* noundef nonnull %22, %struct.aes* noundef %2) #6
  br label %24

24:                                               ; preds = %34, %20
  %.02 = phi i32 [ 0, %20 ], [ %35, %34 ]
  %25 = icmp ult i32 %.02, 16
  br i1 %25, label %26, label %36

26:                                               ; preds = %24
  %27 = zext i32 %.02 to i64
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i32 %.02 to i64
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = xor i8 %32, %29
  store i8 %33, i8* %31, align 1
  br label %34

34:                                               ; preds = %26
  %35 = add nuw nsw i32 %.02, 1
  br label %24, !llvm.loop !10

36:                                               ; preds = %24
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %38 = load i8, i8* %37, align 16
  %39 = and i8 %38, 15
  %40 = zext i8 %39 to i32
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  br label %43

43:                                               ; preds = %72, %36
  %.04 = phi i8* [ %41, %36 ], [ %.03, %72 ]
  %.03 = phi i8* [ %42, %36 ], [ %.04, %72 ]
  %.01 = phi i32 [ 15, %36 ], [ %.1, %72 ]
  %44 = call i64 @fread(i8* noundef %.04, i64 noundef 1, i64 noundef 16, %struct._IO_FILE* noundef %0) #6
  %45 = trunc i64 %44 to i32
  %.not7 = icmp eq i32 %45, 16
  br i1 %.not7, label %47, label %46

46:                                               ; preds = %43
  br label %73

47:                                               ; preds = %43
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 16
  %49 = zext i32 %.01 to i64
  %50 = sub nsw i64 0, %49
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = zext i32 %.01 to i64
  %53 = call i64 @fwrite(i8* noundef nonnull %51, i64 noundef 1, i64 noundef %52, %struct._IO_FILE* noundef %1) #6
  %54 = zext i32 %.01 to i64
  %.not8 = icmp eq i64 %53, %54
  br i1 %.not8, label %57, label %55

55:                                               ; preds = %47
  %56 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* noundef %4) #6
  br label %87

57:                                               ; preds = %47
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %59 = call signext i16 @decrypt(i8* noundef %.04, i8* noundef nonnull %58, %struct.aes* noundef %2) #6
  br label %60

60:                                               ; preds = %70, %57
  %.1 = phi i32 [ 0, %57 ], [ %71, %70 ]
  %61 = icmp ult i32 %.1, 16
  br i1 %61, label %62, label %72

62:                                               ; preds = %60
  %63 = zext i32 %.1 to i64
  %64 = getelementptr inbounds i8, i8* %.03, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i32 %.1 to i64
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = xor i8 %68, %65
  store i8 %69, i8* %67, align 1
  br label %70

70:                                               ; preds = %62
  %71 = add nuw nsw i32 %.1, 1
  br label %60, !llvm.loop !11

72:                                               ; preds = %60
  br label %43

73:                                               ; preds = %46
  %74 = icmp eq i32 %.01, 15
  %not. = xor i1 %74, true
  %75 = zext i1 %not. to i32
  %76 = add nuw nsw i32 %40, %75
  %.not9 = icmp eq i32 %76, 0
  br i1 %.not9, label %86, label %77

77:                                               ; preds = %73
  %78 = zext i1 %74 to i64
  %79 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %78
  %80 = zext i32 %76 to i64
  %81 = call i64 @fwrite(i8* noundef nonnull %79, i64 noundef 1, i64 noundef %80, %struct._IO_FILE* noundef %1) #6
  %82 = zext i32 %76 to i64
  %.not10 = icmp eq i64 %81, %82
  br i1 %.not10, label %85, label %83

83:                                               ; preds = %77
  %84 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* noundef %4) #6
  br label %87

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %73
  br label %87

87:                                               ; preds = %86, %83, %55, %18, %11
  %.0 = phi i32 [ 9, %11 ], [ -10, %18 ], [ -12, %83 ], [ 0, %86 ], [ -11, %55 ]
  ret i32 %.0
}

declare dso_local signext i16 @decrypt(i8* noundef, i8* noundef, %struct.aes* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #1 {
  %3 = alloca [32 x i8], align 16
  %4 = alloca [1 x %struct.aes], align 16
  %.not = icmp eq i32 %0, 5
  br i1 %.not, label %5, label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8*, i8** %1, i64 3
  %7 = load i8*, i8** %6, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = call i32 @toupper(i32 noundef %9) #7
  %.not9 = icmp eq i32 %10, 68
  br i1 %.not9, label %18, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds i8*, i8** %1, i64 3
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = call i32 @toupper(i32 noundef %15) #7
  %.not21 = icmp eq i32 %16, 69
  br i1 %.not21, label %18, label %17

17:                                               ; preds = %11, %2
  %puts22 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([58 x i8], [58 x i8]* @str.3, i64 0, i64 0))
  br label %119

18:                                               ; preds = %11, %5
  %19 = getelementptr inbounds i8*, i8** %1, i64 4
  %20 = load i8*, i8** %19, align 8
  br label %21

21:                                               ; preds = %65, %18
  %.06 = phi i32 [ 0, %18 ], [ %57, %65 ]
  %.05 = phi i8* [ %20, %18 ], [ %29, %65 ]
  %.01 = phi i32 [ 0, %18 ], [ %.12, %65 ]
  %22 = icmp ult i32 %.06, 64
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load i8, i8* %.05, align 1
  %25 = icmp ne i8 %24, 0
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi i1 [ false, %21 ], [ %25, %23 ]
  br i1 %27, label %28, label %66

28:                                               ; preds = %26
  %29 = getelementptr inbounds i8, i8* %.05, i64 1
  %30 = load i8, i8* %.05, align 1
  %31 = sext i8 %30 to i32
  %32 = call i32 @toupper(i32 noundef %31) #7
  %33 = trunc i32 %32 to i8
  %34 = icmp sgt i8 %33, 47
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = trunc i32 %32 to i8
  %37 = icmp slt i8 %36, 58
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = shl i32 %.01, 4
  %sext20 = shl i32 %32, 24
  %40 = ashr exact i32 %sext20, 24
  %41 = add nsw i32 %39, %40
  %42 = add nsw i32 %41, -48
  br label %56

43:                                               ; preds = %35, %28
  %44 = trunc i32 %32 to i8
  %45 = icmp sgt i8 %44, 64
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = trunc i32 %32 to i8
  %48 = icmp slt i8 %47, 71
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %51

50:                                               ; preds = %46, %43
  %puts17 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @str.2, i64 0, i64 0))
  br label %119

51:                                               ; preds = %49
  %52 = shl i32 %.01, 4
  %sext = shl i32 %32, 24
  %53 = ashr exact i32 %sext, 24
  %54 = add nsw i32 %52, %53
  %55 = add nsw i32 %54, -55
  br label %56

56:                                               ; preds = %51, %38
  %.12 = phi i32 [ %42, %38 ], [ %55, %51 ]
  %57 = add nuw nsw i32 %.06, 1
  %58 = and i32 %.06, 1
  %.not18 = icmp eq i32 %58, 0
  br i1 %.not18, label %65, label %59

59:                                               ; preds = %56
  %60 = trunc i32 %.12 to i8
  %61 = lshr i32 %57, 1
  %62 = add nsw i32 %61, -1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 %63
  store i8 %60, i8* %64, align 1
  br label %65

65:                                               ; preds = %59, %56
  br label %21, !llvm.loop !12

66:                                               ; preds = %26
  %67 = load i8, i8* %.05, align 1
  %.not10 = icmp eq i8 %67, 0
  br i1 %.not10, label %69, label %68

68:                                               ; preds = %66
  %puts16 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.1, i64 0, i64 0))
  br label %119

69:                                               ; preds = %66
  %70 = icmp ult i32 %.06, 32
  br i1 %70, label %73, label %71

71:                                               ; preds = %69
  %72 = and i32 %.06, 15
  %.not11 = icmp eq i32 %72, 0
  br i1 %.not11, label %74, label %73

73:                                               ; preds = %71, %69
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([55 x i8], [55 x i8]* @str, i64 0, i64 0))
  br label %119

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %74
  %76 = lshr i32 %.06, 1
  %77 = getelementptr inbounds i8*, i8** %1, i64 1
  %78 = load i8*, i8** %77, align 8
  %79 = call noalias %struct._IO_FILE* @fopen(i8* noundef %78, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #6
  %.not12 = icmp eq %struct._IO_FILE* %79, null
  br i1 %.not12, label %80, label %84

80:                                               ; preds = %75
  %81 = getelementptr inbounds i8*, i8** %1, i64 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* noundef %82) #6
  br label %119

84:                                               ; preds = %75
  %85 = getelementptr inbounds i8*, i8** %1, i64 2
  %86 = load i8*, i8** %85, align 8
  %87 = call noalias %struct._IO_FILE* @fopen(i8* noundef %86, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #6
  %.not15 = icmp eq %struct._IO_FILE* %87, null
  br i1 %.not15, label %88, label %92

88:                                               ; preds = %84
  %89 = getelementptr inbounds i8*, i8** %1, i64 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8* noundef %90) #6
  br label %119

92:                                               ; preds = %84
  %93 = getelementptr inbounds i8*, i8** %1, i64 3
  %94 = load i8*, i8** %93, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = call i32 @toupper(i32 noundef %96) #7
  %98 = icmp eq i32 %97, 69
  br i1 %98, label %99, label %107

99:                                               ; preds = %92
  %100 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %101 = getelementptr inbounds [1 x %struct.aes], [1 x %struct.aes]* %4, i64 0, i64 0
  %102 = call signext i16 @set_key(i8* noundef nonnull %100, i32 noundef %76, i32 noundef 1, %struct.aes* noundef nonnull %101) #6
  %103 = getelementptr inbounds [1 x %struct.aes], [1 x %struct.aes]* %4, i64 0, i64 0
  %104 = getelementptr inbounds i8*, i8** %1, i64 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @encfile(%struct._IO_FILE* noundef nonnull %79, %struct._IO_FILE* noundef nonnull %87, %struct.aes* noundef nonnull %103, i8* noundef %105)
  br label %118

107:                                              ; preds = %92
  %108 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %109 = getelementptr inbounds [1 x %struct.aes], [1 x %struct.aes]* %4, i64 0, i64 0
  %110 = call signext i16 @set_key(i8* noundef nonnull %108, i32 noundef %76, i32 noundef 2, %struct.aes* noundef nonnull %109) #6
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %112 = getelementptr inbounds [1 x %struct.aes], [1 x %struct.aes]* %4, i64 0, i64 0
  %113 = getelementptr inbounds i8*, i8** %1, i64 1
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %1, i64 2
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @decfile(%struct._IO_FILE* noundef nonnull %79, %struct._IO_FILE* noundef %111, %struct.aes* noundef nonnull %112, i8* noundef %114, i8* noundef %116)
  br label %118

118:                                              ; preds = %107, %99
  %.0 = phi i32 [ %106, %99 ], [ %117, %107 ]
  br label %119

119:                                              ; preds = %118, %88, %80, %73, %68, %50, %17
  %.04 = phi %struct._IO_FILE* [ null, %17 ], [ null, %50 ], [ null, %68 ], [ null, %73 ], [ %87, %118 ], [ %87, %88 ], [ null, %80 ]
  %.03 = phi %struct._IO_FILE* [ null, %17 ], [ null, %50 ], [ null, %68 ], [ null, %73 ], [ %79, %118 ], [ %79, %88 ], [ %79, %80 ]
  %.1 = phi i32 [ -1, %17 ], [ -2, %50 ], [ -3, %68 ], [ -4, %73 ], [ %.0, %118 ], [ -6, %88 ], [ -5, %80 ]
  %.not13 = icmp eq %struct._IO_FILE* %.04, null
  br i1 %.not13, label %122, label %120

120:                                              ; preds = %119
  %121 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %.04) #6
  br label %122

122:                                              ; preds = %120, %119
  %.not14 = icmp eq %struct._IO_FILE* %.03, null
  br i1 %.not14, label %125, label %123

123:                                              ; preds = %122
  %124 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %.03) #6
  br label %125

125:                                              ; preds = %123, %122
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @toupper(i32 noundef) #4

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local signext i16 @set_key(i8* noundef, i32 noundef, i32 noundef, %struct.aes* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #5

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
