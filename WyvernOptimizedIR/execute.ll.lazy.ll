; ModuleID = './execute.ll'
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
@str = private unnamed_addr constant [24 x i8] c"Interruption completed.\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @stop_execution(i32 noundef %0) #0 {
  store i32 1, i32* @had_sigint, align 4
  %putchar = call i32 @putchar(i32 10)
  call void (i8*, ...) @rt_error(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #8
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local void @rt_error(i8* noundef, ...) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local zeroext i8 @byte(%struct.program_counter* nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.program_counter, %struct.program_counter* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 4
  %4 = ashr i32 %3, 10
  %5 = getelementptr inbounds %struct.program_counter, %struct.program_counter* %0, i64 0, i32 1
  %6 = add nsw i32 %3, 1
  store i32 %6, i32* %5, align 4
  %7 = srem i32 %3, 1024
  %8 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %9 = getelementptr inbounds %struct.program_counter, %struct.program_counter* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = sext i32 %4 to i64
  %13 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %8, i64 %11, i32 1, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = sext i32 %7 to i64
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8, i8* %16, align 1
  ret i8 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @execute() #0 {
  %1 = alloca %struct.bc_struct*, align 8
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 1), align 4
  store i8 0, i8* @runtime_error, align 1
  call void @init_num(%struct.bc_struct** noundef nonnull %1) #8
  %2 = load i8, i8* @interactive, align 1
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %0
  %4 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef nonnull @stop_execution) #8
  store i32 0, i32* @had_sigint, align 4
  br label %5

5:                                                ; preds = %3, %0
  br label %6

6:                                                ; preds = %563, %5
  %7 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 1), align 4
  %8 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 0), align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %8, i64 %10, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %7, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  %15 = load i8, i8* @runtime_error, align 1
  %.not56 = icmp eq i8 %15, 0
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi i1 [ false, %6 ], [ %.not56, %14 ]
  br i1 %17, label %18, label %564

18:                                               ; preds = %16
  %19 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %20 = sext i8 %19 to i32
  switch i32 %20, label %561 [
    i32 65, label %21
    i32 66, label %29
    i32 90, label %29
    i32 74, label %35
    i32 67, label %69
    i32 68, label %100
    i32 75, label %104
    i32 76, label %116
    i32 77, label %124
    i32 79, label %129
    i32 82, label %155
    i32 83, label %173
    i32 84, label %181
    i32 87, label %186
    i32 80, label %186
    i32 99, label %199
    i32 100, label %256
    i32 104, label %264
    i32 105, label %265
    i32 108, label %273
    i32 110, label %281
    i32 112, label %287
    i32 115, label %288
    i32 119, label %296
    i32 120, label %306
    i32 48, label %323
    i32 49, label %325
    i32 33, label %327
    i32 38, label %332
    i32 124, label %351
    i32 43, label %370
    i32 45, label %382
    i32 42, label %394
    i32 47, label %407
    i32 37, label %425
    i32 94, label %446
    i32 61, label %472
    i32 35, label %487
    i32 60, label %502
    i32 123, label %517
    i32 62, label %532
    i32 125, label %547
  ]

21:                                               ; preds = %18
  %22 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 128
  %.not55 = icmp eq i32 %24, 0
  br i1 %.not55, label %28, label %25

25:                                               ; preds = %21
  %26 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %27 = zext i8 %26 to i32
  br label %28

28:                                               ; preds = %25, %21
  %.05 = phi i32 [ %27, %25 ], [ %23, %21 ]
  call void @incr_array(i32 noundef %.05) #8
  br label %563

29:                                               ; preds = %18, %18
  %30 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %31 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %30, i64 0, i32 0
  %32 = load %struct.bc_struct*, %struct.bc_struct** %31, align 8
  %33 = call signext i8 @is_zero(%struct.bc_struct* noundef %32) #8
  %.not54 = icmp eq i8 %33, 0
  %34 = zext i1 %.not54 to i8
  store i8 %34, i8* @c_code, align 1
  call void @pop() #8
  br label %35

35:                                               ; preds = %29, %18
  %36 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %37 = zext i8 %36 to i32
  %38 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 8
  %41 = or i32 %40, %37
  %42 = icmp eq i8 %19, 74
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = icmp eq i8 %19, 66
  br i1 %44, label %45, label %47

45:                                               ; preds = %43
  %46 = load i8, i8* @c_code, align 1
  %.not53 = icmp eq i8 %46, 0
  br i1 %.not53, label %47, label %51

47:                                               ; preds = %45, %43
  %48 = icmp eq i8 %19, 90
  br i1 %48, label %49, label %68

49:                                               ; preds = %47
  %50 = load i8, i8* @c_code, align 1
  %.not52 = icmp eq i8 %50, 0
  br i1 %.not52, label %51, label %68

51:                                               ; preds = %49, %45, %35
  %52 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 0), align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %52, i64 %54, i32 3
  %56 = lshr i32 %41, 6
  %57 = and i32 %37, 63
  br label %58

58:                                               ; preds = %60, %51
  %.02.in = phi %struct.bc_label_group** [ %55, %51 ], [ %62, %60 ]
  %.0 = phi i32 [ %56, %51 ], [ %61, %60 ]
  %.02 = load %struct.bc_label_group*, %struct.bc_label_group** %.02.in, align 8
  %59 = icmp sgt i32 %.0, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = add nsw i32 %.0, -1
  %62 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %.02, i64 0, i32 1
  br label %58, !llvm.loop !4

63:                                               ; preds = %58
  %64 = zext i32 %57 to i64
  %65 = getelementptr inbounds %struct.bc_label_group, %struct.bc_label_group* %.02, i64 0, i32 0, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 1), align 4
  br label %68

68:                                               ; preds = %63, %49, %47
  br label %563

69:                                               ; preds = %18
  %70 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 128
  %.not49 = icmp eq i32 %72, 0
  br i1 %.not49, label %76, label %73

73:                                               ; preds = %69
  %74 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %75 = zext i8 %74 to i32
  br label %76

76:                                               ; preds = %73, %69
  %.04 = phi i32 [ %75, %73 ], [ %71, %69 ]
  %77 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %78 = zext i32 %.04 to i64
  %79 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %77, i64 %78, i32 0
  %80 = load i8, i8* %79, align 8
  %.not50 = icmp eq i8 %80, 0
  br i1 %.not50, label %81, label %86

81:                                               ; preds = %76
  %82 = load i8**, i8*** @f_names, align 8
  %83 = zext i32 %.04 to i64
  %84 = getelementptr inbounds i8*, i8** %82, i64 %83
  %85 = load i8*, i8** %84, align 8
  call void (i8*, ...) @rt_error(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* noundef %85) #8
  br label %563

86:                                               ; preds = %76
  call void @process_params(%struct.program_counter* noundef nonnull @pc, i32 noundef %.04) #8
  %87 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %88 = zext i32 %.04 to i64
  %89 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %87, i64 %88, i32 5
  br label %90

90:                                               ; preds = %94, %86
  %.01.in = phi %struct.arg_list** [ %89, %86 ], [ %95, %94 ]
  %.01 = load %struct.arg_list*, %struct.arg_list** %.01.in, align 8
  %.not51 = icmp eq %struct.arg_list* %.01, null
  br i1 %.not51, label %96, label %91

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %.01, i64 0, i32 0
  %93 = load i32, i32* %92, align 8
  call void @auto_var(i32 noundef %93) #8
  br label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.arg_list, %struct.arg_list* %.01, i64 0, i32 1
  br label %90, !llvm.loop !6

96:                                               ; preds = %90
  %97 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 0), align 4
  call void @fpush(i32 noundef %97) #8
  %98 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 1), align 4
  call void @fpush(i32 noundef %98) #8
  %99 = load i32, i32* @i_base, align 4
  call void @fpush(i32 noundef %99) #8
  store i32 %.04, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 1), align 4
  br label %563

