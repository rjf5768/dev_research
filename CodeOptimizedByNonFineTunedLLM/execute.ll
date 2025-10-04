; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/bc/execute.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/bc/execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_function = type { i8, [16 x i8*], i32, %struct.bc_label_group*, %struct.arg_list*, %struct.arg_list* }
%struct.bc_label_group = type { [64 x i64], %struct.bc_label_group* }
%struct.arg_list = type { i32, %struct.arg_list* }
%struct.program_counter = type { i32, i32 }
%struct.estack_rec = type { %struct.bc_struct*, %struct.estack_rec* }
%struct.bc_struct = type { i32, i32, i32, i32, [1024 x i8] }
%struct.fstack_rec = type { i32, %struct.fstack_rec* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@had_sigint = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"interrupted execution\00", align 1
@functions = external dso_local global %struct.bc_function*, align 8
@pc = external dso_local global %struct.program_counter, align 4
@runtime_error = external dso_local global i8, align 1
@interactive = external dso_local global i8, align 1
@ex_stack = external dso_local global %struct.estack_rec*, align 8
@c_code = external dso_local global i8, align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Function %s not defined.\00", align 1
@f_names = external dso_local global i8**, align 8
@i_base = external dso_local global i32, align 4
@fn_stack = external dso_local global %struct.fstack_rec*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Return from main program.\00", align 1
@o_base = external dso_local global i32, align 4
@scale = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Square root of a negative number\00", align 1
@_zero_ = external dso_local global %struct.bc_struct*, align 8
@_one_ = external dso_local global %struct.bc_struct*, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"Divide by zero\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Modulo by zero\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"bad instruction: inst=%c\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Interruption completed.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @stop_execution(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* @had_sigint, align 4
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  call void (i8*, ...) @rt_error(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local void @rt_error(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @byte(%struct.program_counter* noundef %0) #0 {
  %2 = alloca %struct.program_counter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.program_counter* %0, %struct.program_counter** %2, align 8
  %5 = load %struct.program_counter*, %struct.program_counter** %2, align 8
  %6 = getelementptr inbounds %struct.program_counter, %struct.program_counter* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = ashr i32 %7, 10
  store i32 %8, i32* %3, align 4
  %9 = load %struct.program_counter*, %struct.program_counter** %2, align 8
  %10 = getelementptr inbounds %struct.program_counter, %struct.program_counter* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = srem i32 %11, 1024
  store i32 %13, i32* %4, align 4
  %14 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %15 = load %struct.program_counter*, %struct.program_counter** %2, align 8
  %16 = getelementptr inbounds %struct.program_counter, %struct.program_counter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %14, i64 %18
  %20 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %19, i32 0, i32 1
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [16 x i8*], [16 x i8*]* %20, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  ret i8 %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @execute() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bc_label_group*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bc_struct*, align 8
  %11 = alloca %struct.arg_list*, align 8
  %12 = alloca %struct.bc_struct*, align 8
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  store i8 0, i8* @runtime_error, align 1
  call void @init_num(%struct.bc_struct** noundef %10)
  %13 = load i8, i8* @interactive, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef @stop_execution) #6
  store i32 0, i32* @had_sigint, align 4
  br label %17

17:                                               ; preds = %15, %0
  br label %18

18:                                               ; preds = %771, %17
  %19 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  %20 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %20, i64 %22
  %24 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %19, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i8, i8* @runtime_error, align 1
  %29 = icmp ne i8 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %27, %18
  %32 = phi i1 [ false, %18 ], [ %30, %27 ]
  br i1 %32, label %33, label %772

33:                                               ; preds = %31
  %34 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  store i8 %34, i8* %5, align 1
  %35 = load i8, i8* %5, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %768 [
    i32 65, label %37
    i32 66, label %52
    i32 90, label %52
    i32 74, label %61
    i32 67, label %115
    i32 68, label %166
    i32 75, label %170
    i32 76, label %186
    i32 77, label %201
    i32 79, label %217
    i32 82, label %253
    i32 83, label %274
    i32 84, label %289
    i32 87, label %295
    i32 80, label %295
    i32 99, label %311
    i32 100, label %380
    i32 104, label %395
    i32 105, label %396
    i32 108, label %411
    i32 110, label %426
    i32 112, label %433
    i32 115, label %434
    i32 119, label %449
    i32 120, label %463
    i32 48, label %483
    i32 49, label %485
    i32 33, label %487
    i32 38, label %493
    i32 124, label %517
    i32 43, label %541
    i32 45, label %555
    i32 42, label %569
    i32 47, label %584
    i32 37, label %604
    i32 94, label %628
    i32 61, label %660
    i32 35, label %678
    i32 60, label %696
    i32 123, label %714
    i32 62, label %732
    i32 125, label %750
  ]

37:                                               ; preds = %33
  %38 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %39 = zext i8 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 128
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 %44, 8
  %46 = and i32 %45, 127
  %47 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %46, %48
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %43, %37
  %51 = load i32, i32* %8, align 4
  call void @incr_array(i32 noundef %51)
  br label %771

52:                                               ; preds = %33, %33
  %53 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %54 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %53, i32 0, i32 0
  %55 = load %struct.bc_struct*, %struct.bc_struct** %54, align 8
  %56 = call signext i8 @is_zero(%struct.bc_struct* noundef %55)
  %57 = icmp ne i8 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* @c_code, align 1
  call void @pop()
  br label %61

61:                                               ; preds = %33, %52
  %62 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %63 = zext i8 %62 to i32
  store i32 %63, i32* %1, align 4
  %64 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %65 = zext i8 %64 to i32
  %66 = shl i32 %65, 8
  %67 = load i32, i32* %1, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %1, align 4
  %69 = load i8, i8* %5, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 74
  br i1 %71, label %87, label %72

72:                                               ; preds = %61
  %73 = load i8, i8* %5, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 66
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i8, i8* @c_code, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %76, %72
  %81 = load i8, i8* %5, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 90
  br i1 %83, label %84, label %114

84:                                               ; preds = %80
  %85 = load i8, i8* @c_code, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %114, label %87

87:                                               ; preds = %84, %76, %61
  %88 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %88, i64 %90
  %92 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %91, i32 0, i32 3
  %93 = load %struct.bc_label_group*, %struct.bc_label_group** %92, align 8
  store %struct.bc_label_group* %93, %struct.bc_label_group** %4, align 8
  %94 = load i32, i32* %1, align 4
  %95 = ashr i32 %94, 6
  store i32 %95, i32* %2, align 4
  %96 = load i32, i32* %1, align 4
  %97 = srem i32 %96, 64
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %102, %87
  %99 = load i32, i32* %2, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %2, align 4
  %101 = icmp sgt i32 %99, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load %struct.bc_label_group*, %struct.bc_label_group** %4, align 8
  %104 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %103, i32 0, i32 1
  %105 = load %struct.bc_label_group*, %struct.bc_label_group** %104, align 8
  store %struct.bc_label_group* %105, %struct.bc_label_group** %4, align 8
  br label %98, !llvm.loop !4

106:                                              ; preds = %98
  %107 = load %struct.bc_label_group*, %struct.bc_label_group** %4, align 8
  %108 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %107, i32 0, i32 0
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [64 x i64], [64 x i64]* %108, i64 0, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  br label %114

114:                                              ; preds = %106, %84, %80
  br label %771

115:                                              ; preds = %33
  %116 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %117 = zext i8 %116 to i32
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = and i32 %118, 128
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load i32, i32* %7, align 4
  %123 = shl i32 %122, 8
  %124 = and i32 %123, 127
  %125 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %126 = zext i8 %125 to i32
  %127 = add nsw i32 %124, %126
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %121, %115
  %129 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %129, i64 %131
  %133 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %132, i32 0, i32 0
  %134 = load i8, i8* %133, align 8
  %135 = icmp ne i8 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %128
  %137 = load i8**, i8*** @f_names, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  call void (i8*, ...) @rt_error(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* noundef %141)
  br label %771

142:                                              ; preds = %128
  %143 = load i32, i32* %7, align 4
  call void @process_params(%struct.program_counter* noundef @pc, i32 noundef %143)
  %144 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %144, i64 %146
  %148 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %147, i32 0, i32 5
  %149 = load %struct.arg_list*, %struct.arg_list** %148, align 8
  store %struct.arg_list* %149, %struct.arg_list** %11, align 8
  br label %150

150:                                              ; preds = %157, %142
  %151 = load %struct.arg_list*, %struct.arg_list** %11, align 8
  %152 = icmp ne %struct.arg_list* %151, null
  br i1 %152, label %153, label %161

153:                                              ; preds = %150
  %154 = load %struct.arg_list*, %struct.arg_list** %11, align 8
  %155 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  call void @auto_var(i32 noundef %156)
  br label %157

157:                                              ; preds = %153
  %158 = load %struct.arg_list*, %struct.arg_list** %11, align 8
  %159 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %158, i32 0, i32 1
  %160 = load %struct.arg_list*, %struct.arg_list** %159, align 8
  store %struct.arg_list* %160, %struct.arg_list** %11, align 8
  br label %150, !llvm.loop !6

161:                                              ; preds = %150
  %162 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  call void @fpush(i32 noundef %162)
  %163 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  call void @fpush(i32 noundef %163)
  %164 = load i32, i32* @i_base, align 4
  call void @fpush(i32 noundef %164)
  %165 = load i32, i32* %7, align 4
  store i32 %165, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  br label %771

166:                                              ; preds = %33
  %167 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %168 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %167, i32 0, i32 0
  %169 = load %struct.bc_struct*, %struct.bc_struct** %168, align 8
  call void @push_copy(%struct.bc_struct* noundef %169)
  br label %771

170:                                              ; preds = %33
  %171 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = load i32, i32* @i_base, align 4
  store i32 %174, i32* %9, align 4
  br label %179

175:                                              ; preds = %170
  %176 = load %struct.fstack_rec*, %struct.fstack_rec** @fn_stack, align 8
  %177 = getelementptr inbounds %struct.fstack_rec, %struct.fstack_rec* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %175, %173
  %180 = load i32, i32* %9, align 4
  %181 = icmp eq i32 %180, 10
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  call void @push_b10_const(%struct.program_counter* noundef @pc)
  br label %185

183:                                              ; preds = %179
  %184 = load i32, i32* %9, align 4
  call void @push_constant(i8 ()* noundef @prog_char, i32 noundef %184)
  br label %185

185:                                              ; preds = %183, %182
  br label %771

186:                                              ; preds = %33
  %187 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %188 = zext i8 %187 to i32
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %8, align 4
  %190 = and i32 %189, 128
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %186
  %193 = load i32, i32* %8, align 4
  %194 = shl i32 %193, 8
  %195 = and i32 %194, 127
  %196 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %197 = zext i8 %196 to i32
  %198 = add nsw i32 %195, %197
  store i32 %198, i32* %8, align 4
  br label %199

199:                                              ; preds = %192, %186
  %200 = load i32, i32* %8, align 4
  call void @load_array(i32 noundef %200)
  br label %771

201:                                              ; preds = %33
  %202 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %203 = zext i8 %202 to i32
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %8, align 4
  %205 = and i32 %204, 128
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %201
  %208 = load i32, i32* %8, align 4
  %209 = shl i32 %208, 8
  %210 = and i32 %209, 127
  %211 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %212 = zext i8 %211 to i32
  %213 = add nsw i32 %210, %212
  store i32 %213, i32* %8, align 4
  br label %214

214:                                              ; preds = %207, %201
  %215 = load i32, i32* %8, align 4
  %216 = trunc i32 %215 to i8
  call void @decr_array(i8 noundef signext %216)
  br label %771

217:                                              ; preds = %33
  br label %218

218:                                              ; preds = %245, %217
  %219 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  store i8 %219, i8* %6, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp ne i32 %220, 34
  br i1 %221, label %222, label %246

222:                                              ; preds = %218
  %223 = load i8, i8* %6, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp ne i32 %224, 92
  br i1 %225, label %226, label %228

226:                                              ; preds = %222
  %227 = load i8, i8* %6, align 1
  call void @out_char(i8 noundef signext %227)
  br label %245

228:                                              ; preds = %222
  %229 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  store i8 %229, i8* %6, align 1
  %230 = load i8, i8* %6, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 34
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  br label %246

234:                                              ; preds = %228
  %235 = load i8, i8* %6, align 1
  %236 = sext i8 %235 to i32
  switch i32 %236, label %243 [
    i32 110, label %237
    i32 116, label %238
    i32 114, label %239
    i32 98, label %240
    i32 102, label %241
    i32 92, label %242
  ]

237:                                              ; preds = %234
  call void @out_char(i8 noundef signext 10)
  br label %244

238:                                              ; preds = %234
  call void @out_char(i8 noundef signext 9)
  br label %244

239:                                              ; preds = %234
  call void @out_char(i8 noundef signext 13)
  br label %244

240:                                              ; preds = %234
  call void @out_char(i8 noundef signext 7)
  br label %244

241:                                              ; preds = %234
  call void @out_char(i8 noundef signext 12)
  br label %244

242:                                              ; preds = %234
  call void @out_char(i8 noundef signext 92)
  br label %244

243:                                              ; preds = %234
  br label %244

244:                                              ; preds = %243, %242, %241, %240, %239, %238, %237
  br label %245

245:                                              ; preds = %244, %226
  br label %218, !llvm.loop !7

246:                                              ; preds = %233, %218
  %247 = load i8, i8* @interactive, align 1
  %248 = icmp ne i8 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %251 = call i32 @fflush(%struct._IO_FILE* noundef %250)
  br label %252

252:                                              ; preds = %249, %246
  br label %771

253:                                              ; preds = %33
  %254 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %272

256:                                              ; preds = %253
  %257 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %258 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %257, i64 %259
  %261 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %260, i32 0, i32 5
  %262 = load %struct.arg_list*, %struct.arg_list** %261, align 8
  call void @pop_vars(%struct.arg_list* noundef %262)
  %263 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %264 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %263, i64 %265
  %267 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %266, i32 0, i32 4
  %268 = load %struct.arg_list*, %struct.arg_list** %267, align 8
  call void @pop_vars(%struct.arg_list* noundef %268)
  %269 = call i32 @fpop()
  %270 = call i32 @fpop()
  store i32 %270, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  %271 = call i32 @fpop()
  store i32 %271, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  br label %273

272:                                              ; preds = %253
  call void (i8*, ...) @rt_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %273

273:                                              ; preds = %272, %256
  br label %771

274:                                              ; preds = %33
  %275 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %276 = zext i8 %275 to i32
  store i32 %276, i32* %8, align 4
  %277 = load i32, i32* %8, align 4
  %278 = and i32 %277, 128
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %274
  %281 = load i32, i32* %8, align 4
  %282 = shl i32 %281, 8
  %283 = and i32 %282, 127
  %284 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %285 = zext i8 %284 to i32
  %286 = add nsw i32 %283, %285
  store i32 %286, i32* %8, align 4
  br label %287

287:                                              ; preds = %280, %274
  %288 = load i32, i32* %8, align 4
  call void @store_array(i32 noundef %288)
  br label %771

289:                                              ; preds = %33
  %290 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %291 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %290, i32 0, i32 0
  %292 = load %struct.bc_struct*, %struct.bc_struct** %291, align 8
  %293 = call signext i8 @is_zero(%struct.bc_struct* noundef %292)
  store i8 %293, i8* @c_code, align 1
  %294 = load i8, i8* @c_code, align 1
  call void @assign(i8 noundef signext %294)
  br label %771

295:                                              ; preds = %33, %33
  %296 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %297 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %296, i32 0, i32 0
  %298 = load %struct.bc_struct*, %struct.bc_struct** %297, align 8
  %299 = load i32, i32* @o_base, align 4
  call void @out_num(%struct.bc_struct* noundef %298, i32 noundef %299, void (i32)* noundef bitcast (void (i8)* @out_char to void (i32)*))
  %300 = load i8, i8* %5, align 1
  %301 = sext i8 %300 to i32
  %302 = icmp eq i32 %301, 87
  br i1 %302, label %303, label %304

303:                                              ; preds = %295
  call void @out_char(i8 noundef signext 10)
  br label %304

304:                                              ; preds = %303, %295
  call void @store_var(i32 noundef 3)
  %305 = load i8, i8* @interactive, align 1
  %306 = icmp ne i8 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %309 = call i32 @fflush(%struct._IO_FILE* noundef %308)
  br label %310

310:                                              ; preds = %307, %304
  br label %771

311:                                              ; preds = %33
  %312 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %313 = zext i8 %312 to i32
  store i32 %313, i32* %7, align 4
  %314 = load i32, i32* %7, align 4
  switch i32 %314, label %379 [
    i32 76, label %315
    i32 83, label %361
    i32 82, label %369
    i32 73, label %377
  ]

315:                                              ; preds = %311
  %316 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %317 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %316, i32 0, i32 0
  %318 = load %struct.bc_struct*, %struct.bc_struct** %317, align 8
  %319 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = icmp eq i32 %320, 1
  br i1 %321, label %322, label %346

322:                                              ; preds = %315
  %323 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %324 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %323, i32 0, i32 0
  %325 = load %struct.bc_struct*, %struct.bc_struct** %324, align 8
  %326 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %346

329:                                              ; preds = %322
  %330 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %331 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %330, i32 0, i32 0
  %332 = load %struct.bc_struct*, %struct.bc_struct** %331, align 8
  %333 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %332, i32 0, i32 4
  %334 = getelementptr inbounds [1024 x i8], [1024 x i8]* %333, i64 0, i64 0
  %335 = load i8, i8* %334, align 4
  %336 = sext i8 %335 to i32
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %346

338:                                              ; preds = %329
  %339 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %340 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %339, i32 0, i32 0
  %341 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %342 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %341, i32 0, i32 0
  %343 = load %struct.bc_struct*, %struct.bc_struct** %342, align 8
  %344 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 4
  call void @int2num(%struct.bc_struct** noundef %340, i32 noundef %345)
  br label %360

346:                                              ; preds = %329, %322, %315
  %347 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %348 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %347, i32 0, i32 0
  %349 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %350 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %349, i32 0, i32 0
  %351 = load %struct.bc_struct*, %struct.bc_struct** %350, align 8
  %352 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %355 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %354, i32 0, i32 0
  %356 = load %struct.bc_struct*, %struct.bc_struct** %355, align 8
  %357 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 4
  %359 = add nsw i32 %353, %358
  call void @int2num(%struct.bc_struct** noundef %348, i32 noundef %359)
  br label %360

360:                                              ; preds = %346, %338
  br label %379

361:                                              ; preds = %311
  %362 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %363 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %362, i32 0, i32 0
  %364 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %365 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %364, i32 0, i32 0
  %366 = load %struct.bc_struct*, %struct.bc_struct** %365, align 8
  %367 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 4
  call void @int2num(%struct.bc_struct** noundef %363, i32 noundef %368)
  br label %379

369:                                              ; preds = %311
  %370 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %371 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %370, i32 0, i32 0
  %372 = load i32, i32* @scale, align 4
  %373 = call i32 @bc_sqrt(%struct.bc_struct** noundef %371, i32 noundef %372)
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %376, label %375

375:                                              ; preds = %369
  call void (i8*, ...) @rt_error(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %376

376:                                              ; preds = %375, %369
  br label %379

377:                                              ; preds = %311
  %378 = load i32, i32* @i_base, align 4
  call void @push_constant(i8 ()* noundef @input_char, i32 noundef %378)
  br label %379

379:                                              ; preds = %311, %377, %376, %361, %360
  br label %771

380:                                              ; preds = %33
  %381 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %382 = zext i8 %381 to i32
  store i32 %382, i32* %8, align 4
  %383 = load i32, i32* %8, align 4
  %384 = and i32 %383, 128
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %393

386:                                              ; preds = %380
  %387 = load i32, i32* %8, align 4
  %388 = shl i32 %387, 8
  %389 = and i32 %388, 127
  %390 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %391 = zext i8 %390 to i32
  %392 = add nsw i32 %389, %391
  store i32 %392, i32* %8, align 4
  br label %393

393:                                              ; preds = %386, %380
  %394 = load i32, i32* %8, align 4
  call void @decr_var(i32 noundef %394)
  br label %771

395:                                              ; preds = %33
  call void @exit(i32 noundef 0) #7
  unreachable

396:                                              ; preds = %33
  %397 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %398 = zext i8 %397 to i32
  store i32 %398, i32* %8, align 4
  %399 = load i32, i32* %8, align 4
  %400 = and i32 %399, 128
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %409

402:                                              ; preds = %396
  %403 = load i32, i32* %8, align 4
  %404 = shl i32 %403, 8
  %405 = and i32 %404, 127
  %406 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %407 = zext i8 %406 to i32
  %408 = add nsw i32 %405, %407
  store i32 %408, i32* %8, align 4
  br label %409

409:                                              ; preds = %402, %396
  %410 = load i32, i32* %8, align 4
  call void @incr_var(i32 noundef %410)
  br label %771

411:                                              ; preds = %33
  %412 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %413 = zext i8 %412 to i32
  store i32 %413, i32* %8, align 4
  %414 = load i32, i32* %8, align 4
  %415 = and i32 %414, 128
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %424

417:                                              ; preds = %411
  %418 = load i32, i32* %8, align 4
  %419 = shl i32 %418, 8
  %420 = and i32 %419, 127
  %421 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %422 = zext i8 %421 to i32
  %423 = add nsw i32 %420, %422
  store i32 %423, i32* %8, align 4
  br label %424

424:                                              ; preds = %417, %411
  %425 = load i32, i32* %8, align 4
  call void @load_var(i32 noundef %425)
  br label %771

426:                                              ; preds = %33
  %427 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %428 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %429 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %428, i32 0, i32 0
  %430 = load %struct.bc_struct*, %struct.bc_struct** %429, align 8
  %431 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %432 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %431, i32 0, i32 0
  call void @bc_sub(%struct.bc_struct* noundef %427, %struct.bc_struct* noundef %430, %struct.bc_struct** noundef %432)
  br label %771

433:                                              ; preds = %33
  call void @pop()
  br label %771

434:                                              ; preds = %33
  %435 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %436 = zext i8 %435 to i32
  store i32 %436, i32* %8, align 4
  %437 = load i32, i32* %8, align 4
  %438 = and i32 %437, 128
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %447

440:                                              ; preds = %434
  %441 = load i32, i32* %8, align 4
  %442 = shl i32 %441, 8
  %443 = and i32 %442, 127
  %444 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  %445 = zext i8 %444 to i32
  %446 = add nsw i32 %443, %445
  store i32 %446, i32* %8, align 4
  br label %447

447:                                              ; preds = %440, %434
  %448 = load i32, i32* %8, align 4
  call void @store_var(i32 noundef %448)
  br label %771

449:                                              ; preds = %33
  br label %450

450:                                              ; preds = %454, %449
  %451 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  store i8 %451, i8* %6, align 1
  %452 = sext i8 %451 to i32
  %453 = icmp ne i32 %452, 34
  br i1 %453, label %454, label %456

454:                                              ; preds = %450
  %455 = load i8, i8* %6, align 1
  call void @out_char(i8 noundef signext %455)
  br label %450, !llvm.loop !8

456:                                              ; preds = %450
  %457 = load i8, i8* @interactive, align 1
  %458 = icmp ne i8 %457, 0
  br i1 %458, label %459, label %462

459:                                              ; preds = %456
  %460 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %461 = call i32 @fflush(%struct._IO_FILE* noundef %460)
  br label %462

462:                                              ; preds = %459, %456
  br label %771

463:                                              ; preds = %33
  %464 = call signext i8 @check_stack(i32 noundef 2)
  %465 = icmp ne i8 %464, 0
  br i1 %465, label %466, label %482

466:                                              ; preds = %463
  %467 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %468 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %467, i32 0, i32 0
  %469 = load %struct.bc_struct*, %struct.bc_struct** %468, align 8
  store %struct.bc_struct* %469, %struct.bc_struct** %12, align 8
  %470 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %471 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %470, i32 0, i32 1
  %472 = load %struct.estack_rec*, %struct.estack_rec** %471, align 8
  %473 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %472, i32 0, i32 0
  %474 = load %struct.bc_struct*, %struct.bc_struct** %473, align 8
  %475 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %476 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %475, i32 0, i32 0
  store %struct.bc_struct* %474, %struct.bc_struct** %476, align 8
  %477 = load %struct.bc_struct*, %struct.bc_struct** %12, align 8
  %478 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %479 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %478, i32 0, i32 1
  %480 = load %struct.estack_rec*, %struct.estack_rec** %479, align 8
  %481 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %480, i32 0, i32 0
  store %struct.bc_struct* %477, %struct.bc_struct** %481, align 8
  br label %482

482:                                              ; preds = %466, %463
  br label %771

483:                                              ; preds = %33
  %484 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  call void @push_copy(%struct.bc_struct* noundef %484)
  br label %771

485:                                              ; preds = %33
  %486 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  call void @push_copy(%struct.bc_struct* noundef %486)
  br label %771

487:                                              ; preds = %33
  %488 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %489 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %488, i32 0, i32 0
  %490 = load %struct.bc_struct*, %struct.bc_struct** %489, align 8
  %491 = call signext i8 @is_zero(%struct.bc_struct* noundef %490)
  store i8 %491, i8* @c_code, align 1
  %492 = load i8, i8* @c_code, align 1
  call void @assign(i8 noundef signext %492)
  br label %771

493:                                              ; preds = %33
  %494 = call signext i8 @check_stack(i32 noundef 2)
  %495 = icmp ne i8 %494, 0
  br i1 %495, label %496, label %516

496:                                              ; preds = %493
  %497 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %498 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %497, i32 0, i32 1
  %499 = load %struct.estack_rec*, %struct.estack_rec** %498, align 8
  %500 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %499, i32 0, i32 0
  %501 = load %struct.bc_struct*, %struct.bc_struct** %500, align 8
  %502 = call signext i8 @is_zero(%struct.bc_struct* noundef %501)
  %503 = icmp ne i8 %502, 0
  br i1 %503, label %511, label %504

504:                                              ; preds = %496
  %505 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %506 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %505, i32 0, i32 0
  %507 = load %struct.bc_struct*, %struct.bc_struct** %506, align 8
  %508 = call signext i8 @is_zero(%struct.bc_struct* noundef %507)
  %509 = icmp ne i8 %508, 0
  %510 = xor i1 %509, true
  br label %511

511:                                              ; preds = %504, %496
  %512 = phi i1 [ false, %496 ], [ %510, %504 ]
  %513 = zext i1 %512 to i32
  %514 = trunc i32 %513 to i8
  store i8 %514, i8* @c_code, align 1
  call void @pop()
  %515 = load i8, i8* @c_code, align 1
  call void @assign(i8 noundef signext %515)
  br label %516

516:                                              ; preds = %511, %493
  br label %771

517:                                              ; preds = %33
  %518 = call signext i8 @check_stack(i32 noundef 2)
  %519 = icmp ne i8 %518, 0
  br i1 %519, label %520, label %540

520:                                              ; preds = %517
  %521 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %522 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %521, i32 0, i32 1
  %523 = load %struct.estack_rec*, %struct.estack_rec** %522, align 8
  %524 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %523, i32 0, i32 0
  %525 = load %struct.bc_struct*, %struct.bc_struct** %524, align 8
  %526 = call signext i8 @is_zero(%struct.bc_struct* noundef %525)
  %527 = icmp ne i8 %526, 0
  br i1 %527, label %528, label %535

528:                                              ; preds = %520
  %529 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %530 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %529, i32 0, i32 0
  %531 = load %struct.bc_struct*, %struct.bc_struct** %530, align 8
  %532 = call signext i8 @is_zero(%struct.bc_struct* noundef %531)
  %533 = icmp ne i8 %532, 0
  %534 = xor i1 %533, true
  br label %535

535:                                              ; preds = %528, %520
  %536 = phi i1 [ true, %520 ], [ %534, %528 ]
  %537 = zext i1 %536 to i32
  %538 = trunc i32 %537 to i8
  store i8 %538, i8* @c_code, align 1
  call void @pop()
  %539 = load i8, i8* @c_code, align 1
  call void @assign(i8 noundef signext %539)
  br label %540

540:                                              ; preds = %535, %517
  br label %771

541:                                              ; preds = %33
  %542 = call signext i8 @check_stack(i32 noundef 2)
  %543 = icmp ne i8 %542, 0
  br i1 %543, label %544, label %554

544:                                              ; preds = %541
  %545 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %546 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %545, i32 0, i32 1
  %547 = load %struct.estack_rec*, %struct.estack_rec** %546, align 8
  %548 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %547, i32 0, i32 0
  %549 = load %struct.bc_struct*, %struct.bc_struct** %548, align 8
  %550 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %551 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %550, i32 0, i32 0
  %552 = load %struct.bc_struct*, %struct.bc_struct** %551, align 8
  call void @bc_add(%struct.bc_struct* noundef %549, %struct.bc_struct* noundef %552, %struct.bc_struct** noundef %10)
  call void @pop()
  call void @pop()
  %553 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  call void @push_num(%struct.bc_struct* noundef %553)
  call void @init_num(%struct.bc_struct** noundef %10)
  br label %554

554:                                              ; preds = %544, %541
  br label %771

555:                                              ; preds = %33
  %556 = call signext i8 @check_stack(i32 noundef 2)
  %557 = icmp ne i8 %556, 0
  br i1 %557, label %558, label %568

558:                                              ; preds = %555
  %559 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %560 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %559, i32 0, i32 1
  %561 = load %struct.estack_rec*, %struct.estack_rec** %560, align 8
  %562 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %561, i32 0, i32 0
  %563 = load %struct.bc_struct*, %struct.bc_struct** %562, align 8
  %564 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %565 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %564, i32 0, i32 0
  %566 = load %struct.bc_struct*, %struct.bc_struct** %565, align 8
  call void @bc_sub(%struct.bc_struct* noundef %563, %struct.bc_struct* noundef %566, %struct.bc_struct** noundef %10)
  call void @pop()
  call void @pop()
  %567 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  call void @push_num(%struct.bc_struct* noundef %567)
  call void @init_num(%struct.bc_struct** noundef %10)
  br label %568

568:                                              ; preds = %558, %555
  br label %771

569:                                              ; preds = %33
  %570 = call signext i8 @check_stack(i32 noundef 2)
  %571 = icmp ne i8 %570, 0
  br i1 %571, label %572, label %583

572:                                              ; preds = %569
  %573 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %574 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %573, i32 0, i32 1
  %575 = load %struct.estack_rec*, %struct.estack_rec** %574, align 8
  %576 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %575, i32 0, i32 0
  %577 = load %struct.bc_struct*, %struct.bc_struct** %576, align 8
  %578 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %579 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %578, i32 0, i32 0
  %580 = load %struct.bc_struct*, %struct.bc_struct** %579, align 8
  %581 = load i32, i32* @scale, align 4
  call void @bc_multiply(%struct.bc_struct* noundef %577, %struct.bc_struct* noundef %580, %struct.bc_struct** noundef %10, i32 noundef %581)
  call void @pop()
  call void @pop()
  %582 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  call void @push_num(%struct.bc_struct* noundef %582)
  call void @init_num(%struct.bc_struct** noundef %10)
  br label %583

583:                                              ; preds = %572, %569
  br label %771

584:                                              ; preds = %33
  %585 = call signext i8 @check_stack(i32 noundef 2)
  %586 = icmp ne i8 %585, 0
  br i1 %586, label %587, label %603

587:                                              ; preds = %584
  %588 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %589 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %588, i32 0, i32 1
  %590 = load %struct.estack_rec*, %struct.estack_rec** %589, align 8
  %591 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %590, i32 0, i32 0
  %592 = load %struct.bc_struct*, %struct.bc_struct** %591, align 8
  %593 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %594 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %593, i32 0, i32 0
  %595 = load %struct.bc_struct*, %struct.bc_struct** %594, align 8
  %596 = load i32, i32* @scale, align 4
  %597 = call i32 @bc_divide(%struct.bc_struct* noundef %592, %struct.bc_struct* noundef %595, %struct.bc_struct** noundef %10, i32 noundef %596)
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %601

599:                                              ; preds = %587
  call void @pop()
  call void @pop()
  %600 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  call void @push_num(%struct.bc_struct* noundef %600)
  call void @init_num(%struct.bc_struct** noundef %10)
  br label %602

601:                                              ; preds = %587
  call void (i8*, ...) @rt_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %602

602:                                              ; preds = %601, %599
  br label %603

603:                                              ; preds = %602, %584
  br label %771

604:                                              ; preds = %33
  %605 = call signext i8 @check_stack(i32 noundef 2)
  %606 = icmp ne i8 %605, 0
  br i1 %606, label %607, label %627

607:                                              ; preds = %604
  %608 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %609 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %608, i32 0, i32 0
  %610 = load %struct.bc_struct*, %struct.bc_struct** %609, align 8
  %611 = call signext i8 @is_zero(%struct.bc_struct* noundef %610)
  %612 = icmp ne i8 %611, 0
  br i1 %612, label %613, label %614

613:                                              ; preds = %607
  call void (i8*, ...) @rt_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %626

614:                                              ; preds = %607
  %615 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %616 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %615, i32 0, i32 1
  %617 = load %struct.estack_rec*, %struct.estack_rec** %616, align 8
  %618 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %617, i32 0, i32 0
  %619 = load %struct.bc_struct*, %struct.bc_struct** %618, align 8
  %620 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %621 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %620, i32 0, i32 0
  %622 = load %struct.bc_struct*, %struct.bc_struct** %621, align 8
  %623 = load i32, i32* @scale, align 4
  %624 = call i32 @bc_modulo(%struct.bc_struct* noundef %619, %struct.bc_struct* noundef %622, %struct.bc_struct** noundef %10, i32 noundef %623)
  call void @pop()
  call void @pop()
  %625 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  call void @push_num(%struct.bc_struct* noundef %625)
  call void @init_num(%struct.bc_struct** noundef %10)
  br label %626

626:                                              ; preds = %614, %613
  br label %627

627:                                              ; preds = %626, %604
  br label %771

628:                                              ; preds = %33
  %629 = call signext i8 @check_stack(i32 noundef 2)
  %630 = icmp ne i8 %629, 0
  br i1 %630, label %631, label %659

631:                                              ; preds = %628
  %632 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %633 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %632, i32 0, i32 1
  %634 = load %struct.estack_rec*, %struct.estack_rec** %633, align 8
  %635 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %634, i32 0, i32 0
  %636 = load %struct.bc_struct*, %struct.bc_struct** %635, align 8
  %637 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %638 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %637, i32 0, i32 0
  %639 = load %struct.bc_struct*, %struct.bc_struct** %638, align 8
  %640 = load i32, i32* @scale, align 4
  call void @bc_raise(%struct.bc_struct* noundef %636, %struct.bc_struct* noundef %639, %struct.bc_struct** noundef %10, i32 noundef %640)
  %641 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %642 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %641, i32 0, i32 1
  %643 = load %struct.estack_rec*, %struct.estack_rec** %642, align 8
  %644 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %643, i32 0, i32 0
  %645 = load %struct.bc_struct*, %struct.bc_struct** %644, align 8
  %646 = call signext i8 @is_zero(%struct.bc_struct* noundef %645)
  %647 = sext i8 %646 to i32
  %648 = icmp ne i32 %647, 0
  br i1 %648, label %649, label %657

649:                                              ; preds = %631
  %650 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %651 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %650, i32 0, i32 0
  %652 = load %struct.bc_struct*, %struct.bc_struct** %651, align 8
  %653 = call signext i8 @is_neg(%struct.bc_struct* noundef %652)
  %654 = sext i8 %653 to i32
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %656, label %657

656:                                              ; preds = %649
  call void (i8*, ...) @rt_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %657

657:                                              ; preds = %656, %649, %631
  call void @pop()
  call void @pop()
  %658 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  call void @push_num(%struct.bc_struct* noundef %658)
  call void @init_num(%struct.bc_struct** noundef %10)
  br label %659

659:                                              ; preds = %657, %628
  br label %771

660:                                              ; preds = %33
  %661 = call signext i8 @check_stack(i32 noundef 2)
  %662 = icmp ne i8 %661, 0
  br i1 %662, label %663, label %677

663:                                              ; preds = %660
  %664 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %665 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %664, i32 0, i32 1
  %666 = load %struct.estack_rec*, %struct.estack_rec** %665, align 8
  %667 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %666, i32 0, i32 0
  %668 = load %struct.bc_struct*, %struct.bc_struct** %667, align 8
  %669 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %670 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %669, i32 0, i32 0
  %671 = load %struct.bc_struct*, %struct.bc_struct** %670, align 8
  %672 = call i32 @bc_compare(%struct.bc_struct* noundef %668, %struct.bc_struct* noundef %671)
  %673 = icmp eq i32 %672, 0
  %674 = zext i1 %673 to i32
  %675 = trunc i32 %674 to i8
  store i8 %675, i8* @c_code, align 1
  call void @pop()
  %676 = load i8, i8* @c_code, align 1
  call void @assign(i8 noundef signext %676)
  br label %677

677:                                              ; preds = %663, %660
  br label %771

678:                                              ; preds = %33
  %679 = call signext i8 @check_stack(i32 noundef 2)
  %680 = icmp ne i8 %679, 0
  br i1 %680, label %681, label %695

681:                                              ; preds = %678
  %682 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %683 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %682, i32 0, i32 1
  %684 = load %struct.estack_rec*, %struct.estack_rec** %683, align 8
  %685 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %684, i32 0, i32 0
  %686 = load %struct.bc_struct*, %struct.bc_struct** %685, align 8
  %687 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %688 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %687, i32 0, i32 0
  %689 = load %struct.bc_struct*, %struct.bc_struct** %688, align 8
  %690 = call i32 @bc_compare(%struct.bc_struct* noundef %686, %struct.bc_struct* noundef %689)
  %691 = icmp ne i32 %690, 0
  %692 = zext i1 %691 to i32
  %693 = trunc i32 %692 to i8
  store i8 %693, i8* @c_code, align 1
  call void @pop()
  %694 = load i8, i8* @c_code, align 1
  call void @assign(i8 noundef signext %694)
  br label %695

695:                                              ; preds = %681, %678
  br label %771

696:                                              ; preds = %33
  %697 = call signext i8 @check_stack(i32 noundef 2)
  %698 = icmp ne i8 %697, 0
  br i1 %698, label %699, label %713

699:                                              ; preds = %696
  %700 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %701 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %700, i32 0, i32 1
  %702 = load %struct.estack_rec*, %struct.estack_rec** %701, align 8
  %703 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %702, i32 0, i32 0
  %704 = load %struct.bc_struct*, %struct.bc_struct** %703, align 8
  %705 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %706 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %705, i32 0, i32 0
  %707 = load %struct.bc_struct*, %struct.bc_struct** %706, align 8
  %708 = call i32 @bc_compare(%struct.bc_struct* noundef %704, %struct.bc_struct* noundef %707)
  %709 = icmp eq i32 %708, -1
  %710 = zext i1 %709 to i32
  %711 = trunc i32 %710 to i8
  store i8 %711, i8* @c_code, align 1
  call void @pop()
  %712 = load i8, i8* @c_code, align 1
  call void @assign(i8 noundef signext %712)
  br label %713

713:                                              ; preds = %699, %696
  br label %771

714:                                              ; preds = %33
  %715 = call signext i8 @check_stack(i32 noundef 2)
  %716 = icmp ne i8 %715, 0
  br i1 %716, label %717, label %731

717:                                              ; preds = %714
  %718 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %719 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %718, i32 0, i32 1
  %720 = load %struct.estack_rec*, %struct.estack_rec** %719, align 8
  %721 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %720, i32 0, i32 0
  %722 = load %struct.bc_struct*, %struct.bc_struct** %721, align 8
  %723 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %724 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %723, i32 0, i32 0
  %725 = load %struct.bc_struct*, %struct.bc_struct** %724, align 8
  %726 = call i32 @bc_compare(%struct.bc_struct* noundef %722, %struct.bc_struct* noundef %725)
  %727 = icmp sle i32 %726, 0
  %728 = zext i1 %727 to i32
  %729 = trunc i32 %728 to i8
  store i8 %729, i8* @c_code, align 1
  call void @pop()
  %730 = load i8, i8* @c_code, align 1
  call void @assign(i8 noundef signext %730)
  br label %731

731:                                              ; preds = %717, %714
  br label %771

732:                                              ; preds = %33
  %733 = call signext i8 @check_stack(i32 noundef 2)
  %734 = icmp ne i8 %733, 0
  br i1 %734, label %735, label %749

735:                                              ; preds = %732
  %736 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %737 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %736, i32 0, i32 1
  %738 = load %struct.estack_rec*, %struct.estack_rec** %737, align 8
  %739 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %738, i32 0, i32 0
  %740 = load %struct.bc_struct*, %struct.bc_struct** %739, align 8
  %741 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %742 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %741, i32 0, i32 0
  %743 = load %struct.bc_struct*, %struct.bc_struct** %742, align 8
  %744 = call i32 @bc_compare(%struct.bc_struct* noundef %740, %struct.bc_struct* noundef %743)
  %745 = icmp eq i32 %744, 1
  %746 = zext i1 %745 to i32
  %747 = trunc i32 %746 to i8
  store i8 %747, i8* @c_code, align 1
  call void @pop()
  %748 = load i8, i8* @c_code, align 1
  call void @assign(i8 noundef signext %748)
  br label %749

749:                                              ; preds = %735, %732
  br label %771

750:                                              ; preds = %33
  %751 = call signext i8 @check_stack(i32 noundef 2)
  %752 = icmp ne i8 %751, 0
  br i1 %752, label %753, label %767

753:                                              ; preds = %750
  %754 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %755 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %754, i32 0, i32 1
  %756 = load %struct.estack_rec*, %struct.estack_rec** %755, align 8
  %757 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %756, i32 0, i32 0
  %758 = load %struct.bc_struct*, %struct.bc_struct** %757, align 8
  %759 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %760 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %759, i32 0, i32 0
  %761 = load %struct.bc_struct*, %struct.bc_struct** %760, align 8
  %762 = call i32 @bc_compare(%struct.bc_struct* noundef %758, %struct.bc_struct* noundef %761)
  %763 = icmp sge i32 %762, 0
  %764 = zext i1 %763 to i32
  %765 = trunc i32 %764 to i8
  store i8 %765, i8* @c_code, align 1
  call void @pop()
  %766 = load i8, i8* @c_code, align 1
  call void @assign(i8 noundef signext %766)
  br label %767

767:                                              ; preds = %753, %750
  br label %771

768:                                              ; preds = %33
  %769 = load i8, i8* %5, align 1
  %770 = sext i8 %769 to i32
  call void (i8*, ...) @rt_error(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef %770)
  br label %771

771:                                              ; preds = %768, %767, %749, %731, %713, %695, %677, %659, %627, %603, %583, %568, %554, %540, %516, %487, %485, %483, %482, %462, %447, %433, %426, %424, %409, %393, %379, %310, %289, %287, %273, %252, %214, %199, %185, %166, %161, %136, %114, %50
  br label %18, !llvm.loop !9

772:                                              ; preds = %31
  br label %773

773:                                              ; preds = %776, %772
  %774 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %775 = icmp ne i32 %774, 0
  br i1 %775, label %776, label %792

776:                                              ; preds = %773
  %777 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %778 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %777, i64 %779
  %781 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %780, i32 0, i32 5
  %782 = load %struct.arg_list*, %struct.arg_list** %781, align 8
  call void @pop_vars(%struct.arg_list* noundef %782)
  %783 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %784 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %783, i64 %785
  %787 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %786, i32 0, i32 4
  %788 = load %struct.arg_list*, %struct.arg_list** %787, align 8
  call void @pop_vars(%struct.arg_list* noundef %788)
  %789 = call i32 @fpop()
  %790 = call i32 @fpop()
  store i32 %790, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 1), align 4
  %791 = call i32 @fpop()
  store i32 %791, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i32 0, i32 0), align 4
  br label %773, !llvm.loop !10

792:                                              ; preds = %773
  br label %793

793:                                              ; preds = %796, %792
  %794 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %795 = icmp ne %struct.estack_rec* %794, null
  br i1 %795, label %796, label %797

796:                                              ; preds = %793
  call void @pop()
  br label %793, !llvm.loop !11

797:                                              ; preds = %793
  %798 = load i8, i8* @interactive, align 1
  %799 = icmp ne i8 %798, 0
  br i1 %799, label %800, label %807

800:                                              ; preds = %797
  %801 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef @use_quit) #6
  %802 = load i32, i32* @had_sigint, align 4
  %803 = icmp ne i32 %802, 0
  br i1 %803, label %804, label %806

804:                                              ; preds = %800
  %805 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %806

806:                                              ; preds = %804, %800
  br label %807

807:                                              ; preds = %806, %797
  ret void
}

