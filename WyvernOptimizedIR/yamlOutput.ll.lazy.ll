; ModuleID = './yamlOutput.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/yamlOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@yamlFile = dso_local global %struct._IO_FILE* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"%04d:%02d:%02d-%02d:%02d:%02d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s.%s.yaml\00", align 1
@CoMDVariant = internal global i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Mini-Application Name    : %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Mini-Application Version : %s\0A\00", align 1
@CoMDVersion = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"Platform:\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"  hostname: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"test-suite\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"  kernel name: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"'test-suite'\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"  kernel release: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"  processor: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Build:\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"  CC: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"  compiler version: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"  CFLAGS: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"'-std=c99 -DDOUBLE'\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"  LDFLAGS: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"'-lm'\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"  using MPI: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"  Threading: none\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"  Double Precision: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Run Date/Time: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"CoMD-serial\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @yamlBegin() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca i64, align 8
  %3 = alloca [25 x i8], align 16
  %4 = call i32 @printRank() #5
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %6

5:                                                ; preds = %0
  br label %31

6:                                                ; preds = %0
  %7 = call i64 @time(i64* noundef nonnull %2) #5
  %8 = call %struct.tm* @localtime(i64* noundef nonnull %2) #5
  %9 = getelementptr inbounds [25 x i8], [25 x i8]* %3, i64 0, i64 0
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1900
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %8, i64 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %9, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef %12, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #5
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %26 = load i8*, i8** @CoMDVariant, align 8
  %27 = getelementptr inbounds [25 x i8], [25 x i8]* %3, i64 0, i64 0
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %25, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef %26, i8* noundef nonnull %27) #5
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %30 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %29, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #5
  store %struct._IO_FILE* %30, %struct._IO_FILE** @yamlFile, align 8
  br label %31

31:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @printRank() #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #2

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @yamlAppInfo(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca [32 x i8], align 16
  %3 = call i32 @printRank() #5
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %5

4:                                                ; preds = %1
  br label %29

5:                                                ; preds = %1
  call void @printSeparator(%struct._IO_FILE* noundef %0)
  %6 = load i8*, i8** @CoMDVariant, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* noundef %6) #5
  %8 = load i8*, i8** @CoMDVersion, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* noundef %8) #5
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %0)
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0)) #5
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)) #5
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)) #5
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)) #5
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %0)
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)) #5
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)) #5
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0)) #5
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #5
  %20 = call i32 @builtWithMpi() #5
  %.not1 = icmp eq i32 %20, 0
  %21 = select i1 %.not1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* noundef %21) #5
  %23 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %0)
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)) #5
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  call void @getTimeString(i8* noundef nonnull %25)
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i8* noundef nonnull %26) #5
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %0)
  %28 = call i32 @fflush(%struct._IO_FILE* noundef %0) #5
  br label %29

29:                                               ; preds = %5, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSeparator(%struct._IO_FILE* noundef %0) #0 {
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %0)
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @builtWithMpi() #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @getTimeString(i8* nocapture noundef writeonly %0) #3 {
  store i8 0, i8* %0, align 1
  ret void
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @yamlEnd() #0 {
  %1 = call i32 @printRank() #5
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %2, label %3

2:                                                ; preds = %0
  br label %6

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @yamlFile, align 8
  %5 = call i32 @fclose(%struct._IO_FILE* noundef %4) #5
  br label %6

6:                                                ; preds = %3, %2
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