100:                                              ; preds = %18
  %101 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %102 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %101, i64 0, i32 0
  %103 = load %struct.bc_struct*, %struct.bc_struct** %102, align 8
  call void @push_copy(%struct.bc_struct* noundef %103) #8
  br label %563

104:                                              ; preds = %18
  %105 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 0), align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %111

108:                                              ; preds = %104
  %109 = load %struct.fstack_rec*, %struct.fstack_rec** @fn_stack, align 8
  %110 = getelementptr inbounds %struct.fstack_rec, %struct.fstack_rec* %109, i64 0, i32 0
  br label %111

111:                                              ; preds = %108, %107
  %.03.in = phi i32* [ @i_base, %107 ], [ %110, %108 ]
  %.03 = load i32, i32* %.03.in, align 4
  %112 = icmp eq i32 %.03, 10
  br i1 %112, label %113, label %114

113:                                              ; preds = %111
  call void @push_b10_const(%struct.program_counter* noundef nonnull @pc)
  br label %115

114:                                              ; preds = %111
  call void @push_constant(i8 ()* noundef nonnull @prog_char, i32 noundef %.03)
  br label %115

115:                                              ; preds = %114, %113
  br label %563

116:                                              ; preds = %18
  %117 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %118 = zext i8 %117 to i32
  %119 = and i32 %118, 128
  %.not48 = icmp eq i32 %119, 0
  br i1 %.not48, label %123, label %120

120:                                              ; preds = %116
  %121 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %122 = zext i8 %121 to i32
  br label %123

123:                                              ; preds = %120, %116
  %.1 = phi i32 [ %122, %120 ], [ %118, %116 ]
  call void @load_array(i32 noundef %.1) #8
  br label %563

124:                                              ; preds = %18
  %125 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %.not47 = icmp sgt i8 %125, -1
  br i1 %.not47, label %128, label %126

126:                                              ; preds = %124
  %127 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  br label %128

128:                                              ; preds = %126, %124
  %.2 = phi i8 [ %127, %126 ], [ %125, %124 ]
  call void @decr_array(i8 noundef signext %.2) #8
  br label %563

129:                                              ; preds = %18
  br label %130

130:                                              ; preds = %148, %129
  %131 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %.not44 = icmp eq i8 %131, 34
  br i1 %.not44, label %.loopexit, label %132

132:                                              ; preds = %130
  %.not46 = icmp eq i8 %131, 92
  br i1 %.not46, label %134, label %133

133:                                              ; preds = %132
  call void @out_char(i8 noundef signext %131) #8
  br label %148

134:                                              ; preds = %132
  %135 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %136 = icmp eq i8 %135, 34
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  br label %149

138:                                              ; preds = %134
  %139 = sext i8 %135 to i32
  switch i32 %139, label %146 [
    i32 110, label %140
    i32 116, label %141
    i32 114, label %142
    i32 98, label %143
    i32 102, label %144
    i32 92, label %145
  ]

140:                                              ; preds = %138
  call void @out_char(i8 noundef signext 10) #8
  br label %147

141:                                              ; preds = %138
  call void @out_char(i8 noundef signext 9) #8
  br label %147

142:                                              ; preds = %138
  call void @out_char(i8 noundef signext 13) #8
  br label %147

143:                                              ; preds = %138
  call void @out_char(i8 noundef signext 7) #8
  br label %147

144:                                              ; preds = %138
  call void @out_char(i8 noundef signext 12) #8
  br label %147

145:                                              ; preds = %138
  call void @out_char(i8 noundef signext 92) #8
  br label %147

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %146, %145, %144, %143, %142, %141, %140
  br label %148

148:                                              ; preds = %147, %133
  br label %130, !llvm.loop !7

.loopexit:                                        ; preds = %130
  br label %149

149:                                              ; preds = %.loopexit, %137
  %150 = load i8, i8* @interactive, align 1
  %.not45 = icmp eq i8 %150, 0
  br i1 %.not45, label %154, label %151

151:                                              ; preds = %149
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %153 = call i32 @fflush(%struct._IO_FILE* noundef %152) #8
  br label %154

154:                                              ; preds = %151, %149
  br label %563

155:                                              ; preds = %18
  %156 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 0), align 4
  %.not43 = icmp eq i32 %156, 0
  br i1 %.not43, label %171, label %157

157:                                              ; preds = %155
  %158 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %159 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 0), align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %158, i64 %160, i32 5
  %162 = load %struct.arg_list*, %struct.arg_list** %161, align 8
  call void @pop_vars(%struct.arg_list* noundef %162) #8
  %163 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %164 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 0), align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %163, i64 %165, i32 4
  %167 = load %struct.arg_list*, %struct.arg_list** %166, align 8
  call void @pop_vars(%struct.arg_list* noundef %167) #8
  %168 = call i32 @fpop() #8
  %169 = call i32 @fpop() #8
  store i32 %169, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 1), align 4
  %170 = call i32 @fpop() #8
  store i32 %170, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 0), align 4
  br label %172

171:                                              ; preds = %155
  call void (i8*, ...) @rt_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %172

172:                                              ; preds = %171, %157
  br label %563

173:                                              ; preds = %18
  %174 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %175 = zext i8 %174 to i32
  %176 = and i32 %175, 128
  %.not42 = icmp eq i32 %176, 0
  br i1 %.not42, label %180, label %177

177:                                              ; preds = %173
  %178 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %179 = zext i8 %178 to i32
  br label %180

180:                                              ; preds = %177, %173
  %.3 = phi i32 [ %179, %177 ], [ %175, %173 ]
  call void @store_array(i32 noundef %.3) #8
  br label %563

181:                                              ; preds = %18
  %182 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %183 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %182, i64 0, i32 0
  %184 = load %struct.bc_struct*, %struct.bc_struct** %183, align 8
  %185 = call signext i8 @is_zero(%struct.bc_struct* noundef %184) #8
  store i8 %185, i8* @c_code, align 1
  call void @assign(i8 noundef signext %185)
  br label %563

186:                                              ; preds = %18, %18
  %187 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %188 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %187, i64 0, i32 0
  %189 = load %struct.bc_struct*, %struct.bc_struct** %188, align 8
  %190 = load i32, i32* @o_base, align 4
  call void @out_num(%struct.bc_struct* noundef %189, i32 noundef %190, void (i32)* noundef bitcast (void (i8)* @out_char to void (i32)*)) #8
  %191 = icmp eq i8 %19, 87
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  call void @out_char(i8 noundef signext 10) #8
  br label %193

193:                                              ; preds = %192, %186
  call void @store_var(i32 noundef 3) #8
  %194 = load i8, i8* @interactive, align 1
  %.not41 = icmp eq i8 %194, 0
  br i1 %.not41, label %198, label %195

195:                                              ; preds = %193
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %197 = call i32 @fflush(%struct._IO_FILE* noundef %196) #8
  br label %198

198:                                              ; preds = %195, %193
  br label %563

199:                                              ; preds = %18
  %200 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  switch i8 %200, label %255 [
    i8 76, label %201
    i8 83, label %239
    i8 82, label %246
    i8 73, label %253
  ]

201:                                              ; preds = %199
  %202 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %203 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %202, i64 0, i32 0
  %204 = load %struct.bc_struct*, %struct.bc_struct** %203, align 8
  %205 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %204, i64 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %208, label %228

208:                                              ; preds = %201
  %209 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %210 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %209, i64 0, i32 0
  %211 = load %struct.bc_struct*, %struct.bc_struct** %210, align 8
  %212 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %211, i64 0, i32 2
  %213 = load i32, i32* %212, align 4
  %.not40 = icmp eq i32 %213, 0
  br i1 %.not40, label %228, label %214

