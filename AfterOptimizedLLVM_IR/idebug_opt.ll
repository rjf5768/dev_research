; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/idebug.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/idebug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.gx_device_s = type opaque
%struct.dict_s = type opaque
%struct.file_entry_s = type opaque
%struct.name_s = type { %struct.name_s*, i16, i16, i8*, %struct.ref_s* }

@.str = private unnamed_addr constant [5 x i8] c"(%x)\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"array(%u)0x%lx\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"boolean %x\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"device 0x%lx\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"dict(%u/%u)0x%lx\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"file 0x%lx\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"int %ld\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"mark\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"name(0x%lx#%x)\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"op(%u)0x%lx\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"packedarray(%u)0x%lx\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"real %f\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"string(%u)0x%lx\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"type 0x%x\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@debug_dump_refs.ts = internal global [16 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0)], align 16
@.str.16 = private unnamed_addr constant [5 x i8] c"arry\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"int \00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"oper\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"pary\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"str \00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"colr\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"devc\00", align 1
@debug_dump_refs.as = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), align 8
@.str.30 = private unnamed_addr constant [17 x i8] c"xe......wr?????s\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"0x%lx: 0x%02x \00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"0x%02x?? \00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c" 0x%04x 0x%08lx\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"  =  %g\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"  =  %ld\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"%lx:\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @debug_print_ref(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  %3 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 2
  %6 = load i16, i16* %5, align 2
  %7 = zext i16 %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %11)
  %13 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %15 = load i16, i16* %14, align 8
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 255
  %18 = ashr i32 %17, 2
  switch i32 %18, label %126 [
    i32 0, label %19
    i32 1, label %27
    i32 15, label %34
    i32 2, label %41
    i32 3, label %52
    i32 5, label %59
    i32 6, label %65
    i32 7, label %67
    i32 8, label %93
    i32 9, label %95
    i32 10, label %103
    i32 11, label %111
    i32 13, label %118
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %23 = bitcast %union.v* %22 to %struct.ref_s**
  %24 = load %struct.ref_s*, %struct.ref_s** %23, align 8
  %25 = ptrtoint %struct.ref_s* %24 to i64
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 noundef %20, i64 noundef %25)
  br label %134

27:                                               ; preds = %1
  %28 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %30 = bitcast %union.v* %29 to i16*
  %31 = load i16, i16* %30, align 8
  %32 = zext i16 %31 to i32
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 noundef %32)
  br label %134

34:                                               ; preds = %1
  %35 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %37 = bitcast %union.v* %36 to %struct.gx_device_s**
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %37, align 8
  %39 = ptrtoint %struct.gx_device_s* %38 to i64
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 noundef %39)
  br label %134

41:                                               ; preds = %1
  %42 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %43 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @dict_length to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %42)
  %44 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %45 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @dict_maxlength to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %44)
  %46 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 0
  %48 = bitcast %union.v* %47 to %struct.dict_s**
  %49 = load %struct.dict_s*, %struct.dict_s** %48, align 8
  %50 = ptrtoint %struct.dict_s* %49 to i64
  %51 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %43, i32 noundef %45, i64 noundef %50)
  br label %134

52:                                               ; preds = %1
  %53 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 0
  %55 = bitcast %union.v* %54 to %struct.file_entry_s**
  %56 = load %struct.file_entry_s*, %struct.file_entry_s** %55, align 8
  %57 = ptrtoint %struct.file_entry_s* %56 to i64
  %58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 noundef %57)
  br label %134

59:                                               ; preds = %1
  %60 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i32 0, i32 0
  %62 = bitcast %union.v* %61 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 noundef %63)
  br label %134

65:                                               ; preds = %1
  %66 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %134

