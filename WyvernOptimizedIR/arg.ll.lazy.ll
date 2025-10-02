; ModuleID = './arg.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/d/arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ArgumentState = type { i8**, i32, i8*, %struct.ArgumentDescription* }
%struct.ArgumentDescription = type { i8*, i8, i8*, i8*, i8*, i8*, void (%struct.ArgumentState*, i8*)* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [29 x i8] c"%s:bad argument description\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Usage: %s [flags|args]\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"  %c%c%c --%s%s%s\00", align 1
@SPACES = internal global i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.14, i32 0, i32 0), align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@arg_types_desc = internal global [9 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0)], align 16
@arg_types_keys = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" %-9lld\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" %-9s\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" %-7s..\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" (null)   \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" %-9.3e\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" %-9d\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"true \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [80 x i8] c"                                                                               \00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"int     \00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"string  \00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"double  \00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"set off \00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"set on  \00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"incr    \00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"toggle  \00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"int64   \00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"ISDfF+TL\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @process_arg(%struct.ArgumentState* noundef %0, i32 noundef %1, i8*** nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %0, i64 0, i32 3
  %5 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %4, align 8
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %6, i32 3
  %8 = load i8*, i8** %7, align 8
  %.not = icmp eq i8* %8, null
  br i1 %.not, label %104, label %9

9:                                                ; preds = %3
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %10, i32 3
  %12 = load i8*, i8** %11, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 70
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = icmp eq i8 %13, 102
  br i1 %16, label %17, label %24

17:                                               ; preds = %15, %9
  %18 = icmp eq i8 %13, 70
  %19 = zext i1 %18 to i32
  %20 = sext i32 %1 to i64
  %21 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %20, i32 4
  %22 = bitcast i8** %21 to i32**
  %23 = load i32*, i32** %22, align 8
  store i32 %19, i32* %23, align 4
  br label %103

24:                                               ; preds = %15
  %25 = icmp eq i8 %13, 84
  br i1 %25, label %26, label %37

26:                                               ; preds = %24
  %27 = sext i32 %1 to i64
  %28 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %27, i32 4
  %29 = bitcast i8** %28 to i32**
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %30, align 4
  %.not4 = icmp eq i32 %31, 0
  %32 = zext i1 %.not4 to i32
  %33 = sext i32 %1 to i64
  %34 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %33, i32 4
  %35 = bitcast i8** %34 to i32**
  %36 = load i32*, i32** %35, align 8
  store i32 %32, i32* %36, align 4
  br label %102

37:                                               ; preds = %24
  %38 = icmp eq i8 %13, 43
  br i1 %38, label %39, label %46

39:                                               ; preds = %37
  %40 = sext i32 %1 to i64
  %41 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %40, i32 4
  %42 = bitcast i8** %41 to i32**
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %101

46:                                               ; preds = %37
  %47 = load i8**, i8*** %2, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %47, align 8
  %50 = load i8, i8* %49, align 1
  %.not2 = icmp eq i8 %50, 0
  br i1 %.not2, label %53, label %51

51:                                               ; preds = %46
  %52 = load i8**, i8*** %2, align 8
  br label %56

53:                                               ; preds = %46
  %54 = load i8**, i8*** %2, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  store i8** %55, i8*** %2, align 8
  br label %56

56:                                               ; preds = %53, %51
  %.in = phi i8** [ %52, %51 ], [ %55, %53 ]
  %57 = load i8*, i8** %.in, align 8
  %.not3 = icmp eq i8* %57, null
  br i1 %.not3, label %58, label %59

58:                                               ; preds = %56
  call void @usage(%struct.ArgumentState* noundef %0, i8* noundef null)
  br label %59

59:                                               ; preds = %58, %56
  %60 = sext i8 %13 to i32
  switch i32 %60, label %90 [
    i32 73, label %61
    i32 68, label %67
    i32 76, label %73
    i32 83, label %79
  ]

61:                                               ; preds = %59
  %62 = call i32 @atoi(i8* noundef %57) #7
  %63 = sext i32 %1 to i64
  %64 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %63, i32 4
  %65 = bitcast i8** %64 to i32**
  %66 = load i32*, i32** %65, align 8
  store i32 %62, i32* %66, align 4
  br label %95

