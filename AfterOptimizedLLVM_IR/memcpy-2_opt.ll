; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memcpy-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memcpy-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { x86_fp80, [80 x i8] }

@u1 = internal global %union.anon zeroinitializer, align 16
@u2 = internal global %union.anon zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %133, %0
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 8
  br i1 %12, label %13, label %136

13:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %129, %13
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 8
  br i1 %17, label %18, label %132

18:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %19

19:                                               ; preds = %125, %18
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 80
  br i1 %22, label %23, label %128

23:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  store i8 65, i8* %8, align 1
  br label %24

24:                                               ; preds = %41, %23
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 96
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [96 x i8], [96 x i8]* bitcast (%union.anon* @u1 to [96 x i8]*), i64 0, i64 %30
  store i8 97, i8* %31, align 1
  %32 = load i8, i8* %8, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sge i32 %33, 96
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i8 65, i8* %8, align 1
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i8, i8* %8, align 1
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [96 x i8], [96 x i8]* bitcast (%union.anon* @u2 to [96 x i8]*), i64 0, i64 %39
  store i8 %37, i8* %40, align 1
  br label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  %44 = load i8, i8* %8, align 1
  %45 = add i8 %44, 1
  store i8 %45, i8* %8, align 1
  br label %24, !llvm.loop !4

46:                                               ; preds = %24
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* getelementptr inbounds ([96 x i8], [96 x i8]* bitcast (%union.anon* @u1 to [96 x i8]*), i64 0, i64 0), i64 %48
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* getelementptr inbounds ([96 x i8], [96 x i8]* bitcast (%union.anon* @u2 to [96 x i8]*), i64 0, i64 0), i64 %51
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %49, i8* align 1 %52, i64 %54, i1 false)
  store i8* %49, i8** %6, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* getelementptr inbounds ([96 x i8], [96 x i8]* bitcast (%union.anon* @u1 to [96 x i8]*), i64 0, i64 0), i64 %57
  %59 = icmp ne i8* %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  call void @abort() #3
  unreachable

61:                                               ; preds = %46
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* bitcast (%union.anon* @u1 to [96 x i8]*), i64 0, i64 0), i8** %7, align 8
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %73, %61
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %2, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load i8*, i8** %7, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 97
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  call void @abort() #3
  unreachable

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %7, align 8
  br label %62, !llvm.loop !6

78:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 65, %79
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %8, align 1
  br label %82

82:                                               ; preds = %100, %78
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %107

86:                                               ; preds = %82
  %87 = load i8, i8* %8, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp sge i32 %88, 96
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i8 65, i8* %8, align 1
  br label %91

91:                                               ; preds = %90, %86
  %92 = load i8*, i8** %7, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = load i8, i8* %8, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  call void @abort() #3
  unreachable

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %7, align 8
  %105 = load i8, i8* %8, align 1
  %106 = add i8 %105, 1
  store i8 %106, i8* %8, align 1
  br label %82, !llvm.loop !7

107:                                              ; preds = %82
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %119, %107
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = icmp ult i64 %110, 8
  br i1 %111, label %112, label %124

112:                                              ; preds = %108
  %113 = load i8*, i8** %7, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 97
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  call void @abort() #3
  unreachable

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  %122 = load i8*, i8** %7, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %7, align 8
  br label %108, !llvm.loop !8

124:                                              ; preds = %108
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %4, align 4
  br label %19, !llvm.loop !9

128:                                              ; preds = %19
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %3, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %3, align 4
  br label %14, !llvm.loop !10

132:                                              ; preds = %14
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %2, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %2, align 4
  br label %9, !llvm.loop !11

136:                                              ; preds = %9
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

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
