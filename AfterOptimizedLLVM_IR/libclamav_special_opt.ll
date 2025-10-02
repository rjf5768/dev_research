; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_special.c'
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
define dso_local i32 @cli_check_mydoom_log(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [8 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %9, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %62, %2
  %12 = load i32, i32* %10, align 4
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %65

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = bitcast [8 x i32]* %6 to i8*
  %17 = call i32 @cli_readn(i32 noundef %15, i8* noundef %16, i32 noundef 32)
  %18 = icmp ne i32 %17, 32
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %65

20:                                               ; preds = %14
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %22 = load i32, i32* %21, align 16
  %23 = call i32 @ntohl(i32 noundef %22) #5
  %24 = xor i32 %23, -1
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %27 = load i32, i32* %26, align 16
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef %27)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %28

28:                                               ; preds = %49, %20
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ntohl(i32 noundef %35) #5
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %38 = load i32, i32* %37, align 16
  %39 = xor i32 %36, %38
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %41
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %31
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %28, !llvm.loop !4

52:                                               ; preds = %28
  %53 = load i32, i32* %7, align 4
  %54 = xor i32 %53, -1
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef %54)
  %55 = load i32, i32* %7, align 4
  %56 = xor i32 %55, -1
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %58 = load i32, i32* %57, align 16
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %81

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %11, !llvm.loop !6

65:                                               ; preds = %19, %11
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  br label %79

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i8**, i8*** %5, align 8
  %74 = icmp ne i8** %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %76, align 8
  br label %77

77:                                               ; preds = %75, %72
  br label %78

78:                                               ; preds = %77, %69
  br label %79

79:                                               ; preds = %78, %68
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %60
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local void @cli_dbgmsg(i8* noundef, ...) #1

