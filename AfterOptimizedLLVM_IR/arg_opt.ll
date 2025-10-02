; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/d/arg.c'
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
define dso_local void @process_arg(%struct.ArgumentState* noundef %0, i32 noundef %1, i8*** noundef %2) #0 {
  %4 = alloca %struct.ArgumentState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8***, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ArgumentDescription*, align 8
  %9 = alloca i8, align 1
  store %struct.ArgumentState* %0, %struct.ArgumentState** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8*** %2, i8**** %6, align 8
  store i8* null, i8** %7, align 8
  %10 = load %struct.ArgumentState*, %struct.ArgumentState** %4, align 8
  %11 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %10, i32 0, i32 3
  %12 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %11, align 8
  store %struct.ArgumentDescription* %12, %struct.ArgumentDescription** %8, align 8
  %13 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %13, i64 %15
  %17 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %16, i32 0, i32 3
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %179

20:                                               ; preds = %3
  %21 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %21, i64 %23
  %25 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %24, i32 0, i32 3
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %9, align 1
  %29 = load i8, i8* %9, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 70
  br i1 %31, label %36, label %32

32:                                               ; preds = %20
  %33 = load i8, i8* %9, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 102
  br i1 %35, label %36, label %49

36:                                               ; preds = %32, %20
  %37 = load i8, i8* %9, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 70
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  %42 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %42, i64 %44
  %46 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = bitcast i8* %47 to i32*
  store i32 %41, i32* %48, align 4
  br label %178

49:                                               ; preds = %32
  %50 = load i8, i8* %9, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 84
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %54, i64 %56
  %58 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %65, i64 %67
  %69 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %68, i32 0, i32 4
  %70 = load i8*, i8** %69, align 8
  %71 = bitcast i8* %70 to i32*
  store i32 %64, i32* %71, align 4
  br label %177

72:                                               ; preds = %49
  %73 = load i8, i8* %9, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 43
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %77, i64 %79
  %81 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %80, i32 0, i32 4
  %82 = load i8*, i8** %81, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %176

86:                                               ; preds = %72
  %87 = load i8***, i8**** %6, align 8
  %88 = load i8**, i8*** %87, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %88, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load i8***, i8**** %6, align 8
  %96 = load i8**, i8*** %95, align 8
  %97 = load i8*, i8** %96, align 8
  br label %103

98:                                               ; preds = %86
  %99 = load i8***, i8**** %6, align 8
  %100 = load i8**, i8*** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i32 1
  store i8** %101, i8*** %99, align 8
  %102 = load i8*, i8** %101, align 8
  br label %103

103:                                              ; preds = %98, %94
  %104 = phi i8* [ %97, %94 ], [ %102, %98 ]
  store i8* %104, i8** %7, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = load %struct.ArgumentState*, %struct.ArgumentState** %4, align 8
  call void @usage(%struct.ArgumentState* noundef %108, i8* noundef null)
  br label %109

109:                                              ; preds = %107, %103
  %110 = load i8, i8* %9, align 1
  %111 = sext i8 %110 to i32
  switch i32 %111, label %160 [
    i32 73, label %112
    i32 68, label %122
    i32 76, label %132
    i32 83, label %142
  ]

112:                                              ; preds = %109
  %113 = load i8*, i8** %7, align 8
  %114 = call i32 @atoi(i8* noundef %113) #5
  %115 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %115, i64 %117
  %119 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %118, i32 0, i32 4
  %120 = load i8*, i8** %119, align 8
  %121 = bitcast i8* %120 to i32*
  store i32 %114, i32* %121, align 4
  br label %166

122:                                              ; preds = %109
  %123 = load i8*, i8** %7, align 8
  %124 = call double @atof(i8* noundef %123) #5
  %125 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %125, i64 %127
  %129 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %128, i32 0, i32 4
  %130 = load i8*, i8** %129, align 8
  %131 = bitcast i8* %130 to double*
  store double %124, double* %131, align 8
  br label %166

132:                                              ; preds = %109
  %133 = load i8*, i8** %7, align 8
  %134 = call i64 @atol(i8* noundef %133) #5
  %135 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %135, i64 %137
  %139 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %138, i32 0, i32 4
  %140 = load i8*, i8** %139, align 8
  %141 = bitcast i8* %140 to i64*
  store i64 %134, i64* %141, align 8
  br label %166