67:                                               ; preds = %59
  %68 = call double @atof(i8* noundef %57) #7
  %69 = sext i32 %1 to i64
  %70 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %69, i32 4
  %71 = bitcast i8** %70 to double**
  %72 = load double*, double** %71, align 8
  store double %68, double* %72, align 8
  br label %95

73:                                               ; preds = %59
  %74 = call i64 @atol(i8* noundef %57) #7
  %75 = sext i32 %1 to i64
  %76 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %75, i32 4
  %77 = bitcast i8** %76 to i64**
  %78 = load i64*, i64** %77, align 8
  store i64 %74, i64* %78, align 8
  br label %95

79:                                               ; preds = %59
  %80 = sext i32 %1 to i64
  %81 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %80, i32 4
  %82 = load i8*, i8** %81, align 8
  %83 = sext i32 %1 to i64
  %84 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %83, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = call i32 @atoi(i8* noundef nonnull %86) #7
  %88 = sext i32 %87 to i64
  %89 = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) %82, i8* noundef %57, i64 noundef %88) #8
  br label %95

90:                                               ; preds = %59
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %92 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %0, i64 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %91, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef %93) #9
  call void @exit(i32 noundef 1) #10
  unreachable

95:                                               ; preds = %79, %73, %67, %61
  %96 = load i8**, i8*** %2, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %97) #7
  %99 = add i64 %98, -1
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8* %100, i8** %96, align 8
  br label %101

101:                                              ; preds = %95, %39
  %.0 = phi i8* [ null, %39 ], [ %57, %95 ]
  br label %102

102:                                              ; preds = %101, %26
  %.1 = phi i8* [ null, %26 ], [ %.0, %101 ]
  br label %103

103:                                              ; preds = %102, %17
  %.2 = phi i8* [ null, %17 ], [ %.1, %102 ]
  br label %104

104:                                              ; preds = %103, %3
  %.3 = phi i8* [ %.2, %103 ], [ null, %3 ]
  %105 = sext i32 %1 to i64
  %106 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %105, i32 6
  %107 = load void (%struct.ArgumentState*, i8*)*, void (%struct.ArgumentState*, i8*)** %106, align 8
  %.not1 = icmp eq void (%struct.ArgumentState*, i8*)* %107, null
  br i1 %.not1, label %112, label %108

108:                                              ; preds = %104
  %109 = sext i32 %1 to i64
  %110 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %109, i32 6
  %111 = load void (%struct.ArgumentState*, i8*)*, void (%struct.ArgumentState*, i8*)** %110, align 8
  call void %111(%struct.ArgumentState* noundef %0, i8* noundef %.3) #8
  br label %112

112:                                              ; preds = %108, %104
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @usage(%struct.ArgumentState* nocapture noundef readonly %0, i8* nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %0, i64 0, i32 3
  %4 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %3, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %0, i64 0, i32 2
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* noundef %7) #9
  br label %9

9:                                                ; preds = %162, %2
  %.0 = phi i32 [ 0, %2 ], [ %163, %162 ]
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %10, i32 0
  %12 = load i8*, i8** %11, align 8
  %.not = icmp eq i8* %12, null
  br i1 %.not, label %13, label %14

13:                                               ; preds = %9
  br label %164

14:                                               ; preds = %9
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %15, i32 2
  %17 = load i8*, i8** %16, align 8
  %.not1 = icmp eq i8* %17, null
  br i1 %.not1, label %18, label %19

18:                                               ; preds = %14
  br label %162

19:                                               ; preds = %14
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %21, i32 1
  %23 = load i8, i8* %22, align 8
  %.not2 = icmp eq i8 %23, 32
  %24 = select i1 %.not2, i32 32, i32 45
  %25 = zext i32 %.0 to i64
  %26 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %25, i32 1
  %27 = load i8, i8* %26, align 8
  %28 = sext i8 %27 to i32
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %29, i32 1
  %31 = load i8, i8* %30, align 8
  %.not3 = icmp eq i8 %31, 32
  %32 = select i1 %.not3, i32 32, i32 44
  %33 = zext i32 %.0 to i64
  %34 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %33, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = zext i32 %.0 to i64
  %37 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %36, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %38) #7
  %40 = add i64 %39, 61
  %41 = icmp ult i64 %40, 81
  br i1 %41, label %42, label %50

