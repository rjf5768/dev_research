; ModuleID = './exact.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/exact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }
%struct.PLA_t = type { %struct.set_family*, %struct.set_family*, %struct.set_family*, i8*, i32, i32*, %struct.pair_struct*, i8**, %struct.symbolic_struct*, %struct.symbolic_struct* }
%struct.pair_struct = type { i32, i32*, i32* }
%struct.symbolic_struct = type { %struct.symbolic_list_struct*, i32, %struct.symbolic_label_struct*, i32, %struct.symbolic_struct* }
%struct.symbolic_list_struct = type { i32, i32, %struct.symbolic_list_struct* }
%struct.symbolic_label_struct = type { i8*, %struct.symbolic_label_struct* }

@debug = external dso_local global i32, align 4
@trace = external dso_local global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"PRIMES     \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ESSENTIALS \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"PI-TABLE   \00", align 1
@cube = external dso_local global %struct.cube_struct, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"MINCOV     \00", align 1
@skip_make_sparse = external dso_local global i32, align 4
@filename = external dso_local global i8*, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"%s.primes\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"espresso: Unable to open %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s.pi\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"# Essential primes are\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"# Totally redundant primes are\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"# Partially redundant primes are\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @minimize_exact(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2, i32 noundef %3) #0 {
  %5 = call %struct.set_family* @do_minimize(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2, i32 noundef %3, i32 noundef 0)
  ret %struct.set_family* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @minimize_exact_literals(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2, i32 noundef %3) #0 {
  %5 = call %struct.set_family* @do_minimize(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2, i32 noundef %3, i32 noundef 1)
  ret %struct.set_family* %5
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.set_family* @do_minimize(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.set_family*, align 8
  %7 = alloca %struct.set_family*, align 8
  %8 = alloca %struct.set_family*, align 8
  %9 = load i32, i32* @debug, align 4
  %10 = and i32 %9, 1024
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %14, label %11

11:                                               ; preds = %5
  %12 = load i32, i32* @debug, align 4
  %13 = or i32 %12, 2080
  store i32 %13, i32* @debug, align 4
  br label %14

14:                                               ; preds = %11, %5
  %15 = load i32, i32* @debug, align 4
  %16 = lshr i32 %15, 9
  %17 = and i32 %16, 4
  %.not6 = icmp eq i32 %3, 0
  %18 = zext i1 %.not6 to i32
  %19 = call i64 (...) @util_cpu_time() #5
  %20 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %0, %struct.set_family* noundef %1) #5
  %21 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @primes_consensus to %struct.set_family* (i32**, ...)*)(i32** noundef %20) #5
  %22 = load i32, i32* @trace, align 4
  %.not7 = icmp eq i32 %22, 0
  br i1 %.not7, label %26, label %23

23:                                               ; preds = %14
  %24 = call i64 (...) @util_cpu_time() #5
  %25 = sub nsw i64 %24, %19
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* noundef %21, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 noundef %25) #5
  br label %26

26:                                               ; preds = %23, %14
  %27 = call i64 (...) @util_cpu_time() #5
  call void (%struct.set_family*, %struct.set_family*, %struct.set_family**, %struct.set_family**, %struct.set_family**, ...) bitcast (void (...)* @irred_split_cover to void (%struct.set_family*, %struct.set_family*, %struct.set_family**, %struct.set_family**, %struct.set_family**, ...)*)(%struct.set_family* noundef %21, %struct.set_family* noundef %1, %struct.set_family** noundef nonnull %6, %struct.set_family** noundef nonnull %7, %struct.set_family** noundef nonnull %8) #5
  %28 = load i32, i32* @trace, align 4
  %.not8 = icmp eq i32 %28, 0
  br i1 %.not8, label %33, label %29

29:                                               ; preds = %26
  %30 = load %struct.set_family*, %struct.set_family** %6, align 8
  %31 = call i64 (...) @util_cpu_time() #5
  %32 = sub nsw i64 %31, %27
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* noundef %30, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 noundef %32) #5
  br label %33

33:                                               ; preds = %29, %26
  %34 = call i64 (...) @util_cpu_time() #5
  %35 = load %struct.set_family*, %struct.set_family** %6, align 8
  %36 = load %struct.set_family*, %struct.set_family** %8, align 8
  %37 = call %struct.sm_matrix_struct* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (%struct.sm_matrix_struct* (...)* @irred_derive_table to %struct.sm_matrix_struct* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %1, %struct.set_family* noundef %35, %struct.set_family* noundef %36) #5
  %38 = load i32, i32* @trace, align 4
  %.not9 = icmp eq i32 %38, 0
  br i1 %.not9, label %43, label %39