declare dso_local void @init_num(%struct.bc_struct** noundef) #1

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #2

declare dso_local void @incr_array(i32 noundef) #1

declare dso_local signext i8 @is_zero(%struct.bc_struct* noundef) #1

declare dso_local void @pop() #1

declare dso_local void @process_params(%struct.program_counter* noundef, i32 noundef) #1

declare dso_local void @auto_var(i32 noundef) #1

declare dso_local void @fpush(i32 noundef) #1

declare dso_local void @push_copy(%struct.bc_struct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @push_b10_const(%struct.program_counter* noundef %0) #0 {
  %2 = alloca %struct.program_counter*, align 8
  %3 = alloca %struct.bc_struct*, align 8
  %4 = alloca %struct.program_counter, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store %struct.program_counter* %0, %struct.program_counter** %2, align 8
  %9 = load %struct.program_counter*, %struct.program_counter** %2, align 8
  %10 = bitcast %struct.program_counter* %4 to i8*
  %11 = bitcast %struct.program_counter* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 8, i1 false)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = call zeroext i8 @byte(%struct.program_counter* noundef %4)
  store i8 %12, i8* %7, align 1
  br label %13

13:                                               ; preds = %23, %1
  %14 = load i8, i8* %7, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 46
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i8, i8* %7, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 58
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ false, %13 ], [ %20, %17 ]
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = call zeroext i8 @byte(%struct.program_counter* noundef %4)
  store i8 %26, i8* %7, align 1
  br label %13, !llvm.loop !12