214:                                              ; preds = %208
  %215 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %216 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %215, i64 0, i32 0
  %217 = load %struct.bc_struct*, %struct.bc_struct** %216, align 8
  %218 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %217, i64 0, i32 4, i64 0
  %219 = load i8, i8* %218, align 4
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %214
  %222 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %223 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %222, i64 0, i32 0
  %224 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %222, i64 0, i32 0
  %225 = load %struct.bc_struct*, %struct.bc_struct** %224, align 8
  %226 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %225, i64 0, i32 2
  %227 = load i32, i32* %226, align 4
  call void @int2num(%struct.bc_struct** noundef %223, i32 noundef %227) #8
  br label %238

228:                                              ; preds = %214, %208, %201
  %229 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %230 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %229, i64 0, i32 0
  %231 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %229, i64 0, i32 0
  %232 = load %struct.bc_struct*, %struct.bc_struct** %231, align 8
  %233 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %232, i64 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %232, i64 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %234, %236
  call void @int2num(%struct.bc_struct** noundef %230, i32 noundef %237) #8
  br label %238

238:                                              ; preds = %228, %221
  br label %255

239:                                              ; preds = %199
  %240 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %241 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %240, i64 0, i32 0
  %242 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %240, i64 0, i32 0
  %243 = load %struct.bc_struct*, %struct.bc_struct** %242, align 8
  %244 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %243, i64 0, i32 2
  %245 = load i32, i32* %244, align 4
  call void @int2num(%struct.bc_struct** noundef %241, i32 noundef %245) #8
  br label %255

246:                                              ; preds = %199
  %247 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %248 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %247, i64 0, i32 0
  %249 = load i32, i32* @scale, align 4
  %250 = call i32 @bc_sqrt(%struct.bc_struct** noundef %248, i32 noundef %249) #8
  %.not39 = icmp eq i32 %250, 0
  br i1 %.not39, label %251, label %252

251:                                              ; preds = %246
  call void (i8*, ...) @rt_error(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0)) #8
  br label %252

252:                                              ; preds = %251, %246
  br label %255

253:                                              ; preds = %199
  %254 = load i32, i32* @i_base, align 4
  call void @push_constant(i8 ()* noundef nonnull @input_char, i32 noundef %254)
  br label %255

255:                                              ; preds = %253, %252, %239, %238, %199
  br label %563

256:                                              ; preds = %18
  %257 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %258 = zext i8 %257 to i32
  %259 = and i32 %258, 128
  %.not38 = icmp eq i32 %259, 0
  br i1 %.not38, label %263, label %260

260:                                              ; preds = %256
  %261 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %262 = zext i8 %261 to i32
  br label %263

263:                                              ; preds = %260, %256
  %.4 = phi i32 [ %262, %260 ], [ %258, %256 ]
  call void @decr_var(i32 noundef %.4) #8
  br label %563

264:                                              ; preds = %18
  call void @exit(i32 noundef 0) #9
  unreachable

265:                                              ; preds = %18
  %266 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %267 = zext i8 %266 to i32
  %268 = and i32 %267, 128
  %.not37 = icmp eq i32 %268, 0
  br i1 %.not37, label %272, label %269

269:                                              ; preds = %265
  %270 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %271 = zext i8 %270 to i32
  br label %272

272:                                              ; preds = %269, %265
  %.5 = phi i32 [ %271, %269 ], [ %267, %265 ]
  call void @incr_var(i32 noundef %.5) #8
  br label %563

273:                                              ; preds = %18
  %274 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %275 = zext i8 %274 to i32
  %276 = and i32 %275, 128
  %.not36 = icmp eq i32 %276, 0
  br i1 %.not36, label %280, label %277

277:                                              ; preds = %273
  %278 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %279 = zext i8 %278 to i32
  br label %280

280:                                              ; preds = %277, %273
  %.6 = phi i32 [ %279, %277 ], [ %275, %273 ]
  call void @load_var(i32 noundef %.6) #8
  br label %563

281:                                              ; preds = %18
  %282 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %283 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %284 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %283, i64 0, i32 0
  %285 = load %struct.bc_struct*, %struct.bc_struct** %284, align 8
  %286 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %283, i64 0, i32 0
  call void @bc_sub(%struct.bc_struct* noundef %282, %struct.bc_struct* noundef %285, %struct.bc_struct** noundef %286) #8
  br label %563

287:                                              ; preds = %18
  call void @pop() #8
  br label %563

288:                                              ; preds = %18
  %289 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %290 = zext i8 %289 to i32
  %291 = and i32 %290, 128
  %.not35 = icmp eq i32 %291, 0
  br i1 %.not35, label %295, label %292

292:                                              ; preds = %288
  %293 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %294 = zext i8 %293 to i32
  br label %295

295:                                              ; preds = %292, %288
  %.7 = phi i32 [ %294, %292 ], [ %290, %288 ]
  call void @store_var(i32 noundef %.7) #8
  br label %563

296:                                              ; preds = %18
  br label %297

297:                                              ; preds = %299, %296
  %298 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
  %.not33 = icmp eq i8 %298, 34
  br i1 %.not33, label %300, label %299

299:                                              ; preds = %297
  call void @out_char(i8 noundef signext %298) #8
  br label %297, !llvm.loop !8

300:                                              ; preds = %297
  %301 = load i8, i8* @interactive, align 1
  %.not34 = icmp eq i8 %301, 0
  br i1 %.not34, label %305, label %302

302:                                              ; preds = %300
  %303 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %304 = call i32 @fflush(%struct._IO_FILE* noundef %303) #8
  br label %305

305:                                              ; preds = %302, %300
  br label %563

306:                                              ; preds = %18
  %307 = call signext i8 @check_stack(i32 noundef 2) #8
  %.not32 = icmp eq i8 %307, 0
  br i1 %.not32, label %322, label %308

308:                                              ; preds = %306
  %309 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %310 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %309, i64 0, i32 0
  %311 = load %struct.bc_struct*, %struct.bc_struct** %310, align 8
  %312 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %309, i64 0, i32 1
  %313 = load %struct.estack_rec*, %struct.estack_rec** %312, align 8
  %314 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %313, i64 0, i32 0
  %315 = load %struct.bc_struct*, %struct.bc_struct** %314, align 8
  %316 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %317 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %316, i64 0, i32 0
  store %struct.bc_struct* %315, %struct.bc_struct** %317, align 8
  %318 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %319 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %318, i64 0, i32 1
  %320 = load %struct.estack_rec*, %struct.estack_rec** %319, align 8
  %321 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %320, i64 0, i32 0
  store %struct.bc_struct* %311, %struct.bc_struct** %321, align 8
  br label %322

322:                                              ; preds = %308, %306
  br label %563

323:                                              ; preds = %18
  %324 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  call void @push_copy(%struct.bc_struct* noundef %324) #8
  br label %563

325:                                              ; preds = %18
  %326 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  call void @push_copy(%struct.bc_struct* noundef %326) #8
  br label %563

327:                                              ; preds = %18
  %328 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %329 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %328, i64 0, i32 0
  %330 = load %struct.bc_struct*, %struct.bc_struct** %329, align 8
  %331 = call signext i8 @is_zero(%struct.bc_struct* noundef %330) #8
  store i8 %331, i8* @c_code, align 1
  call void @assign(i8 noundef signext %331)
  br label %563

332:                                              ; preds = %18
  %333 = call signext i8 @check_stack(i32 noundef 2) #8
  %.not29 = icmp eq i8 %333, 0
  br i1 %.not29, label %350, label %334

