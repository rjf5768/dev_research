; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/make/arscan.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/make/arscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_hdr = type { [16 x i8], [12 x i8], [6 x i8], [6 x i8], [8 x i8], [10 x i8], [2 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"!<arch>\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"`\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @ar_scan(i8* noundef %0, i64 (...)* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64 (...)*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ar_hdr, align 1
  %14 = alloca [17 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 (...)* %1, i64 (...)** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 (i8*, i32, ...) @open(i8* noundef %19, i32 noundef 0, i32 noundef 0)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i64 -1, i64* %4, align 8
  br label %135

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %27 = call i64 @read(i32 noundef %25, i8* noundef %26, i64 noundef 8)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 8
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %33 = call i32 @memcmp(i8* noundef %32, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 noundef 8) #6
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %24
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @close(i32 noundef %36)
  store i64 -2, i64* %4, align 8
  br label %135

38:                                               ; preds = %31
  store i64 8, i64* %11, align 8
  br label %39

39:                                               ; preds = %38, %131
  %40 = load i32, i32* %8, align 4
  %41 = load i64, i64* %11, align 8
  %42 = call i64 @lseek(i32 noundef %40, i64 noundef %41, i32 noundef 0) #7
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @close(i32 noundef %45)
  store i64 -2, i64* %4, align 8
  br label %135

47:                                               ; preds = %39
  %48 = load i32, i32* %8, align 4
  %49 = bitcast %struct.ar_hdr* %13 to i8*
  %50 = call i64 @read(i32 noundef %48, i8* noundef %49, i64 noundef 60)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %132

55:                                               ; preds = %47
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ne i64 %57, 60
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %13, i32 0, i32 6
  %61 = getelementptr inbounds [2 x i8], [2 x i8]* %60, i64 0, i64 0
  %62 = call i32 @memcmp(i8* noundef %61, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 noundef 2) #6
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59, %55
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @close(i32 noundef %65)
  store i64 -2, i64* %4, align 8
  br label %135

67:                                               ; preds = %59
  %68 = getelementptr inbounds [17 x i8], [17 x i8]* %14, i64 0, i64 0
  %69 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %13, i32 0, i32 0
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %69, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %68, i8* align 1 %70, i64 16, i1 false)
  %71 = getelementptr inbounds [17 x i8], [17 x i8]* %14, i64 0, i64 0
  %72 = getelementptr inbounds i8, i8* %71, i64 16
  store i8* %72, i8** %18, align 8
  br label %73

73:                                               ; preds = %85, %67
  %74 = load i8*, i8** %18, align 8
  %75 = getelementptr inbounds [17 x i8], [17 x i8]* %14, i64 0, i64 0
  %76 = icmp ugt i8* %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i8*, i8** %18, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 -1
  store i8* %79, i8** %18, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 32
  br label %83

83:                                               ; preds = %77, %73
  %84 = phi i1 [ false, %73 ], [ %82, %77 ]
  br i1 %84, label %85, label %87

85:                                               ; preds = %83
  %86 = load i8*, i8** %18, align 8
  store i8 0, i8* %86, align 1
  br label %73, !llvm.loop !4

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %13, i32 0, i32 4
  %89 = getelementptr inbounds [8 x i8], [8 x i8]* %88, i64 0, i64 0
  %90 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %89, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef %16) #7
  %91 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %13, i32 0, i32 5
  %92 = getelementptr inbounds [10 x i8], [10 x i8]* %91, i64 0, i64 0
  %93 = call i64 @atol(i8* noundef %92) #6
  store i64 %93, i64* %15, align 8
  %94 = load i64 (...)*, i64 (...)** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = getelementptr inbounds [17 x i8], [17 x i8]* %14, i64 0, i64 0
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %11, align 8
  %99 = add i64 %98, 60
  %100 = load i64, i64* %15, align 8
  %101 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %13, i32 0, i32 1
  %102 = getelementptr inbounds [12 x i8], [12 x i8]* %101, i64 0, i64 0
  %103 = call i64 @atol(i8* noundef %102) #6
  %104 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %13, i32 0, i32 2
  %105 = getelementptr inbounds [6 x i8], [6 x i8]* %104, i64 0, i64 0
  %106 = call i32 @atoi(i8* noundef %105) #6
  %107 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %13, i32 0, i32 3
  %108 = getelementptr inbounds [6 x i8], [6 x i8]* %107, i64 0, i64 0
  %109 = call i32 @atoi(i8* noundef %108) #6
  %110 = load i32, i32* %16, align 4
  %111 = load i64, i64* %7, align 8
  %112 = bitcast i64 (...)* %94 to i64 (i32, i8*, i64, i64, i64, i64, i32, i32, i32, i64, ...)*
  %113 = call i64 (i32, i8*, i64, i64, i64, i64, i32, i32, i32, i64, ...) %112(i32 noundef %95, i8* noundef %96, i64 noundef %97, i64 noundef %99, i64 noundef %100, i64 noundef %103, i32 noundef %106, i32 noundef %109, i32 noundef %110, i64 noundef %111)
  store i64 %113, i64* %17, align 8
  %114 = load i64, i64* %17, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %87
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @close(i32 noundef %117)
  %119 = load i64, i64* %17, align 8
  store i64 %119, i64* %4, align 8
  br label %135

120:                                              ; preds = %87
  %121 = load i64, i64* %15, align 8
  %122 = add i64 60, %121
  %123 = load i64, i64* %11, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %11, align 8
  %125 = load i64, i64* %11, align 8
  %126 = and i64 %125, 1
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load i64, i64* %11, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %11, align 8
  br label %131

131:                                              ; preds = %128, %120
  br label %39

132:                                              ; preds = %54
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @close(i32 noundef %133)
  store i64 0, i64* %4, align 8
  br label %135

135:                                              ; preds = %132, %116, %64, %44, %35, %23
  %136 = load i64, i64* %4, align 8
  ret i64 %136
}

declare dso_local i32 @open(i8* noundef, i32 noundef, ...) #1

declare dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @close(i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @atol(i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ar_name_equal(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @strrchr(i8* noundef %9, i32 noundef 47) #6
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %15, i8** %4, align 8
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strncmp(i8* noundef %17, i8* noundef %18, i64 noundef 15) #6
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %69

22:                                               ; preds = %16
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strncmp(i8* noundef %23, i8* noundef %24, i64 noundef 13) #6
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %68, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @strlen(i8* noundef %28) #6
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @strlen(i8* noundef %31) #6
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 15
  br i1 %35, label %36, label %67

36:                                               ; preds = %27
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 13
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 46
  br i1 %41, label %42, label %67

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 14
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 111
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sub i32 %50, 2
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 46
  br i1 %56, label %57, label %67

57:                                               ; preds = %48
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sub i32 %59, 1
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 111
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %69

67:                                               ; preds = %57, %48, %42, %36, %27
  br label %68

68:                                               ; preds = %67, %22
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %66, %21
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ar_member_touch(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ar_hdr, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = call i64 @ar_scan(i8* noundef %11, i64 (...)* noundef bitcast (i64 (i32, i8*, i64, i64, i64, i64, i32, i32, i32, i8*)* @ar_member_pos to i64 (...)*), i64 noundef %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %97

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %97

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 (i8*, i32, ...) @open(i8* noundef %25, i32 noundef 2, i32 noundef 438)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -3, i32* %3, align 4
  br label %97

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @lseek(i32 noundef %31, i64 noundef %32, i32 noundef 0) #7
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %90

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = bitcast %struct.ar_hdr* %8 to i8*
  %39 = call i64 @read(i32 noundef %37, i8* noundef %38, i64 noundef 60)
  %40 = icmp ne i64 60, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %90

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @lseek(i32 noundef %43, i64 noundef %44, i32 noundef 0) #7
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %90

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = bitcast %struct.ar_hdr* %8 to i8*
  %51 = call i64 @write(i32 noundef %49, i8* noundef %50, i64 noundef 60)
  %52 = icmp ne i64 60, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %90

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @fstat(i32 noundef %55, %struct.stat* noundef %10) #7
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %66, %54
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %59, 12
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %8, i32 0, i32 1
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [12 x i8], [12 x i8]* %62, i64 0, i64 %64
  store i8 32, i8* %65, align 1
  br label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %57, !llvm.loop !6

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %8, i32 0, i32 1
  %71 = getelementptr inbounds [12 x i8], [12 x i8]* %70, i64 0, i64 0
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 12
  %73 = getelementptr inbounds %struct.timespec, %struct.timespec* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %71, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 noundef %74) #7
  %76 = load i32, i32* %7, align 4
  %77 = load i64, i64* %6, align 8
  %78 = call i64 @lseek(i32 noundef %76, i64 noundef %77, i32 noundef 0) #7
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %90

81:                                               ; preds = %69
  %82 = load i32, i32* %7, align 4
  %83 = bitcast %struct.ar_hdr* %8 to i8*
  %84 = call i64 @write(i32 noundef %82, i8* noundef %83, i64 noundef 60)
  %85 = icmp ne i64 60, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %90

87:                                               ; preds = %81
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @close(i32 noundef %88)
  store i32 0, i32* %3, align 4
  br label %97

90:                                               ; preds = %86, %80, %53, %47, %41, %35
  %91 = call i32* @__errno_location() #8
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @close(i32 noundef %93)
  %95 = load i32, i32* %9, align 4
  %96 = call i32* @__errno_location() #8
  store i32 %95, i32* %96, align 4
  store i32 -3, i32* %3, align 4
  br label %97

97:                                               ; preds = %90, %87, %29, %23, %17
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @ar_member_pos(i32 noundef %0, i8* noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i8* noundef %9) #0 {
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store i32 %0, i32* %12, align 4
  store i8* %1, i8** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i8* %9, i8** %21, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = call i32 @ar_name_equal(i8* noundef %22, i8* noundef %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %10
  store i64 0, i64* %11, align 8
  br label %29

27:                                               ; preds = %10
  %28 = load i64, i64* %14, align 8
  store i64 %28, i64* %11, align 8
  br label %29

29:                                               ; preds = %27, %26
  %30 = load i64, i64* %11, align 8
  ret i64 %30
}

declare dso_local i64 @write(i32 noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32 noundef, %struct.stat* noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