39:                                               ; preds = %33
  %40 = load %struct.set_family*, %struct.set_family** %8, align 8
  %41 = call i64 (...) @util_cpu_time() #5
  %42 = sub nsw i64 %41, %34
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* noundef %40, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 noundef %42) #5
  br label %43

43:                                               ; preds = %39, %33
  %.not10 = icmp eq i32 %4, 0
  br i1 %.not10, label %78, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i64 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 2
  %49 = call i8* @malloc(i64 noundef %48) #5
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.set_family*, %struct.set_family** %8, align 8
  %52 = getelementptr inbounds %struct.set_family, %struct.set_family* %51, i64 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds %struct.set_family, %struct.set_family* %51, i64 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.set_family, %struct.set_family* %51, i64 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %55, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %53, i64 %59
  br label %61

61:                                               ; preds = %71, %44
  %.02 = phi i32* [ %53, %44 ], [ %76, %71 ]
  %62 = icmp ult i32* %.02, %60
  br i1 %62, label %63, label %77

63:                                               ; preds = %61
  %64 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %65 = call i32 (i32*, ...) bitcast (i32 (...)* @set_ord to i32 (i32*, ...)*)(i32* noundef %.02) #5
  %66 = sub nsw i32 %64, %65
  %67 = load i32, i32* %.02, align 4
  %68 = lshr i32 %67, 16
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %50, i64 %69
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %63
  %72 = load %struct.set_family*, %struct.set_family** %8, align 8
  %73 = getelementptr inbounds %struct.set_family, %struct.set_family* %72, i64 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %.02, i64 %75
  br label %61, !llvm.loop !4

77:                                               ; preds = %61
  br label %79

78:                                               ; preds = %43
  br label %79

79:                                               ; preds = %78, %77
  %.01 = phi i32* [ %50, %77 ], [ null, %78 ]
  %80 = call i64 (...) @util_cpu_time() #5
  %81 = call %struct.sm_row_struct* (%struct.sm_matrix_struct*, i32*, i32, i32, ...) bitcast (%struct.sm_row_struct* (...)* @sm_minimum_cover to %struct.sm_row_struct* (%struct.sm_matrix_struct*, i32*, i32, i32, ...)*)(%struct.sm_matrix_struct* noundef %37, i32* noundef %.01, i32 noundef %18, i32 noundef %17) #5
  %82 = load i32, i32* @trace, align 4
  %.not11 = icmp eq i32 %82, 0
  br i1 %.not11, label %86, label %83

83:                                               ; preds = %79
  %84 = call i64 (...) @util_cpu_time() #5
  %85 = sub nsw i64 %84, %80
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* noundef %21, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 noundef %85) #5
  br label %86

86:                                               ; preds = %83, %79
  %.not12 = icmp eq i32* %.01, null
  br i1 %.not12, label %91, label %87

87:                                               ; preds = %86
  br i1 true, label %88, label %90

88:                                               ; preds = %87
  %89 = bitcast i32* %.01 to i8*
  call void @free(i8* noundef %89)
  br label %90

90:                                               ; preds = %88, %87
  br label %91

91:                                               ; preds = %90, %86
  %92 = load i32, i32* @debug, align 4
  %93 = and i32 %92, 1024
  %.not13 = icmp eq i32 %93, 0
  br i1 %.not13, label %98, label %94

94:                                               ; preds = %91
  %95 = load %struct.set_family*, %struct.set_family** %6, align 8
  %96 = load %struct.set_family*, %struct.set_family** %7, align 8
  %97 = load %struct.set_family*, %struct.set_family** %8, align 8
  call void @dump_irredundant(%struct.set_family* noundef %95, %struct.set_family* noundef %96, %struct.set_family* noundef %97, %struct.sm_matrix_struct* noundef %37)
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %100 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 100, i32 noundef %99) #5
  %101 = load %struct.set_family*, %struct.set_family** %6, align 8
  %102 = getelementptr inbounds %struct.set_family, %struct.set_family* %101, i64 0, i32 5
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds %struct.set_family, %struct.set_family* %101, i64 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.set_family, %struct.set_family* %101, i64 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %105, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %103, i64 %109
  br label %111