42:                                               ; preds = %19
  %43 = load i8*, i8** @SPACES, align 8
  %44 = zext i32 %.0 to i64
  %45 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %44, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %46) #7
  %48 = add i64 %47, 61
  %49 = getelementptr inbounds i8, i8* %43, i64 %48
  br label %51

50:                                               ; preds = %19
  br label %51

51:                                               ; preds = %50, %42
  %52 = phi i8* [ %49, %42 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %50 ]
  %53 = zext i32 %.0 to i64
  %54 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %53, i32 3
  %55 = load i8*, i8** %54, align 8
  %.not4 = icmp eq i8* %55, null
  br i1 %.not4, label %68, label %56

56:                                               ; preds = %51
  %57 = load i8*, i8** @arg_types_keys, align 8
  %58 = zext i32 %.0 to i64
  %59 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %58, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %57, i32 noundef %62) #7
  %64 = load i8*, i8** @arg_types_keys, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  br label %71

68:                                               ; preds = %51
  %69 = load i8*, i8** @arg_types_keys, align 8
  %70 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %69) #7
  br label %71

71:                                               ; preds = %68, %56
  %72 = phi i64 [ %67, %56 ], [ %70, %68 ]
  %73 = getelementptr inbounds [9 x i8*], [9 x i8*]* @arg_types_desc, i64 0, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef %24, i32 noundef %28, i32 noundef %32, i8* noundef %35, i8* noundef %52, i8* noundef %74) #9
  %76 = zext i32 %.0 to i64
  %77 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %76, i32 3
  %78 = load i8*, i8** %77, align 8
  %.not5 = icmp eq i8* %78, null
  br i1 %.not5, label %85, label %79

79:                                               ; preds = %71
  %80 = zext i32 %.0 to i64
  %81 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %80, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  br label %86

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85, %79
  %87 = phi i32 [ %84, %79 ], [ 0, %85 ]
  switch i32 %87, label %156 [
    i32 0, label %88
    i32 76, label %91
    i32 83, label %99
    i32 68, label %131
    i32 43, label %139
    i32 73, label %139
    i32 84, label %147
    i32 102, label %147
    i32 70, label %147
  ]

88:                                               ; preds = %86
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %90 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %89) #11
  br label %156

91:                                               ; preds = %86
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %93 = zext i32 %.0 to i64
  %94 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %93, i32 4
  %95 = bitcast i8** %94 to i64**
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %92, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 noundef %97) #9
  br label %156

99:                                               ; preds = %86
  %100 = zext i32 %.0 to i64
  %101 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %100, i32 4
  %102 = load i8*, i8** %101, align 8
  %103 = load i8, i8* %102, align 1
  %.not7 = icmp eq i8 %103, 0
  br i1 %.not7, label %127, label %104

104:                                              ; preds = %99
  %105 = zext i32 %.0 to i64
  %106 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %105, i32 4
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %107) #7
  %109 = icmp ult i64 %108, 10
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %112 = zext i32 %.0 to i64
  %113 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %112, i32 4
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %111, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* noundef %114) #9
  br label %126

116:                                              ; preds = %104
  %117 = zext i32 %.0 to i64
  %118 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %117, i32 4
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 7
  store i8 0, i8* %120, align 1
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %122 = zext i32 %.0 to i64
  %123 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %122, i32 4
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %121, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* noundef %124) #9
  br label %126

126:                                              ; preds = %116, %110
  br label %130

127:                                              ; preds = %99
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %129 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %128) #11
  br label %130

130:                                              ; preds = %127, %126
  br label %156

131:                                              ; preds = %86
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %133 = zext i32 %.0 to i64
  %134 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %133, i32 4
  %135 = bitcast i8** %134 to double**
  %136 = load double*, double** %135, align 8
  %137 = load double, double* %136, align 8
  %138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %132, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), double noundef %137) #9
  br label %156