27:                                               ; preds = %21
  %28 = load i8, i8* %7, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 46
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = call zeroext i8 @byte(%struct.program_counter* noundef %4)
  store i8 %32, i8* %7, align 1
  br label %33

33:                                               ; preds = %37, %31
  %34 = load i8, i8* %7, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 58
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = call zeroext i8 @byte(%struct.program_counter* noundef %4)
  store i8 %40, i8* %7, align 1
  br label %33, !llvm.loop !13

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %27
  %43 = load %struct.program_counter*, %struct.program_counter** %2, align 8
  %44 = call zeroext i8 @byte(%struct.program_counter* noundef %43)
  store i8 %44, i8* %7, align 1
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %77

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %47
  %51 = load i8, i8* %7, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  call void @push_copy(%struct.bc_struct* noundef %55)
  %56 = load %struct.program_counter*, %struct.program_counter** %2, align 8
  %57 = call zeroext i8 @byte(%struct.program_counter* noundef %56)
  store i8 %57, i8* %7, align 1
  br label %121

58:                                               ; preds = %50
  %59 = load i8, i8* %7, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  call void @push_copy(%struct.bc_struct* noundef %63)
  %64 = load %struct.program_counter*, %struct.program_counter** %2, align 8
  %65 = call zeroext i8 @byte(%struct.program_counter* noundef %64)
  store i8 %65, i8* %7, align 1
  br label %121

