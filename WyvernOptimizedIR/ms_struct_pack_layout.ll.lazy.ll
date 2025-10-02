; ModuleID = './ms_struct_pack_layout.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/ms_struct_pack_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.one = type { i32, i8, i16, i8 }
%struct.two = type { i32, i8, i32, i8 }
%struct.three = type { i16, i16, i8 }
%struct.four = type { i16, [2 x i8], i8, [3 x i8] }
%struct.five = type { i8, i8, i8 }
%struct.six = type { i8, [3 x i8], i8, i8, [2 x i8] }
%struct.seven = type { i8, i8, i8 }
%struct.eight = type { i16, i8 }
%union.nine = type { i64 }
%struct.ten = type { i64, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [16 x i8], align 16
  %2 = alloca %struct.one, align 4
  %3 = alloca %struct.two, align 4
  %4 = alloca %struct.three, align 2
  %5 = alloca i64, align 8
  %tmpcast = bitcast i64* %5 to %struct.four*
  %6 = alloca %struct.five, align 1
  %7 = alloca i64, align 8
  %tmpcast5 = bitcast i64* %7 to %struct.six*
  %8 = alloca %struct.seven, align 1
  %9 = alloca i32, align 4
  %tmpcast8 = bitcast i32* %9 to %struct.eight*
  %10 = alloca %union.nine, align 8
  %11 = alloca %struct.ten, align 8
  br label %12

12:                                               ; preds = %17, %0
  %.0 = phi i8 [ 0, %0 ], [ %18, %17 ]
  %13 = icmp ult i8 %.0, 16
  br i1 %13, label %14, label %19

14:                                               ; preds = %12
  %15 = zext i8 %.0 to i64
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 %15
  store i8 %.0, i8* %16, align 1
  br label %17

17:                                               ; preds = %14
  %18 = add i8 %.0, 1
  br label %12, !llvm.loop !4

19:                                               ; preds = %12
  %20 = bitcast %struct.one* %2 to i8*
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %20, i8* noundef nonnull align 16 dereferenceable(12) %21, i64 12, i1 false)
  %22 = getelementptr inbounds %struct.one, %struct.one* %2, i64 0, i32 3
  %23 = load i8, i8* %22, align 4
  %.not = icmp eq i8 %23, 8
  br i1 %.not, label %25, label %24

24:                                               ; preds = %19
  call void @abort() #3
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %19
  %26 = bitcast %struct.two* %3 to i8*
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %26, i8* noundef nonnull align 16 dereferenceable(16) %27, i64 16, i1 false)
  %28 = getelementptr inbounds %struct.two, %struct.two* %3, i64 0, i32 3
  %29 = load i8, i8* %28, align 4
  %.not1 = icmp eq i8 %29, 12
  br i1 %.not1, label %31, label %30

30:                                               ; preds = %25
  call void @abort() #3
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %25
  %32 = bitcast %struct.three* %4 to i8*
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(6) %32, i8* noundef nonnull align 16 dereferenceable(6) %33, i64 6, i1 false)
  %34 = getelementptr inbounds %struct.three, %struct.three* %4, i64 0, i32 2
  %35 = load i8, i8* %34, align 2
  %36 = and i8 %35, 127
  %.not2 = icmp eq i8 %36, 4
  br i1 %.not2, label %38, label %37

37:                                               ; preds = %31
  call void @abort() #3
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %31
  %39 = bitcast [16 x i8]* %1 to i64*
  %40 = load i64, i64* %39, align 16
  store i64 %40, i64* %5, align 8
  %41 = getelementptr inbounds %struct.four, %struct.four* %tmpcast, i64 0, i32 2
  %42 = load i8, i8* %41, align 4
  %43 = and i8 %42, 127
  %.not3 = icmp eq i8 %43, 4
  br i1 %.not3, label %45, label %44

44:                                               ; preds = %38
  call void @abort() #3
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.five, %struct.five* %6, i64 0, i32 0
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %46, i8* noundef nonnull align 16 dereferenceable(3) %47, i64 3, i1 false)
  %48 = getelementptr inbounds %struct.five, %struct.five* %6, i64 0, i32 2
  %49 = load i8, i8* %48, align 1
  %.not4 = icmp eq i8 %49, 2
  br i1 %.not4, label %51, label %50

50:                                               ; preds = %45
  call void @abort() #3
  br label %UnifiedUnreachableBlock