139:                                              ; preds = %86, %86
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %141 = zext i32 %.0 to i64
  %142 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %141, i32 4
  %143 = bitcast i8** %142 to i32**
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %140, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 noundef %145) #9
  br label %156

147:                                              ; preds = %86, %86, %86
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %149 = zext i32 %.0 to i64
  %150 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %149, i32 4
  %151 = bitcast i8** %150 to i32**
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %152, align 4
  %.not6 = icmp eq i32 %153, 0
  %154 = select i1 %.not6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)
  %155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %148, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* noundef %154) #9
  br label %156

156:                                              ; preds = %147, %139, %131, %130, %91, %88, %86
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %158 = zext i32 %.0 to i64
  %159 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %4, i64 %158, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %157, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* noundef %160) #9
  br label %162

162:                                              ; preds = %156, %18
  %163 = add nuw nsw i32 %.0, 1
  br label %9

164:                                              ; preds = %13
  call void @exit(i32 noundef 1) #10
  unreachable
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local double @atof(i8* noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @atol(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @process_args(%struct.ArgumentState* noundef %0, i8** noundef %1) #0 {
  %3 = alloca i8**, align 8
  store i8** %1, i8*** %3, align 8
  %4 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %0, i64 0, i32 3
  %5 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %4, align 8
  br label %6

6:                                                ; preds = %67, %2
  %.01 = phi i32 [ 0, %2 ], [ %68, %67 ]
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %7, i32 0
  %9 = load i8*, i8** %8, align 8
  %.not = icmp eq i8* %9, null
  br i1 %.not, label %10, label %11

10:                                               ; preds = %6
  br label %69

11:                                               ; preds = %6
  %12 = zext i32 %.01 to i64
  %13 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %12, i32 5
  %14 = load i8*, i8** %13, align 8
  %.not10 = icmp eq i8* %14, null
  br i1 %.not10, label %66, label %15

15:                                               ; preds = %11
  %16 = zext i32 %.01 to i64
  %17 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %16, i32 3
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i32 %.01 to i64
  %21 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %20, i32 5
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @getenv(i8* noundef %22) #8
  %.not11 = icmp eq i8* %23, null
  br i1 %.not11, label %24, label %25

24:                                               ; preds = %15
  br label %67

25:                                               ; preds = %15
  %26 = sext i8 %19 to i32
  switch i32 %26, label %57 [
    i32 65, label %27
    i32 102, label %27
    i32 70, label %27
    i32 73, label %28
    i32 68, label %35
    i32 76, label %41
    i32 83, label %47
  ]

27:                                               ; preds = %25, %25, %25
  br label %57

28:                                               ; preds = %25
  %29 = call i64 @strtol(i8* nocapture noundef nonnull %23, i8** noundef null, i32 noundef 0) #8
  %30 = trunc i64 %29 to i32
  %31 = zext i32 %.01 to i64
  %32 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %31, i32 4
  %33 = bitcast i8** %32 to i32**
  %34 = load i32*, i32** %33, align 8
  store i32 %30, i32* %34, align 4
  br label %57

35:                                               ; preds = %25
  %36 = call double @strtod(i8* nocapture noundef nonnull %23, i8** noundef null) #8
  %37 = zext i32 %.01 to i64
  %38 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %37, i32 4
  %39 = bitcast i8** %38 to double**
  %40 = load double*, double** %39, align 8
  store double %36, double* %40, align 8
  br label %57

41:                                               ; preds = %25
  %42 = call i64 @strtoll(i8* nocapture noundef nonnull %23, i8** noundef null, i32 noundef 0) #8
  %43 = zext i32 %.01 to i64
  %44 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %43, i32 4
  %45 = bitcast i8** %44 to i64**
  %46 = load i64*, i64** %45, align 8
  store i64 %42, i64* %46, align 8
  br label %57

47:                                               ; preds = %25
  %48 = zext i32 %.01 to i64
  %49 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %48, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = zext i32 %.01 to i64
  %52 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %51, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = call i64 @strtol(i8* nocapture noundef nonnull %54, i8** noundef null, i32 noundef 0) #8
  %56 = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) %50, i8* noundef nonnull %23, i64 noundef %55) #8
  br label %57