111:                                              ; preds = %115, %98
  %.03 = phi %struct.set_family* [ %100, %98 ], [ %114, %115 ]
  %.1 = phi i32* [ %103, %98 ], [ %120, %115 ]
  %112 = icmp ult i32* %.1, %110
  br i1 %112, label %113, label %121

113:                                              ; preds = %111
  %114 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %.03, i32* noundef %.1) #5
  br label %115

115:                                              ; preds = %113
  %116 = load %struct.set_family*, %struct.set_family** %6, align 8
  %117 = getelementptr inbounds %struct.set_family, %struct.set_family* %116, i64 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %.1, i64 %119
  br label %111, !llvm.loop !6

121:                                              ; preds = %111
  %122 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %81, i64 0, i32 3
  br label %123

123:                                              ; preds = %135, %121
  %.14 = phi %struct.set_family* [ %.03, %121 ], [ %134, %135 ]
  %.0.in = phi %struct.sm_element_struct** [ %122, %121 ], [ %136, %135 ]
  %.0 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.0.in, align 8
  %.not14 = icmp eq %struct.sm_element_struct* %.0, null
  br i1 %.not14, label %137, label %124

124:                                              ; preds = %123
  %125 = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i64 0, i32 5
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i64 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %128, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %126, i64 %132
  %134 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %.14, i32* noundef %133) #5
  br label %135

135:                                              ; preds = %124
  %136 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 4
  br label %123, !llvm.loop !7

137:                                              ; preds = %123
  %138 = load %struct.set_family*, %struct.set_family** %6, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %138) #5
  %139 = load %struct.set_family*, %struct.set_family** %7, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %139) #5
  %140 = load %struct.set_family*, %struct.set_family** %8, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %140) #5
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %37) #5
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %81) #5
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %21) #5
  %141 = load i32, i32* @debug, align 4
  %142 = and i32 %141, -10273
  store i32 %142, i32* @debug, align 4
  %143 = load i32, i32* @skip_make_sparse, align 4
  %.not15 = icmp eq i32 %143, 0
  br i1 %.not15, label %144, label %147

144:                                              ; preds = %137
  %.not16 = icmp eq %struct.set_family* %2, null
  br i1 %.not16, label %147, label %145

145:                                              ; preds = %144
  %146 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @make_sparse to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %.14, %struct.set_family* noundef %1, %struct.set_family* noundef nonnull %2) #5
  br label %147

147:                                              ; preds = %145, %144, %137
  %.2 = phi %struct.set_family* [ %.14, %137 ], [ %146, %145 ], [ %.14, %144 ]
  store i32 %9, i32* @debug, align 4
  ret %struct.set_family* %.2
}

declare dso_local i64 @util_cpu_time(...) #1

declare dso_local %struct.set_family* @primes_consensus(...) #1

declare dso_local i32** @cube2list(...) #1

declare dso_local void @print_trace(...) #1

declare dso_local void @irred_split_cover(...) #1

declare dso_local %struct.sm_matrix_struct* @irred_derive_table(...) #1

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local i32 @set_ord(...) #1

declare dso_local %struct.sm_row_struct* @sm_minimum_cover(...) #1

declare dso_local void @free(i8* noundef) #1

declare dso_local %struct.set_family* @sf_new(...) #1

declare dso_local %struct.set_family* @sf_addset(...) #1

declare dso_local void @sf_free(...) #1

declare dso_local void @sm_free(...) #1

declare dso_local void @sm_row_free(...) #1

declare dso_local %struct.set_family* @make_sparse(...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @dump_irredundant(%struct.set_family* nocapture noundef readonly %0, %struct.set_family* nocapture noundef readonly %1, %struct.set_family* nocapture noundef readonly %2, %struct.sm_matrix_struct* noundef %3) #0 {
  %5 = load i8*, i8** @filename, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = load i8*, i8** @filename, align 8
  %9 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %8, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  br label %37

13:                                               ; preds = %7
  %14 = load i8*, i8** @filename, align 8
  %15 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %14) #6
  %16 = add i64 %15, 20
  %17 = call i8* @malloc(i64 noundef %16) #5
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %17, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* noundef %14) #5
  %19 = call noalias %struct._IO_FILE* @fopen(i8* noundef %17, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #5
  %20 = icmp eq %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* noundef %17) #7
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  br label %25

