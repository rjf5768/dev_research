; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/simulator/instruct2.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/simulator/instruct2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REGISTER = external dso_local global [10 x i32], align 16
@.str = private unnamed_addr constant [5 x i8] c"Set \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Set CC to =.\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Set CC to <.\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Set CC to >.\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Attempted division by zero.\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Generated SVC interupt %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"X has overflowed.\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Set X to \00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c" and set CC to =.\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c" and set CC to <.\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c" and set CC to >.\0A\00", align 1
@TYPE_OUT_MODE = dso_local global [6 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @MOD(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sdiv i32 %6, %7
  %9 = load i32, i32* %4, align 4
  %10 = mul nsw i32 %8, %9
  %11 = sub nsw i32 %5, %10
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ADDR_P(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %8 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef %4, i32* noundef %5)
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 10
  br i1 %13, label %21, label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 10
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %14
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0)
  br label %181

21:                                               ; preds = %17, %11
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 8388608
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 -1, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 8388608
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 -1, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %61

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %61

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %45, %49
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %52
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %57, 8388608
  br i1 %58, label %59, label %60

59:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %41
  br label %61

61:                                               ; preds = %60, %38, %35
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %94

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %94

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %71, %75
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %78
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %87, 16777216
  %89 = mul nsw i32 %88, 16777216
  %90 = sub nsw i32 %83, %89
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %92
  store i32 %90, i32* %93, align 4
  br label %94

94:                                               ; preds = %67, %64, %61
  %95 = load i32, i32* %7, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %127

97:                                               ; preds = %94
  %98 = load i32, i32* %6, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %127

100:                                              ; preds = %97
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %104, %108
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %111
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = sdiv i32 %120, 16777216
  %122 = mul nsw i32 %121, 16777216
  %123 = sub nsw i32 %116, %122
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %125
  store i32 %123, i32* %126, align 4
  br label %127

127:                                              ; preds = %100, %97, %94
  %128 = load i32, i32* %7, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %167

130:                                              ; preds = %127
  %131 = load i32, i32* %6, align 4
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %167

133:                                              ; preds = %130
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %137, %141
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %144
  store i32 %142, i32* %145, align 4
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = sdiv i32 %153, 16777216
  %155 = mul nsw i32 %154, 16777216
  %156 = sub nsw i32 %149, %155
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %158
  store i32 %156, i32* %159, align 4
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp slt i32 %163, 8388608
  br i1 %164, label %165, label %166

165:                                              ; preds = %133
  store i32 1, i32* %3, align 4
  br label %166

166:                                              ; preds = %165, %133
  br label %167

167:                                              ; preds = %166, %130, %127
  %168 = load i32, i32* %2, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load i32, i32* %5, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %171, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %175, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %176

176:                                              ; preds = %170, %167
  %177 = load i32, i32* %3, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 4)
  br label %180

180:                                              ; preds = %179, %176
  br label %181

181:                                              ; preds = %180, %20
  ret void
}

declare dso_local i32 @FORMAT2(...) #1

declare dso_local void @SIGNAL_INTERUPT(...) #1

declare dso_local void @PRINT_REG_NAME(...) #1

declare dso_local void @PRINT_CONSTANT(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @CLEAR_P(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef %3, i32* noundef %4)
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %1
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0)
  br label %25

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %14
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %19, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %23, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %24

24:                                               ; preds = %18, %12
  br label %25

25:                                               ; preds = %24, %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @COMPR_P(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef %3, i32* noundef %4)
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %11, 8388608
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 16777216
  store i32 %18, i32* %5, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %19, %13
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 8388608
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 16777216
  store i32 %35, i32* %6, align 4
  br label %41

36:                                               ; preds = %24
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %36, %30
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 noundef 0)
  %46 = load i32, i32* %2, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45
  br label %51

51:                                               ; preds = %50, %41
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 noundef 1)
  %56 = load i32, i32* %2, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  br label %61

61:                                               ; preds = %60, %51
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 noundef 2)
  %66 = load i32, i32* %2, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %65
  br label %71

71:                                               ; preds = %70, %61
  ret void
}

declare dso_local void @SET_CC(...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @DIVR_P(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %7 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef %3, i32* noundef %4)
  %8 = load i32, i32* %3, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %20, label %13

13:                                               ; preds = %10, %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %13
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0)
  br label %130

