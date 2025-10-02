; ModuleID = './getQueryCommand.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getQueryCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.DataAttribute = type { i64, %struct.DataObjectAttribute, %struct.DataAttribute* }
%struct.DataObjectAttribute = type { %union.anon }
%union.anon = type { i8* }

@getQueryCommand.name = internal global [16 x i8] c"getQueryCommand\00", align 16
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/getQueryCommand.c\00", align 1
@__PRETTY_FUNCTION__.getQueryCommand = private unnamed_addr constant [58 x i8] c"Int getQueryCommand(FILE *, IndexKey *, DataAttribute **)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"searchKey\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"code out-of-range\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"improper format - early EOI\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"low-level I/O error\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"allocation of non-key attribute\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getQueryCommand(%struct._IO_FILE* noundef %0, %struct.IndexKey* noundef writeonly %1, %struct.DataAttribute** nocapture noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca float, align 4
  %6 = alloca i8*, align 8
  %.not = icmp eq %struct._IO_FILE* %0, null
  br i1 %.not, label %8, label %7

7:                                                ; preds = %3
  br label %9

8:                                                ; preds = %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.getQueryCommand, i64 0, i64 0)) #4
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  %.not2 = icmp eq %struct.IndexKey* %1, null
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %9
  br label %12

11:                                               ; preds = %9
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.getQueryCommand, i64 0, i64 0)) #4
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 0, i32 0
  store float 0xC7EFFFFFE0000000, float* %13, align 4
  %14 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 0, i32 1
  store float 0xC7EFFFFFE0000000, float* %14, align 4
  %15 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 0, i32 2
  store float 0xC7EFFFFFE0000000, float* %15, align 4
  %16 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 0, i32 3
  store float 0xC7EFFFFFE0000000, float* %16, align 4
  %17 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 1, i32 0
  store float 0x47EFFFFFE0000000, float* %17, align 4
  %18 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 1, i32 1
  store float 0x47EFFFFFE0000000, float* %18, align 4
  %19 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 1, i32 2
  store float 0x47EFFFFFE0000000, float* %19, align 4
  %20 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 1, i32 3
  store float 0x47EFFFFFE0000000, float* %20, align 4
  store %struct.DataAttribute* null, %struct.DataAttribute** %2, align 8
  br label %21

21:                                               ; preds = %142, %12
  %.01 = phi i64 [ 0, %12 ], [ %.2, %142 ]
  %.not3 = icmp eq i64 %.01, 1
  br i1 %.not3, label %143, label %22

22:                                               ; preds = %21
  %23 = call i64 @getInt(%struct._IO_FILE* noundef nonnull %0, i64* noundef nonnull %4) #5
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %130

25:                                               ; preds = %22
  %26 = load i64, i64* %4, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %4, align 8
  %30 = icmp sgt i64 %29, 50
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25
  call void @errorMessage(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0) #5
  call void @errorMessage(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @getQueryCommand.name, i64 0, i64 0), i8 noundef signext 1) #5
  br label %144

32:                                               ; preds = %28
  %33 = load i64, i64* %4, align 8
  %34 = icmp slt i64 %33, 8
  br i1 %34, label %35, label %103

35:                                               ; preds = %32
  %36 = call i64 @getKeyAttribute(%struct._IO_FILE* noundef nonnull %0, float* noundef nonnull %5) #5
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %94

38:                                               ; preds = %35
  %39 = load i64, i64* %4, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load float, float* %5, align 4
  %43 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 0, i32 0
  store float %42, float* %43, align 4
  br label %93

44:                                               ; preds = %38
  %45 = load i64, i64* %4, align 8
  %46 = icmp eq i64 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load float, float* %5, align 4
  %49 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 0, i32 1
  store float %48, float* %49, align 4
  br label %92

50:                                               ; preds = %44
  %51 = load i64, i64* %4, align 8
  %52 = icmp eq i64 %51, 2
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load float, float* %5, align 4
  %55 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 0, i32 2
  store float %54, float* %55, align 4
  br label %91

56:                                               ; preds = %50
  %57 = load i64, i64* %4, align 8
  %58 = icmp eq i64 %57, 3
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load float, float* %5, align 4
  %61 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 0, i32 3
  store float %60, float* %61, align 4
  br label %90

62:                                               ; preds = %56
  %63 = load i64, i64* %4, align 8
  %64 = icmp eq i64 %63, 4
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load float, float* %5, align 4
  %67 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 1, i32 0
  store float %66, float* %67, align 4
  br label %89

68:                                               ; preds = %62
  %69 = load i64, i64* %4, align 8
  %70 = icmp eq i64 %69, 5
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load float, float* %5, align 4
  %73 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 1, i32 1
  store float %72, float* %73, align 4
  br label %88

74:                                               ; preds = %68
  %75 = load i64, i64* %4, align 8
  %76 = icmp eq i64 %75, 6
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load float, float* %5, align 4
  %79 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 1, i32 2
  store float %78, float* %79, align 4
  br label %87

