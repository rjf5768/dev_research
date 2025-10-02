; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/iname.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/iname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name_table = type { [256 x %struct.name_s*], [512 x %struct.name_s*], i32 }
%struct.name_s = type { %struct.name_s*, i16, i16, i8*, %struct.ref_s* }
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [10 x i8] c"name_init\00", align 1
@the_nt = internal global %struct.name_table* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"name_ref(string)\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/iname.c\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"name_enter failed - %s\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"name_alloc_sub\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @name_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i8* @alloc(i32 noundef 1, i32 noundef 6152, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %3 = bitcast i8* %2 to %struct.name_table*
  store %struct.name_table* %3, %struct.name_table** @the_nt, align 8
  %4 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %5 = bitcast %struct.name_table* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 6152, i1 false)
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %15, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp ult i32 %7, 256
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load i32, i32* %1, align 4
  %11 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %12 = getelementptr inbounds %struct.name_table, %struct.name_table* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %14 = call i32 @name_alloc_sub(%struct.name_table* noundef %13)
  br label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %1, align 4
  %17 = add i32 %16, 128
  store i32 %17, i32* %1, align 4
  br label %6, !llvm.loop !4

18:                                               ; preds = %6
  ret void
}

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @name_alloc_sub(%struct.name_table* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.name_table*, align 8
  %4 = alloca %struct.name_s*, align 8
  store %struct.name_table* %0, %struct.name_table** %3, align 8
  %5 = call i8* @alloc(i32 noundef 1, i32 noundef 4096, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %6 = bitcast i8* %5 to %struct.name_s*
  store %struct.name_s* %6, %struct.name_s** %4, align 8
  %7 = load %struct.name_s*, %struct.name_s** %4, align 8
  %8 = icmp eq %struct.name_s* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -25, i32* %2, align 4
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.name_s*, %struct.name_s** %4, align 8
  %12 = bitcast %struct.name_s* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 4096, i1 false)
  %13 = load %struct.name_s*, %struct.name_s** %4, align 8
  %14 = load %struct.name_table*, %struct.name_table** %3, align 8
  %15 = getelementptr inbounds %struct.name_table, %struct.name_table* %14, i32 0, i32 1
  %16 = load %struct.name_table*, %struct.name_table** %3, align 8
  %17 = getelementptr inbounds %struct.name_table, %struct.name_table* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = lshr i32 %18, 7
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [512 x %struct.name_s*], [512 x %struct.name_s*]* %15, i64 0, i64 %20
  store %struct.name_s* %13, %struct.name_s** %21, align 8
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %10, %9
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @name_ref(i8* noundef %0, i32 noundef %1, %struct.ref_s* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ref_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.name_s**, align 8
  %11 = alloca %struct.name_s*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ref_s* %2, %struct.ref_s** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %13, align 2
  %18 = load i16, i16* %13, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %59

21:                                               ; preds = %4
  %22 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %23 = getelementptr inbounds %struct.name_table, %struct.name_table* %22, i32 0, i32 1
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = ashr i32 %26, 7
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [512 x %struct.name_s*], [512 x %struct.name_s*]* %23, i64 0, i64 %28
  %30 = load %struct.name_s*, %struct.name_s** %29, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 127
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.name_s, %struct.name_s* %30, i64 %35
  store %struct.name_s* %36, %struct.name_s** %11, align 8
  %37 = load %struct.name_s*, %struct.name_s** %11, align 8
  %38 = getelementptr inbounds %struct.name_s, %struct.name_s* %37, i32 0, i32 2
  %39 = load i16, i16* %38, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %21
  %43 = load %struct.name_s*, %struct.name_s** %11, align 8
  %44 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %46 = bitcast %union.v* %45 to %struct.name_s**
  store %struct.name_s* %43, %struct.name_s** %46, align 8
  %47 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 1
  store i16 28, i16* %48, align 8
  store i32 0, i32* %5, align 4
  br label %181

49:                                               ; preds = %21
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 -21, i32* %5, align 4
  br label %181

53:                                               ; preds = %49
  %54 = load i8*, i8** %6, align 8
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i16
  %57 = load %struct.name_s*, %struct.name_s** %11, align 8
  %58 = getelementptr inbounds %struct.name_s, %struct.name_s* %57, i32 0, i32 1
  store i16 %56, i16* %58, align 8
  br label %147

59:                                               ; preds = %4
  %60 = load i8*, i8** %6, align 8
  %61 = load i16, i16* %13, align 2
  %62 = zext i16 %61 to i32
  %63 = call i32 (i8*, i32, ...) bitcast (i32 (...)* @string_hash to i32 (i8*, i32, ...)*)(i8* noundef %60, i32 noundef %62)
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %14, align 2
  %65 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %66 = getelementptr inbounds %struct.name_table, %struct.name_table* %65, i32 0, i32 0
  %67 = getelementptr inbounds [256 x %struct.name_s*], [256 x %struct.name_s*]* %66, i64 0, i64 0
  %68 = load i16, i16* %14, align 2
  %69 = zext i16 %68 to i32
  %70 = and i32 %69, 255
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.name_s*, %struct.name_s** %67, i64 %71
  store %struct.name_s** %72, %struct.name_s*** %10, align 8
  br label %73

73:                                               ; preds = %101, %59
  %74 = load %struct.name_s**, %struct.name_s*** %10, align 8
  %75 = load %struct.name_s*, %struct.name_s** %74, align 8
  store %struct.name_s* %75, %struct.name_s** %11, align 8
  %76 = icmp ne %struct.name_s* %75, null
  br i1 %76, label %77, label %104

77:                                               ; preds = %73
  %78 = load %struct.name_s*, %struct.name_s** %11, align 8
  %79 = getelementptr inbounds %struct.name_s, %struct.name_s* %78, i32 0, i32 2
  %80 = load i16, i16* %79, align 2
  %81 = zext i16 %80 to i32
  %82 = load i16, i16* %13, align 2
  %83 = zext i16 %82 to i32
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %77
  %86 = load i8*, i8** %6, align 8
  %87 = load %struct.name_s*, %struct.name_s** %11, align 8
  %88 = getelementptr inbounds %struct.name_s, %struct.name_s* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = load i16, i16* %13, align 2
  %91 = zext i16 %90 to i64
  %92 = call i32 @memcmp(i8* noundef %86, i8* noundef %89, i64 noundef %91) #6
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %85
  %95 = load %struct.name_s*, %struct.name_s** %11, align 8
  %96 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %96, i32 0, i32 0
  %98 = bitcast %union.v* %97 to %struct.name_s**
  store %struct.name_s* %95, %struct.name_s** %98, align 8
  %99 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %99, i32 0, i32 1
  store i16 28, i16* %100, align 8
  store i32 0, i32* %5, align 4
  br label %181

101:                                              ; preds = %85, %77
  %102 = load %struct.name_s*, %struct.name_s** %11, align 8
  %103 = getelementptr inbounds %struct.name_s, %struct.name_s* %102, i32 0, i32 0
  store %struct.name_s** %103, %struct.name_s*** %10, align 8
  br label %73, !llvm.loop !6

104:                                              ; preds = %73
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 -21, i32* %5, align 4
  br label %181

108:                                              ; preds = %104
  %109 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %110 = getelementptr inbounds %struct.name_table, %struct.name_table* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, 127
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %108
  %115 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %116 = call i32 @name_alloc_sub(%struct.name_table* noundef %115)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* %15, align 4
  store i32 %120, i32* %5, align 4
  br label %181

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %108
  %123 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %124 = getelementptr inbounds %struct.name_table, %struct.name_table* %123, i32 0, i32 1
  %125 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %126 = getelementptr inbounds %struct.name_table, %struct.name_table* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = lshr i32 %127, 7
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [512 x %struct.name_s*], [512 x %struct.name_s*]* %124, i64 0, i64 %129
  %131 = load %struct.name_s*, %struct.name_s** %130, align 8
  %132 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %133 = getelementptr inbounds %struct.name_table, %struct.name_table* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, 127
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.name_s, %struct.name_s* %131, i64 %136
  store %struct.name_s* %137, %struct.name_s** %11, align 8
  %138 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %139 = getelementptr inbounds %struct.name_table, %struct.name_table* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = add i32 %140, 1
  store i32 %141, i32* %139, align 8
  %142 = trunc i32 %140 to i16
  %143 = load %struct.name_s*, %struct.name_s** %11, align 8
  %144 = getelementptr inbounds %struct.name_s, %struct.name_s* %143, i32 0, i32 1
  store i16 %142, i16* %144, align 8
  %145 = load %struct.name_s*, %struct.name_s** %11, align 8
  %146 = load %struct.name_s**, %struct.name_s*** %10, align 8
  store %struct.name_s* %145, %struct.name_s** %146, align 8
  br label %147

147:                                              ; preds = %122, %53
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %147
  %151 = load i16, i16* %13, align 2
  %152 = zext i16 %151 to i32
  %153 = call i8* @alloc(i32 noundef %152, i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* %153, i8** %12, align 8
  %154 = load i8*, i8** %12, align 8
  %155 = icmp eq i8* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  store i32 -25, i32* %5, align 4
  br label %181

157:                                              ; preds = %150
  %158 = load i8*, i8** %12, align 8
  %159 = load i8*, i8** %6, align 8
  %160 = load i16, i16* %13, align 2
  %161 = zext i16 %160 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %158, i8* align 1 %159, i64 %161, i1 false)
  br label %164

162:                                              ; preds = %147
  %163 = load i8*, i8** %6, align 8
  store i8* %163, i8** %12, align 8
  br label %164

164:                                              ; preds = %162, %157
  %165 = load i16, i16* %13, align 2
  %166 = load %struct.name_s*, %struct.name_s** %11, align 8
  %167 = getelementptr inbounds %struct.name_s, %struct.name_s* %166, i32 0, i32 2
  store i16 %165, i16* %167, align 2
  %168 = load i8*, i8** %12, align 8
  %169 = load %struct.name_s*, %struct.name_s** %11, align 8
  %170 = getelementptr inbounds %struct.name_s, %struct.name_s* %169, i32 0, i32 3
  store i8* %168, i8** %170, align 8
  %171 = load %struct.name_s*, %struct.name_s** %11, align 8
  %172 = getelementptr inbounds %struct.name_s, %struct.name_s* %171, i32 0, i32 0
  store %struct.name_s* null, %struct.name_s** %172, align 8
  %173 = load %struct.name_s*, %struct.name_s** %11, align 8
  %174 = getelementptr inbounds %struct.name_s, %struct.name_s* %173, i32 0, i32 4
  store %struct.ref_s* null, %struct.ref_s** %174, align 8
  %175 = load %struct.name_s*, %struct.name_s** %11, align 8
  %176 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %177 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %176, i32 0, i32 0
  %178 = bitcast %union.v* %177 to %struct.name_s**
  store %struct.name_s* %175, %struct.name_s** %178, align 8
  %179 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %180 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %179, i32 0, i32 1
  store i16 28, i16* %180, align 8
  store i32 0, i32* %5, align 4
  br label %181

181:                                              ; preds = %164, %156, %119, %107, %94, %52, %42
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32 @string_hash(...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @name_string_ref(%struct.ref_s* noundef %0, %struct.ref_s* noundef %1) #0 {
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca %struct.name_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  store %struct.ref_s* %1, %struct.ref_s** %4, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %8 = bitcast %union.v* %7 to %struct.name_s**
  %9 = load %struct.name_s*, %struct.name_s** %8, align 8
  store %struct.name_s* %9, %struct.name_s** %5, align 8
  %10 = load %struct.name_s*, %struct.name_s** %5, align 8
  %11 = getelementptr inbounds %struct.name_s, %struct.name_s* %10, i32 0, i32 3
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %15 = bitcast %union.v* %14 to i8**
  store i8* %12, i8** %15, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  store i16 566, i16* %17, align 8
  %18 = load %struct.name_s*, %struct.name_s** %5, align 8
  %19 = getelementptr inbounds %struct.name_s, %struct.name_s* %18, i32 0, i32 2
  %20 = load i16, i16* %19, align 2
  %21 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 2
  store i16 %20, i16* %22, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @name_enter(i8* noundef %0, %struct.ref_s* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ref_s*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ref_s* %1, %struct.ref_s** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strlen(i8* noundef %6) #6
  %8 = trunc i64 %7 to i32
  %9 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %10 = call i32 @name_ref(i8* noundef %5, i32 noundef %8, %struct.ref_s* noundef %9, i32 noundef 0)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32 noundef 135)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* noundef %16)
  call void @exit(i32 noundef 1) #7
  unreachable

18:                                               ; preds = %2
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @name_index_ref(i32 noundef %0, %struct.ref_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_s*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ref_s* %1, %struct.ref_s** %4, align 8
  %5 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %6 = getelementptr inbounds %struct.name_table, %struct.name_table* %5, i32 0, i32 1
  %7 = load i32, i32* %3, align 4
  %8 = lshr i32 %7, 7
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [512 x %struct.name_s*], [512 x %struct.name_s*]* %6, i64 0, i64 %9
  %11 = load %struct.name_s*, %struct.name_s** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 127
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.name_s, %struct.name_s* %11, i64 %14
  %16 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %18 = bitcast %union.v* %17 to %struct.name_s**
  store %struct.name_s* %15, %struct.name_s** %18, align 8
  %19 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  store i16 28, i16* %20, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