66:                                               ; preds = %58
  %67 = load i8, i8* %7, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sgt i32 %68, 9
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  call void @init_num(%struct.bc_struct** noundef %3)
  %71 = load i8, i8* %7, align 1
  %72 = sext i8 %71 to i32
  call void @int2num(%struct.bc_struct** noundef %3, i32 noundef %72)
  %73 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  call void @push_num(%struct.bc_struct* noundef %73)
  %74 = load %struct.program_counter*, %struct.program_counter** %2, align 8
  %75 = call zeroext i8 @byte(%struct.program_counter* noundef %74)
  store i8 %75, i8* %7, align 1
  br label %121

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %47, %42
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = call %struct.bc_struct* @new_num(i32 noundef 1, i32 noundef %81)
  store %struct.bc_struct* %82, %struct.bc_struct** %3, align 8
  %83 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %84 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %83, i32 0, i32 4
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %84, i64 0, i64 0
  store i8* %85, i8** %8, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %8, align 8
  store i8 0, i8* %86, align 1
  br label %95

88:                                               ; preds = %77
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call %struct.bc_struct* @new_num(i32 noundef %89, i32 noundef %90)
  store %struct.bc_struct* %91, %struct.bc_struct** %3, align 8
  %92 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %93 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %92, i32 0, i32 4
  %94 = getelementptr inbounds [1024 x i8], [1024 x i8]* %93, i64 0, i64 0
  store i8* %94, i8** %8, align 8
  br label %95

