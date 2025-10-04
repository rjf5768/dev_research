; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/resolve.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@table = dso_local global [5 x [3 x i32]] [[3 x i32] zeroinitializer, [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 4, i32 1, i32 1], [3 x i32] [i32 3, i32 3, i32 1], [3 x i32] zeroinitializer], align 16
@routing = external dso_local global i32, align 4
@handle = external dso_local global i32, align 4
@debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [48 x i8] c"resolve: parse address '%s' = '%s' @ '%s' (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"resolve: parse route '%s' = '%s' @ '%s' (%s)\0A\00", align 1
@getcost = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@exitstat = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"resolve failed '%s' = '%s' @ '%s' (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"resolve '%s' = '%s' @ '%s' (%s)\0A\00", align 1
@hostname = external dso_local global [0 x i8], align 1
@hostdomain = external dso_local global [0 x i8], align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"route: '%s' is local\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c".UUCP\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"smart-host\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"route '%s' failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"route:  '%s' (%s) = '%s' (%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @resolve(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32* noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8*], align 16
  %12 = alloca [512 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [512 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load i32, i32* @routing, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = load i32, i32* @handle, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* getelementptr inbounds ([5 x [3 x i32]], [5 x [3 x i32]]* @table, i64 0, i64 3), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 0
  %27 = call i32 (i8*, i32, i8**, ...) bitcast (i32 (...)* @ssplit to i32 (i8*, i32, i8**, ...)*)(i8* noundef %25, i32 noundef 33, i8** noundef %26)
  store i32 %27, i32* %10, align 4
  br label %31

28:                                               ; preds = %18, %4
  store i32 1, i32* %10, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 0
  store i8* %29, i8** %30, align 16
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %139, %31
  %35 = load i32, i32* %13, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %142

37:                                               ; preds = %34
  %38 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @strcpy(i8* noundef %38, i8* noundef %42) #3
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @parse to i32 (i8*, i8*, i8*, ...)*)(i8* noundef %44, i8* noundef %45, i8* noundef %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* @debug, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %57

50:                                               ; preds = %37
  %51 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i8* (i32, ...) bitcast (i8* (...)* @sform to i8* (i32, ...)*)(i32 noundef %54)
  %56 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* noundef %51, i8* noundef %52, i8* noundef %53, i8* noundef %55)
  br label %57

57:                                               ; preds = %50, %37
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %139

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i64 0, i64 %66
  %68 = load i32, i32* @handle, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %67, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 4
  br i1 %72, label %85, label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i64 0, i64 %75
  %77 = load i32, i32* @handle, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %76, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %116

82:                                               ; preds = %73
  %83 = load i32, i32* @routing, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %82, %64
  store i32 0, i32* %14, align 4
  %86 = load i32, i32* @routing, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* %13, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 1, i32* %14, align 4
  br label %92

92:                                               ; preds = %91, %88, %85
  %93 = load i8*, i8** %6, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* %14, align 4
  %96 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @route(i8* noundef %93, i8* noundef %94, i32 noundef %95, i8* noundef %96, i32* noundef %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %139

101:                                              ; preds = %92
  %102 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @parse to i32 (i8*, i8*, i8*, ...)*)(i8* noundef %102, i8* noundef %103, i8* noundef %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* @debug, align 4
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %110 = load i8*, i8** %7, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i8* (i32, ...) bitcast (i8* (...)* @sform to i8* (i32, ...)*)(i32 noundef %112)
  %114 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* noundef %109, i8* noundef %110, i8* noundef %111, i8* noundef %113)
  br label %115

115:                                              ; preds = %108, %101
  br label %138

116:                                              ; preds = %82, %73
  %117 = load i32, i32* @getcost, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %137

119:                                              ; preds = %116
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i64 0, i64 %121
  %123 = load i32, i32* @handle, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [3 x i32], [3 x i32]* %122, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 3
  br i1 %127, label %128, label %137

128:                                              ; preds = %119
  %129 = load i8*, i8** %6, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %132 = load i32*, i32** %8, align 8
  %133 = call i32 @route(i8* noundef %129, i8* noundef %130, i32 noundef 0, i8* noundef %131, i32* noundef %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %139

136:                                              ; preds = %128
  br label %137

137:                                              ; preds = %136, %119, %116
  br label %138

138:                                              ; preds = %137, %115
  br label %142

139:                                              ; preds = %135, %100, %63
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %13, align 4
  br label %34, !llvm.loop !4

142:                                              ; preds = %138, %34
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i64 0, i64 %144
  %146 = load i32, i32* @handle, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [3 x i32], [3 x i32]* %145, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %165

151:                                              ; preds = %142
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 1
  br i1 %153, label %154, label %165

154:                                              ; preds = %151
  %155 = load i8*, i8** %6, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = load i32, i32* %9, align 4
  %158 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %159 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @build to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef %155, i8* noundef %156, i32 noundef %157, i8* noundef %158)
  %160 = load i8*, i8** %7, align 8
  %161 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %162 = call i8* @strcpy(i8* noundef %160, i8* noundef %161) #3
  %163 = load i8*, i8** %6, align 8
  %164 = call i8* @strcpy(i8* noundef %163, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #3
  store i32 1, i32* %9, align 4
  br label %165

165:                                              ; preds = %154, %151, %142
  %166 = load i32, i32* %9, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %165
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i64 0, i64 %170
  %172 = load i32, i32* @handle, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [3 x i32], [3 x i32]* %171, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 4
  br i1 %176, label %177, label %188

177:                                              ; preds = %168, %165
  store i32 68, i32* @exitstat, align 4
  %178 = load i32, i32* @debug, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = load i8*, i8** %5, align 8
  %182 = load i8*, i8** %7, align 8
  %183 = load i8*, i8** %6, align 8
  %184 = load i32, i32* %9, align 4
  %185 = call i8* (i32, ...) bitcast (i8* (...)* @sform to i8* (i32, ...)*)(i32 noundef %184)
  %186 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* noundef %181, i8* noundef %182, i8* noundef %183, i8* noundef %185)
  br label %187

187:                                              ; preds = %180, %177
  store i32 0, i32* %9, align 4
  br label %199

188:                                              ; preds = %168
  %189 = load i32, i32* @debug, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load i8*, i8** %5, align 8
  %193 = load i8*, i8** %7, align 8
  %194 = load i8*, i8** %6, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i8* (i32, ...) bitcast (i8* (...)* @sform to i8* (i32, ...)*)(i32 noundef %195)
  %197 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* noundef %192, i8* noundef %193, i8* noundef %194, i8* noundef %196)
  br label %198