80:                                               ; preds = %74
  %81 = load i64, i64* %4, align 8
  %82 = icmp eq i64 %81, 7
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load float, float* %5, align 4
  %85 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 1, i32 3
  store float %84, float* %85, align 4
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86, %77
  br label %88

88:                                               ; preds = %87, %71
  br label %89

89:                                               ; preds = %88, %65
  br label %90

90:                                               ; preds = %89, %59
  br label %91

91:                                               ; preds = %90, %53
  br label %92

92:                                               ; preds = %91, %47
  br label %93

93:                                               ; preds = %92, %41
  br label %102

94:                                               ; preds = %35
  %95 = icmp eq i64 %36, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %94
  call void @errorMessage(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0) #5
  call void @errorMessage(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @getQueryCommand.name, i64 0, i64 0), i8 noundef signext 1) #5
  br label %144

97:                                               ; preds = %94
  %98 = icmp eq i64 %36, 2
  br i1 %98, label %99, label %100

99:                                               ; preds = %97
  call void @errorMessage(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8 noundef signext 0) #5
  call void @errorMessage(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @getQueryCommand.name, i64 0, i64 0), i8 noundef signext 1) #5
  br label %144

100:                                              ; preds = %97
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101, %93
  br label %128

103:                                              ; preds = %32
  %104 = call i64 @getNonKeyAttribute(%struct._IO_FILE* noundef nonnull %0, i8** noundef nonnull %6) #5
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %103
  %107 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #5
  %108 = bitcast i8* %107 to %struct.DataAttribute*
  %109 = icmp eq i8* %107, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  call void @errorMessage(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8 noundef signext 0) #5
  call void @errorMessage(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @getQueryCommand.name, i64 0, i64 0), i8 noundef signext 1) #5
  br label %144

111:                                              ; preds = %106
  %112 = load i64, i64* %4, align 8
  %113 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %108, i64 0, i32 0
  store i64 %112, i64* %113, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %108, i64 0, i32 1, i32 0, i32 0
  store i8* %114, i8** %115, align 8
  %116 = load %struct.DataAttribute*, %struct.DataAttribute** %2, align 8
  %117 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %108, i64 0, i32 2
  store %struct.DataAttribute* %116, %struct.DataAttribute** %117, align 8
  %118 = bitcast %struct.DataAttribute** %2 to i8**
  store i8* %107, i8** %118, align 8
  br label %127

119:                                              ; preds = %103
  %120 = icmp eq i64 %104, 2
  br i1 %120, label %121, label %122

121:                                              ; preds = %119
  call void @errorMessage(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0) #5
  call void @errorMessage(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @getQueryCommand.name, i64 0, i64 0), i8 noundef signext 1) #5
  br label %144

122:                                              ; preds = %119
  %123 = icmp eq i64 %104, 1
  br i1 %123, label %124, label %125

124:                                              ; preds = %122
  call void @errorMessage(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8 noundef signext 0) #5
  call void @errorMessage(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @getQueryCommand.name, i64 0, i64 0), i8 noundef signext 1) #5
  br label %144

125:                                              ; preds = %122
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126, %111
  br label %128

128:                                              ; preds = %127, %102
  %.1 = phi i64 [ %36, %102 ], [ %104, %127 ]
  br label %129

129:                                              ; preds = %128
  br label %142

130:                                              ; preds = %22
  %131 = icmp eq i64 %23, 1
  br i1 %131, label %132, label %133

132:                                              ; preds = %130
  br label %141

133:                                              ; preds = %130
  %134 = icmp eq i64 %23, 2
  br i1 %134, label %135, label %136

135:                                              ; preds = %133
  br label %144

136:                                              ; preds = %133
  %137 = icmp eq i64 %23, 3
  br i1 %137, label %138, label %139

138:                                              ; preds = %136
  br label %144

139:                                              ; preds = %136
  br label %140

140:                                              ; preds = %139
  br label %141

141:                                              ; preds = %140, %132
  br label %142

142:                                              ; preds = %141, %129
  %.2 = phi i64 [ %.1, %129 ], [ %23, %141 ]
  br label %21, !llvm.loop !4

143:                                              ; preds = %21
  br label %144

144:                                              ; preds = %143, %138, %135, %124, %121, %110, %99, %96, %31
  %.0 = phi i64 [ 3, %31 ], [ 2, %96 ], [ 1, %99 ], [ 4, %110 ], [ 2, %121 ], [ 4, %124 ], [ 3, %135 ], [ 3, %138 ], [ 0, %143 ]
  ret i64 %.0

UnifiedUnreachableBlock:                          ; preds = %11, %8
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i64 @getInt(%struct._IO_FILE* noundef, i64* noundef) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

declare dso_local i64 @getKeyAttribute(%struct._IO_FILE* noundef, float* noundef) #2

declare dso_local i64 @getNonKeyAttribute(%struct._IO_FILE* noundef, i8** noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