334:                                              ; preds = %332
  %335 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %336 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %335, i64 0, i32 1
  %337 = load %struct.estack_rec*, %struct.estack_rec** %336, align 8
  %338 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %337, i64 0, i32 0
  %339 = load %struct.bc_struct*, %struct.bc_struct** %338, align 8
  %340 = call signext i8 @is_zero(%struct.bc_struct* noundef %339) #8
  %.not30 = icmp eq i8 %340, 0
  br i1 %.not30, label %341, label %346

341:                                              ; preds = %334
  %342 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %343 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %342, i64 0, i32 0
  %344 = load %struct.bc_struct*, %struct.bc_struct** %343, align 8
  %345 = call signext i8 @is_zero(%struct.bc_struct* noundef %344) #8
  %.not31 = icmp eq i8 %345, 0
  br label %346

346:                                              ; preds = %341, %334
  %347 = phi i1 [ false, %334 ], [ %.not31, %341 ]
  %348 = zext i1 %347 to i8
  store i8 %348, i8* @c_code, align 1
  call void @pop() #8
  %349 = load i8, i8* @c_code, align 1
  call void @assign(i8 noundef signext %349)
  br label %350

350:                                              ; preds = %346, %332
  br label %563

351:                                              ; preds = %18
  %352 = call signext i8 @check_stack(i32 noundef 2) #8
  %.not26 = icmp eq i8 %352, 0
  br i1 %.not26, label %369, label %353

353:                                              ; preds = %351
  %354 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %355 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %354, i64 0, i32 1
  %356 = load %struct.estack_rec*, %struct.estack_rec** %355, align 8
  %357 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %356, i64 0, i32 0
  %358 = load %struct.bc_struct*, %struct.bc_struct** %357, align 8
  %359 = call signext i8 @is_zero(%struct.bc_struct* noundef %358) #8
  %.not27 = icmp eq i8 %359, 0
  br i1 %.not27, label %365, label %360

360:                                              ; preds = %353
  %361 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %362 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %361, i64 0, i32 0
  %363 = load %struct.bc_struct*, %struct.bc_struct** %362, align 8
  %364 = call signext i8 @is_zero(%struct.bc_struct* noundef %363) #8
  %.not28 = icmp eq i8 %364, 0
  br label %365

365:                                              ; preds = %360, %353
  %366 = phi i1 [ true, %353 ], [ %.not28, %360 ]
  %367 = zext i1 %366 to i8
  store i8 %367, i8* @c_code, align 1
  call void @pop() #8
  %368 = load i8, i8* @c_code, align 1
  call void @assign(i8 noundef signext %368)
  br label %369

369:                                              ; preds = %365, %351
  br label %563

370:                                              ; preds = %18
  %371 = call signext i8 @check_stack(i32 noundef 2) #8
  %.not25 = icmp eq i8 %371, 0
  br i1 %.not25, label %381, label %372

372:                                              ; preds = %370
  %373 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %374 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %373, i64 0, i32 1
  %375 = load %struct.estack_rec*, %struct.estack_rec** %374, align 8
  %376 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %375, i64 0, i32 0
  %377 = load %struct.bc_struct*, %struct.bc_struct** %376, align 8
  %378 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %373, i64 0, i32 0
  %379 = load %struct.bc_struct*, %struct.bc_struct** %378, align 8
  call void @bc_add(%struct.bc_struct* noundef %377, %struct.bc_struct* noundef %379, %struct.bc_struct** noundef nonnull %1) #8
  call void @pop() #8
  call void @pop() #8
  %380 = load %struct.bc_struct*, %struct.bc_struct** %1, align 8
  call void @push_num(%struct.bc_struct* noundef %380) #8
  call void @init_num(%struct.bc_struct** noundef nonnull %1) #8
  br label %381

381:                                              ; preds = %372, %370
  br label %563

382:                                              ; preds = %18
  %383 = call signext i8 @check_stack(i32 noundef 2) #8
  %.not24 = icmp eq i8 %383, 0
  br i1 %.not24, label %393, label %384

384:                                              ; preds = %382
  %385 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %386 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %385, i64 0, i32 1
  %387 = load %struct.estack_rec*, %struct.estack_rec** %386, align 8
  %388 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %387, i64 0, i32 0
  %389 = load %struct.bc_struct*, %struct.bc_struct** %388, align 8
  %390 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %385, i64 0, i32 0
  %391 = load %struct.bc_struct*, %struct.bc_struct** %390, align 8
  call void @bc_sub(%struct.bc_struct* noundef %389, %struct.bc_struct* noundef %391, %struct.bc_struct** noundef nonnull %1) #8
  call void @pop() #8
  call void @pop() #8
  %392 = load %struct.bc_struct*, %struct.bc_struct** %1, align 8
  call void @push_num(%struct.bc_struct* noundef %392) #8
  call void @init_num(%struct.bc_struct** noundef nonnull %1) #8
  br label %393

393:                                              ; preds = %384, %382
  br label %563

394:                                              ; preds = %18
  %395 = call signext i8 @check_stack(i32 noundef 2) #8
  %.not23 = icmp eq i8 %395, 0
  br i1 %.not23, label %406, label %396

396:                                              ; preds = %394
  %397 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %398 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %397, i64 0, i32 1
  %399 = load %struct.estack_rec*, %struct.estack_rec** %398, align 8
  %400 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %399, i64 0, i32 0
  %401 = load %struct.bc_struct*, %struct.bc_struct** %400, align 8
  %402 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %397, i64 0, i32 0
  %403 = load %struct.bc_struct*, %struct.bc_struct** %402, align 8
  %404 = load i32, i32* @scale, align 4
  call void @bc_multiply(%struct.bc_struct* noundef %401, %struct.bc_struct* noundef %403, %struct.bc_struct** noundef nonnull %1, i32 noundef %404) #8
  call void @pop() #8
  call void @pop() #8
  %405 = load %struct.bc_struct*, %struct.bc_struct** %1, align 8
  call void @push_num(%struct.bc_struct* noundef %405) #8
  call void @init_num(%struct.bc_struct** noundef nonnull %1) #8
  br label %406

406:                                              ; preds = %396, %394
  br label %563

407:                                              ; preds = %18
  %408 = call signext i8 @check_stack(i32 noundef 2) #8
  %.not22 = icmp eq i8 %408, 0
  br i1 %.not22, label %424, label %409

409:                                              ; preds = %407
  %410 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %411 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %410, i64 0, i32 1
  %412 = load %struct.estack_rec*, %struct.estack_rec** %411, align 8
  %413 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %412, i64 0, i32 0
  %414 = load %struct.bc_struct*, %struct.bc_struct** %413, align 8
  %415 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %410, i64 0, i32 0
  %416 = load %struct.bc_struct*, %struct.bc_struct** %415, align 8
  %417 = load i32, i32* @scale, align 4
  %418 = call i32 @bc_divide(%struct.bc_struct* noundef %414, %struct.bc_struct* noundef %416, %struct.bc_struct** noundef nonnull %1, i32 noundef %417) #8
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %422

420:                                              ; preds = %409
  call void @pop() #8
  call void @pop() #8
  %421 = load %struct.bc_struct*, %struct.bc_struct** %1, align 8
  call void @push_num(%struct.bc_struct* noundef %421) #8
  call void @init_num(%struct.bc_struct** noundef nonnull %1) #8
  br label %423

422:                                              ; preds = %409
  call void (i8*, ...) @rt_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0)) #8
  br label %423

423:                                              ; preds = %422, %420
  br label %424

424:                                              ; preds = %423, %407
  br label %563

425:                                              ; preds = %18
  %426 = call signext i8 @check_stack(i32 noundef 2) #8
  %.not20 = icmp eq i8 %426, 0
  br i1 %.not20, label %445, label %427