57:                                               ; preds = %47, %41, %35, %28, %27, %25
  %58 = zext i32 %.01 to i64
  %59 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %58, i32 6
  %60 = load void (%struct.ArgumentState*, i8*)*, void (%struct.ArgumentState*, i8*)** %59, align 8
  %.not12 = icmp eq void (%struct.ArgumentState*, i8*)* %60, null
  br i1 %.not12, label %65, label %61

61:                                               ; preds = %57
  %62 = zext i32 %.01 to i64
  %63 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %62, i32 6
  %64 = load void (%struct.ArgumentState*, i8*)*, void (%struct.ArgumentState*, i8*)** %63, align 8
  call void %64(%struct.ArgumentState* noundef %0, i8* noundef nonnull %23) #8
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65, %11
  br label %67

67:                                               ; preds = %66, %24
  %68 = add nuw nsw i32 %.01, 1
  br label %6

69:                                               ; preds = %10
  %70 = load i8**, i8*** %3, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %0, i64 0, i32 2
  store i8* %71, i8** %72, align 8
  br label %73

73:                                               ; preds = %191, %69
  %74 = load i8**, i8*** %3, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  store i8** %75, i8*** %3, align 8
  %76 = load i8*, i8** %75, align 8
  %.not2 = icmp eq i8* %76, null
  br i1 %.not2, label %192, label %77

77:                                               ; preds = %73
  %78 = load i8**, i8*** %3, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = load i8, i8* %79, align 1
  %81 = icmp eq i8 %80, 45
  br i1 %81, label %82, label %168

82:                                               ; preds = %77
  %83 = load i8**, i8*** %3, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = icmp eq i8 %86, 45
  br i1 %87, label %88, label %141

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %138, %88
  %.1 = phi i32 [ 0, %88 ], [ %139, %138 ]
  %90 = zext i32 %.1 to i64
  %91 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %90, i32 0
  %92 = load i8*, i8** %91, align 8
  %.not5 = icmp eq i8* %92, null
  br i1 %.not5, label %93, label %94

93:                                               ; preds = %89
  call void @usage(%struct.ArgumentState* noundef %0, i8* noundef null)
  br label %94

94:                                               ; preds = %93, %89
  %95 = load i8**, i8*** %3, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  %98 = call i8* @strchr(i8* noundef nonnull %97, i32 noundef 61) #7
  %.not6 = icmp eq i8* %98, null
  br i1 %.not6, label %106, label %99

99:                                               ; preds = %94
  %100 = load i8**, i8*** %3, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  %103 = ptrtoint i8* %98 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  br label %111

106:                                              ; preds = %94
  %107 = load i8**, i8*** %3, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 2
  %110 = call i64 @strlen(i8* noundef nonnull %109) #7
  br label %111

111:                                              ; preds = %106, %99
  %.0.in = phi i64 [ %105, %99 ], [ %110, %106 ]
  %sext = shl i64 %.0.in, 32
  %112 = ashr exact i64 %sext, 32
  %113 = zext i32 %.1 to i64
  %114 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %113, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %115) #7
  %117 = icmp eq i64 %112, %116
  br i1 %117, label %118, label %137

118:                                              ; preds = %111
  %119 = zext i32 %.1 to i64
  %120 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %119, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i8**, i8*** %3, align 8
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 2
  %sext7 = shl i64 %.0.in, 32
  %125 = ashr exact i64 %sext7, 32
  %126 = call i32 @strncmp(i8* noundef %121, i8* noundef nonnull %124, i64 noundef %125) #7
  %.not8 = icmp eq i32 %126, 0
  br i1 %.not8, label %127, label %137

127:                                              ; preds = %118
  %.not9 = icmp eq i8* %98, null
  br i1 %.not9, label %128, label %134

128:                                              ; preds = %127
  %129 = load i8**, i8*** %3, align 8
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %130) #7
  %132 = add i64 %131, -1
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  store i8* %133, i8** %129, align 8
  br label %136

