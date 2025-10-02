; ModuleID = './test.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/SimpleMOC/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Input = type { i32, i32, i32, i32, i32, float, float, i32, i32, i32, i8, i32, i64, float, float, float, float, i64, i64, i32, i64, i32, i32, i64, i64, i8, i8*, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"INPUT STRUCT\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"END INPUT STRUCT\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"gen_points.txt\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"Random numbers generated for a normal distribution\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Mean = %f\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Standard deviation = %f\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Generated points:\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@str = private unnamed_addr constant [13 x i8] c"INPUT STRUCT\00", align 1
@str.1 = private unnamed_addr constant [17 x i8] c"END INPUT STRUCT\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_Input_struct(%struct.Input* noundef readonly byval(%struct.Input) align 8 %0) #0 {
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str, i64 0, i64 0))
  %2 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %3) #3
  %5 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %6) #3
  %8 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %9) #3
  %11 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %12) #3
  %14 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %15) #3
  %17 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 5
  %18 = load float, float* %17, align 4
  %19 = fpext float %18 to double
  %20 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double noundef %19) #3
  %21 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 6
  %22 = load float, float* %21, align 8
  %23 = fpext float %22 to double
  %24 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double noundef %23) #3
  %25 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %26) #3
  %28 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %29) #3
  %31 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %32) #3
  %34 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 11
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %35) #3
  %37 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 12
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef %38) #3
  %40 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 13
  %41 = load float, float* %40, align 8
  %42 = fpext float %41 to double
  %43 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double noundef %42) #3
  %44 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 14
  %45 = load float, float* %44, align 4
  %46 = fpext float %45 to double
  %47 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double noundef %46) #3
  %48 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 15
  %49 = load float, float* %48, align 8
  %50 = fpext float %49 to double
  %51 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double noundef %50) #3
  %52 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 16
  %53 = load float, float* %52, align 4
  %54 = fpext float %53 to double
  %55 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double noundef %54) #3
  %56 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 17
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef %57) #3
  %59 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 18
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef %60) #3
  %62 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 19
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %63) #3
  %65 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 20
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef %66) #3
  %68 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 21
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %69) #3
  %71 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 22
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %72) #3
  %74 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 23
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef %75) #3
  %77 = getelementptr inbounds %struct.Input, %struct.Input* %0, i64 0, i32 24
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef %78) #3
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @gen_norm_pts(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #3
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %4)
  %6 = fpext float %0 to double
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), double noundef %6) #3
  %8 = fpext float %1 to double
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), double noundef %8) #3
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %4)
  br label %11

11:                                               ; preds = %17, %3
  %.0 = phi i32 [ 0, %3 ], [ %18, %17 ]
  %12 = icmp slt i32 %.0, %2
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = call float @nrand(float noundef %0, float noundef %1) #3
  %15 = fpext float %14 to double
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), double noundef %15) #3
  br label %17

17:                                               ; preds = %13
  %18 = add nuw nsw i32 %.0, 1
  br label %11, !llvm.loop !4

19:                                               ; preds = %11
  %20 = call i32 @fclose(%struct._IO_FILE* noundef %4) #3
  ret void
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local float @nrand(float noundef, float noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