20:                                               ; preds = %16, %10
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 4)
  %27 = load i32, i32* %2, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  br label %129

32:                                               ; preds = %20
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 8388608
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 -1, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %43, 8388608
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 -1, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %39
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %56, %60
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %63
  store i32 %61, i32* %64, align 4
  br label %65

65:                                               ; preds = %52, %49, %46
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 16777216, %75
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %76, %80
  %82 = sub nsw i32 16777216, %81
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %84
  store i32 %82, i32* %85, align 4
  br label %86

86:                                               ; preds = %71, %68, %65
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %107

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %107

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 16777216, %100
  %102 = sdiv i32 %96, %101
  %103 = sub nsw i32 16777216, %102
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %105
  store i32 %103, i32* %106, align 4
  br label %107

107:                                              ; preds = %92, %89, %86
  %108 = load i32, i32* %6, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %128

110:                                              ; preds = %107
  %111 = load i32, i32* %5, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %128

113:                                              ; preds = %110
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 16777216, %117
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 16777216, %122
  %124 = sdiv i32 %118, %123
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %126
  store i32 %124, i32* %127, align 4
  br label %128

128:                                              ; preds = %113, %110, %107
  br label %129

129:                                              ; preds = %128, %31
  br label %130

130:                                              ; preds = %129, %19
  %131 = load i32, i32* %2, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i32, i32* %4, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %134, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %138, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %139

139:                                              ; preds = %133, %130
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @MULR_P(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %9 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef %4, i32* noundef %5)
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 10
  br i1 %14, label %22, label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 10
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %15
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0)
  br label %186

22:                                               ; preds = %18, %12
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 8388608
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 -1, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 8388608
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %65

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %65

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sitofp i32 %46 to double
  %48 = fmul double 1.000000e+00, %47
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sitofp i32 %52 to double
  %54 = fmul double %48, %53
  store double %54, double* %8, align 8
  %55 = load double, double* %8, align 8
  %56 = fcmp oge double %55, 0x4160000000000000
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %64

58:                                               ; preds = %42
  %59 = load double, double* %8, align 8
  %60 = fptosi double %59 to i32
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %62
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %58, %57
  br label %65

65:                                               ; preds = %64, %39, %36
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %103

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %103

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 16777216, %75
  %77 = sitofp i32 %76 to double
  %78 = fmul double 1.000000e+00, %77
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = sitofp i32 %82 to double
  %84 = fmul double %78, %83
  store double %84, double* %8, align 8
  %85 = load double, double* %8, align 8
  %86 = load double, double* %8, align 8
  %87 = fdiv double %86, 0x4170000000000000
  %88 = fptosi double %87 to i32
  %89 = mul nsw i32 %88, 16777216
  %90 = sitofp i32 %89 to double
  %91 = fsub double %85, %90
  store double %91, double* %8, align 8
  %92 = load double, double* %8, align 8
  %93 = fcmp oge double %92, 0x4160000000000000
  br i1 %93, label %94, label %95

94:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %102

95:                                               ; preds = %71
  %96 = load double, double* %8, align 8
  %97 = fptosi double %96 to i32
  %98 = sub nsw i32 16777216, %97
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %100
  store i32 %98, i32* %101, align 4
  br label %102

102:                                              ; preds = %95, %94
  br label %103

103:                                              ; preds = %102, %68, %65
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %141

106:                                              ; preds = %103
  %107 = load i32, i32* %6, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %141

109:                                              ; preds = %106
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sitofp i32 %113 to double
  %115 = fmul double 1.000000e+00, %114
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 16777216, %119
  %121 = sitofp i32 %120 to double
  %122 = fmul double %115, %121
  store double %122, double* %8, align 8
  %123 = load double, double* %8, align 8
  %124 = load double, double* %8, align 8
  %125 = fdiv double %124, 0x4170000000000000
  %126 = fptosi double %125 to i32
  %127 = mul nsw i32 %126, 16777216
  %128 = sitofp i32 %127 to double
  %129 = fsub double %123, %128
  store double %129, double* %8, align 8
  %130 = load double, double* %8, align 8
  %131 = fcmp oge double %130, 0x4160000000000000
  br i1 %131, label %132, label %133

132:                                              ; preds = %109
  store i32 1, i32* %3, align 4
  br label %140

