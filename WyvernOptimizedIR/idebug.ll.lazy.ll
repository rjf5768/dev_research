; ModuleID = './idebug.ll'
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
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %3 = load i16, i16* %2, align 2
  %4 = zext i16 %3 to i32
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = zext i16 %6 to i32
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %7) #3
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = lshr i16 %10, 2
  %12 = and i16 %11, 63
  %13 = zext i16 %12 to i32
  switch i32 %13, label %83 [
    i32 0, label %14
    i32 1, label %19
    i32 15, label %24
    i32 2, label %29
    i32 3, label %36
    i32 5, label %41
    i32 6, label %45
    i32 7, label %47
    i32 8, label %61
    i32 9, label %63
    i32 10, label %68
    i32 11, label %73
    i32 13, label %78
  ]

14:                                               ; preds = %1
  %15 = bitcast %struct.ref_s* %0 to %struct.ref_s**
  %16 = load %struct.ref_s*, %struct.ref_s** %15, align 8
  %17 = ptrtoint %struct.ref_s* %16 to i64
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 noundef %4, i64 noundef %17) #3
  br label %90

19:                                               ; preds = %1
  %20 = bitcast %struct.ref_s* %0 to i16*
  %21 = load i16, i16* %20, align 8
  %22 = zext i16 %21 to i32
  %23 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 noundef %22) #3
  br label %90

24:                                               ; preds = %1
  %25 = bitcast %struct.ref_s* %0 to %struct.gx_device_s**
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %25, align 8
  %27 = ptrtoint %struct.gx_device_s* %26 to i64
  %28 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 noundef %27) #3
  br label %90

29:                                               ; preds = %1
  %30 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @dict_length to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %0) #3
  %31 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @dict_maxlength to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %0) #3
  %32 = bitcast %struct.ref_s* %0 to %struct.dict_s**
  %33 = load %struct.dict_s*, %struct.dict_s** %32, align 8
  %34 = ptrtoint %struct.dict_s* %33 to i64
  %35 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %30, i32 noundef %31, i64 noundef %34) #3
  br label %90

36:                                               ; preds = %1
  %37 = bitcast %struct.ref_s* %0 to %struct.file_entry_s**
  %38 = load %struct.file_entry_s*, %struct.file_entry_s** %37, align 8
  %39 = ptrtoint %struct.file_entry_s* %38 to i64
  %40 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 noundef %39) #3
  br label %90

41:                                               ; preds = %1
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 noundef %43) #3
  br label %90

45:                                               ; preds = %1
  %46 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #3
  br label %90

47:                                               ; preds = %1
  %48 = bitcast %struct.ref_s* %0 to %struct.name_s**
  %49 = load %struct.name_s*, %struct.name_s** %48, align 8
  %50 = ptrtoint %struct.name_s* %49 to i64
  %51 = getelementptr inbounds %struct.name_s, %struct.name_s* %49, i64 0, i32 1
  %52 = load i16, i16* %51, align 8
  %53 = zext i16 %52 to i32
  %54 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i64 noundef %50, i32 noundef %53) #3
  %55 = bitcast %struct.ref_s* %0 to %struct.name_s**
  %56 = load %struct.name_s*, %struct.name_s** %55, align 8
  %57 = getelementptr inbounds %struct.name_s, %struct.name_s* %56, i64 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds %struct.name_s, %struct.name_s* %56, i64 0, i32 2
  %60 = load i16, i16* %59, align 2
  call void @debug_print_string(i8* noundef %58, i16 noundef zeroext %60)
  br label %90

61:                                               ; preds = %1
  %62 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #3
  br label %90

63:                                               ; preds = %1
  %64 = bitcast %struct.ref_s* %0 to i32 (%struct.ref_s*)**
  %65 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %64, align 8
  %66 = ptrtoint i32 (%struct.ref_s*)* %65 to i64
  %67 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef %4, i64 noundef %66) #3
  br label %90

68:                                               ; preds = %1
  %69 = bitcast %struct.ref_s* %0 to %struct.ref_s**
  %70 = load %struct.ref_s*, %struct.ref_s** %69, align 8
  %71 = ptrtoint %struct.ref_s* %70 to i64
  %72 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef %4, i64 noundef %71) #3
  br label %90

73:                                               ; preds = %1
  %74 = bitcast %struct.ref_s* %0 to float*
  %75 = load float, float* %74, align 8
  %76 = fpext float %75 to double
  %77 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), double noundef %76) #3
  br label %90

78:                                               ; preds = %1
  %79 = bitcast %struct.ref_s* %0 to i8**
  %80 = load i8*, i8** %79, align 8
  %81 = ptrtoint i8* %80 to i64
  %82 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 noundef %4, i64 noundef %81) #3
  br label %90

83:                                               ; preds = %1
  %84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %85 = load i16, i16* %84, align 8
  %86 = lshr i16 %85, 2
  %87 = and i16 %86, 63
  %88 = zext i16 %87 to i32
  %89 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 noundef %88) #3
  br label %90

90:                                               ; preds = %83, %78, %73, %68, %63, %61, %47, %45, %41, %36, %29, %24, %19, %14
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @dict_length(...) #1

