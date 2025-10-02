; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colstr = type { i8*, i8* }

@F2 = external dso_local global i32, align 4
@F1 = external dso_local global i32, align 4
@nlin = external dso_local global i32, align 4
@instead = external dso_local global [0 x i8*], align 8
@fullbot = external dso_local global [0 x i32], align 4
@ncol = external dso_local global i32, align 4
@table = external dso_local global [0 x %struct.colstr*], align 8
@.str = private unnamed_addr constant [71 x i8] c"\02\03\05\06\07!%&#/?,:;<=>@`^~_{}+-*ABCDEFGHIJKMNOPQRSTUVWXYZabcdefgjkoqrstwxyz\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"\02\03\05\06\07:_~^`@;,<=>#%&!/?{}+-*ABCDEFGHIJKMNOPQRSTUVWXZabcdefgjkoqrstuwxyz\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"couldn't find characters to use for delimiters\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @choochar() #0 {
  %1 = alloca [128 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %13, %0
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 128
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [128 x i32], [128 x i32]* %1, i64 0, i64 %11
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %6, !llvm.loop !4

16:                                               ; preds = %6
  store i32 0, i32* @F2, align 4
  store i32 0, i32* @F1, align 4
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %110, %16
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @nlin, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %113

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %110

28:                                               ; preds = %21
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %110

35:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %106, %35
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @ncol, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %109

40:                                               ; preds = %36
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @ctype(i32 noundef %41, i32 noundef %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 45
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 61
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %46, %40
  br label %106

53:                                               ; preds = %49
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %55
  %57 = load %struct.colstr*, %struct.colstr** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.colstr, %struct.colstr* %57, i64 %59
  %61 = getelementptr inbounds %struct.colstr, %struct.colstr* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %5, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = ptrtoint i8* %63 to i32
  %65 = call i32 @point(i32 noundef %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %72, %67
  %69 = load i8*, i8** %5, align 8
  %70 = load i8, i8* %69, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %5, align 8
  %75 = load i8, i8* %73, align 1
  %76 = sext i8 %75 to i64
  %77 = getelementptr inbounds [128 x i32], [128 x i32]* %1, i64 0, i64 %76
  store i32 1, i32* %77, align 4
  br label %68, !llvm.loop !6

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %53
  %80 = load i32, i32* %2, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %81
  %83 = load %struct.colstr*, %struct.colstr** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.colstr, %struct.colstr* %83, i64 %85
  %87 = getelementptr inbounds %struct.colstr, %struct.colstr* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %5, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = ptrtoint i8* %89 to i32
  %91 = call i32 @point(i32 noundef %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %98, %93
  %95 = load i8*, i8** %5, align 8
  %96 = load i8, i8* %95, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %5, align 8
  %101 = load i8, i8* %99, align 1
  %102 = sext i8 %101 to i64
  %103 = getelementptr inbounds [128 x i32], [128 x i32]* %1, i64 0, i64 %102
  store i32 1, i32* %103, align 4
  br label %94, !llvm.loop !7

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104, %79
  br label %106

106:                                              ; preds = %105, %52
  %107 = load i32, i32* %3, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %3, align 4
  br label %36, !llvm.loop !8

109:                                              ; preds = %36
  br label %110

110:                                              ; preds = %109, %34, %27
  %111 = load i32, i32* %2, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %2, align 4
  br label %17, !llvm.loop !9

113:                                              ; preds = %17
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %114

114:                                              ; preds = %133, %113
  %115 = load i8*, i8** %5, align 8
  %116 = load i8, i8* %115, align 1
  %117 = icmp ne i8 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %114
  %119 = load i8*, i8** %5, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i64
  %122 = getelementptr inbounds [128 x i32], [128 x i32]* %1, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %118
  %126 = load i8*, i8** %5, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  store i32 %128, i32* @F1, align 4
  %129 = load i32, i32* @F1, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [128 x i32], [128 x i32]* %1, i64 0, i64 %130
  store i32 1, i32* %131, align 4
  br label %136

132:                                              ; preds = %118
  br label %133

133:                                              ; preds = %132
  %134 = load i8*, i8** %5, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %5, align 8
  br label %114, !llvm.loop !10

136:                                              ; preds = %125, %114
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %137

137:                                              ; preds = %153, %136
  %138 = load i8*, i8** %5, align 8
  %139 = load i8, i8* %138, align 1
  %140 = icmp ne i8 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %137
  %142 = load i8*, i8** %5, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i64
  %145 = getelementptr inbounds [128 x i32], [128 x i32]* %1, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %141
  %149 = load i8*, i8** %5, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  store i32 %151, i32* @F2, align 4
  br label %156

152:                                              ; preds = %141
  br label %153

153:                                              ; preds = %152
  %154 = load i8*, i8** %5, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %5, align 8
  br label %137, !llvm.loop !11

156:                                              ; preds = %148, %137
  %157 = load i32, i32* @F1, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* @F2, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %159, %156
  call void @error(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %163

163:                                              ; preds = %162, %159
  ret void
}

declare dso_local i32 @ctype(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @point(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 128
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 0
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i1 [ true, %1 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32
  ret i32 %10
}

declare dso_local void @error(i8* noundef) #1

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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