198:                                              ; preds = %191, %188
  br label %199

199:                                              ; preds = %198, %187
  %200 = load i32, i32* %9, align 4
  ret i32 %200
}

declare dso_local i32 @ssplit(...) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

declare dso_local i32 @parse(...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i8* @sform(...) #1

declare dso_local i32 @build(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @route(i8* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i32* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [16 x i8*], align 16
  %16 = alloca [512 x i8], align 16
  %17 = alloca [512 x i8], align 16
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  store i8 46, i8* %18, align 16
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8*, i8** %7, align 8
  %22 = call i8* @strcpy(i8* noundef %20, i8* noundef %21) #3
  %23 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = getelementptr inbounds [16 x i8*], [16 x i8*]* %15, i64 0, i64 0
  %26 = call i32 (i8*, i32, i8**, ...) bitcast (i32 (...)* @ssplit to i32 (i8*, i32, i8**, ...)*)(i8* noundef %24, i32 noundef 46, i8** noundef %25)
  store i32 %26, i32* %13, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %27, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostname, i64 0, i64 0))
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %5
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %31, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @hostdomain, i64 0, i64 0))
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30, %5
  store i32 0, i32* %14, align 4
  %35 = load i32*, i32** %11, align 8
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %37 = call i8* @strcpy(i8* noundef %36, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #3
  %38 = load i32, i32* @debug, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* noundef %41)
  br label %43

43:                                               ; preds = %40, %34
  br label %122

44:                                               ; preds = %30
  %45 = load i32, i32* %13, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = load i32, i32* %13, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [16 x i8*], [16 x i8*]* %15, i64 0, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, ...) bitcast (i32 (...)* @isuucp to i32 (i8*, ...)*)(i8* noundef %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [16 x i8*], [16 x i8*]* %15, i64 0, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 -1
  store i8 0, i8* %62, align 1
  store i32 1, i32* %12, align 4
  br label %63

63:                                               ; preds = %55, %47, %44
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %89, %63
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %64
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [16 x i8*], [16 x i8*]* %15, i64 0, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 -1
  %74 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 (i8*, i8*, i32*, ...) bitcast (i32 (...)* @getpath to i32 (i8*, i8*, i32*, ...)*)(i8* noundef %73, i8* noundef %74, i32* noundef %75)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [16 x i8*], [16 x i8*]* %15, i64 0, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 (i8*, i8*, i32*, ...) bitcast (i32 (...)* @getpath to i32 (i8*, i8*, i32*, ...)*)(i8* noundef %82, i8* noundef %83, i32* noundef %84)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78, %68
  br label %92

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %64, !llvm.loop !6

92:                                               ; preds = %87, %64
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %121

96:                                               ; preds = %92
  %97 = load i32, i32* %12, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 (i8*, i8*, i32*, ...) bitcast (i32 (...)* @getpath to i32 (i8*, i8*, i32*, ...)*)(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* noundef %100, i32* noundef %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %99, %96
  %105 = load i32, i32* %9, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 (i8*, i8*, i32*, ...) bitcast (i32 (...)* @getpath to i32 (i8*, i8*, i32*, ...)*)(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* noundef %108, i32* noundef %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107, %104
  %113 = load i32, i32* @debug, align 4
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i8*, i8** %7, align 8
  %117 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* noundef %116)
  br label %118

118:                                              ; preds = %115, %112
  store i32 68, i32* %6, align 4
  br label %157

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %119, %99
  br label %121

121:                                              ; preds = %120, %92
  br label %122

122:                                              ; preds = %121, %43
  %123 = load i32, i32* @debug, align 4
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %125, label %144

125:                                              ; preds = %122
  %126 = load i8*, i8** %7, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [16 x i8*], [16 x i8*]* %15, i64 0, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [16 x i8*], [16 x i8*]* %15, i64 0, i64 %134
  %136 = load i8*, i8** %135, align 8
  br label %138

137:                                              ; preds = %125
  br label %138

138:                                              ; preds = %137, %132
  %139 = phi i8* [ %136, %132 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %137 ]
  %140 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %141 = load i32*, i32** %11, align 8
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* noundef %126, i8* noundef %139, i8* noundef %140, i32 noundef %142)
  br label %144

144:                                              ; preds = %138, %122
  %145 = load i8*, i8** %7, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load i32, i32* %14, align 4
  %148 = icmp eq i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 1, i32 3
  %151 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %152 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @build to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef %145, i8* noundef %146, i32 noundef %150, i8* noundef %151)
  %153 = load i8*, i8** %10, align 8
  %154 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %155 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %156 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %153, i8* noundef %154, i8* noundef %155) #3
  store i32 0, i32* %6, align 4
  br label %157

157:                                              ; preds = %144, %118
  %158 = load i32, i32* %6, align 4
  ret i32 %158
}

declare dso_local i32 @strcmpic(...) #1

declare dso_local i32 @isuucp(...) #1

declare dso_local i32 @getpath(...) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
