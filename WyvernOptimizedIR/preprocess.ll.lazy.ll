; ModuleID = './preprocess.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/preprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

@.str = private unnamed_addr constant [14 x i8] c"SO >= -0x4000\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/preprocess.c\00", align 1
@__PRETTY_FUNCTION__.Gsm_Preprocess = private unnamed_addr constant [56 x i8] c"void Gsm_Preprocess(struct gsm_state *, word *, word *)\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"SO <= 0x3FFC\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"s1 != MIN_WORD\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Gsm_Preprocess(%struct.gsm_state* nocapture noundef %0, i16* nocapture noundef readonly %1, i16* nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = trunc i32 %9 to i16
  br label %11

11:                                               ; preds = %105, %3
  %.05 = phi i16 [ %10, %3 ], [ %95, %105 ]
  %.04 = phi i64 [ %7, %3 ], [ %76, %105 ]
  %.03 = phi i16 [ %5, %3 ], [ %17, %105 ]
  %.02 = phi i16* [ %2, %3 ], [ %108, %105 ]
  %.01 = phi i16* [ %1, %3 ], [ %18, %105 ]
  %.0 = phi i32 [ 160, %3 ], [ %12, %105 ]
  %12 = add nsw i32 %.0, -1
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %109, label %13

13:                                               ; preds = %11
  %14 = load i16, i16* %.01, align 2
  %15 = sext i16 %14 to i32
  %16 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %15, i32 noundef 3) #3
  %.tr = trunc i32 %16 to i16
  %17 = shl i16 %.tr, 2
  %18 = getelementptr inbounds i16, i16* %.01, i64 1
  %19 = icmp sgt i16 %17, -16385
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %22

21:                                               ; preds = %13
  call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.Gsm_Preprocess, i64 0, i64 0)) #4
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %20
  %23 = icmp slt i16 %17, 16381
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  br label %26

25:                                               ; preds = %22
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.Gsm_Preprocess, i64 0, i64 0)) #4
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %24
  %27 = sub i16 %17, %.03
  %.not15 = icmp eq i16 %27, -32768
  br i1 %.not15, label %29, label %28

28:                                               ; preds = %26
  br label %30

29:                                               ; preds = %26
  call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.Gsm_Preprocess, i64 0, i64 0)) #4
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %28
  %31 = sext i16 %27 to i64
  %32 = shl nsw i64 %31, 15
  %33 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %.04, i32 noundef 15) #3
  %34 = trunc i32 %33 to i16
  %35 = sext i16 %34 to i64
  %.neg = mul nsw i64 %35, -32768
  %36 = add i64 %.neg, %.04
  %sext = shl i64 %36, 48
  %37 = ashr exact i64 %sext, 48
  %38 = mul nsw i64 %37, 32735
  %39 = add nsw i64 %38, 16384
  %40 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %39, i32 noundef 15) #3
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %32, %41
  %43 = sext i16 %34 to i64
  %44 = mul nsw i64 %43, 32735
  %45 = icmp slt i16 %34, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %30
  %47 = icmp sgt i64 %42, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = add nsw i64 %44, %42
  br label %60

50:                                               ; preds = %46
  %51 = xor i64 %44, -1
  %52 = xor i64 %42, -1
  %53 = add nsw i64 %51, %52
  %54 = icmp ugt i64 %53, 2147483646
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %58

56:                                               ; preds = %50
  %57 = sub nsw i64 -2, %53
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi i64 [ -2147483648, %55 ], [ %57, %56 ]
  br label %60

60:                                               ; preds = %58, %48
  %61 = phi i64 [ %49, %48 ], [ %59, %58 ]
  br label %75

62:                                               ; preds = %30
  %63 = icmp slt i64 %42, 1
  br i1 %63, label %64, label %66

64:                                               ; preds = %62
  %65 = add nsw i64 %44, %42
  br label %73

66:                                               ; preds = %62
  %67 = add nsw i64 %44, %42
  %68 = icmp ugt i64 %67, 2147483646
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %71

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %69
  %72 = phi i64 [ 2147483647, %69 ], [ %67, %70 ]
  br label %73

73:                                               ; preds = %71, %64
  %74 = phi i64 [ %65, %64 ], [ %72, %71 ]
  br label %75

75:                                               ; preds = %73, %60
  %76 = phi i64 [ %61, %60 ], [ %74, %73 ]
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = add nsw i64 %76, 16384
  br label %87

80:                                               ; preds = %75
  %81 = add i64 %76, 16384
  %82 = icmp ugt i64 %81, 2147483646
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %85

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %83
  %86 = phi i64 [ 2147483647, %83 ], [ %81, %84 ]
  br label %87

87:                                               ; preds = %85, %78
  %88 = phi i64 [ %79, %78 ], [ %86, %85 ]
  %89 = sext i16 %.05 to i64
  %90 = mul nsw i64 %89, -28180
  %91 = add nsw i64 %90, 16384
  %92 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %91, i32 noundef 15) #3
  %93 = zext i32 %92 to i64
  %94 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %88, i32 noundef 15) #3
  %95 = trunc i32 %94 to i16
  %96 = sext i16 %95 to i64
  %sext16 = shl i64 %93, 48
  %97 = ashr exact i64 %sext16, 48
  %98 = add nsw i64 %97, %96
  %99 = add nsw i64 %98, -32768
  %100 = icmp ult i64 %99, -65536
  br i1 %100, label %101, label %104

101:                                              ; preds = %87
  %102 = icmp sgt i64 %98, 0
  %103 = select i1 %102, i64 32767, i64 -32768
  br label %105

104:                                              ; preds = %87
  br label %105

105:                                              ; preds = %104, %101
  %106 = phi i64 [ %103, %101 ], [ %98, %104 ]
  %107 = trunc i64 %106 to i16
  %108 = getelementptr inbounds i16, i16* %.02, i64 1
  store i16 %107, i16* %.02, align 2
  br label %11, !llvm.loop !4

109:                                              ; preds = %11
  %110 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 1
  store i16 %.03, i16* %110, align 8
  %111 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 2
  store i64 %.04, i64* %111, align 8
  %112 = sext i16 %.05 to i32
  %113 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 3
  store i32 %112, i32* %113, align 8
  ret void

UnifiedUnreachableBlock:                          ; preds = %29, %25, %21
  unreachable
}

declare dso_local i32 @SASR(...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