142:                                              ; preds = %109
  %143 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %143, i64 %145
  %147 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %146, i32 0, i32 4
  %148 = load i8*, i8** %147, align 8
  %149 = load i8*, i8** %7, align 8
  %150 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %150, i64 %152
  %154 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %153, i32 0, i32 3
  %155 = load i8*, i8** %154, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = call i32 @atoi(i8* noundef %156) #5
  %158 = sext i32 %157 to i64
  %159 = call i8* @strncpy(i8* noundef %148, i8* noundef %149, i64 noundef %158) #6
  br label %166

160:                                              ; preds = %109
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %162 = load %struct.ArgumentState*, %struct.ArgumentState** %4, align 8
  %163 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %162, i32 0, i32 2
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %161, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef %164)
  call void @exit(i32 noundef 1) #7
  unreachable

166:                                              ; preds = %142, %132, %122, %112
  %167 = load i8***, i8**** %6, align 8
  %168 = load i8**, i8*** %167, align 8
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @strlen(i8* noundef %169) #5
  %171 = sub i64 %170, 1
  %172 = load i8***, i8**** %6, align 8
  %173 = load i8**, i8*** %172, align 8
  %174 = load i8*, i8** %173, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 %171
  store i8* %175, i8** %173, align 8
  br label %176

176:                                              ; preds = %166, %76
  br label %177

177:                                              ; preds = %176, %53
  br label %178

178:                                              ; preds = %177, %36
  br label %179

179:                                              ; preds = %178, %3
  %180 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %180, i64 %182
  %184 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %183, i32 0, i32 6
  %185 = load void (%struct.ArgumentState*, i8*)*, void (%struct.ArgumentState*, i8*)** %184, align 8
  %186 = icmp ne void (%struct.ArgumentState*, i8*)* %185, null
  br i1 %186, label %187, label %196

187:                                              ; preds = %179
  %188 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %188, i64 %190
  %192 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %191, i32 0, i32 6
  %193 = load void (%struct.ArgumentState*, i8*)*, void (%struct.ArgumentState*, i8*)** %192, align 8
  %194 = load %struct.ArgumentState*, %struct.ArgumentState** %4, align 8
  %195 = load i8*, i8** %7, align 8
  call void %193(%struct.ArgumentState* noundef %194, i8* noundef %195)
  br label %196

196:                                              ; preds = %187, %179
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @usage(%struct.ArgumentState* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.ArgumentState*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ArgumentDescription*, align 8
  %6 = alloca i32, align 4
  store %struct.ArgumentState* %0, %struct.ArgumentState** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.ArgumentState*, %struct.ArgumentState** %3, align 8
  %8 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %7, i32 0, i32 3
  %9 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  store %struct.ArgumentDescription* %9, %struct.ArgumentDescription** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load %struct.ArgumentState*, %struct.ArgumentState** %3, align 8
  %13 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* noundef %14)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %250, %2
  %17 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %17, i64 %19
  %21 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %253

25:                                               ; preds = %16
  %26 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %26, i64 %28
  %30 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %250

34:                                               ; preds = %25
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %36, i64 %38
  %40 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %39, i32 0, i32 1
  %41 = load i8, i8* %40, align 8
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 32
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 45, i32 32
  %46 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %46, i64 %48
  %50 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %49, i32 0, i32 1
  %51 = load i8, i8* %50, align 8
  %52 = sext i8 %51 to i32
  %53 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %53, i64 %55
  %57 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %56, i32 0, i32 1
  %58 = load i8, i8* %57, align 8
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 32
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 44, i32 32
  %63 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %63, i64 %65
  %67 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %69, i64 %71
  %73 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @strlen(i8* noundef %74) #5
  %76 = add i64 %75, 61
  %77 = icmp ult i64 %76, 81
  br i1 %77, label %78, label %89

78:                                               ; preds = %34
  %79 = load i8*, i8** @SPACES, align 8
  %80 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %80, i64 %82
  %84 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @strlen(i8* noundef %85) #5
  %87 = add i64 %86, 61
  %88 = getelementptr inbounds i8, i8* %79, i64 %87
  br label %90

89:                                               ; preds = %34
  br label %90

