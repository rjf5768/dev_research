; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/FreeBench/pcompress2/uncompress.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/FreeBench/pcompress2/uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"ERROR: Could not find infile.\0A\00", align 1
@size = dso_local global i32 0, align 4
@orgpos = dso_local global i32 0, align 4
@in = dso_local global i8* null, align 8
@deari = dso_local global i8* null, align 8
@derle = dso_local global i8* null, align 8
@debw = dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"ERROR: Out of memory\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @uncompress(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 1
  %10 = load i8*, i8** %9, align 8
  %11 = call noalias %struct._IO_FILE* @fopen(i8* noundef %10, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %11, %struct._IO_FILE** %5, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %13 = icmp eq %struct._IO_FILE* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

17:                                               ; preds = %2
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %19 = call i64 @fread(i8* noundef bitcast (i32* @size to i8*), i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %18)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %21 = call i64 @fread(i8* noundef bitcast (i32* @orgpos to i8*), i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %20)
  %22 = load i32, i32* @size, align 4
  %23 = mul i32 2, %22
  %24 = zext i32 %23 to i64
  %25 = mul i64 %24, 1
  %26 = call noalias i8* @malloc(i64 noundef %25) #6
  store i8* %26, i8** @in, align 8
  %27 = load i32, i32* @size, align 4
  %28 = mul i32 2, %27
  %29 = zext i32 %28 to i64
  %30 = mul i64 %29, 1
  %31 = call noalias i8* @malloc(i64 noundef %30) #6
  store i8* %31, i8** @deari, align 8
  %32 = load i32, i32* @size, align 4
  %33 = mul i32 2, %32
  %34 = zext i32 %33 to i64
  %35 = mul i64 %34, 1
  %36 = call noalias i8* @malloc(i64 noundef %35) #6
  store i8* %36, i8** @derle, align 8
  %37 = load i32, i32* @size, align 4
  %38 = mul i32 2, %37
  %39 = zext i32 %38 to i64
  %40 = mul i64 %39, 1
  %41 = call noalias i8* @malloc(i64 noundef %40) #6
  store i8* %41, i8** @debw, align 8
  %42 = load i8*, i8** @in, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %17
  %45 = load i8*, i8** @deari, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i8*, i8** @derle, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i8*, i8** @debw, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50, %47, %44, %17
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

56:                                               ; preds = %50
  %57 = load i8*, i8** @in, align 8
  %58 = load i32, i32* @size, align 4
  %59 = mul i32 2, %58
  %60 = zext i32 %59 to i64
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %62 = call i64 @fread(i8* noundef %57, i64 noundef 1, i64 noundef %60, %struct._IO_FILE* noundef %61)
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %6, align 4
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %65 = call i32 @fclose(%struct._IO_FILE* noundef %64)
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @do_deari(i32 noundef %66)
  store i32 %67, i32* %7, align 4
  %68 = load i8*, i8** @in, align 8
  call void @free(i8* noundef %68) #6
  %69 = load i32, i32* %7, align 4
  call void @do_derle(i32 noundef %69)
  %70 = load i8*, i8** @deari, align 8
  call void @free(i8* noundef %70) #6
  call void @do_debwe()
  %71 = load i8*, i8** @derle, align 8
  call void @free(i8* noundef %71) #6
  %72 = load i8*, i8** @debw, align 8
  %73 = load i32, i32* @size, align 4
  %74 = zext i32 %73 to i64
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %76 = call i64 @fwrite(i8* noundef %72, i64 noundef 1, i64 noundef %74, %struct._IO_FILE* noundef %75)
  %77 = load i8*, i8** @debw, align 8
  call void @free(i8* noundef %77) #6
  ret void
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i32 @do_deari(i32 noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @do_derle(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %81, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %82

10:                                               ; preds = %6
  %11 = load i8*, i8** @deari, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 128
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %42, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i8*, i8** @deari, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 127
  %29 = icmp ult i32 %21, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %20
  %31 = load i8*, i8** @deari, align 8
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** @derle, align 8
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %5, align 4
  %40 = zext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  store i8 %36, i8* %41, align 1
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %4, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %20, !llvm.loop !4

45:                                               ; preds = %20
  %46 = load i32, i32* %3, align 4
  %47 = add i32 %46, 2
  store i32 %47, i32* %3, align 4
  br label %81

48:                                               ; preds = %10
  %49 = load i8*, i8** @derle, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8*, i8** @deari, align 8
  %54 = load i32, i32* %3, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8*, i8** @deari, align 8
  %59 = load i32, i32* %3, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %52, i8* align 1 %57, i64 %63, i1 false)
  %64 = load i8*, i8** @deari, align 8
  %65 = load i32, i32* %3, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load i32, i32* %5, align 4
  %71 = add i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i8*, i8** @deari, align 8
  %73 = load i32, i32* %3, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* %3, align 4
  %80 = add i32 %79, %78
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %48, %45
  br label %6, !llvm.loop !6

82:                                               ; preds = %6
  ret void
}

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal void @do_debwe() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [256 x i32], align 16
  %4 = alloca [256 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i8*, i8** @derle, align 8
  store i8* %9, i8** %1, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @size, align 4
  %11 = zext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = call noalias i8* @malloc(i64 noundef %12) #6
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %2, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %22, %0
  %16 = load i32, i32* %5, align 4
  %17 = icmp ult i32 %16, 256
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %20
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %15, !llvm.loop !7

25:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @size, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i8*, i8** %1, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %26, !llvm.loop !8

43:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %61, %43
  %45 = load i32, i32* %6, align 4
  %46 = icmp ult i32 %45, 256
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 %50
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %59
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %44, !llvm.loop !9

64:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %94, %64
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @size, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %65
  %70 = load i8*, i8** %1, align 8
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %79, %83
  %85 = load i32*, i32** %2, align 8
  %86 = load i32, i32* %6, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* %8, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %69
  %95 = load i32, i32* %6, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %65, !llvm.loop !10

97:                                               ; preds = %65
  %98 = load i8*, i8** %1, align 8
  %99 = load i32, i32* @orgpos, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = load i8*, i8** @debw, align 8
  %104 = load i32, i32* @size, align 4
  %105 = sub i32 %104, 1
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8 %102, i8* %107, align 1
  store i32 1, i32* %5, align 4
  br label %108

108:                                              ; preds = %134, %97
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @size, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %137

112:                                              ; preds = %108
  %113 = load i8*, i8** %1, align 8
  %114 = load i32*, i32** %2, align 8
  %115 = load i32, i32* @orgpos, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %113, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = load i8*, i8** @debw, align 8
  %123 = load i32, i32* @size, align 4
  %124 = load i32, i32* %5, align 4
  %125 = sub i32 %123, %124
  %126 = sub i32 %125, 1
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %122, i64 %127
  store i8 %121, i8* %128, align 1
  %129 = load i32*, i32** %2, align 8
  %130 = load i32, i32* @orgpos, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* @orgpos, align 4
  br label %134

134:                                              ; preds = %112
  %135 = load i32, i32* %5, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %5, align 4
  br label %108, !llvm.loop !11

137:                                              ; preds = %108
  %138 = load i32*, i32** %2, align 8
  %139 = bitcast i32* %138 to i8*
  call void @free(i8* noundef %139) #6
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