134:                                              ; preds = %127
  %135 = load i8**, i8*** %3, align 8
  store i8* %98, i8** %135, align 8
  br label %136

136:                                              ; preds = %134, %128
  call void @process_arg(%struct.ArgumentState* noundef %0, i32 noundef %.1, i8*** noundef nonnull %3)
  br label %140

137:                                              ; preds = %118, %111
  br label %138

138:                                              ; preds = %137
  %139 = add nuw nsw i32 %.1, 1
  br label %89

140:                                              ; preds = %136
  br label %167

141:                                              ; preds = %82
  br label %142

142:                                              ; preds = %165, %141
  %143 = load i8**, i8*** %3, align 8
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  store i8* %145, i8** %143, align 8
  %146 = load i8, i8* %145, align 1
  %.not3 = icmp eq i8 %146, 0
  br i1 %.not3, label %166, label %147

147:                                              ; preds = %142
  br label %148

148:                                              ; preds = %163, %147
  %.2 = phi i32 [ 0, %147 ], [ %164, %163 ]
  %149 = zext i32 %.2 to i64
  %150 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %149, i32 0
  %151 = load i8*, i8** %150, align 8
  %.not4 = icmp eq i8* %151, null
  br i1 %.not4, label %152, label %153

152:                                              ; preds = %148
  call void @usage(%struct.ArgumentState* noundef %0, i8* noundef null)
  br label %153

153:                                              ; preds = %152, %148
  %154 = zext i32 %.2 to i64
  %155 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %5, i64 %154, i32 1
  %156 = load i8, i8* %155, align 8
  %157 = load i8**, i8*** %3, align 8
  %158 = load i8*, i8** %157, align 8
  %159 = load i8, i8* %158, align 1
  %160 = icmp eq i8 %156, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  call void @process_arg(%struct.ArgumentState* noundef %0, i32 noundef %.2, i8*** noundef nonnull %3)
  br label %165

162:                                              ; preds = %153
  br label %163

163:                                              ; preds = %162
  %164 = add nuw nsw i32 %.2, 1
  br label %148

165:                                              ; preds = %161
  br label %142, !llvm.loop !4

166:                                              ; preds = %142
  br label %167

167:                                              ; preds = %166, %140
  br label %191

168:                                              ; preds = %77
  %169 = bitcast %struct.ArgumentState* %0 to i8**
  %170 = load i8*, i8** %169, align 8
  %171 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %0, i64 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 2
  %174 = sext i32 %173 to i64
  %175 = shl nsw i64 %174, 3
  %176 = call i8* @realloc(i8* noundef %170, i64 noundef %175) #8
  %177 = bitcast %struct.ArgumentState* %0 to i8**
  store i8* %176, i8** %177, align 8
  %178 = load i8**, i8*** %3, align 8
  %179 = load i8*, i8** %178, align 8
  %.cast = bitcast i8* %176 to i8**
  %180 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %0, i64 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i8*, i8** %.cast, i64 %183
  store i8* %179, i8** %184, align 8
  %185 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %0, i64 0, i32 0
  %186 = load i8**, i8*** %185, align 8
  %187 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %0, i64 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %186, i64 %189
  store i8* null, i8** %190, align 8
  br label %191

191:                                              ; preds = %168, %167
  br label %73, !llvm.loop !6

192:                                              ; preds = %73
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8* noundef, i8** noundef, i32 noundef) #3

; Function Attrs: nounwind
declare dso_local double @strtod(i8* noundef, i8** noundef) #3

; Function Attrs: nounwind
declare dso_local i64 @strtoll(i8* noundef, i8** noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_args(%struct.ArgumentState* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %0, i64 0, i32 0
  %3 = load i8**, i8*** %2, align 8
  %.not = icmp eq i8** %3, null
  br i1 %.not, label %7, label %4

4:                                                ; preds = %1
  %5 = bitcast %struct.ArgumentState* %0 to i8**
  %6 = load i8*, i8** %5, align 8
  call void @free(i8* noundef %6) #8
  br label %7

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