427:                                              ; preds = %425
  %428 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %429 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %428, i64 0, i32 0
  %430 = load %struct.bc_struct*, %struct.bc_struct** %429, align 8
  %431 = call signext i8 @is_zero(%struct.bc_struct* noundef %430) #8
  %.not21 = icmp eq i8 %431, 0
  br i1 %.not21, label %433, label %432

432:                                              ; preds = %427
  call void (i8*, ...) @rt_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0)) #8
  br label %444

433:                                              ; preds = %427
  %434 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %435 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %434, i64 0, i32 1
  %436 = load %struct.estack_rec*, %struct.estack_rec** %435, align 8
  %437 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %436, i64 0, i32 0
  %438 = load %struct.bc_struct*, %struct.bc_struct** %437, align 8
  %439 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %434, i64 0, i32 0
  %440 = load %struct.bc_struct*, %struct.bc_struct** %439, align 8
  %441 = load i32, i32* @scale, align 4
  %442 = call i32 @bc_modulo(%struct.bc_struct* noundef %438, %struct.bc_struct* noundef %440, %struct.bc_struct** noundef nonnull %1, i32 noundef %441) #8
  call void @pop() #8
  call void @pop() #8
  %443 = load %struct.bc_struct*, %struct.bc_struct** %1, align 8
  call void @push_num(%struct.bc_struct* noundef %443) #8
  call void @init_num(%struct.bc_struct** noundef nonnull %1) #8
  br label %444

444:                                              ; preds = %433, %432
  br label %445

445:                                              ; preds = %444, %425
  br label %563

446:                                              ; preds = %18
  %447 = call signext i8 @check_stack(i32 noundef 2) #8
  %.not17 = icmp eq i8 %447, 0
  br i1 %.not17, label %471, label %448

448:                                              ; preds = %446
  %449 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %450 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %449, i64 0, i32 1
  %451 = load %struct.estack_rec*, %struct.estack_rec** %450, align 8
  %452 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %451, i64 0, i32 0
  %453 = load %struct.bc_struct*, %struct.bc_struct** %452, align 8
  %454 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %449, i64 0, i32 0
  %455 = load %struct.bc_struct*, %struct.bc_struct** %454, align 8
  %456 = load i32, i32* @scale, align 4
  call void @bc_raise(%struct.bc_struct* noundef %453, %struct.bc_struct* noundef %455, %struct.bc_struct** noundef nonnull %1, i32 noundef %456) #8
  %457 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %458 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %457, i64 0, i32 1
  %459 = load %struct.estack_rec*, %struct.estack_rec** %458, align 8
  %460 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %459, i64 0, i32 0
  %461 = load %struct.bc_struct*, %struct.bc_struct** %460, align 8
  %462 = call signext i8 @is_zero(%struct.bc_struct* noundef %461) #8
  %.not18 = icmp eq i8 %462, 0
  br i1 %.not18, label %469, label %463

463:                                              ; preds = %448
  %464 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %465 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %464, i64 0, i32 0
  %466 = load %struct.bc_struct*, %struct.bc_struct** %465, align 8
  %467 = call signext i8 @is_neg(%struct.bc_struct* noundef %466) #8
  %.not19 = icmp eq i8 %467, 0
  br i1 %.not19, label %469, label %468

468:                                              ; preds = %463
  call void (i8*, ...) @rt_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)) #8
  br label %469

469:                                              ; preds = %468, %463, %448
  call void @pop() #8
  call void @pop() #8
  %470 = load %struct.bc_struct*, %struct.bc_struct** %1, align 8
  call void @push_num(%struct.bc_struct* noundef %470) #8
  call void @init_num(%struct.bc_struct** noundef nonnull %1) #8
  br label %471

471:                                              ; preds = %469, %446
  br label %563

472:                                              ; preds = %18
  %473 = call signext i8 @check_stack(i32 noundef 2) #8
  %.not16 = icmp eq i8 %473, 0
  br i1 %.not16, label %486, label %474

474:                                              ; preds = %472
  %475 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %476 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %475, i64 0, i32 1
  %477 = load %struct.estack_rec*, %struct.estack_rec** %476, align 8
  %478 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %477, i64 0, i32 0
  %479 = load %struct.bc_struct*, %struct.bc_struct** %478, align 8
  %480 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %475, i64 0, i32 0
  %481 = load %struct.bc_struct*, %struct.bc_struct** %480, align 8
  %482 = call i32 @bc_compare(%struct.bc_struct* noundef %479, %struct.bc_struct* noundef %481) #8
  %483 = icmp eq i32 %482, 0
  %484 = zext i1 %483 to i8
  store i8 %484, i8* @c_code, align 1
  call void @pop() #8
  %485 = load i8, i8* @c_code, align 1
  call void @assign(i8 noundef signext %485)
  br label %486

486:                                              ; preds = %474, %472
  br label %563

487:                                              ; preds = %18
  %488 = call signext i8 @check_stack(i32 noundef 2) #8
  %.not15 = icmp eq i8 %488, 0
  br i1 %.not15, label %501, label %489

489:                                              ; preds = %487
  %490 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %491 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %490, i64 0, i32 1
  %492 = load %struct.estack_rec*, %struct.estack_rec** %491, align 8
  %493 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %492, i64 0, i32 0
  %494 = load %struct.bc_struct*, %struct.bc_struct** %493, align 8
  %495 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %490, i64 0, i32 0
  %496 = load %struct.bc_struct*, %struct.bc_struct** %495, align 8
  %497 = call i32 @bc_compare(%struct.bc_struct* noundef %494, %struct.bc_struct* noundef %496) #8
  %498 = icmp ne i32 %497, 0
  %499 = zext i1 %498 to i8
  store i8 %499, i8* @c_code, align 1
  call void @pop() #8
  %500 = load i8, i8* @c_code, align 1
  call void @assign(i8 noundef signext %500)
  br label %501

501:                                              ; preds = %489, %487
  br label %563

502:                                              ; preds = %18
  %503 = call signext i8 @check_stack(i32 noundef 2) #8
  %.not14 = icmp eq i8 %503, 0
  br i1 %.not14, label %516, label %504

504:                                              ; preds = %502
  %505 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %506 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %505, i64 0, i32 1
  %507 = load %struct.estack_rec*, %struct.estack_rec** %506, align 8
  %508 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %507, i64 0, i32 0
  %509 = load %struct.bc_struct*, %struct.bc_struct** %508, align 8
  %510 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %505, i64 0, i32 0
  %511 = load %struct.bc_struct*, %struct.bc_struct** %510, align 8
  %512 = call i32 @bc_compare(%struct.bc_struct* noundef %509, %struct.bc_struct* noundef %511) #8
  %513 = icmp eq i32 %512, -1
  %514 = zext i1 %513 to i8
  store i8 %514, i8* @c_code, align 1
  call void @pop() #8
  %515 = load i8, i8* @c_code, align 1
  call void @assign(i8 noundef signext %515)
  br label %516

516:                                              ; preds = %504, %502
  br label %563

517:                                              ; preds = %18
  %518 = call signext i8 @check_stack(i32 noundef 2) #8
  %.not13 = icmp eq i8 %518, 0
  br i1 %.not13, label %531, label %519

519:                                              ; preds = %517
  %520 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %521 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %520, i64 0, i32 1
  %522 = load %struct.estack_rec*, %struct.estack_rec** %521, align 8
  %523 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %522, i64 0, i32 0
  %524 = load %struct.bc_struct*, %struct.bc_struct** %523, align 8
  %525 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %520, i64 0, i32 0
  %526 = load %struct.bc_struct*, %struct.bc_struct** %525, align 8
  %527 = call i32 @bc_compare(%struct.bc_struct* noundef %524, %struct.bc_struct* noundef %526) #8
  %528 = icmp slt i32 %527, 1
  %529 = zext i1 %528 to i8
  store i8 %529, i8* @c_code, align 1
  call void @pop() #8
  %530 = load i8, i8* @c_code, align 1
  call void @assign(i8 noundef signext %530)
  br label %531