67:                                               ; preds = %1
  %68 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 0
  %70 = bitcast %union.v* %69 to %struct.name_s**
  %71 = load %struct.name_s*, %struct.name_s** %70, align 8
  %72 = ptrtoint %struct.name_s* %71 to i64
  %73 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 0
  %75 = bitcast %union.v* %74 to %struct.name_s**
  %76 = load %struct.name_s*, %struct.name_s** %75, align 8
  %77 = getelementptr inbounds %struct.name_s, %struct.name_s* %76, i32 0, i32 1
  %78 = load i16, i16* %77, align 8
  %79 = zext i16 %78 to i32
  %80 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i64 noundef %72, i32 noundef %79)
  %81 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i32 0, i32 0
  %83 = bitcast %union.v* %82 to %struct.name_s**
  %84 = load %struct.name_s*, %struct.name_s** %83, align 8
  %85 = getelementptr inbounds %struct.name_s, %struct.name_s* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %87, i32 0, i32 0
  %89 = bitcast %union.v* %88 to %struct.name_s**
  %90 = load %struct.name_s*, %struct.name_s** %89, align 8
  %91 = getelementptr inbounds %struct.name_s, %struct.name_s* %90, i32 0, i32 2
  %92 = load i16, i16* %91, align 2
  call void @debug_print_string(i8* noundef %86, i16 noundef zeroext %92)
  br label %134

93:                                               ; preds = %1
  %94 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %134

95:                                               ; preds = %1
  %96 = load i32, i32* %3, align 4
  %97 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %97, i32 0, i32 0
  %99 = bitcast %union.v* %98 to i32 (%struct.ref_s*)**
  %100 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %99, align 8
  %101 = ptrtoint i32 (%struct.ref_s*)* %100 to i64
  %102 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef %96, i64 noundef %101)
  br label %134

103:                                              ; preds = %1
  %104 = load i32, i32* %3, align 4
  %105 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i32 0, i32 0
  %107 = bitcast %union.v* %106 to %struct.ref_s**
  %108 = load %struct.ref_s*, %struct.ref_s** %107, align 8
  %109 = ptrtoint %struct.ref_s* %108 to i64
  %110 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef %104, i64 noundef %109)
  br label %134

111:                                              ; preds = %1
  %112 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %113 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %112, i32 0, i32 0
  %114 = bitcast %union.v* %113 to float*
  %115 = load float, float* %114, align 8
  %116 = fpext float %115 to double
  %117 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), double noundef %116)
  br label %134

118:                                              ; preds = %1
  %119 = load i32, i32* %3, align 4
  %120 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %121 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %120, i32 0, i32 0
  %122 = bitcast %union.v* %121 to i8**
  %123 = load i8*, i8** %122, align 8
  %124 = ptrtoint i8* %123 to i64
  %125 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 noundef %119, i64 noundef %124)
  br label %134

126:                                              ; preds = %1
  %127 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %128 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %127, i32 0, i32 1
  %129 = load i16, i16* %128, align 8
  %130 = zext i16 %129 to i32
  %131 = and i32 %130, 255
  %132 = ashr i32 %131, 2
  %133 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 noundef %132)
  br label %134

134:                                              ; preds = %126, %118, %111, %103, %95, %93, %67, %65, %59, %52, %41, %34, %27, %19
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @dict_length(...) #1

declare dso_local i32 @dict_maxlength(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @debug_print_string(i8* noundef %0, i16 noundef zeroext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store i8* %0, i8** %3, align 8
  store i16 %1, i16* %4, align 2
  store i16 0, i16* %5, align 2
  br label %6

6:                                                ; preds = %20, %2
  %7 = load i16, i16* %5, align 2
  %8 = zext i16 %7 to i32
  %9 = load i16, i16* %4, align 2
  %10 = zext i16 %9 to i32
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %6
  %13 = load i8*, i8** %3, align 8
  %14 = load i16, i16* %5, align 2
  %15 = zext i16 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = call i32 @putchar(i32 noundef %18)
  br label %20

20:                                               ; preds = %12
  %21 = load i16, i16* %5, align 2
  %22 = add i16 %21, 1
  store i16 %22, i16* %5, align 2
  br label %6, !llvm.loop !4

23:                                               ; preds = %6
  ret void
}

declare dso_local i32 @putchar(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @debug_dump_refs(%struct.ref_s* noundef %0, %struct.ref_s* noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ref_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %4, align 8
  store %struct.ref_s* %1, %struct.ref_s** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  store %struct.ref_s* %12, %struct.ref_s** %7, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %15 = icmp ult %struct.ref_s* %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* noundef %17)
  br label %19

19:                                               ; preds = %16, %3
  br label %20

20:                                               ; preds = %121, %19
  %21 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %23 = icmp ult %struct.ref_s* %21, %22
  br i1 %23, label %24, label %125

24:                                               ; preds = %20
  %25 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %27 = load i16, i16* %26, align 8
  %28 = zext i16 %27 to i32
  %29 = and i32 %28, 255
  %30 = ashr i32 %29, 2
  store i32 %30, i32* %8, align 4
  %31 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  %33 = load i16, i16* %32, align 8
  %34 = zext i16 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 1
  %37 = load i16, i16* %36, align 8
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, 255
  %40 = ashr i32 %39, 2
  %41 = icmp sge i32 %40, 16
  br i1 %41, label %42, label %43

42:                                               ; preds = %24
  br label %50

43:                                               ; preds = %24
  %44 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 1
  %46 = load i16, i16* %45, align 8
  %47 = zext i16 %46 to i32
  %48 = and i32 %47, 255
  %49 = ashr i32 %48, 2
  br label %50

50:                                               ; preds = %43, %42
  %51 = phi i32 [ 9, %42 ], [ %49, %43 ]
  store i32 %51, i32* %10, align 4
  %52 = load i8*, i8** @debug_dump_refs.as, align 8
  store i8* %52, i8** %11, align 8
  %53 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %54 = ptrtoint %struct.ref_s* %53 to i64
  %55 = load i32, i32* %8, align 4
  %56 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i64 noundef %54, i32 noundef %55)
  %57 = load i32, i32* %10, align 4
  %58 = icmp uge i32 %57, 16
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i32 noundef %60)
  br label %68

