; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strcpy-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strcpy-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { x86_fp80, [96 x i8] }

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

9:                                                ; preds = %144, %0
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 8
  br i1 %12, label %13, label %147

13:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %140, %13
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 8
  br i1 %17, label %18, label %143

18:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %19

19:                                               ; preds = %136, %18
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 80
  br i1 %22, label %23, label %139

23:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  store i8 65, i8* %8, align 1
  br label %24

24:                                               ; preds = %41, %23
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 97
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [97 x i8], [97 x i8]* bitcast (%union.anon* @u1 to [97 x i8]*), i64 0, i64 %30
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
  %40 = getelementptr inbounds [97 x i8], [97 x i8]* bitcast (%union.anon* @u2 to [97 x i8]*), i64 0, i64 %39
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
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [97 x i8], [97 x i8]* bitcast (%union.anon* @u2 to [97 x i8]*), i64 0, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* getelementptr inbounds ([97 x i8], [97 x i8]* bitcast (%union.anon* @u1 to [97 x i8]*), i64 0, i64 0), i64 %53
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* getelementptr inbounds ([97 x i8], [97 x i8]* bitcast (%union.anon* @u2 to [97 x i8]*), i64 0, i64 0), i64 %56
  %58 = call i8* @strcpy(i8* noundef %54, i8* noundef %57) #3
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* getelementptr inbounds ([97 x i8], [97 x i8]* bitcast (%union.anon* @u1 to [97 x i8]*), i64 0, i64 0), i64 %61
  %63 = icmp ne i8* %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %46
  call void @abort() #4
  unreachable

65:                                               ; preds = %46
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* bitcast (%union.anon* @u1 to [97 x i8]*), i64 0, i64 0), i8** %7, align 8
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %77, %65
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %2, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 97
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  call void @abort() #4
  unreachable

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %7, align 8
  br label %66, !llvm.loop !6

82:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 65, %83
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %8, align 1
  br label %86

86:                                               ; preds = %104, %82
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %111

90:                                               ; preds = %86
  %91 = load i8, i8* %8, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp sge i32 %92, 96
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i8 65, i8* %8, align 1
  br label %95

95:                                               ; preds = %94, %90
  %96 = load i8*, i8** %7, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = load i8, i8* %8, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  call void @abort() #4
  unreachable

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  %107 = load i8*, i8** %7, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %7, align 8
  %109 = load i8, i8* %8, align 1
  %110 = add i8 %109, 1
  store i8 %110, i8* %8, align 1
  br label %86, !llvm.loop !7

111:                                              ; preds = %86
  %112 = load i8*, i8** %7, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %7, align 8
  %114 = load i8, i8* %112, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  call void @abort() #4
  unreachable

118:                                              ; preds = %111
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %130, %118
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp ult i64 %121, 8
  br i1 %122, label %123, label %135

123:                                              ; preds = %119
  %124 = load i8*, i8** %7, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 97
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  call void @abort() #4
  unreachable

129:                                              ; preds = %123
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  %133 = load i8*, i8** %7, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %7, align 8
  br label %119, !llvm.loop !8

135:                                              ; preds = %119
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %4, align 4
  br label %19, !llvm.loop !9

139:                                              ; preds = %19
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %3, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %3, align 4
  br label %14, !llvm.loop !10

143:                                              ; preds = %14
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %2, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %2, align 4
  br label %9, !llvm.loop !11

147:                                              ; preds = %9
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
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