531:                                              ; preds = %519, %517
  br label %563

532:                                              ; preds = %18
  %533 = call signext i8 @check_stack(i32 noundef 2) #8
  %.not12 = icmp eq i8 %533, 0
  br i1 %.not12, label %546, label %534

534:                                              ; preds = %532
  %535 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %536 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %535, i64 0, i32 1
  %537 = load %struct.estack_rec*, %struct.estack_rec** %536, align 8
  %538 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %537, i64 0, i32 0
  %539 = load %struct.bc_struct*, %struct.bc_struct** %538, align 8
  %540 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %535, i64 0, i32 0
  %541 = load %struct.bc_struct*, %struct.bc_struct** %540, align 8
  %542 = call i32 @bc_compare(%struct.bc_struct* noundef %539, %struct.bc_struct* noundef %541) #8
  %543 = icmp eq i32 %542, 1
  %544 = zext i1 %543 to i8
  store i8 %544, i8* @c_code, align 1
  call void @pop() #8
  %545 = load i8, i8* @c_code, align 1
  call void @assign(i8 noundef signext %545)
  br label %546

546:                                              ; preds = %534, %532
  br label %563

547:                                              ; preds = %18
  %548 = call signext i8 @check_stack(i32 noundef 2) #8
  %.not10 = icmp eq i8 %548, 0
  br i1 %.not10, label %560, label %549

549:                                              ; preds = %547
  %550 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %551 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %550, i64 0, i32 1
  %552 = load %struct.estack_rec*, %struct.estack_rec** %551, align 8
  %553 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %552, i64 0, i32 0
  %554 = load %struct.bc_struct*, %struct.bc_struct** %553, align 8
  %555 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %550, i64 0, i32 0
  %556 = load %struct.bc_struct*, %struct.bc_struct** %555, align 8
  %557 = call i32 @bc_compare(%struct.bc_struct* noundef %554, %struct.bc_struct* noundef %556) #8
  %.lobit = lshr i32 %557, 31
  %558 = trunc i32 %.lobit to i8
  %.not11 = xor i8 %558, 1
  store i8 %.not11, i8* @c_code, align 1
  call void @pop() #8
  %559 = load i8, i8* @c_code, align 1
  call void @assign(i8 noundef signext %559)
  br label %560

560:                                              ; preds = %549, %547
  br label %563

561:                                              ; preds = %18
  %562 = sext i8 %19 to i32
  call void (i8*, ...) @rt_error(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef %562) #8
  br label %563

563:                                              ; preds = %561, %560, %546, %531, %516, %501, %486, %471, %445, %424, %406, %393, %381, %369, %350, %327, %325, %323, %322, %305, %295, %287, %281, %280, %272, %263, %255, %198, %181, %180, %172, %154, %128, %123, %115, %100, %96, %81, %68, %28
  br label %6, !llvm.loop !9

564:                                              ; preds = %16
  br label %565

565:                                              ; preds = %567, %564
  %566 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 0), align 4
  %.not6 = icmp eq i32 %566, 0
  br i1 %.not6, label %581, label %567

567:                                              ; preds = %565
  %568 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %569 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 0), align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %568, i64 %570, i32 5
  %572 = load %struct.arg_list*, %struct.arg_list** %571, align 8
  call void @pop_vars(%struct.arg_list* noundef %572) #8
  %573 = load %struct.bc_function*, %struct.bc_function** @functions, align 8
  %574 = load i32, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 0), align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds %struct.bc_function, %struct.bc_function* %573, i64 %575, i32 4
  %577 = load %struct.arg_list*, %struct.arg_list** %576, align 8
  call void @pop_vars(%struct.arg_list* noundef %577) #8
  %578 = call i32 @fpop() #8
  %579 = call i32 @fpop() #8
  store i32 %579, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 1), align 4
  %580 = call i32 @fpop() #8
  store i32 %580, i32* getelementptr inbounds (%struct.program_counter, %struct.program_counter* @pc, i64 0, i32 0), align 4
  br label %565, !llvm.loop !10

581:                                              ; preds = %565
  br label %582

582:                                              ; preds = %584, %581
  %583 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %.not7 = icmp eq %struct.estack_rec* %583, null
  br i1 %.not7, label %585, label %584

584:                                              ; preds = %582
  call void @pop() #8
  br label %582, !llvm.loop !11

585:                                              ; preds = %582
  %586 = load i8, i8* @interactive, align 1
  %.not8 = icmp eq i8 %586, 0
  br i1 %.not8, label %592, label %587

587:                                              ; preds = %585
  %588 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef nonnull @use_quit) #8
  %589 = load i32, i32* @had_sigint, align 4
  %.not9 = icmp eq i32 %589, 0
  br i1 %.not9, label %591, label %590

590:                                              ; preds = %587
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @str, i64 0, i64 0))
  br label %591

591:                                              ; preds = %590, %587
  br label %592

592:                                              ; preds = %591, %585
  ret void
}

declare dso_local void @init_num(%struct.bc_struct** noundef) #1

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #3

declare dso_local void @incr_array(i32 noundef) #1

declare dso_local signext i8 @is_zero(%struct.bc_struct* noundef) #1

declare dso_local void @pop() #1

declare dso_local void @process_params(%struct.program_counter* noundef, i32 noundef) #1

declare dso_local void @auto_var(i32 noundef) #1

declare dso_local void @fpush(i32 noundef) #1

declare dso_local void @push_copy(%struct.bc_struct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @push_b10_const(%struct.program_counter* nocapture noundef %0) #0 {
  %2 = alloca %struct.bc_struct*, align 8
  %3 = alloca i64, align 8
  %tmpcast = bitcast i64* %3 to %struct.program_counter*
  %4 = bitcast %struct.program_counter* %0 to i64*
  %5 = load i64, i64* %4, align 4
  store i64 %5, i64* %3, align 8
  %6 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull %tmpcast)
  br label %7

7:                                                ; preds = %12, %1
  %.04 = phi i8 [ %6, %1 ], [ %14, %12 ]
  %.01 = phi i32 [ 0, %1 ], [ %13, %12 ]
  %.not = icmp eq i8 %.04, 46
  br i1 %.not, label %10, label %8

8:                                                ; preds = %7
  %9 = icmp ne i8 %.04, 58
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi i1 [ false, %7 ], [ %9, %8 ]
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = add nuw nsw i32 %.01, 1
  %14 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull %tmpcast)
  br label %7, !llvm.loop !12

15:                                               ; preds = %10
  %16 = icmp eq i8 %.04, 46
  br i1 %16, label %17, label %24

17:                                               ; preds = %15
  %18 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull %tmpcast)
  br label %19

19:                                               ; preds = %20, %17
  %.15 = phi i8 [ %18, %17 ], [ %22, %20 ]
  %.02 = phi i32 [ 0, %17 ], [ %21, %20 ]
  %.not9 = icmp eq i8 %.15, 58
  br i1 %.not9, label %23, label %20

20:                                               ; preds = %19
  %21 = add nuw nsw i32 %.02, 1
  %22 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull %tmpcast)
  br label %19, !llvm.loop !13

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %23, %15
  %.13 = phi i32 [ %.02, %23 ], [ 0, %15 ]
  %25 = call zeroext i8 @byte(%struct.program_counter* noundef %0)
  %26 = icmp eq i32 %.01, 1
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = icmp eq i32 %.13, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %27
  %30 = icmp eq i8 %25, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  call void @push_copy(%struct.bc_struct* noundef %32) #8
  %33 = call zeroext i8 @byte(%struct.program_counter* noundef %0)
  br label %67