62:                                               ; preds = %50
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [16 x i8*], [16 x i8*]* @debug_dump_refs.ts, i64 0, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i8* noundef %66)
  br label %68

68:                                               ; preds = %62, %59
  br label %69

69:                                               ; preds = %91, %68
  %70 = load i8*, i8** %11, align 8
  %71 = load i8, i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %69
  %74 = load i8*, i8** %11, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 46
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i8*, i8** %11, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  br label %87

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %82
  %88 = phi i32 [ %85, %82 ], [ 45, %86 ]
  %89 = call i32 @putchar(i32 noundef %88)
  br label %90

90:                                               ; preds = %87, %73
  br label %91

91:                                               ; preds = %90
  %92 = load i8*, i8** %11, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %11, align 8
  %94 = load i32, i32* %9, align 4
  %95 = lshr i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %69, !llvm.loop !6

96:                                               ; preds = %69
  %97 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %97, i32 0, i32 2
  %99 = load i16, i16* %98, align 2
  %100 = zext i16 %99 to i32
  %101 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %101, i32 0, i32 0
  %103 = bitcast %union.v* %102 to i64*
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i32 noundef %100, i64 noundef %104)
  %106 = load i32, i32* %10, align 4
  switch i32 %106, label %120 [
    i32 11, label %107
    i32 5, label %114
  ]

107:                                              ; preds = %96
  %108 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %108, i32 0, i32 0
  %110 = bitcast %union.v* %109 to float*
  %111 = load float, float* %110, align 8
  %112 = fpext float %111 to double
  %113 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), double noundef %112)
  br label %121

114:                                              ; preds = %96
  %115 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %116 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %115, i32 0, i32 0
  %117 = bitcast %union.v* %116 to i64*
  %118 = load i64, i64* %117, align 8
  %119 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i64 noundef %118)
  br label %121

120:                                              ; preds = %96
  br label %121

121:                                              ; preds = %120, %114, %107
  %122 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  %123 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %124 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %123, i32 1
  store %struct.ref_s* %124, %struct.ref_s** %7, align 8
  br label %20, !llvm.loop !7

125:                                              ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @debug_dump_bytes(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* noundef %14)
  br label %16

16:                                               ; preds = %13, %3
  br label %17

17:                                               ; preds = %46, %16
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 16
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 16
  br label %31

29:                                               ; preds = %21
  %30 = load i8*, i8** %5, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i8* [ %28, %26 ], [ %30, %29 ]
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i64 noundef %34)
  br label %36

36:                                               ; preds = %40, %31
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %7, align 8
  %43 = load i8, i8* %41, align 1
  %44 = zext i8 %43 to i32
  %45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), i32 noundef %44)
  br label %36, !llvm.loop !8

46:                                               ; preds = %36
  %47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  br label %17, !llvm.loop !9

48:                                               ; preds = %17
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
