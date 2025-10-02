; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/security-rijndael/aesxam.c'
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
@fillrand.r = internal global [4 x i8] zeroinitializer, align 1
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @fillrand(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @fillrand.mt, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i64 0, i64* @fillrand.mt, align 8
  store i64 60147, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i64 0, i64 0), align 16
  store i64 13822, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i64 0, i64 1), align 8
  br label %9

9:                                                ; preds = %8, %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %41, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = load i64, i64* @fillrand.count, align 8
  %16 = icmp eq i64 %15, 4
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i64 0, i64 0), align 16
  %19 = and i64 %18, 65535
  %20 = mul i64 36969, %19
  %21 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i64 0, i64 0), align 16
  %22 = lshr i64 %21, 16
  %23 = add i64 %20, %22
  store i64 %23, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i64 0, i64 0), align 16
  %24 = shl i64 %23, 16
  %25 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i64 0, i64 1), align 8
  %26 = and i64 %25, 65535
  %27 = mul i64 18000, %26
  %28 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i64 0, i64 1), align 8
  %29 = lshr i64 %28, 16
  %30 = add i64 %27, %29
  store i64 %30, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @fillrand.a, i64 0, i64 1), align 8
  %31 = add i64 %24, %30
  store i64 %31, i64* bitcast ([4 x i8]* @fillrand.r to i64*), align 1
  store i64 0, i64* @fillrand.count, align 8
  br label %32

32:                                               ; preds = %17, %14
  %33 = load i64, i64* @fillrand.count, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* @fillrand.count, align 8
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* @fillrand.r, i64 0, i64 %33
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 %36, i8* %40, align 1
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %10, !llvm.loop !4

44:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @encfile(%struct._IO_FILE* noundef %0, %struct._IO_FILE* noundef %1, %struct.aes* noundef %2, i8* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca %struct.aes*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [16 x i8], align 16
  %11 = alloca [16 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %7, align 8
  store %struct.aes* %2, %struct.aes** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  call void @fillrand(i8* noundef %15, i32 noundef 16)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %17 = call i32 @fseek(%struct._IO_FILE* noundef %16, i64 noundef 0, i32 noundef 2)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %19 = call i64 @ftell(%struct._IO_FILE* noundef %18)
  store i64 %19, i64* %12, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %21 = call i32 @fseek(%struct._IO_FILE* noundef %20, i64 noundef 0, i32 noundef 0)
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %24 = call i64 @fwrite(i8* noundef %22, i64 noundef 1, i64 noundef 16, %struct._IO_FILE* noundef %23)
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  call void @fillrand(i8* noundef %25, i32 noundef 1)
  store i64 15, i64* %14, align 8
  %26 = load i64, i64* %12, align 8
  %27 = trunc i64 %26 to i8
  %28 = sext i8 %27 to i32
  %29 = and i32 %28, 15
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %31 = load i8, i8* %30, align 16
  %32 = sext i8 %31 to i32
  %33 = and i32 %32, -16
  %34 = or i32 %29, %33
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  store i8 %35, i8* %36, align 16
  br label %37

37:                                               ; preds = %85, %4
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %39 = call i32 @feof(%struct._IO_FILE* noundef %38) #4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %42, label %86

42:                                               ; preds = %37
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %44 = getelementptr inbounds i8, i8* %43, i64 16
  %45 = load i64, i64* %14, align 8
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i64, i64* %14, align 8
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %50 = call i64 @fread(i8* noundef %47, i64 noundef 1, i64 noundef %48, %struct._IO_FILE* noundef %49)
  store i64 %50, i64* %13, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %14, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %86

55:                                               ; preds = %42
  store i64 0, i64* %13, align 8
  br label %56

56:                                               ; preds = %70, %55
  %57 = load i64, i64* %13, align 8
  %58 = icmp ult i64 %57, 16
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = load i64, i64* %13, align 8
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = xor i32 %67, %63
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %65, align 1
  br label %70

70:                                               ; preds = %59
  %71 = load i64, i64* %13, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %13, align 8
  br label %56, !llvm.loop !6

73:                                               ; preds = %56
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %75 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %76 = load %struct.aes*, %struct.aes** %8, align 8
  %77 = call signext i16 @encrypt(i8* noundef %74, i8* noundef %75, %struct.aes* noundef %76)
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %80 = call i64 @fwrite(i8* noundef %78, i64 noundef 1, i64 noundef 16, %struct._IO_FILE* noundef %79)
  %81 = icmp ne i64 %80, 16
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* noundef %83)
  store i32 -7, i32* %5, align 4
  br label %135

85:                                               ; preds = %73
  store i64 16, i64* %14, align 8
  br label %37, !llvm.loop !7

86:                                               ; preds = %54, %37
  %87 = load i64, i64* %14, align 8
  %88 = icmp eq i64 %87, 15
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i64, i64* %13, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %13, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i64, i64* %13, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %134

95:                                               ; preds = %92
  br label %96

96:                                               ; preds = %99, %95
  %97 = load i64, i64* %13, align 8
  %98 = icmp ult i64 %97, 16
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i64, i64* %13, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %13, align 8
  %102 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 %100
  store i8 0, i8* %102, align 1
  br label %96, !llvm.loop !8

103:                                              ; preds = %96
  store i64 0, i64* %13, align 8
  br label %104

104:                                              ; preds = %118, %103
  %105 = load i64, i64* %13, align 8
  %106 = icmp ult i64 %105, 16
  br i1 %106, label %107, label %121

107:                                              ; preds = %104
  %108 = load i64, i64* %13, align 8
  %109 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = xor i32 %115, %111
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %113, align 1
  br label %118

118:                                              ; preds = %107
  %119 = load i64, i64* %13, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %13, align 8
  br label %104, !llvm.loop !9

121:                                              ; preds = %104
  %122 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %123 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %124 = load %struct.aes*, %struct.aes** %8, align 8
  %125 = call signext i16 @encrypt(i8* noundef %122, i8* noundef %123, %struct.aes* noundef %124)
  %126 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %128 = call i64 @fwrite(i8* noundef %126, i64 noundef 1, i64 noundef 16, %struct._IO_FILE* noundef %127)
  %129 = icmp ne i64 %128, 16
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = load i8*, i8** %9, align 8
  %132 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* noundef %131)
  store i32 -8, i32* %5, align 4
  br label %135