34:                                               ; preds = %29
  %35 = icmp eq i8 %25, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  call void @push_copy(%struct.bc_struct* noundef %37) #8
  %38 = call zeroext i8 @byte(%struct.program_counter* noundef %0)
  br label %67

39:                                               ; preds = %34
  %40 = icmp sgt i8 %25, 9
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  call void @init_num(%struct.bc_struct** noundef nonnull %2) #8
  %42 = sext i8 %25 to i32
  call void @int2num(%struct.bc_struct** noundef nonnull %2, i32 noundef %42) #8
  %43 = load %struct.bc_struct*, %struct.bc_struct** %2, align 8
  call void @push_num(%struct.bc_struct* noundef %43) #8
  %44 = call zeroext i8 @byte(%struct.program_counter* noundef %0)
  br label %67

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %27, %24
  %47 = icmp eq i32 %.01, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = call %struct.bc_struct* @new_num(i32 noundef 1, i32 noundef %.13) #8
  store %struct.bc_struct* %49, %struct.bc_struct** %2, align 8
  %50 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %49, i64 0, i32 4, i64 0
  %51 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %49, i64 0, i32 4, i64 1
  store i8 0, i8* %50, align 1
  br label %55

52:                                               ; preds = %46
  %53 = call %struct.bc_struct* @new_num(i32 noundef %.01, i32 noundef %.13) #8
  store %struct.bc_struct* %53, %struct.bc_struct** %2, align 8
  %54 = getelementptr inbounds %struct.bc_struct, %struct.bc_struct* %53, i64 0, i32 4, i64 0
  br label %55

55:                                               ; preds = %52, %48
  %.0 = phi i8* [ %51, %48 ], [ %54, %52 ]
  br label %56

56:                                               ; preds = %63, %55
  %.26 = phi i8 [ %25, %55 ], [ %64, %63 ]
  %.1 = phi i8* [ %.0, %55 ], [ %.3, %63 ]
  %.not7 = icmp eq i8 %.26, 58
  br i1 %.not7, label %65, label %57

57:                                               ; preds = %56
  %.not8 = icmp eq i8 %.26, 46
  br i1 %.not8, label %63, label %58

58:                                               ; preds = %57
  %59 = icmp sgt i8 %.26, 9
  br i1 %59, label %60, label %61

60:                                               ; preds = %58
  br label %62

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61, %60
  %storemerge = phi i8 [ %.26, %61 ], [ 9, %60 ]
  %.2 = getelementptr inbounds i8, i8* %.1, i64 1
  store i8 %storemerge, i8* %.1, align 1
  br label %63

63:                                               ; preds = %62, %57
  %.3 = phi i8* [ %.2, %62 ], [ %.1, %57 ]
  %64 = call zeroext i8 @byte(%struct.program_counter* noundef %0)
  br label %56, !llvm.loop !14

65:                                               ; preds = %56
  %66 = load %struct.bc_struct*, %struct.bc_struct** %2, align 8
  call void @push_num(%struct.bc_struct* noundef %66) #8
  br label %67

