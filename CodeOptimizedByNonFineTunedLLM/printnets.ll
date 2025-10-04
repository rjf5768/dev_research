; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/printnets.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/printnets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.nrbox = type { %struct.altbox**, i32, i32, i32 }
%struct.altbox = type { i32*, i32, %struct.chanbox* }
%struct.chanbox = type { i32, i32, i32, i32, %struct.chanbox* }

@.str = private unnamed_addr constant [7 x i8] c"%s.pyt\00", align 1
@cktName = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@largestNet = external dso_local global i32, align 4
@netRoutes = external dso_local global %struct.nrbox*, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"\0A\0Anet %s \00", align 1
@nnameArray = external dso_local global i8**, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"    length %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"pins %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"        %s\0A\00", align 1
@pnameArray = external dso_local global i8**, align 8
@pinOffset = external dso_local global i32*, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"channels %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"        %d %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @printnets() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.chanbox*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %11 = load i8*, i8** @cktName, align 8
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %11) #4
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %14 = call noalias %struct._IO_FILE* @fopen(i8* noundef %13, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %14, %struct._IO_FILE** %9, align 8
  %15 = icmp eq %struct._IO_FILE* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef %18)
  call void @exit(i32 noundef 0) #5
  unreachable

20:                                               ; preds = %0
  store i32 1, i32* %3, align 4
  br label %21

21:                                               ; preds = %178, %20
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @largestNet, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %181

25:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %174, %25
  %27 = load i32, i32* %2, align 4
  %28 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %28, i64 %30
  %32 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp sle i32 %27, %33
  br i1 %34, label %35, label %177

35:                                               ; preds = %26
  %36 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %36, i64 %38
  %40 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %39, i32 0, i32 0
  %41 = load %struct.altbox**, %struct.altbox*** %40, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.altbox*, %struct.altbox** %41, i64 %43
  %45 = load %struct.altbox*, %struct.altbox** %44, align 8
  %46 = getelementptr inbounds %struct.altbox, %struct.altbox* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %1, align 8
  %48 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %48, i64 %50
  %52 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %51, i32 0, i32 0
  %53 = load %struct.altbox**, %struct.altbox*** %52, align 8
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.altbox*, %struct.altbox** %53, i64 %55
  %57 = load %struct.altbox*, %struct.altbox** %56, align 8
  %58 = getelementptr inbounds %struct.altbox, %struct.altbox* %57, i32 0, i32 2
  %59 = load %struct.chanbox*, %struct.chanbox** %58, align 8
  store %struct.chanbox* %59, %struct.chanbox** %7, align 8
  %60 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %60, i64 %62
  %64 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %63, i32 0, i32 0
  %65 = load %struct.altbox**, %struct.altbox*** %64, align 8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.altbox*, %struct.altbox** %65, i64 %67
  %69 = load %struct.altbox*, %struct.altbox** %68, align 8
  %70 = getelementptr inbounds %struct.altbox, %struct.altbox* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %2, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %90

74:                                               ; preds = %35
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %76 = load i8**, i8*** @nnameArray, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %75, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef %80)
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %82, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 noundef %83)
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %86 = load i32*, i32** %1, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %85, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 noundef %88)
  br label %90

90:                                               ; preds = %74, %35
  store i32 1, i32* %4, align 4
  br label %91

91:                                               ; preds = %119, %90
  %92 = load i32, i32* %4, align 4
  %93 = load i32*, i32** %1, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp sle i32 %92, %95
  br i1 %96, label %97, label %122

97:                                               ; preds = %91
  %98 = load i32, i32* %2, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %118

100:                                              ; preds = %97
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %102 = load i8**, i8*** @pnameArray, align 8
  %103 = load i32*, i32** @pinOffset, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %1, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %107, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %102, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %101, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* noundef %116)
  br label %118

118:                                              ; preds = %100, %97
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %91, !llvm.loop !4

122:                                              ; preds = %91
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %126, %122
  %124 = load %struct.chanbox*, %struct.chanbox** %7, align 8
  %125 = icmp ne %struct.chanbox* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  %129 = load %struct.chanbox*, %struct.chanbox** %7, align 8
  %130 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %129, i32 0, i32 4
  %131 = load %struct.chanbox*, %struct.chanbox** %130, align 8
  store %struct.chanbox* %131, %struct.chanbox** %7, align 8
  br label %123, !llvm.loop !6

132:                                              ; preds = %123
  %133 = load i32, i32* %2, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %173

135:                                              ; preds = %132
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %136, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 noundef %137)
  %139 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %139, i64 %141
  %143 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %142, i32 0, i32 0
  %144 = load %struct.altbox**, %struct.altbox*** %143, align 8
  %145 = load i32, i32* %2, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.altbox*, %struct.altbox** %144, i64 %146
  %148 = load %struct.altbox*, %struct.altbox** %147, align 8
  %149 = getelementptr inbounds %struct.altbox, %struct.altbox* %148, i32 0, i32 2
  %150 = load %struct.chanbox*, %struct.chanbox** %149, align 8
  store %struct.chanbox* %150, %struct.chanbox** %7, align 8
  br label %151

151:                                              ; preds = %154, %135
  %152 = load %struct.chanbox*, %struct.chanbox** %7, align 8
  %153 = icmp ne %struct.chanbox* %152, null
  br i1 %153, label %154, label %172

154:                                              ; preds = %151
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %156 = load %struct.chanbox*, %struct.chanbox** %7, align 8
  %157 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.chanbox*, %struct.chanbox** %7, align 8
  %160 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.chanbox*, %struct.chanbox** %7, align 8
  %163 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.chanbox*, %struct.chanbox** %7, align 8
  %166 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %155, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 noundef %158, i32 noundef %161, i32 noundef %164, i32 noundef %167)
  %169 = load %struct.chanbox*, %struct.chanbox** %7, align 8
  %170 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %169, i32 0, i32 4
  %171 = load %struct.chanbox*, %struct.chanbox** %170, align 8
  store %struct.chanbox* %171, %struct.chanbox** %7, align 8
  br label %151, !llvm.loop !7

172:                                              ; preds = %151
  br label %173

173:                                              ; preds = %172, %132
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %2, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %2, align 4
  br label %26, !llvm.loop !8

177:                                              ; preds = %26
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %3, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %3, align 4
  br label %21, !llvm.loop !9

181:                                              ; preds = %21
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %183 = call i32 @fclose(%struct._IO_FILE* noundef %182)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