133:                                              ; preds = %109
  %134 = load double, double* %8, align 8
  %135 = fptosi double %134 to i32
  %136 = sub nsw i32 16777216, %135
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %138
  store i32 %136, i32* %139, align 4
  br label %140

140:                                              ; preds = %133, %132
  br label %141

141:                                              ; preds = %140, %106, %103
  %142 = load i32, i32* %7, align 4
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %172

144:                                              ; preds = %141
  %145 = load i32, i32* %6, align 4
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %172

147:                                              ; preds = %144
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 16777216, %151
  %153 = sitofp i32 %152 to double
  %154 = fmul double 1.000000e+00, %153
  %155 = load i32, i32* %4, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 16777216, %158
  %160 = sitofp i32 %159 to double
  %161 = fmul double %154, %160
  store double %161, double* %8, align 8
  %162 = load double, double* %8, align 8
  %163 = fcmp oge double %162, 0x4160000000000000
  br i1 %163, label %164, label %165

164:                                              ; preds = %147
  store i32 1, i32* %3, align 4
  br label %171

165:                                              ; preds = %147
  %166 = load double, double* %8, align 8
  %167 = fptosi double %166 to i32
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %169
  store i32 %167, i32* %170, align 4
  br label %171

171:                                              ; preds = %165, %164
  br label %172

172:                                              ; preds = %171, %144, %141
  %173 = load i32, i32* %2, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load i32, i32* %5, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %176, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %180, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %181

181:                                              ; preds = %175, %172
  %182 = load i32, i32* %3, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 4)
  br label %185

185:                                              ; preds = %184, %181
  br label %186

186:                                              ; preds = %185, %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @RMO_P(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef %3, i32* noundef %4)
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %18, label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 10
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %11
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0)
  br label %35

18:                                               ; preds = %14, %8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %24
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %29, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %33, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %28, %18
  br label %35

35:                                               ; preds = %34, %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SHIFTL_P(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [24 x i32], align 16
  %7 = alloca [24 x i32], align 16
  store i32 %0, i32* %2, align 4
  %8 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef %3, i32* noundef %4)
  %9 = load i32, i32* %3, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 10
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %1
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0)
  br label %54

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [24 x i32], [24 x i32]* %6, i64 0, i64 0
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 noundef %19, i32 noundef 3, i32* noundef %20)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %36, %15
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 24
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %25, %26
  %28 = add nsw i32 %27, 1
  %29 = call i32 @MOD(i32 noundef %28, i32 noundef 24)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [24 x i32], [24 x i32]* %6, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [24 x i32], [24 x i32]* %7, i64 0, i64 %34
  store i32 %32, i32* %35, align 4
  br label %36

36:                                               ; preds = %24
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %21, !llvm.loop !4

39:                                               ; preds = %21
  %40 = getelementptr inbounds [24 x i32], [24 x i32]* %7, i64 0, i64 0
  %41 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @BITS_TO_BYTE to i32 (i32*, i32, ...)*)(i32* noundef %40, i32 noundef 24)
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %43
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load i32, i32* %3, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %48, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %52, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %47, %39
  br label %54

54:                                               ; preds = %53, %14
  ret void
}

declare dso_local void @BYTES_TO_BITS(...) #1

declare dso_local i32 @BITS_TO_BYTE(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @SHIFTR_P(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [24 x i32], align 16
  %7 = alloca [24 x i32], align 16
  store i32 %0, i32* %2, align 4
  %8 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef %3, i32* noundef %4)
  %9 = load i32, i32* %3, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 10
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %1
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0)
  br label %64

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [24 x i32], [24 x i32]* %6, i64 0, i64 0
  call void (i32, i32, i32*, ...) bitcast (void (...)* @BYTES_TO_BITS to void (i32, i32, i32*, ...)*)(i32 noundef %19, i32 noundef 3, i32* noundef %20)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %46, %15
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 24
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = getelementptr inbounds [24 x i32], [24 x i32]* %6, i64 0, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [24 x i32], [24 x i32]* %7, i64 0, i64 %32
  store i32 %30, i32* %33, align 4
  br label %45

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [24 x i32], [24 x i32]* %6, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [24 x i32], [24 x i32]* %7, i64 0, i64 %43
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %34, %28
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %21, !llvm.loop !6