133:                                              ; preds = %121
  br label %134

134:                                              ; preds = %133, %92
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %134, %130, %82
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #1

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local signext i16 @encrypt(i8* noundef, i8* noundef, %struct.aes* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @decfile(%struct._IO_FILE* noundef %0, %struct._IO_FILE* noundef %1, %struct.aes* noundef %2, i8* noundef %3, i8* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca %struct.aes*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [16 x i8], align 16
  %13 = alloca [16 x i8], align 16
  %14 = alloca [16 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %7, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %8, align 8
  store %struct.aes* %2, %struct.aes** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %23 = call i64 @fread(i8* noundef %21, i64 noundef 1, i64 noundef 16, %struct._IO_FILE* noundef %22)
  %24 = icmp ne i64 %23, 16
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* noundef %26)
  store i32 9, i32* %6, align 4
  br label %154

28:                                               ; preds = %5
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %31 = call i64 @fread(i8* noundef %29, i64 noundef 1, i64 noundef 16, %struct._IO_FILE* noundef %30)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %18, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* %18, align 4
  %37 = icmp ne i32 %36, 16
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 -10, i32* %6, align 4
  br label %154

40:                                               ; preds = %35, %28
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %43 = load %struct.aes*, %struct.aes** %9, align 8
  %44 = call signext i16 @decrypt(i8* noundef %41, i8* noundef %42, %struct.aes* noundef %43)
  store i32 0, i32* %18, align 4
  br label %45

45:                                               ; preds = %61, %40
  %46 = load i32, i32* %18, align 4
  %47 = icmp slt i32 %46, 16
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load i32, i32* %18, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load i32, i32* %18, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = xor i32 %58, %53
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %56, align 1
  br label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %18, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %18, align 4
  br label %45, !llvm.loop !10

64:                                               ; preds = %45
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %66 = load i8, i8* %65, align 16
  %67 = sext i8 %66 to i32
  %68 = and i32 %67, 15
  store i32 %68, i32* %20, align 4
  store i32 15, i32* %19, align 4
  %69 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  store i8* %69, i8** %15, align 8
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  store i8* %70, i8** %16, align 8
  br label %71

71:                                               ; preds = %64, %121
  %72 = load i8*, i8** %15, align 8
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %74 = call i64 @fread(i8* noundef %72, i64 noundef 1, i64 noundef 16, %struct._IO_FILE* noundef %73)
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = icmp ne i32 %76, 16
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %126

79:                                               ; preds = %71
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %81 = getelementptr inbounds i8, i8* %80, i64 16
  %82 = load i32, i32* %19, align 4
  %83 = sext i32 %82 to i64
  %84 = sub i64 0, %83
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i32, i32* %19, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %89 = call i64 @fwrite(i8* noundef %85, i64 noundef 1, i64 noundef %87, %struct._IO_FILE* noundef %88)
  %90 = load i32, i32* %19, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp ne i64 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %79
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* noundef %94)
  store i32 -11, i32* %6, align 4
  br label %154

96:                                               ; preds = %79
  %97 = load i8*, i8** %15, align 8
  %98 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %99 = load %struct.aes*, %struct.aes** %9, align 8
  %100 = call signext i16 @decrypt(i8* noundef %97, i8* noundef %98, %struct.aes* noundef %99)
  store i32 0, i32* %18, align 4
  br label %101

101:                                              ; preds = %118, %96
  %102 = load i32, i32* %18, align 4
  %103 = icmp slt i32 %102, 16
  br i1 %103, label %104, label %121

104:                                              ; preds = %101
  %105 = load i8*, i8** %16, align 8
  %106 = load i32, i32* %18, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = load i32, i32* %18, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = xor i32 %115, %110
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %113, align 1
  br label %118

118:                                              ; preds = %104
  %119 = load i32, i32* %18, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %18, align 4
  br label %101, !llvm.loop !11

121:                                              ; preds = %101
  %122 = load i32, i32* %18, align 4
  store i32 %122, i32* %19, align 4
  %123 = load i8*, i8** %15, align 8
  store i8* %123, i8** %17, align 8
  %124 = load i8*, i8** %16, align 8
  store i8* %124, i8** %15, align 8
  %125 = load i8*, i8** %17, align 8
  store i8* %125, i8** %16, align 8
  br label %71

126:                                              ; preds = %78
  %127 = load i32, i32* %19, align 4
  %128 = icmp eq i32 %127, 15
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 1, i32 0
  store i32 %130, i32* %19, align 4
  %131 = load i32, i32* %19, align 4
  %132 = sub nsw i32 1, %131
  %133 = load i32, i32* %20, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %20, align 4
  %135 = load i32, i32* %20, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %126
  %138 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i32, i32* %20, align 4
  %143 = sext i32 %142 to i64
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %145 = call i64 @fwrite(i8* noundef %141, i64 noundef 1, i64 noundef %143, %struct._IO_FILE* noundef %144)
  %146 = load i32, i32* %20, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp ne i64 %145, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %137
  %150 = load i8*, i8** %11, align 8
  %151 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* noundef %150)
  store i32 -12, i32* %6, align 4
  br label %154