declare dso_local i32 @cli_readn(i32 noundef, i8* noundef, i32 noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @ntohl(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @cli_check_jpeg_exploit(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [4 x i8], align 1
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %7 = load i32, i32* %3, align 4
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %9 = call i32 @cli_readn(i32 noundef %7, i8* noundef %8, i32 noundef 2)
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %122

12:                                               ; preds = %1
  %13 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 255
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 216
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %12
  store i32 0, i32* %2, align 4
  br label %122

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %121, %40, %23
  %25 = load i32, i32* %3, align 4
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %27 = call i32 @cli_readn(i32 noundef %25, i8* noundef %26, i32 noundef 4)
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %122

30:                                               ; preds = %24
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 255
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 255
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @lseek(i32 noundef %41, i64 noundef -3, i32 noundef 1) #6
  br label %24

43:                                               ; preds = %35, %30
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 255
  br i1 %47, label %48, label %71

48:                                               ; preds = %43
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 254
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %58
  store i32 1, i32* %2, align 4
  br label %122

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %53
  br label %71

71:                                               ; preds = %70, %48, %43
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp ne i32 %74, 255
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 -1, i32* %2, align 4
  br label %122

77:                                               ; preds = %71
  %78 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 218
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %122

83:                                               ; preds = %77
  %84 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = shl i32 %86, 8
  %88 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = add i32 %87, %90
  %92 = zext i32 %91 to i64
  store i64 %92, i64* %5, align 8
  %93 = load i64, i64* %5, align 8
  %94 = icmp slt i64 %93, 2
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  store i32 1, i32* %2, align 4
  br label %122

96:                                               ; preds = %83
  %97 = load i64, i64* %5, align 8
  %98 = sub nsw i64 %97, 2
  store i64 %98, i64* %5, align 8
  %99 = load i32, i32* %3, align 4
  %100 = call i64 @lseek(i32 noundef %99, i64 noundef 0, i32 noundef 1) #6
  %101 = load i64, i64* %5, align 8
  %102 = add nsw i64 %101, %100
  store i64 %102, i64* %5, align 8
  %103 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %105, 237
  br i1 %106, label %107, label %114

107:                                              ; preds = %96
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @jpeg_check_photoshop(i32 noundef %108)
  store i32 %109, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %122

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %96
  %115 = load i32, i32* %3, align 4
  %116 = load i64, i64* %5, align 8
  %117 = call i64 @lseek(i32 noundef %115, i64 noundef %116, i32 noundef 0) #6
  %118 = load i64, i64* %5, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  store i32 -1, i32* %2, align 4
  br label %122

121:                                              ; preds = %114
  br label %24

122:                                              ; preds = %120, %111, %95, %82, %76, %68, %29, %22, %11
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @jpeg_check_photoshop(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [14 x i8], align 1
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0
  %10 = call i32 @cli_readn(i32 noundef %8, i8* noundef %9, i32 noundef 14)
  %11 = icmp ne i32 %10, 14
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0
  %15 = call i32 @memcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i64 noundef 14) #7
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %40

18:                                               ; preds = %13
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @lseek(i32 noundef %20, i64 noundef 0, i32 noundef 1) #6
  store i64 %21, i64* %6, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @jpeg_check_photoshop_8bim(i32 noundef %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @lseek(i32 noundef %24, i64 noundef 0, i32 noundef 1) #6
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp sle i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %34

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %19, label %34, !llvm.loop !7

34:                                               ; preds = %31, %29
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %17, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @cli_check_riff_exploit(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 4, i32* %7, align 4
  %11 = load i32, i32* %3, align 4
  %12 = bitcast i32* %4 to i8*
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @cli_readn(i32 noundef %11, i8* noundef %12, i32 noundef %13)
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = bitcast i32* %5 to i8*
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @cli_readn(i32 noundef %19, i8* noundef %20, i32 noundef %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %72

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = bitcast i32* %6 to i8*
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @cli_readn(i32 noundef %27, i8* noundef %28, i32 noundef %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %72

34:                                               ; preds = %26
  %35 = bitcast i32* %4 to i8*
  %36 = call i32 @memcmp(i8* noundef %35, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 noundef 4) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %46

39:                                               ; preds = %34
  %40 = bitcast i32* %4 to i8*
  %41 = call i32 @memcmp(i8* noundef %40, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 noundef 4) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %8, align 4
  br label %45

44:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %72

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45, %38
  %47 = bitcast i32* %6 to i8*
  %48 = call i32 @memcmp(i8* noundef %47, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 noundef 4) #7
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %72

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @riff_endian_convert_32(i32 noundef %52, i32 noundef %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %59, %51
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @riff_read_chunk(i32 noundef %56, i32 noundef %57, i32 noundef 1)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %55, label %62, !llvm.loop !8

62:                                               ; preds = %59
  %63 = load i32, i32* %3, align 4
  %64 = call i64 @lseek(i32 noundef %63, i64 noundef 0, i32 noundef 1) #6
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 2, i32* %9, align 4
  br label %70

70:                                               ; preds = %69, %62
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %50, %44, %33, %25, %17
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @riff_endian_convert_32(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = lshr i32 %9, 24
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 16711680
  %13 = lshr i32 %12, 8
  %14 = or i32 %10, %13
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 65280
  %17 = shl i32 %16, 8
  %18 = or i32 %14, %17
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 %19, 24
  %21 = or i32 %18, %20
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %8
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @riff_read_chunk(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 1000
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %102

17:                                               ; preds = %3
  store i32 4, i32* %10, align 4
  %18 = load i32, i32* %5, align 4
  %19 = bitcast i32* %8 to i8*
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @cli_readn(i32 noundef %18, i8* noundef %19, i32 noundef %20)
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %102

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = bitcast i32* %9 to i8*
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @cli_readn(i32 noundef %26, i8* noundef %27, i32 noundef %28)
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %102

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @riff_endian_convert_32(i32 noundef %34, i32 noundef %35)
  store i32 %36, i32* %9, align 4
  %37 = bitcast i32* %8 to i8*
  %38 = call i32 @memcmp(i8* noundef %37, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 noundef 4) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %102

41:                                               ; preds = %33
  %42 = bitcast i32* %8 to i8*
  %43 = call i32 @memcmp(i8* noundef %42, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 noundef 4) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %102

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46
  %48 = bitcast i32* %8 to i8*
  %49 = call i32 @memcmp(i8* noundef %48, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i64 noundef 4) #7
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %47
  %52 = bitcast i32* %8 to i8*
  %53 = call i32 @memcmp(i8* noundef %52, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i64 noundef 4) #7
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = bitcast i32* %8 to i8*
  %57 = call i32 @memcmp(i8* noundef %56, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i64 noundef 4) #7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = bitcast i32* %8 to i8*
  %61 = call i32 @memcmp(i8* noundef %60, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i64 noundef 4) #7
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %59, %55, %51, %47
  %64 = load i32, i32* %5, align 4
  %65 = bitcast i32* %11 to i8*
  %66 = call i32 @cli_readn(i32 noundef %64, i8* noundef %65, i32 noundef 4)
  %67 = sext i32 %66 to i64
  %68 = icmp ne i64 %67, 4
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %102

70:                                               ; preds = %63
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = call i32 @riff_read_chunk(i32 noundef %71, i32 noundef %72, i32 noundef %74)
  store i32 %75, i32* %4, align 4
  br label %102

76:                                               ; preds = %59
  %77 = load i32, i32* %5, align 4
  %78 = call i64 @lseek(i32 noundef %77, i64 noundef 0, i32 noundef 1) #6
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %12, align 8
  %84 = and i64 %83, 1
  %85 = icmp eq i64 %84, 1
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load i64, i64* %12, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %12, align 8
  br label %89

89:                                               ; preds = %86, %76
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* %13, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 0, i32* %4, align 4
  br label %102

94:                                               ; preds = %89
  %95 = load i32, i32* %5, align 4
  %96 = load i64, i64* %12, align 8
  %97 = call i64 @lseek(i32 noundef %95, i64 noundef %96, i32 noundef 0) #6
  %98 = load i64, i64* %12, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i32 2, i32* %4, align 4
  br label %102

101:                                              ; preds = %94
  store i32 1, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %100, %93, %70, %69, %45, %40, %32, %24, %16
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @jpeg_check_photoshop_8bim(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [5 x i8], align 1
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %13 = call i32 @cli_readn(i32 noundef %11, i8* noundef %12, i32 noundef 4)
  %14 = icmp ne i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %119

16:                                               ; preds = %1
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %18 = call i32 @memcmp(i8* noundef %17, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 noundef 4) #7
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 4
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* noundef %22)
  store i32 -1, i32* %2, align 4
  br label %119

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = bitcast i16* %5 to i8*
  %26 = call i32 @cli_readn(i32 noundef %24, i8* noundef %25, i32 noundef 2)
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %119

29:                                               ; preds = %23
  %30 = load i16, i16* %5, align 2
  %31 = zext i16 %30 to i32
  %32 = ashr i32 %31, 8
  %33 = load i16, i16* %5, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, 255
  %36 = shl i32 %35, 8
  %37 = or i32 %32, %36
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %5, align 2
  %39 = load i16, i16* %5, align 2
  %40 = zext i16 %39 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 noundef %40)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @cli_readn(i32 noundef %41, i8* noundef %7, i32 noundef 1)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %29
  store i32 -1, i32* %2, align 4
  br label %119

45:                                               ; preds = %29
  %46 = load i8, i8* %7, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* %7, align 1
  %49 = zext i8 %48 to i16
  %50 = zext i16 %49 to i32
  %51 = add nsw i32 %50, 1
  %52 = and i32 %51, 1
  %53 = add nsw i32 %47, %52
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %6, align 2
  %55 = load i32, i32* %3, align 4
  %56 = load i16, i16* %6, align 2
  %57 = zext i16 %56 to i64
  %58 = call i64 @lseek(i32 noundef %55, i64 noundef %57, i32 noundef 1) #6
  %59 = load i32, i32* %3, align 4
  %60 = bitcast i32* %8 to i8*
  %61 = call i32 @cli_readn(i32 noundef %59, i8* noundef %60, i32 noundef 4)
  %62 = icmp ne i32 %61, 4
  br i1 %62, label %63, label %64

63:                                               ; preds = %45
  store i32 -1, i32* %2, align 4
  br label %119

64:                                               ; preds = %45
  %65 = load i32, i32* %8, align 4
  %66 = lshr i32 %65, 24
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, 16711680
  %69 = lshr i32 %68, 8
  %70 = or i32 %66, %69
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 65280
  %73 = shl i32 %72, 8
  %74 = or i32 %70, %73
  %75 = load i32, i32* %8, align 4
  %76 = shl i32 %75, 24
  %77 = or i32 %74, %76
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  store i32 -1, i32* %2, align 4
  br label %119

81:                                               ; preds = %64
  %82 = load i32, i32* %8, align 4
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* %8, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %85, %81
  %89 = load i16, i16* %5, align 2
  %90 = zext i16 %89 to i32
  %91 = icmp ne i32 %90, 1033
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load i16, i16* %5, align 2
  %94 = zext i16 %93 to i32
  %95 = icmp ne i32 %94, 1036
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = call i64 @lseek(i32 noundef %97, i64 noundef %99, i32 noundef 1) #6
  store i32 0, i32* %2, align 4
  br label %119

101:                                              ; preds = %92, %88
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %102 = load i32, i32* %3, align 4
  %103 = call i64 @lseek(i32 noundef %102, i64 noundef 0, i32 noundef 1) #6
  store i64 %103, i64* %9, align 8
  %104 = load i32, i32* %3, align 4
  %105 = call i64 @lseek(i32 noundef %104, i64 noundef 28, i32 noundef 1) #6
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @cli_check_jpeg_exploit(i32 noundef %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  call void (i8*, ...) @cli_dbgmsg(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  br label %111

111:                                              ; preds = %110, %101
  %112 = load i32, i32* %3, align 4
  %113 = load i64, i64* %9, align 8
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = add nsw i64 %113, %115
  %117 = call i64 @lseek(i32 noundef %112, i64 noundef %116, i32 noundef 0) #6
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %111, %96, %80, %63, %44, %28, %20, %15
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn }
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