90:                                               ; preds = %89, %78
  %91 = phi i8* [ %88, %78 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %89 ]
  %92 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %92, i64 %94
  %96 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %95, i32 0, i32 3
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %115

99:                                               ; preds = %90
  %100 = load i8*, i8** @arg_types_keys, align 8
  %101 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %101, i64 %103
  %105 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = call i8* @strchr(i8* noundef %100, i32 noundef %109) #5
  %111 = load i8*, i8** @arg_types_keys, align 8
  %112 = ptrtoint i8* %110 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  br label %118

115:                                              ; preds = %90
  %116 = load i8*, i8** @arg_types_keys, align 8
  %117 = call i64 @strlen(i8* noundef %116) #5
  br label %118

118:                                              ; preds = %115, %99
  %119 = phi i64 [ %114, %99 ], [ %117, %115 ]
  %120 = getelementptr inbounds [9 x i8*], [9 x i8*]* @arg_types_desc, i64 0, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef %45, i32 noundef %52, i32 noundef %62, i8* noundef %68, i8* noundef %91, i8* noundef %121)
  %123 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %123, i64 %125
  %127 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %126, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %140

130:                                              ; preds = %118
  %131 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %131, i64 %133
  %135 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %134, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  br label %141

140:                                              ; preds = %118
  br label %141

141:                                              ; preds = %140, %130
  %142 = phi i32 [ %139, %130 ], [ 0, %140 ]
  switch i32 %142, label %241 [
    i32 0, label %143
    i32 76, label %146
    i32 83, label %157
    i32 68, label %205
    i32 43, label %216
    i32 73, label %216
    i32 84, label %227
    i32 102, label %227
    i32 70, label %227
  ]

143:                                              ; preds = %141
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %144, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %241

146:                                              ; preds = %141
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %148 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %148, i64 %150
  %152 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %151, i32 0, i32 4
  %153 = load i8*, i8** %152, align 8
  %154 = bitcast i8* %153 to i64*
  %155 = load i64, i64* %154, align 8
  %156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %147, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 noundef %155)
  br label %241

157:                                              ; preds = %141
  %158 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %158, i64 %160
  %162 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %161, i32 0, i32 4
  %163 = load i8*, i8** %162, align 8
  %164 = load i8, i8* %163, align 1
  %165 = icmp ne i8 %164, 0
  br i1 %165, label %166, label %201

166:                                              ; preds = %157
  %167 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %167, i64 %169
  %171 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %170, i32 0, i32 4
  %172 = load i8*, i8** %171, align 8
  %173 = call i64 @strlen(i8* noundef %172) #5
  %174 = icmp ult i64 %173, 10
  br i1 %174, label %175, label %184

175:                                              ; preds = %166
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %177 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %177, i64 %179
  %181 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %180, i32 0, i32 4
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %176, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* noundef %182)
  br label %200

184:                                              ; preds = %166
  %185 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %185, i64 %187
  %189 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %188, i32 0, i32 4
  %190 = load i8*, i8** %189, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 7
  store i8 0, i8* %191, align 1
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %193 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %193, i64 %195
  %197 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %196, i32 0, i32 4
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %192, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* noundef %198)
  br label %200

200:                                              ; preds = %184, %175
  br label %204

201:                                              ; preds = %157
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %203 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %202, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %204

204:                                              ; preds = %201, %200
  br label %241

205:                                              ; preds = %141
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %207 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %208 = load i32, i32* %6, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %207, i64 %209
  %211 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %210, i32 0, i32 4
  %212 = load i8*, i8** %211, align 8
  %213 = bitcast i8* %212 to double*
  %214 = load double, double* %213, align 8
  %215 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %206, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), double noundef %214)
  br label %241

216:                                              ; preds = %141, %141
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %218 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %218, i64 %220
  %222 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %221, i32 0, i32 4
  %223 = load i8*, i8** %222, align 8
  %224 = bitcast i8* %223 to i32*
  %225 = load i32, i32* %224, align 4
  %226 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %217, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 noundef %225)
  br label %241

227:                                              ; preds = %141, %141, %141
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %229 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %230 = load i32, i32* %6, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %229, i64 %231
  %233 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %232, i32 0, i32 4
  %234 = load i8*, i8** %233, align 8
  %235 = bitcast i8* %234 to i32*
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 0
  %238 = zext i1 %237 to i64
  %239 = select i1 %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %228, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* noundef %239)
  br label %241