152:                                              ; preds = %137
  br label %153

153:                                              ; preds = %152, %126
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %153, %149, %93, %38, %25
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local signext i16 @decrypt(i8* noundef, i8* noundef, %struct.aes* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [1 x %struct.aes], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 5
  br i1 %17, label %34, label %18

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 3
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = call i32 @toupper(i32 noundef %23) #5
  %25 = icmp ne i32 %24, 68
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 3
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = call i32 @toupper(i32 noundef %31) #5
  %33 = icmp ne i32 %32, 69
  br i1 %33, label %34, label %36

34:                                               ; preds = %26, %2
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %14, align 4
  br label %181

36:                                               ; preds = %26, %18
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 4
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %8, align 8
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %104, %36
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 64
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %43, %40
  %49 = phi i1 [ false, %40 ], [ %47, %43 ]
  br i1 %49, label %50, label %105

50:                                               ; preds = %48
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %8, align 8
  %53 = load i8, i8* %51, align 1
  %54 = sext i8 %53 to i32
  %55 = call i32 @toupper(i32 noundef %54) #5
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %9, align 1
  %57 = load i8, i8* %9, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sge i32 %58, 48
  br i1 %59, label %60, label %71

60:                                               ; preds = %50
  %61 = load i8, i8* %9, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sle i32 %62, 57
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i32, i32* %12, align 4
  %66 = shl i32 %65, 4
  %67 = load i8, i8* %9, align 1
  %68 = sext i8 %67 to i32
  %69 = add nsw i32 %66, %68
  %70 = sub nsw i32 %69, 48
  store i32 %70, i32* %12, align 4
  br label %90

71:                                               ; preds = %60, %50
  %72 = load i8, i8* %9, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sge i32 %73, 65
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i8, i8* %9, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp sle i32 %77, 70
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i32, i32* %12, align 4
  %81 = shl i32 %80, 4
  %82 = load i8, i8* %9, align 1
  %83 = sext i8 %82 to i32
  %84 = add nsw i32 %81, %83
  %85 = sub nsw i32 %84, 65
  %86 = add nsw i32 %85, 10
  store i32 %86, i32* %12, align 4
  br label %89

87:                                               ; preds = %75, %71
  %88 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 -2, i32* %14, align 4
  br label %181

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %64
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  %93 = and i32 %91, 1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load i32, i32* %12, align 4
  %97 = and i32 %96, 255
  %98 = trunc i32 %97 to i8
  %99 = load i32, i32* %11, align 4
  %100 = sdiv i32 %99, 2
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 %102
  store i8 %98, i8* %103, align 1
  br label %104

104:                                              ; preds = %95, %90
  br label %40, !llvm.loop !12

105:                                              ; preds = %48
  %106 = load i8*, i8** %8, align 8
  %107 = load i8, i8* %106, align 1
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store i32 -3, i32* %14, align 4
  br label %181

111:                                              ; preds = %105
  %112 = load i32, i32* %11, align 4
  %113 = icmp slt i32 %112, 32
  br i1 %113, label %118, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %11, align 4
  %116 = and i32 %115, 15
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114, %111
  %119 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  store i32 -4, i32* %14, align 4
  br label %181

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %11, align 4
  %123 = sdiv i32 %122, 2
  store i32 %123, i32* %13, align 4
  %124 = load i8**, i8*** %5, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 1
  %126 = load i8*, i8** %125, align 8
  %127 = call noalias %struct._IO_FILE* @fopen(i8* noundef %126, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store %struct._IO_FILE* %127, %struct._IO_FILE** %6, align 8
  %128 = icmp ne %struct._IO_FILE* %127, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %121
  %130 = load i8**, i8*** %5, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* noundef %132)
  store i32 -5, i32* %14, align 4
  br label %181

134:                                              ; preds = %121
  %135 = load i8**, i8*** %5, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 2
  %137 = load i8*, i8** %136, align 8
  %138 = call noalias %struct._IO_FILE* @fopen(i8* noundef %137, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store %struct._IO_FILE* %138, %struct._IO_FILE** %7, align 8
  %139 = icmp ne %struct._IO_FILE* %138, null
  br i1 %139, label %145, label %140

140:                                              ; preds = %134
  %141 = load i8**, i8*** %5, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 1
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8* noundef %143)
  store i32 -6, i32* %14, align 4
  br label %181

145:                                              ; preds = %134
  %146 = load i8**, i8*** %5, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 3
  %148 = load i8*, i8** %147, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = call i32 @toupper(i32 noundef %150) #5
  %152 = icmp eq i32 %151, 69
  br i1 %152, label %153, label %165

153:                                              ; preds = %145
  %154 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %155 = load i32, i32* %13, align 4
  %156 = getelementptr inbounds [1 x %struct.aes], [1 x %struct.aes]* %15, i64 0, i64 0
  %157 = call signext i16 @set_key(i8* noundef %154, i32 noundef %155, i32 noundef 1, %struct.aes* noundef %156)
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %160 = getelementptr inbounds [1 x %struct.aes], [1 x %struct.aes]* %15, i64 0, i64 0
  %161 = load i8**, i8*** %5, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 1
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @encfile(%struct._IO_FILE* noundef %158, %struct._IO_FILE* noundef %159, %struct.aes* noundef %160, i8* noundef %163)
  store i32 %164, i32* %14, align 4
  br label %180

165:                                              ; preds = %145
  %166 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %167 = load i32, i32* %13, align 4
  %168 = getelementptr inbounds [1 x %struct.aes], [1 x %struct.aes]* %15, i64 0, i64 0
  %169 = call signext i16 @set_key(i8* noundef %166, i32 noundef %167, i32 noundef 2, %struct.aes* noundef %168)
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %172 = getelementptr inbounds [1 x %struct.aes], [1 x %struct.aes]* %15, i64 0, i64 0
  %173 = load i8**, i8*** %5, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i64 1
  %175 = load i8*, i8** %174, align 8
  %176 = load i8**, i8*** %5, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 2
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @decfile(%struct._IO_FILE* noundef %170, %struct._IO_FILE* noundef %171, %struct.aes* noundef %172, i8* noundef %175, i8* noundef %178)
  store i32 %179, i32* %14, align 4
  br label %180

180:                                              ; preds = %165, %153
  br label %181

181:                                              ; preds = %180, %140, %129, %118, %109, %87, %34
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %183 = icmp ne %struct._IO_FILE* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %186 = call i32 @fclose(%struct._IO_FILE* noundef %185)
  br label %187

187:                                              ; preds = %184, %181
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %189 = icmp ne %struct._IO_FILE* %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %192 = call i32 @fclose(%struct._IO_FILE* noundef %191)
  br label %193

193:                                              ; preds = %190, %187
  %194 = load i32, i32* %14, align 4
  ret i32 %194
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @toupper(i32 noundef) #3

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local signext i16 @set_key(i8* noundef, i32 noundef, i32 noundef, %struct.aes* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

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
