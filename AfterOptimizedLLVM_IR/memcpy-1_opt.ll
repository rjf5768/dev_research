; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memcpy-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/memcpy-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @copy(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = zext i32 %9 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 %10, i1 false)
  ret i8* %7
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [131072 x i8], align 16
  %4 = alloca [131072 x i8], align 16
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %17, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp ult i32 %6, 131072
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = trunc i32 %9 to i8
  %11 = load i32, i32* %2, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [131072 x i8], [131072 x i8]* %3, i64 0, i64 %12
  store i8 %10, i8* %13, align 1
  %14 = load i32, i32* %2, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [131072 x i8], [131072 x i8]* %4, i64 0, i64 %15
  store i8 0, i8* %16, align 1
  br label %17

17:                                               ; preds = %8
  %18 = load i32, i32* %2, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %5, !llvm.loop !4

20:                                               ; preds = %5
  %21 = getelementptr inbounds [131072 x i8], [131072 x i8]* %4, i64 0, i64 0
  %22 = getelementptr inbounds [131072 x i8], [131072 x i8]* %3, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 %22, i64 1024, i1 false)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %38, %20
  %24 = load i32, i32* %2, align 4
  %25 = icmp ult i32 %24, 1024
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [131072 x i8], [131072 x i8]* %4, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load i32, i32* %2, align 4
  %33 = trunc i32 %32 to i8
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  call void @abort() #4
  unreachable

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %2, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %2, align 4
  br label %23, !llvm.loop !6

41:                                               ; preds = %23
  %42 = getelementptr inbounds [131072 x i8], [131072 x i8]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %42, i8 1, i64 1024, i1 false)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %55, %41
  %44 = load i32, i32* %2, align 4
  %45 = icmp ult i32 %44, 1024
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i32, i32* %2, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [131072 x i8], [131072 x i8]* %4, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  call void @abort() #4
  unreachable

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %2, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %43, !llvm.loop !7

58:                                               ; preds = %43
  %59 = getelementptr inbounds [131072 x i8], [131072 x i8]* %4, i64 0, i64 0
  %60 = getelementptr inbounds [131072 x i8], [131072 x i8]* %3, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %59, i8* align 16 %60, i64 131072, i1 false)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %76, %58
  %62 = load i32, i32* %2, align 4
  %63 = icmp ult i32 %62, 131072
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load i32, i32* %2, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [131072 x i8], [131072 x i8]* %4, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load i32, i32* %2, align 4
  %71 = trunc i32 %70 to i8
  %72 = zext i8 %71 to i32
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  call void @abort() #4
  unreachable

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %2, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %2, align 4
  br label %61, !llvm.loop !8

79:                                               ; preds = %61
  %80 = getelementptr inbounds [131072 x i8], [131072 x i8]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %80, i8 0, i64 131072, i1 false)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %93, %79
  %82 = load i32, i32* %2, align 4
  %83 = icmp ult i32 %82, 131072
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load i32, i32* %2, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [131072 x i8], [131072 x i8]* %4, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  call void @abort() #4
  unreachable

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %2, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %2, align 4
  br label %81, !llvm.loop !9

96:                                               ; preds = %81
  %97 = getelementptr inbounds [131072 x i8], [131072 x i8]* %4, i64 0, i64 0
  %98 = getelementptr inbounds [131072 x i8], [131072 x i8]* %3, i64 0, i64 0
  %99 = call i8* @copy(i8* noundef %97, i8* noundef %98, i32 noundef 1024)
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %115, %96
  %101 = load i32, i32* %2, align 4
  %102 = icmp ult i32 %101, 1024
  br i1 %102, label %103, label %118

103:                                              ; preds = %100
  %104 = load i32, i32* %2, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [131072 x i8], [131072 x i8]* %4, i64 0, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = load i32, i32* %2, align 4
  %110 = trunc i32 %109 to i8
  %111 = zext i8 %110 to i32
  %112 = icmp ne i32 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  call void @abort() #4
  unreachable

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %2, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %2, align 4
  br label %100, !llvm.loop !10

118:                                              ; preds = %100
  %119 = getelementptr inbounds [131072 x i8], [131072 x i8]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %119, i8 0, i64 131072, i1 false)
  %120 = getelementptr inbounds [131072 x i8], [131072 x i8]* %4, i64 0, i64 0
  %121 = getelementptr inbounds [131072 x i8], [131072 x i8]* %3, i64 0, i64 0
  %122 = call i8* @copy(i8* noundef %120, i8* noundef %121, i32 noundef 131072)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %138, %118
  %124 = load i32, i32* %2, align 4
  %125 = icmp ult i32 %124, 131072
  br i1 %125, label %126, label %141

126:                                              ; preds = %123
  %127 = load i32, i32* %2, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds [131072 x i8], [131072 x i8]* %4, i64 0, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = load i32, i32* %2, align 4
  %133 = trunc i32 %132 to i8
  %134 = zext i8 %133 to i32
  %135 = icmp ne i32 %131, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  call void @abort() #4
  unreachable

137:                                              ; preds = %126
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %2, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %2, align 4
  br label %123, !llvm.loop !11

141:                                              ; preds = %123
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn }

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
