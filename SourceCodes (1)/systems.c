; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/systems.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/mpeg2/mpeg2dec/systems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@ld = external dso_local global %struct.layer_data*, align 8
@.str = private unnamed_addr constant [19 x i8] c"MPEG-2 PES packet\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Error in packet header\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Unexpected startcode %08x in system layer\0A\00", align 1
@System_Stream_Flag = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Next_Packet() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %161, %0
  %4 = call i32 @Get_Long()
  store i32 %4, i32* %1, align 4
  br label %5

5:                                                ; preds = %9, %3
  %6 = load i32, i32* %1, align 4
  %7 = and i32 %6, -256
  %8 = icmp ne i32 %7, 256
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = shl i32 %10, 8
  %12 = call i32 @Get_Byte()
  %13 = or i32 %11, %12
  store i32 %13, i32* %1, align 4
  br label %5, !llvm.loop !4

14:                                               ; preds = %5
  %15 = load i32, i32* %1, align 4
  switch i32 %15, label %145 [
    i32 442, label %16
    i32 480, label %21
    i32 441, label %104
  ]

16:                                               ; preds = %14
  %17 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %18 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 8
  store i8* %20, i8** %18, align 8
  br label %161

21:                                               ; preds = %14
  %22 = call i32 @Get_Word()
  store i32 %22, i32* %1, align 4
  %23 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %24 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* %1, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %30 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = call i32 @Get_Byte()
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = lshr i32 %32, 6
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %48

35:                                               ; preds = %21
  %36 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %37 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %37, align 8
  %40 = call i32 @Get_Byte()
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %1, align 4
  %42 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %43 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = zext i32 %41 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %43, align 8
  %47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %162

48:                                               ; preds = %21
  %49 = load i32, i32* %1, align 4
  %50 = icmp eq i32 %49, 255
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %55, %51
  %53 = call i32 @Get_Byte()
  store i32 %53, i32* %1, align 4
  %54 = icmp eq i32 %53, 255
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %52, !llvm.loop !6

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %48
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %1, align 4
  %60 = icmp uge i32 %59, 64
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load i32, i32* %1, align 4
  %63 = icmp uge i32 %62, 128
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 noundef 1) #3
  unreachable

67:                                               ; preds = %61
  %68 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %69 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %69, align 8
  %72 = call i32 @Get_Byte()
  store i32 %72, i32* %1, align 4
  br label %73

73:                                               ; preds = %67, %58
  %74 = load i32, i32* %1, align 4
  %75 = icmp uge i32 %74, 48
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i32, i32* %1, align 4
  %78 = icmp uge i32 %77, 64
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %80, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 noundef 1) #3
  unreachable

82:                                               ; preds = %76
  %83 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %84 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 9
  store i8* %86, i8** %84, align 8
  br label %103

87:                                               ; preds = %73
  %88 = load i32, i32* %1, align 4
  %89 = icmp uge i32 %88, 32
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %92 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 4
  store i8* %94, i8** %92, align 8
  br label %102

95:                                               ; preds = %87
  %96 = load i32, i32* %1, align 4
  %97 = icmp ne i32 %96, 15
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %99, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 noundef 1) #3
  unreachable

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %90
  br label %103

103:                                              ; preds = %102, %82
  br label %162

104:                                              ; preds = %14
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %108, %104
  %106 = load i32, i32* %2, align 4
  %107 = icmp slt i32 %106, 2048
  br i1 %107, label %108, label %133

108:                                              ; preds = %105
  %109 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %110 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %109, i32 0, i32 1
  %111 = load i32, i32* %2, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %2, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds [2048 x i8], [2048 x i8]* %110, i64 0, i64 %113
  store i8 0, i8* %114, align 1
  %115 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %116 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %115, i32 0, i32 1
  %117 = load i32, i32* %2, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %2, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds [2048 x i8], [2048 x i8]* %116, i64 0, i64 %119
  store i8 0, i8* %120, align 1
  %121 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %122 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %121, i32 0, i32 1
  %123 = load i32, i32* %2, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %2, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds [2048 x i8], [2048 x i8]* %122, i64 0, i64 %125
  store i8 1, i8* %126, align 1
  %127 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %128 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %127, i32 0, i32 1
  %129 = load i32, i32* %2, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %2, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds [2048 x i8], [2048 x i8]* %128, i64 0, i64 %131
  store i8 -73, i8* %132, align 1
  br label %105, !llvm.loop !7