67:                                               ; preds = %65, %41, %36, %31
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @push_constant(i8 ()* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.bc_struct*, align 8
  %4 = alloca %struct.bc_struct*, align 8
  %5 = alloca %struct.bc_struct*, align 8
  %6 = alloca %struct.bc_struct*, align 8
  %7 = alloca %struct.bc_struct*, align 8
  call void @init_num(%struct.bc_struct** noundef nonnull %4) #8
  call void @init_num(%struct.bc_struct** noundef nonnull %5) #8
  call void @init_num(%struct.bc_struct** noundef nonnull %6) #8
  %8 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %9 = call %struct.bc_struct* @copy_num(%struct.bc_struct* noundef %8) #8
  store %struct.bc_struct* %9, %struct.bc_struct** %3, align 8
  call void @int2num(%struct.bc_struct** noundef nonnull %6, i32 noundef %1) #8
  %10 = call signext i8 %0() #8
  br label %11

11:                                               ; preds = %13, %2
  %.03 = phi i8 [ %10, %2 ], [ %14, %13 ]
  %12 = icmp eq i8 %.03, 32
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = call signext i8 %0() #8
  br label %11, !llvm.loop !15

15:                                               ; preds = %11
  %16 = icmp eq i8 %.03, 43
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = call signext i8 %0() #8
  br label %24

19:                                               ; preds = %15
  %20 = icmp eq i8 %.03, 45
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = call signext i8 %0() #8
  br label %23

23:                                               ; preds = %21, %19
  %.14 = phi i8 [ %22, %21 ], [ %.03, %19 ]
  %.0 = phi i8 [ 1, %21 ], [ 0, %19 ]
  br label %24

24:                                               ; preds = %23, %17
  %.2 = phi i8 [ %18, %17 ], [ %.14, %23 ]
  %.1 = phi i8 [ 0, %17 ], [ %.0, %23 ]
  %25 = icmp slt i8 %.2, 16
  br i1 %25, label %26, label %36

26:                                               ; preds = %24
  %27 = call signext i8 %0() #8
  %28 = icmp slt i8 %27, 16
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = sext i8 %.2 to i32
  %.not8 = icmp slt i32 %30, %1
  br i1 %.not8, label %34, label %31

31:                                               ; preds = %29
  %32 = trunc i32 %1 to i8
  %33 = add i8 %32, -1
  br label %34

34:                                               ; preds = %31, %29, %26
  %.01 = phi i8 [ %33, %31 ], [ %.2, %29 ], [ %.2, %26 ]
  %35 = sext i8 %.01 to i32
  call void @int2num(%struct.bc_struct** noundef nonnull %3, i32 noundef %35) #8
  br label %36

36:                                               ; preds = %34, %24
  %.3 = phi i8 [ %27, %34 ], [ %.2, %24 ]
  br label %37

37:                                               ; preds = %45, %36
  %.4 = phi i8 [ %.3, %36 ], [ %51, %45 ]
  %38 = icmp slt i8 %.4, 16
  br i1 %38, label %39, label %52

39:                                               ; preds = %37
  br i1 true, label %40, label %45

40:                                               ; preds = %39
  %41 = sext i8 %.4 to i32
  %.not7 = icmp slt i32 %41, %1
  br i1 %.not7, label %45, label %42

42:                                               ; preds = %40
  %43 = trunc i32 %1 to i8
  %44 = add i8 %43, -1
  br label %45

45:                                               ; preds = %42, %40, %39
  %.5 = phi i8 [ %44, %42 ], [ %.4, %40 ], [ %.4, %39 ]
  %46 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %47 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  call void @bc_multiply(%struct.bc_struct* noundef %46, %struct.bc_struct* noundef %47, %struct.bc_struct** noundef nonnull %5, i32 noundef 0) #8
  %48 = sext i8 %.5 to i32
  call void @int2num(%struct.bc_struct** noundef nonnull %4, i32 noundef %48) #8
  %49 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %50 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  call void @bc_add(%struct.bc_struct* noundef %49, %struct.bc_struct* noundef %50, %struct.bc_struct** noundef nonnull %3) #8
  %51 = call signext i8 %0() #8
  br label %37, !llvm.loop !16

52:                                               ; preds = %37
  %53 = icmp eq i8 %.4, 46
  br i1 %53, label %54, label %90

54:                                               ; preds = %52
  %55 = call signext i8 %0() #8
  %56 = sext i8 %55 to i32
  %.not5 = icmp slt i32 %56, %1
  br i1 %.not5, label %60, label %57

57:                                               ; preds = %54
  %58 = trunc i32 %1 to i8
  %59 = add i8 %58, -1
  br label %60

60:                                               ; preds = %57, %54
  %.6 = phi i8 [ %59, %57 ], [ %55, %54 ]
  call void @free_num(%struct.bc_struct** noundef nonnull %5) #8
  call void @free_num(%struct.bc_struct** noundef nonnull %4) #8
  %61 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %62 = call %struct.bc_struct* @copy_num(%struct.bc_struct* noundef %61) #8
  store %struct.bc_struct* %62, %struct.bc_struct** %7, align 8
  %63 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %64 = call %struct.bc_struct* @copy_num(%struct.bc_struct* noundef %63) #8
  store %struct.bc_struct* %64, %struct.bc_struct** %5, align 8
  br label %65

65:                                               ; preds = %83, %60
  %.7 = phi i8 [ %.6, %60 ], [ %.8, %83 ]
  %.02 = phi i32 [ 0, %60 ], [ %75, %83 ]
  %66 = icmp slt i8 %.7, 16
  br i1 %66, label %67, label %84

67:                                               ; preds = %65
  %68 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %69 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  call void @bc_multiply(%struct.bc_struct* noundef %68, %struct.bc_struct* noundef %69, %struct.bc_struct** noundef nonnull %5, i32 noundef 0) #8
  %70 = sext i8 %.7 to i32
  call void @int2num(%struct.bc_struct** noundef nonnull %4, i32 noundef %70) #8
  %71 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %72 = load %struct.bc_struct*, %struct.bc_struct** %4, align 8
  call void @bc_add(%struct.bc_struct* noundef %71, %struct.bc_struct* noundef %72, %struct.bc_struct** noundef nonnull %5) #8
  %73 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %74 = load %struct.bc_struct*, %struct.bc_struct** %6, align 8
  call void @bc_multiply(%struct.bc_struct* noundef %73, %struct.bc_struct* noundef %74, %struct.bc_struct** noundef nonnull %7, i32 noundef 0) #8
  %75 = add nuw nsw i32 %.02, 1
  %76 = call signext i8 %0() #8
  %77 = icmp slt i8 %76, 16
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = sext i8 %76 to i32
  %.not6 = icmp slt i32 %79, %1
  br i1 %.not6, label %83, label %80

80:                                               ; preds = %78
  %81 = trunc i32 %1 to i8
  %82 = add i8 %81, -1
  br label %83

83:                                               ; preds = %80, %78, %67
  %.8 = phi i8 [ %82, %80 ], [ %76, %78 ], [ %76, %67 ]
  br label %65, !llvm.loop !17

84:                                               ; preds = %65
  %85 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  %86 = load %struct.bc_struct*, %struct.bc_struct** %7, align 8
  %87 = call i32 @bc_divide(%struct.bc_struct* noundef %85, %struct.bc_struct* noundef %86, %struct.bc_struct** noundef nonnull %5, i32 noundef %.02) #8
  %88 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  %89 = load %struct.bc_struct*, %struct.bc_struct** %5, align 8
  call void @bc_add(%struct.bc_struct* noundef %88, %struct.bc_struct* noundef %89, %struct.bc_struct** noundef nonnull %3) #8
  br label %90

90:                                               ; preds = %84, %52
  %.not = icmp eq i8 %.1, 0
  br i1 %.not, label %94, label %91

91:                                               ; preds = %90
  %92 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %93 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  call void @bc_sub(%struct.bc_struct* noundef %92, %struct.bc_struct* noundef %93, %struct.bc_struct** noundef nonnull %3) #8
  br label %94

94:                                               ; preds = %91, %90
  %95 = load %struct.bc_struct*, %struct.bc_struct** %3, align 8
  call void @push_num(%struct.bc_struct* noundef %95) #8
  call void @free_num(%struct.bc_struct** noundef nonnull %4) #8
  call void @free_num(%struct.bc_struct** noundef nonnull %5) #8
  call void @free_num(%struct.bc_struct** noundef nonnull %6) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local signext i8 @prog_char() #2 {
  %1 = call zeroext i8 @byte(%struct.program_counter* noundef nonnull @pc)
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
  %2 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %3 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %2, i64 0, i32 0
  call void @free_num(%struct.bc_struct** noundef %3) #8
  %.not = icmp eq i8 %0, 0
  br i1 %.not, label %9, label %4

4:                                                ; preds = %1
  %5 = load %struct.bc_struct*, %struct.bc_struct** @_one_, align 8
  %6 = call %struct.bc_struct* @copy_num(%struct.bc_struct* noundef %5) #8
  %7 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %8 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %7, i64 0, i32 0
  store %struct.bc_struct* %6, %struct.bc_struct** %8, align 8
  br label %14

9:                                                ; preds = %1
  %10 = load %struct.bc_struct*, %struct.bc_struct** @_zero_, align 8
  %11 = call %struct.bc_struct* @copy_num(%struct.bc_struct* noundef %10) #8
  %12 = load %struct.estack_rec*, %struct.estack_rec** @ex_stack, align 8
  %13 = getelementptr inbounds %struct.estack_rec, %struct.estack_rec* %12, i64 0, i32 0
  store %struct.bc_struct* %11, %struct.bc_struct** %13, align 8
  br label %14

14:                                               ; preds = %9, %4
  ret void
}

declare dso_local void @out_num(%struct.bc_struct* noundef, i32 noundef, void (i32)* noundef) #1

declare dso_local void @store_var(i32 noundef) #1

declare dso_local void @int2num(%struct.bc_struct** noundef, i32 noundef) #1

declare dso_local i32 @bc_sqrt(%struct.bc_struct** noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @input_char() #0 {
  %1 = call i32 @getchar() #8
  %sext.mask = and i32 %1, 255
  %2 = icmp eq i32 %sext.mask, 92
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = call i32 @getchar() #8
  %sext.mask2 = and i32 %4, 255
  %5 = icmp eq i32 %sext.mask2, 10
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = call i32 @getchar() #8
  br label %8

8:                                                ; preds = %6, %3
  %.01.in = phi i32 [ %7, %6 ], [ %4, %3 ]
  br label %9

9:                                                ; preds = %8, %0
  %.1.in = phi i32 [ %.01.in, %8 ], [ %1, %0 ]
  %.1 = trunc i32 %.1.in to i8
  %10 = call i16** @__ctype_b_loc() #10
  %11 = load i16*, i16** %10, align 8
  %12 = sext i8 %.1 to i64
  %13 = getelementptr inbounds i16, i16* %11, i64 %12
  %14 = load i16, i16* %13, align 2
  %15 = and i16 %14, 2048
  %.not = icmp eq i16 %15, 0
  br i1 %.not, label %18, label %16

16:                                               ; preds = %9
  %17 = add i8 %.1, -48
  br label %41

18:                                               ; preds = %9
  %19 = icmp sgt i8 %.1, 64
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = icmp slt i8 %.1, 71
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = add i8 %.1, -55
  br label %41

24:                                               ; preds = %20, %18
  %25 = icmp sgt i8 %.1, 96
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = icmp slt i8 %.1, 103
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = add i8 %.1, -87
  br label %41

30:                                               ; preds = %26, %24
  %31 = icmp eq i8 %.1, 46
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  %33 = icmp eq i8 %.1, 43
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = icmp eq i8 %.1, 45
  br i1 %35, label %36, label %37

36:                                               ; preds = %34, %32, %30
  br label %41

37:                                               ; preds = %34
  %38 = icmp slt i8 %.1, 33
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  br label %41

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %40, %39, %36, %28, %22, %16
  %.0 = phi i8 [ %17, %16 ], [ %23, %22 ], [ %29, %28 ], [ %.1, %36 ], [ 32, %39 ], [ 58, %40 ]
  ret i8 %.0
}

declare dso_local void @decr_var(i32 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

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

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

declare dso_local %struct.bc_struct* @copy_num(%struct.bc_struct* noundef) #1

declare dso_local void @free_num(%struct.bc_struct** noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare dso_local %struct.bc_struct* @new_num(i32 noundef, i32 noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone willreturn }

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