51:                                               ; preds = %45
  %52 = bitcast [16 x i8]* %1 to i64*
  %53 = load i64, i64* %52, align 16
  store i64 %53, i64* %7, align 8
  %54 = getelementptr inbounds %struct.six, %struct.six* %tmpcast5, i64 0, i32 3
  %55 = load i8, i8* %54, align 1
  %.not6 = icmp eq i8 %55, 5
  br i1 %.not6, label %57, label %56

56:                                               ; preds = %51
  call void @abort() #3
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.seven, %struct.seven* %8, i64 0, i32 0
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %58, i8* noundef nonnull align 16 dereferenceable(3) %59, i64 3, i1 false)
  %60 = getelementptr inbounds %struct.seven, %struct.seven* %8, i64 0, i32 2
  %61 = load i8, i8* %60, align 1
  %.not7 = icmp eq i8 %61, 2
  br i1 %.not7, label %63, label %62

62:                                               ; preds = %57
  call void @abort() #3
  br label %UnifiedUnreachableBlock

63:                                               ; preds = %57
  %64 = bitcast [16 x i8]* %1 to i32*
  %65 = load i32, i32* %64, align 16
  store i32 %65, i32* %9, align 4
  %66 = getelementptr inbounds %struct.eight, %struct.eight* %tmpcast8, i64 0, i32 1
  %67 = load i8, i8* %66, align 2
  %.not9 = icmp eq i8 %67, 2
  br i1 %.not9, label %69, label %68

68:                                               ; preds = %63
  call void @abort() #3
  br label %UnifiedUnreachableBlock

69:                                               ; preds = %63
  %70 = bitcast [16 x i8]* %1 to i64*
  %71 = getelementptr inbounds %union.nine, %union.nine* %10, i64 0, i32 0
  %72 = load i64, i64* %70, align 16
  store i64 %72, i64* %71, align 8
  %73 = bitcast %union.nine* %10 to i8*
  %74 = load i8, i8* %73, align 8
  %.not10 = icmp eq i8 %74, 0
  br i1 %.not10, label %76, label %75

75:                                               ; preds = %69
  call void @abort() #3
  br label %UnifiedUnreachableBlock

76:                                               ; preds = %69
  %77 = bitcast %struct.ten* %11 to i8*
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %77, i8* noundef nonnull align 16 dereferenceable(16) %78, i64 16, i1 false)
  %79 = getelementptr inbounds %struct.ten, %struct.ten* %11, i64 0, i32 1
  %80 = load i8, i8* %79, align 8
  %.not11 = icmp eq i8 %80, 8
  br i1 %.not11, label %82, label %81

81:                                               ; preds = %76
  call void @abort() #3
  br label %UnifiedUnreachableBlock

82:                                               ; preds = %76
  br i1 false, label %83, label %84

83:                                               ; preds = %82
  br label %UnifiedUnreachableBlock

84:                                               ; preds = %82
  br i1 false, label %85, label %86

85:                                               ; preds = %84
  br label %UnifiedUnreachableBlock

86:                                               ; preds = %84
  br i1 false, label %87, label %88

87:                                               ; preds = %86
  br label %UnifiedUnreachableBlock

88:                                               ; preds = %86
  br i1 false, label %89, label %90

89:                                               ; preds = %88
  br label %UnifiedUnreachableBlock

90:                                               ; preds = %88
  br i1 false, label %91, label %92

91:                                               ; preds = %90
  br label %UnifiedUnreachableBlock

92:                                               ; preds = %90
  br i1 false, label %93, label %94

93:                                               ; preds = %92
  br label %UnifiedUnreachableBlock

94:                                               ; preds = %92
  br i1 false, label %95, label %96

95:                                               ; preds = %94
  br label %UnifiedUnreachableBlock

96:                                               ; preds = %94
  br i1 false, label %97, label %98

97:                                               ; preds = %96
  br label %UnifiedUnreachableBlock

98:                                               ; preds = %96
  br i1 false, label %99, label %100

99:                                               ; preds = %98
  br label %UnifiedUnreachableBlock

100:                                              ; preds = %98
  br i1 false, label %101, label %102

101:                                              ; preds = %100
  br label %UnifiedUnreachableBlock

102:                                              ; preds = %100
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %101, %99, %97, %95, %93, %91, %89, %87, %85, %83, %81, %75, %68, %62, %56, %50, %44, %37, %30, %24
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