49:                                               ; preds = %21
  %50 = getelementptr inbounds [24 x i32], [24 x i32]* %7, i64 0, i64 0
  %51 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @BITS_TO_BYTE to i32 (i32*, i32, ...)*)(i32* noundef %50, i32 noundef 24)
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %53
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* %2, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load i32, i32* %3, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %58, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %62, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %57, %49
  br label %64

64:                                               ; preds = %63, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SUBR_P(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %8 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef %4, i32* noundef %5)
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 10
  br i1 %13, label %21, label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 10
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %14
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0)
  br label %185

21:                                               ; preds = %17, %11
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 8388608
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 -1, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 8388608
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 -1, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %69

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %69

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 16777216, %49
  %51 = add nsw i32 %45, %50
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %53
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %62, 16777216
  %64 = mul nsw i32 %63, 16777216
  %65 = sub nsw i32 %58, %64
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %67
  store i32 %65, i32* %68, align 4
  br label %69

69:                                               ; preds = %41, %38, %35
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %110

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %110

75:                                               ; preds = %72
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 16777216, %83
  %85 = add nsw i32 %79, %84
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %87
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = sdiv i32 %96, 16777216
  %98 = mul nsw i32 %97, 16777216
  %99 = sub nsw i32 %92, %98
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %101
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %106, 8388608
  br i1 %107, label %108, label %109

108:                                              ; preds = %75
  store i32 1, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %75
  br label %110

110:                                              ; preds = %109, %72, %69
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %137

113:                                              ; preds = %110
  %114 = load i32, i32* %6, align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %137

116:                                              ; preds = %113
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 16777216, %124
  %126 = add nsw i32 %120, %125
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %128
  store i32 %126, i32* %129, align 4
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = icmp sge i32 %133, 8388608
  br i1 %134, label %135, label %136

135:                                              ; preds = %116
  store i32 1, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %116
  br label %137

137:                                              ; preds = %136, %113, %110
  %138 = load i32, i32* %7, align 4
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %171

140:                                              ; preds = %137
  %141 = load i32, i32* %6, align 4
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %171

143:                                              ; preds = %140
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 16777216, %151
  %153 = add nsw i32 %147, %152
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %155
  store i32 %153, i32* %156, align 4
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = sdiv i32 %164, 16777216
  %166 = mul nsw i32 %165, 16777216
  %167 = sub nsw i32 %160, %166
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %169
  store i32 %167, i32* %170, align 4
  br label %171

171:                                              ; preds = %143, %140, %137
  %172 = load i32, i32* %2, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load i32, i32* %5, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_REG_NAME to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %175, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %176 = load i32, i32* %5, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef %179, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %180

180:                                              ; preds = %174, %171
  %181 = load i32, i32* %3, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 4)
  br label %184

184:                                              ; preds = %183, %180
  br label %185

185:                                              ; preds = %184, %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SVC_P(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef %3, i32* noundef %4)
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %1
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0)
  br label %20

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 1, i32 noundef %13)
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 noundef %17)
  br label %19

19:                                               ; preds = %16, %12
  br label %20

20:                                               ; preds = %19, %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @TIXR_P(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @FORMAT2 to i32 (i32*, i32*, ...)*)(i32* noundef %3, i32* noundef %4)
  %8 = load i32, i32* %3, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %1
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 0)
  br label %79

14:                                               ; preds = %10
  %15 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  %17 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  %18 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  %19 = sdiv i32 %18, 16777216
  %20 = mul nsw i32 %19, 16777216
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  %22 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  %23 = icmp eq i32 %22, 8388608
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 2, i32 noundef 4)
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24
  br label %79

30:                                               ; preds = %14
  %31 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  %32 = icmp sge i32 %31, 8388608
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  %35 = sub nsw i32 %34, 16777216
  store i32 %35, i32* %5, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp sge i32 %43, 8388608
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, 16777216
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %38
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 noundef 0)
  %53 = load i32, i32* %2, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 noundef %56, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  br label %58

58:                                               ; preds = %57, %48
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 noundef 1)
  %63 = load i32, i32* %2, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 noundef %66, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %62
  br label %68

68:                                               ; preds = %67, %58
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  call void (i32, ...) bitcast (void (...)* @SET_CC to void (i32, ...)*)(i32 noundef 2)
  %73 = load i32, i32* %2, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 1), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 noundef %76, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %72
  br label %78

78:                                               ; preds = %77, %68
  br label %79

79:                                               ; preds = %29, %78, %13
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