133:                                              ; preds = %105
  %134 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %135 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %134, i32 0, i32 1
  %136 = getelementptr inbounds [2048 x i8], [2048 x i8]* %135, i64 0, i64 0
  %137 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %138 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %137, i32 0, i32 2
  store i8* %136, i8** %138, align 8
  %139 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %140 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %139, i32 0, i32 1
  %141 = getelementptr inbounds [2048 x i8], [2048 x i8]* %140, i64 0, i64 0
  %142 = getelementptr inbounds i8, i8* %141, i64 2048
  %143 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %144 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %143, i32 0, i32 5
  store i8* %142, i8** %144, align 8
  br label %162

145:                                              ; preds = %14
  %146 = load i32, i32* %1, align 4
  %147 = icmp uge i32 %146, 443
  br i1 %147, label %148, label %156

148:                                              ; preds = %145
  %149 = call i32 @Get_Word()
  store i32 %149, i32* %1, align 4
  %150 = load i32, i32* %1, align 4
  %151 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %152 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = zext i32 %150 to i64
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8* %155, i8** %152, align 8
  br label %160

156:                                              ; preds = %145
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %158 = load i32, i32* %1, align 4
  %159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %157, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 noundef %158)
  call void @exit(i32 noundef 1) #3
  unreachable

160:                                              ; preds = %148
  br label %161

161:                                              ; preds = %160, %16
  br label %3

162:                                              ; preds = %133, %103, %35
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Long() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @Get_Word()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = shl i32 %3, 16
  %5 = call i32 @Get_Word()
  %6 = or i32 %4, %5
  ret i32 %6
}

declare dso_local i32 @Get_Byte() #1

declare dso_local i32 @Get_Word() #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Flush_Buffer32() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 4
  store i32 0, i32* %3, align 8
  %4 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %5 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = sub nsw i32 %7, 32
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* @System_Stream_Flag, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %0
  %12 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %13 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %16 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %15, i32 0, i32 5
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 -4
  %19 = icmp uge i8* %14, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %33, %20
  %22 = load i32, i32* %1, align 4
  %23 = icmp sle i32 %22, 24
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %26 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %29 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %28, i32 0, i32 5
  %30 = load i8*, i8** %29, align 8
  %31 = icmp uge i8* %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  call void @Next_Packet()
  br label %33

33:                                               ; preds = %32, %24
  %34 = call i32 @Get_Byte()
  %35 = load i32, i32* %1, align 4
  %36 = sub nsw i32 24, %35
  %37 = shl i32 %34, %36
  %38 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %39 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 8
  store i32 %43, i32* %1, align 4
  br label %21, !llvm.loop !8

44:                                               ; preds = %21
  br label %76

45:                                               ; preds = %11, %0
  br label %46

46:                                               ; preds = %59, %45
  %47 = load i32, i32* %1, align 4
  %48 = icmp sle i32 %47, 24
  br i1 %48, label %49, label %75

49:                                               ; preds = %46
  %50 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %51 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %54 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %53, i32 0, i32 1
  %55 = getelementptr inbounds [2048 x i8], [2048 x i8]* %54, i64 0, i64 0
  %56 = getelementptr inbounds i8, i8* %55, i64 2048
  %57 = icmp uge i8* %52, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  call void @Fill_Buffer()
  br label %59

59:                                               ; preds = %58, %49
  %60 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %61 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %61, align 8
  %64 = load i8, i8* %62, align 1
  %65 = zext i8 %64 to i32
  %66 = load i32, i32* %1, align 4
  %67 = sub nsw i32 24, %66
  %68 = shl i32 %65, %67
  %69 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %70 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load i32, i32* %1, align 4
  %74 = add nsw i32 %73, 8
  store i32 %74, i32* %1, align 4
  br label %46, !llvm.loop !9

75:                                               ; preds = %46
  br label %76

76:                                               ; preds = %75, %44
  %77 = load i32, i32* %1, align 4
  %78 = load %struct.layer_data*, %struct.layer_data** @ld, align 8
  %79 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 8
  ret void
}

declare dso_local void @Fill_Buffer() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Get_Bits32() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @Show_Bits(i32 noundef 32)
  store i32 %2, i32* %1, align 4
  call void @Flush_Buffer32()
  %3 = load i32, i32* %1, align 4
  ret i32 %3
}

declare dso_local i32 @Show_Bits(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