declare dso_local i32 @dict_maxlength(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @debug_print_string(i8* nocapture noundef readonly %0, i16 noundef zeroext %1) #0 {
  br label %3

3:                                                ; preds = %11, %2
  %.0 = phi i16 [ 0, %2 ], [ %12, %11 ]
  %4 = icmp ult i16 %.0, %1
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = zext i16 %.0 to i64
  %7 = getelementptr inbounds i8, i8* %0, i64 %6
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = call i32 @putchar(i32 noundef %9) #3
  br label %11

11:                                               ; preds = %5
  %12 = add i16 %.0, 1
  br label %3, !llvm.loop !4

13:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @putchar(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @debug_dump_refs(%struct.ref_s* noundef %0, %struct.ref_s* noundef readnone %1, i8* noundef %2) #0 {
  %4 = icmp ult %struct.ref_s* %0, %1
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* noundef %2) #3
  br label %7

7:                                                ; preds = %5, %3
  br label %8

8:                                                ; preds = %73, %7
  %.02 = phi %struct.ref_s* [ %0, %7 ], [ %74, %73 ]
  %9 = icmp ult %struct.ref_s* %.02, %1
  br i1 %9, label %10, label %75

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = lshr i16 %12, 2
  %14 = and i16 %13, 63
  %15 = zext i16 %14 to i32
  %16 = zext i16 %12 to i32
  %17 = and i16 %12, 192
  %.not = icmp eq i16 %17, 0
  br i1 %.not, label %19, label %18

18:                                               ; preds = %10
  br label %25

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 0, i32 1
  %21 = load i16, i16* %20, align 8
  %22 = lshr i16 %21, 2
  %23 = and i16 %22, 63
  %24 = zext i16 %23 to i32
  br label %25

25:                                               ; preds = %19, %18
  %26 = phi i32 [ 9, %18 ], [ %24, %19 ]
  %27 = load i8*, i8** @debug_dump_refs.as, align 8
  %28 = ptrtoint %struct.ref_s* %.02 to i64
  %29 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i64 noundef %28, i32 noundef %15) #3
  %30 = icmp ugt i32 %26, 15
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i32 noundef %26) #3
  br label %38

33:                                               ; preds = %25
  %34 = zext i32 %26 to i64
  %35 = getelementptr inbounds [16 x i8*], [16 x i8*]* @debug_dump_refs.ts, i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i8* noundef %36) #3
  br label %38

38:                                               ; preds = %33, %31
  br label %39

39:                                               ; preds = %53, %38
  %.01 = phi i32 [ %16, %38 ], [ %55, %53 ]
  %.0 = phi i8* [ %27, %38 ], [ %54, %53 ]
  %40 = load i8, i8* %.0, align 1
  %.not3 = icmp eq i8 %40, 0
  br i1 %.not3, label %56, label %41

41:                                               ; preds = %39
  %42 = load i8, i8* %.0, align 1
  %.not4 = icmp eq i8 %42, 46
  br i1 %.not4, label %52, label %43

43:                                               ; preds = %41
  %44 = and i32 %.01, 1
  %.not5 = icmp eq i32 %44, 0
  br i1 %.not5, label %48, label %45

45:                                               ; preds = %43
  %46 = load i8, i8* %.0, align 1
  %47 = sext i8 %46 to i32
  br label %49

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi i32 [ %47, %45 ], [ 45, %48 ]
  %51 = call i32 @putchar(i32 noundef %50)
  br label %52

52:                                               ; preds = %49, %41
  br label %53

53:                                               ; preds = %52
  %54 = getelementptr inbounds i8, i8* %.0, i64 1
  %55 = lshr i32 %.01, 1
  br label %39, !llvm.loop !6

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 0, i32 2
  %58 = load i16, i16* %57, align 2
  %59 = zext i16 %58 to i32
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 0, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i32 noundef %59, i64 noundef %61) #3
  %trunc = trunc i32 %26 to i16
  switch i16 %trunc, label %72 [
    i16 11, label %63
    i16 5, label %68
  ]

63:                                               ; preds = %56
  %64 = bitcast %struct.ref_s* %.02 to float*
  %65 = load float, float* %64, align 8
  %66 = fpext float %65 to double
  %67 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), double noundef %66) #3
  br label %73

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 0, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i64 noundef %70) #3
  br label %73

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72, %68, %63
  %putchar = call i32 @putchar(i32 10)
  %74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 1
  br label %8, !llvm.loop !7

75:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @debug_dump_bytes(i8* noundef %0, i8* noundef readnone %1, i8* noundef %2) #0 {
  %4 = icmp ult i8* %0, %1
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* noundef %2) #3
  br label %7

7:                                                ; preds = %5, %3
  br label %8

8:                                                ; preds = %25, %7
  %.0 = phi i8* [ %0, %7 ], [ %.1, %25 ]
  %.not = icmp eq i8* %.0, %1
  br i1 %.not, label %26, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds i8, i8* %.0, i64 16
  %11 = icmp ult i8* %10, %1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, i8* %.0, i64 16
  br label %15

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i8* [ %13, %12 ], [ %1, %14 ]
  %17 = ptrtoint i8* %.0 to i64
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i64 noundef %17) #3
  br label %19

19:                                               ; preds = %20, %15
  %.1 = phi i8* [ %.0, %15 ], [ %21, %20 ]
  %.not1 = icmp eq i8* %.1, %16
  br i1 %.not1, label %25, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds i8, i8* %.1, i64 1
  %22 = load i8, i8* %.1, align 1
  %23 = zext i8 %22 to i32
  %24 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), i32 noundef %23) #3
  br label %19, !llvm.loop !8

25:                                               ; preds = %19
  %putchar = call i32 @putchar(i32 10)
  br label %8, !llvm.loop !9

26:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