241:                                              ; preds = %141, %227, %216, %205, %204, %146, %143
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %243 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %5, align 8
  %244 = load i32, i32* %6, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %243, i64 %245
  %247 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %246, i32 0, i32 2
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %242, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* noundef %248)
  br label %250

250:                                              ; preds = %241, %33
  %251 = load i32, i32* %6, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %6, align 4
  br label %16

253:                                              ; preds = %24
  call void @exit(i32 noundef 1) #7
  unreachable
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local double @atof(i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @atol(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @process_args(%struct.ArgumentState* noundef %0, i8** noundef %1) #0 {
  %3 = alloca %struct.ArgumentState*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ArgumentDescription*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  store %struct.ArgumentState* %0, %struct.ArgumentState** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.ArgumentState*, %struct.ArgumentState** %3, align 8
  %12 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %11, i32 0, i32 3
  %13 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %12, align 8
  store %struct.ArgumentDescription* %13, %struct.ArgumentDescription** %8, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %121, %2
  %15 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %15, i64 %17
  %19 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %124

23:                                               ; preds = %14
  %24 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %24, i64 %26
  %28 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %27, i32 0, i32 5
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %120

31:                                               ; preds = %23
  %32 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %32, i64 %34
  %36 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %9, align 1
  %40 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %40, i64 %42
  %44 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %43, i32 0, i32 5
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @getenv(i8* noundef %45) #6
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %31
  br label %121

50:                                               ; preds = %31
  %51 = load i8, i8* %9, align 1
  %52 = sext i8 %51 to i32
  switch i32 %52, label %102 [
    i32 65, label %53
    i32 102, label %53
    i32 70, label %53
    i32 73, label %54
    i32 68, label %65
    i32 76, label %75
    i32 83, label %85
  ]

53:                                               ; preds = %50, %50, %50
  br label %102

54:                                               ; preds = %50
  %55 = load i8*, i8** %10, align 8
  %56 = call i64 @strtol(i8* noundef %55, i8** noundef null, i32 noundef 0) #6
  %57 = trunc i64 %56 to i32
  %58 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %58, i64 %60
  %62 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %61, i32 0, i32 4
  %63 = load i8*, i8** %62, align 8
  %64 = bitcast i8* %63 to i32*
  store i32 %57, i32* %64, align 4
  br label %102

65:                                               ; preds = %50
  %66 = load i8*, i8** %10, align 8
  %67 = call double @strtod(i8* noundef %66, i8** noundef null) #6
  %68 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %68, i64 %70
  %72 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %71, i32 0, i32 4
  %73 = load i8*, i8** %72, align 8
  %74 = bitcast i8* %73 to double*
  store double %67, double* %74, align 8
  br label %102

75:                                               ; preds = %50
  %76 = load i8*, i8** %10, align 8
  %77 = call i64 @strtoll(i8* noundef %76, i8** noundef null, i32 noundef 0) #6
  %78 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %78, i64 %80
  %82 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %81, i32 0, i32 4
  %83 = load i8*, i8** %82, align 8
  %84 = bitcast i8* %83 to i64*
  store i64 %77, i64* %84, align 8
  br label %102

85:                                               ; preds = %50
  %86 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %86, i64 %88
  %90 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %89, i32 0, i32 4
  %91 = load i8*, i8** %90, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %93, i64 %95
  %97 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = call i64 @strtol(i8* noundef %99, i8** noundef null, i32 noundef 0) #6
  %101 = call i8* @strncpy(i8* noundef %91, i8* noundef %92, i64 noundef %100) #6
  br label %102

102:                                              ; preds = %50, %85, %75, %65, %54, %53
  %103 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %103, i64 %105
  %107 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %106, i32 0, i32 6
  %108 = load void (%struct.ArgumentState*, i8*)*, void (%struct.ArgumentState*, i8*)** %107, align 8
  %109 = icmp ne void (%struct.ArgumentState*, i8*)* %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %102
  %111 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %111, i64 %113
  %115 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %114, i32 0, i32 6
  %116 = load void (%struct.ArgumentState*, i8*)*, void (%struct.ArgumentState*, i8*)** %115, align 8
  %117 = load %struct.ArgumentState*, %struct.ArgumentState** %3, align 8
  %118 = load i8*, i8** %10, align 8
  call void %116(%struct.ArgumentState* noundef %117, i8* noundef %118)
  br label %119

119:                                              ; preds = %110, %102
  br label %120

120:                                              ; preds = %119, %23
  br label %121

121:                                              ; preds = %120, %49
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %14

124:                                              ; preds = %22
  %125 = load i8**, i8*** %4, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 0
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.ArgumentState*, %struct.ArgumentState** %3, align 8
  %129 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %302, %124
  %131 = load i8**, i8*** %4, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i32 1
  store i8** %132, i8*** %4, align 8
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %303

135:                                              ; preds = %130
  %136 = load i8**, i8*** %4, align 8
  %137 = load i8*, i8** %136, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 45
  br i1 %140, label %141, label %268

141:                                              ; preds = %135
  %142 = load i8**, i8*** %4, align 8
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 45
  br i1 %147, label %148, label %227

148:                                              ; preds = %141
  store i32 0, i32* %5, align 4
  br label %149

149:                                              ; preds = %223, %148
  %150 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %150, i64 %152
  %154 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %149
  %158 = load %struct.ArgumentState*, %struct.ArgumentState** %3, align 8
  call void @usage(%struct.ArgumentState* noundef %158, i8* noundef null)
  br label %159

159:                                              ; preds = %157, %149
  %160 = load i8**, i8*** %4, align 8
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 2
  %163 = call i8* @strchr(i8* noundef %162, i32 noundef 61) #5
  store i8* %163, i8** %7, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %174

165:                                              ; preds = %159
  %166 = load i8*, i8** %7, align 8
  %167 = load i8**, i8*** %4, align 8
  %168 = load i8*, i8** %167, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 2
  %170 = ptrtoint i8* %166 to i64
  %171 = ptrtoint i8* %169 to i64
  %172 = sub i64 %170, %171
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %6, align 4
  br label %180

174:                                              ; preds = %159
  %175 = load i8**, i8*** %4, align 8
  %176 = load i8*, i8** %175, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 2
  %178 = call i64 @strlen(i8* noundef %177) #5
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %174, %165
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %183, i64 %185
  %187 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i64 @strlen(i8* noundef %188) #5
  %190 = icmp eq i64 %182, %189
  br i1 %190, label %191, label %222

191:                                              ; preds = %180
  %192 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %192, i64 %194
  %196 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = load i8**, i8*** %4, align 8
  %199 = load i8*, i8** %198, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 2
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = call i32 @strncmp(i8* noundef %197, i8* noundef %200, i64 noundef %202) #5
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %222, label %205

205:                                              ; preds = %191
  %206 = load i8*, i8** %7, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %216, label %208

208:                                              ; preds = %205
  %209 = load i8**, i8*** %4, align 8
  %210 = load i8*, i8** %209, align 8
  %211 = call i64 @strlen(i8* noundef %210) #5
  %212 = sub i64 %211, 1
  %213 = load i8**, i8*** %4, align 8
  %214 = load i8*, i8** %213, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 %212
  store i8* %215, i8** %213, align 8
  br label %219

216:                                              ; preds = %205
  %217 = load i8*, i8** %7, align 8
  %218 = load i8**, i8*** %4, align 8
  store i8* %217, i8** %218, align 8
  br label %219

219:                                              ; preds = %216, %208
  %220 = load %struct.ArgumentState*, %struct.ArgumentState** %3, align 8
  %221 = load i32, i32* %5, align 4
  call void @process_arg(%struct.ArgumentState* noundef %220, i32 noundef %221, i8*** noundef %4)
  br label %226

222:                                              ; preds = %191, %180
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %5, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %5, align 4
  br label %149

226:                                              ; preds = %219
  br label %267

227:                                              ; preds = %141
  br label %228

228:                                              ; preds = %265, %227
  %229 = load i8**, i8*** %4, align 8
  %230 = load i8*, i8** %229, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %229, align 8
  %232 = load i8, i8* %231, align 1
  %233 = icmp ne i8 %232, 0
  br i1 %233, label %234, label %266

234:                                              ; preds = %228
  store i32 0, i32* %5, align 4
  br label %235

235:                                              ; preds = %262, %234
  %236 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %236, i64 %238
  %240 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %245, label %243

243:                                              ; preds = %235
  %244 = load %struct.ArgumentState*, %struct.ArgumentState** %3, align 8
  call void @usage(%struct.ArgumentState* noundef %244, i8* noundef null)
  br label %245

245:                                              ; preds = %243, %235
  %246 = load %struct.ArgumentDescription*, %struct.ArgumentDescription** %8, align 8
  %247 = load i32, i32* %5, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %246, i64 %248
  %250 = getelementptr inbounds %struct.ArgumentDescription, %struct.ArgumentDescription* %249, i32 0, i32 1
  %251 = load i8, i8* %250, align 8
  %252 = sext i8 %251 to i32
  %253 = load i8**, i8*** %4, align 8
  %254 = load i8*, i8** %253, align 8
  %255 = load i8, i8* %254, align 1
  %256 = sext i8 %255 to i32
  %257 = icmp eq i32 %252, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %245
  %259 = load %struct.ArgumentState*, %struct.ArgumentState** %3, align 8
  %260 = load i32, i32* %5, align 4
  call void @process_arg(%struct.ArgumentState* noundef %259, i32 noundef %260, i8*** noundef %4)
  br label %265

261:                                              ; preds = %245
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %5, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %5, align 4
  br label %235

265:                                              ; preds = %258
  br label %228, !llvm.loop !4

266:                                              ; preds = %228
  br label %267

267:                                              ; preds = %266, %226
  br label %302

268:                                              ; preds = %135
  %269 = load %struct.ArgumentState*, %struct.ArgumentState** %3, align 8
  %270 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %269, i32 0, i32 0
  %271 = load i8**, i8*** %270, align 8
  %272 = bitcast i8** %271 to i8*
  %273 = load %struct.ArgumentState*, %struct.ArgumentState** %3, align 8
  %274 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = add nsw i32 %275, 2
  %277 = sext i32 %276 to i64
  %278 = mul i64 8, %277
  %279 = call i8* @realloc(i8* noundef %272, i64 noundef %278) #6
  %280 = bitcast i8* %279 to i8**
  %281 = load %struct.ArgumentState*, %struct.ArgumentState** %3, align 8
  %282 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %281, i32 0, i32 0
  store i8** %280, i8*** %282, align 8
  %283 = load i8**, i8*** %4, align 8
  %284 = load i8*, i8** %283, align 8
  %285 = load %struct.ArgumentState*, %struct.ArgumentState** %3, align 8
  %286 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %285, i32 0, i32 0
  %287 = load i8**, i8*** %286, align 8
  %288 = load %struct.ArgumentState*, %struct.ArgumentState** %3, align 8
  %289 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %289, align 8
  %292 = sext i32 %290 to i64
  %293 = getelementptr inbounds i8*, i8** %287, i64 %292
  store i8* %284, i8** %293, align 8
  %294 = load %struct.ArgumentState*, %struct.ArgumentState** %3, align 8
  %295 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %294, i32 0, i32 0
  %296 = load i8**, i8*** %295, align 8
  %297 = load %struct.ArgumentState*, %struct.ArgumentState** %3, align 8
  %298 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8*, i8** %296, i64 %300
  store i8* null, i8** %301, align 8
  br label %302

302:                                              ; preds = %268, %267
  br label %130, !llvm.loop !6

303:                                              ; preds = %130
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8* noundef, i8** noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local double @strtod(i8* noundef, i8** noundef) #2

; Function Attrs: nounwind
declare dso_local i64 @strtoll(i8* noundef, i8** noundef, i32 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_args(%struct.ArgumentState* noundef %0) #0 {
  %2 = alloca %struct.ArgumentState*, align 8
  store %struct.ArgumentState* %0, %struct.ArgumentState** %2, align 8
  %3 = load %struct.ArgumentState*, %struct.ArgumentState** %2, align 8
  %4 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %3, i32 0, i32 0
  %5 = load i8**, i8*** %4, align 8
  %6 = icmp ne i8** %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.ArgumentState*, %struct.ArgumentState** %2, align 8
  %9 = getelementptr inbounds %struct.ArgumentState, %struct.ArgumentState* %8, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  %11 = bitcast i8** %10 to i8*
  call void @free(i8* noundef %11) #6
  br label %12

12:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