95:                                               ; preds = %88, %80
  br label %96

96:                                               ; preds = %116, %95
  %97 = load i8, i8* %7, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 58
  br i1 %99, label %100, label %119

100:                                              ; preds = %96
  %101 = load i8, i8* %7, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 46
  br i1 %103, label %104, label %116

104:                                              ; preds = %100
  %105 = load i8, i8* %7, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp sgt i32 %106, 9
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %8, align 8
  store i8 9, i8* %109, align 1
  br label %115

111:                                              ; preds = %104
  %112 = load i8, i8* %7, align 1
  %113 = load i8*, i8** %8, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %8, align 8
  store i8 %112, i8* %113, align 1
  br label %115

115:                                              ; preds = %111, %108
  br label %116

116:                                              ; preds = %115, %100
  %117 = load %struct.program_counter*, %struct.program_counter** %2, align 8
  %118 = call zeroext i8 @byte(%struct.program_counter* noundef %117)
  store i8 %118, i8* %7, align 1
  br label %96, !llvm.loop !14

119:                                              ; preds = %96
  %120 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  call void @push_num(%struct.bc_struct* noundef %120)
  br label %121

121:                                              ; preds = %119, %70, %62, %54
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @push_constant(i8 ()* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8 ()*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bc_struct*, align 8
  %7 = alloca %struct.bc_struct*, align 8
  %8 = alloca %struct.bc_struct*, align 8
  %9 = alloca %struct.bc_struct*, align 8
  %10 = alloca %struct.bc_struct*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store i8 ()* %0, i8 ()** %3, align 8
  store i32 %1, i32* %4, align 4
  call void @init_num(%struct.bc_struct** noundef %7)
  call void @init_num(%struct.bc_struct** noundef %8)
  call void @init_num(%struct.bc_struct** noundef %9)
  %14 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %15 = call %struct.bc_struct* @copy_num(%struct.bc_struct* noundef %14)
  store %struct.bc_struct* %15, %struct.bc_struct** %6, align 8
  store i8 0, i8* %13, align 1
  %16 = load i32, i32* %4, align 4
  call void @int2num(%struct.bc_struct** noundef %9, i32 noundef %16)
  %17 = load i8 ()*, i8 ()** %3, align 8
  %18 = call signext i8 %17()
  store i8 %18, i8* %11, align 1
  br label %19

19:                                               ; preds = %23, %2
  %20 = load i8, i8* %11, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i8 ()*, i8 ()** %3, align 8
  %25 = call signext i8 %24()
  store i8 %25, i8* %11, align 1
  br label %19, !llvm.loop !15

26:                                               ; preds = %19
  %27 = load i8, i8* %11, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 43
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i8 ()*, i8 ()** %3, align 8
  %32 = call signext i8 %31()
  store i8 %32, i8* %11, align 1
  br label %41

33:                                               ; preds = %26
  %34 = load i8, i8* %11, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 45
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  store i8 1, i8* %13, align 1
  %38 = load i8 ()*, i8 ()** %3, align 8
  %39 = call signext i8 %38()
  store i8 %39, i8* %11, align 1
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40, %30
  %42 = load i8, i8* %11, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp slt i32 %43, 16
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load i8, i8* %11, align 1
  store i8 %46, i8* %12, align 1
  %47 = load i8 ()*, i8 ()** %3, align 8
  %48 = call signext i8 %47()
  store i8 %48, i8* %11, align 1
  %49 = load i8, i8* %11, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp slt i32 %50, 16
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load i8, i8* %12, align 1
  %54 = sext i8 %53 to i32
  %55 = load i32, i32* %4, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  %59 = sub nsw i32 %58, 1
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %12, align 1
  br label %61

61:                                               ; preds = %57, %52, %45
  %62 = load i8, i8* %12, align 1
  %63 = sext i8 %62 to i32
  call void @int2num(%struct.bc_struct** noundef %6, i32 noundef %63)
  br label %64

64:                                               ; preds = %61, %41
  br label %65

65:                                               ; preds = %82, %64
  %66 = load i8, i8* %11, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp slt i32 %67, 16
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  %70 = load i8, i8* %11, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp slt i32 %71, 16
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load i8, i8* %11, align 1
  %75 = sext i8 %74 to i32
  %76 = load i32, i32* %4, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = sub nsw i32 %79, 1
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %11, align 1
  br label %82

82:                                               ; preds = %78, %73, %69
  %83 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %84 = load %struct.bc_struct*, %struct.bc_struct** %9, align 8
  call void @bc_multiply(%struct.bc_struct* noundef %83, %struct.bc_struct* noundef %84, %struct.bc_struct** noundef %8, i32 noundef 0)
  %85 = load i8, i8* %11, align 1
  %86 = sext i8 %85 to i32
  call void @int2num(%struct.bc_struct** noundef %7, i32 noundef %86)
  %87 = load %struct.bc_struct*, %struct.bc_struct** %8, align 8
  %88 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  call void @bc_add(%struct.bc_struct* noundef %87, %struct.bc_struct* noundef %88, %struct.bc_struct** noundef %6)
  %89 = load i8 ()*, i8 ()** %3, align 8
  %90 = call signext i8 %89()
  store i8 %90, i8* %11, align 1
  br label %65, !llvm.loop !16

91:                                               ; preds = %65
  %92 = load i8, i8* %11, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 46
  br i1 %94, label %95, label %148

95:                                               ; preds = %91
  %96 = load i8 ()*, i8 ()** %3, align 8
  %97 = call signext i8 %96()
  store i8 %97, i8* %11, align 1
  %98 = load i8, i8* %11, align 1
  %99 = sext i8 %98 to i32
  %100 = load i32, i32* %4, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load i32, i32* %4, align 4
  %104 = sub nsw i32 %103, 1
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %11, align 1
  br label %106

106:                                              ; preds = %102, %95
  call void @free_num(%struct.bc_struct** noundef %8)
  call void @free_num(%struct.bc_struct** noundef %7)
  %107 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %108 = call %struct.bc_struct* @copy_num(%struct.bc_struct* noundef %107)
  store %struct.bc_struct* %108, %struct.bc_struct** %10, align 8
  %109 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %110 = call %struct.bc_struct* @copy_num(%struct.bc_struct* noundef %109)
  store %struct.bc_struct* %110, %struct.bc_struct** %8, align 8
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %140, %106
  %112 = load i8, i8* %11, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp slt i32 %113, 16
  br i1 %114, label %115, label %141

115:                                              ; preds = %111
  %116 = load %struct.bc_struct*, %struct.bc_struct** %8, align 8
  %117 = load %struct.bc_struct*, %struct.bc_struct** %9, align 8
  call void @bc_multiply(%struct.bc_struct* noundef %116, %struct.bc_struct* noundef %117, %struct.bc_struct** noundef %8, i32 noundef 0)
  %118 = load i8, i8* %11, align 1
  %119 = sext i8 %118 to i32
  call void @int2num(%struct.bc_struct** noundef %7, i32 noundef %119)
  %120 = load %struct.bc_struct*, %struct.bc_struct** %8, align 8
  %121 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  call void @bc_add(%struct.bc_struct* noundef %120, %struct.bc_struct* noundef %121, %struct.bc_struct** noundef %8)
  %122 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %123 = load %struct.bc_struct*, %struct.bc_struct** %9, align 8
  call void @bc_multiply(%struct.bc_struct* noundef %122, %struct.bc_struct* noundef %123, %struct.bc_struct** noundef %10, i32 noundef 0)
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  %126 = load i8 ()*, i8 ()** %3, align 8
  %127 = call signext i8 %126()
  store i8 %127, i8* %11, align 1
  %128 = load i8, i8* %11, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp slt i32 %129, 16
  br i1 %130, label %131, label %140

131:                                              ; preds = %115
  %132 = load i8, i8* %11, align 1
  %133 = sext i8 %132 to i32
  %134 = load i32, i32* %4, align 4
  %135 = icmp sge i32 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load i32, i32* %4, align 4
  %138 = sub nsw i32 %137, 1
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %11, align 1
  br label %140

140:                                              ; preds = %136, %131, %115
  br label %111, !llvm.loop !17

141:                                              ; preds = %111
  %142 = load %struct.bc_struct*, %struct.bc_struct** %8, align 8
  %143 = load %struct.bc_struct*, %struct.bc_struct** %10, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @bc_divide(%struct.bc_struct* noundef %142, %struct.bc_struct* noundef %143, %struct.bc_struct** noundef %8, i32 noundef %144)
  %146 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  %147 = load %struct.bc_struct*, %struct.bc_struct** %8, align 8
  call void @bc_add(%struct.bc_struct* noundef %146, %struct.bc_struct* noundef %147, %struct.bc_struct** noundef %6)
  br label %148

148:                                              ; preds = %141, %91
  %149 = load i8, i8* %13, align 1
  %150 = icmp ne i8 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %153 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  call void @bc_sub(%struct.bc_struct* noundef %152, %struct.bc_struct* noundef %153, %struct.bc_struct** noundef %6)
  br label %154

154:                                              ; preds = %151, %148
  %155 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  call void @push_num(%struct.bc_struct* noundef %155)
  call void @free_num(%struct.bc_struct** noundef %7)
  call void @free_num(%struct.bc_struct** noundef %8)
  call void @free_num(%struct.bc_struct** noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @prog_char() #0 {
  %1 = call zeroext i8 @byte(%struct.program_counter* noundef @pc)
  ret i8 %1
}

declare dso_local void @load_array(i32 noundef) #1

declare dso_local void @decr_array(i8 noundef signext) #1

declare dso_local void @out_char(i8 noundef signext) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local void @pop_vars(%struct.arg_list* noundef) #1

declare dso_local i32 @fpop() #1

declare dso_local void @store_array(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @assign(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %4 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %3, i32 0, i32 0
  call void @free_num(%struct.bc_struct** noundef %4)
  %5 = load i8, i8* %2, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %9 = call %struct.bc_struct* @copy_num(%struct.bc_struct* noundef %8)
  %10 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %11 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %10, i32 0, i32 0
  store %struct.bc_struct* %9, %struct.bc_struct** %11, align 8
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %14 = call %struct.bc_struct* @copy_num(%struct.bc_struct* noundef %13)
  %15 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %16 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %15, i32 0, i32 0
  store %struct.bc_struct* %14, %struct.bc_struct** %16, align 8
  br label %17

17:                                               ; preds = %12, %7
  ret void
}

declare dso_local void @out_num(%struct.bc_struct* noundef, i32 noundef, void (i32)* noundef) #1

declare dso_local void @store_var(i32 noundef) #1

declare dso_local void @int2num(%struct.bc_struct** noundef, i32 noundef) #1

declare dso_local i32 @bc_sqrt(%struct.bc_struct** noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @input_char() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = call i32 @getchar()
  %4 = trunc i32 %3 to i8
  store i8 %4, i8* %2, align 1
  %5 = load i8, i8* %2, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 92
  br i1 %7, label %8, label %18

8:                                                ; preds = %0
  %9 = call i32 @getchar()
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %2, align 1
  %11 = load i8, i8* %2, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 10
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = call i32 @getchar()
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %2, align 1
  br label %17

17:                                               ; preds = %14, %8
  br label %18

18:                                               ; preds = %17, %0
  %19 = call i16** @__ctype_b_loc() #8
  %20 = load i16*, i16** %19, align 8
  %21 = load i8, i8* %2, align 1
  %22 = sext i8 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %20, i64 %23
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 2048
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load i8, i8* %2, align 1
  %31 = sext i8 %30 to i32
  %32 = sub nsw i32 %31, 48
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %1, align 1
  br label %82

34:                                               ; preds = %18
  %35 = load i8, i8* %2, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sge i32 %36, 65
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i8, i8* %2, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sle i32 %40, 70
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i8, i8* %2, align 1
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, 10
  %46 = sub nsw i32 %45, 65
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %1, align 1
  br label %82

48:                                               ; preds = %38, %34
  %49 = load i8, i8* %2, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sge i32 %50, 97
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load i8, i8* %2, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sle i32 %54, 102
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i8, i8* %2, align 1
  %58 = sext i8 %57 to i32
  %59 = add nsw i32 %58, 10
  %60 = sub nsw i32 %59, 97
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %1, align 1
  br label %82

62:                                               ; preds = %52, %48
  %63 = load i8, i8* %2, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 46
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = load i8, i8* %2, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 43
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i8, i8* %2, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 45
  br i1 %73, label %74, label %76

74:                                               ; preds = %70, %66, %62
  %75 = load i8, i8* %2, align 1
  store i8 %75, i8* %1, align 1
  br label %82

76:                                               ; preds = %70
  %77 = load i8, i8* %2, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp sle i32 %78, 32
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i8 32, i8* %1, align 1
  br label %82

81:                                               ; preds = %76
  store i8 58, i8* %1, align 1
  br label %82

82:                                               ; preds = %81, %80, %74, %56, %42, %29
  %83 = load i8, i8* %1, align 1
  ret i8 %83
}

declare dso_local void @decr_var(i32 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local void @incr_var(i32 noundef) #1

declare dso_local void @load_var(i32 noundef) #1

declare dso_local void @bc_sub(%struct.bc_struct* noundef, %struct.bc_struct* noundef, %struct.bc_struct** noundef) #1

declare dso_local signext i8 @check_stack(i32 noundef) #1

declare dso_local void @bc_add(%struct.bc_struct* noundef, %struct.bc_struct* noundef, %struct.bc_struct** noundef) #1

declare dso_local void @push_num(%struct.bc_struct* noundef) #1

declare dso_local void @bc_multiply(%struct.bc_struct* noundef, %struct.bc_struct* noundef, %struct.bc_struct** noundef, i32 noundef) #1

declare dso_local i32 @bc_divide(%struct.bc_struct* noundef, %struct.bc_struct* noundef, %struct.bc_struct** noundef, i32 noundef) #1

declare dso_local i32 @bc_modulo(%struct.bc_struct* noundef, %struct.bc_struct* noundef, %struct.bc_struct** noundef, i32 noundef) #1

declare dso_local void @bc_raise(%struct.bc_struct* noundef, %struct.bc_struct* noundef, %struct.bc_struct** noundef, i32 noundef) #1

declare dso_local signext i8 @is_neg(%struct.bc_struct* noundef) #1

declare dso_local i32 @bc_compare(%struct.bc_struct* noundef, %struct.bc_struct* noundef) #1

declare dso_local void @use_quit(i32 noundef) #1

declare dso_local i32 @getchar() #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

declare dso_local %struct.bc_struct* @copy_num(%struct.bc_struct* noundef) #1

declare dso_local void @free_num(%struct.bc_struct** noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local %struct.bc_struct* @new_num(i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