25:                                               ; preds = %21, %13
  %.01 = phi %struct._IO_FILE* [ %24, %21 ], [ %19, %13 ]
  %26 = load i8*, i8** @filename, align 8
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %17, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* noundef %26) #5
  %28 = call noalias %struct._IO_FILE* @fopen(i8* noundef %17, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #5
  %29 = icmp eq %struct._IO_FILE* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* noundef %17) #7
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  br label %34

34:                                               ; preds = %30, %25
  %.03 = phi %struct._IO_FILE* [ %33, %30 ], [ %28, %25 ]
  %.not = icmp eq i8* %17, null
  br i1 %.not, label %36, label %35

35:                                               ; preds = %34
  call void @free(i8* noundef %17)
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %11
  %.14 = phi %struct._IO_FILE* [ %12, %11 ], [ %.03, %36 ]
  %.12 = phi %struct._IO_FILE* [ %12, %11 ], [ %.01, %36 ]
  %38 = call %struct.PLA_t* (...) @new_PLA() #5
  %39 = call i32 (%struct.PLA_t*, ...) bitcast (i32 (...)* @PLA_labels to i32 (%struct.PLA_t*, ...)*)(%struct.PLA_t* noundef %38) #5
  call void (%struct._IO_FILE*, %struct.PLA_t*, i32, ...) bitcast (void (...)* @fpr_header to void (%struct._IO_FILE*, %struct.PLA_t*, i32, ...)*)(%struct._IO_FILE* noundef %.12, %struct.PLA_t* noundef %38, i32 noundef 1) #5
  call void (%struct.PLA_t*, ...) bitcast (void (...)* @free_PLA to void (%struct.PLA_t*, ...)*)(%struct.PLA_t* noundef %38) #5
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %.12)
  %41 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %44, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %42, i64 %48
  br label %50

50:                                               ; preds = %55, %37
  %.0 = phi i32* [ %42, %37 ], [ %59, %55 ]
  %51 = icmp ult i32* %.0, %49
  br i1 %51, label %52, label %60

52:                                               ; preds = %50
  %53 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* noundef %.0) #5
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %.12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* noundef %53) #5
  br label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %.0, i64 %58
  br label %50, !llvm.loop !8

60:                                               ; preds = %50
  %61 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %.12)
  %62 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 %65, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %63, i64 %69
  br label %71

71:                                               ; preds = %76, %60
  %.1 = phi i32* [ %63, %60 ], [ %80, %76 ]
  %72 = icmp ult i32* %.1, %70
  br i1 %72, label %73, label %81

73:                                               ; preds = %71
  %74 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* noundef %.1) #5
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %.12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* noundef %74) #5
  br label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %.1, i64 %79
  br label %71, !llvm.loop !9

81:                                               ; preds = %71
  %82 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %.12)
  %83 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i64 0, i32 5
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i64 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i64 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %86, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %84, i64 %90
  br label %92

92:                                               ; preds = %97, %81
  %.2 = phi i32* [ %84, %81 ], [ %101, %97 ]
  %93 = icmp ult i32* %.2, %91
  br i1 %93, label %94, label %102

94:                                               ; preds = %92
  %95 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* noundef %.2) #5
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %.12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* noundef %95) #5
  br label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i64 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %.2, i64 %100
  br label %92, !llvm.loop !10

102:                                              ; preds = %92
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %.not5 = icmp eq %struct._IO_FILE* %.12, %103
  br i1 %.not5, label %106, label %104

104:                                              ; preds = %102
  %105 = call i32 @fclose(%struct._IO_FILE* noundef %.12) #5
  br label %106

106:                                              ; preds = %104, %102
  call void (%struct._IO_FILE*, %struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_write to void (%struct._IO_FILE*, %struct.sm_matrix_struct*, ...)*)(%struct._IO_FILE* noundef %.14, %struct.sm_matrix_struct* noundef %3) #5
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %.not6 = icmp eq %struct._IO_FILE* %.14, %107
  br i1 %.not6, label %110, label %108

108:                                              ; preds = %106
  %109 = call i32 @fclose(%struct._IO_FILE* noundef %.14) #5
  br label %110

110:                                              ; preds = %108, %106
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local %struct.PLA_t* @new_PLA(...) #1

declare dso_local i32 @PLA_labels(...) #1

declare dso_local void @fpr_header(...) #1

declare dso_local void @free_PLA(...) #1

declare dso_local i8* @pc1(...) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local void @sm_write(...) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { cold nounwind }

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
