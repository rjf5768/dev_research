; ModuleID = './finalout.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/finalout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@TWsignal = dso_local global i32 0, align 4
@Tsave = external dso_local global double, align 8
@redoFlag = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s.cel\00", align 1
@cktName = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@overlap = external dso_local global i32 (...)*, align 8
@overlapf = external dso_local global i32 (...)*, align 8
@overlapx = external dso_local global i32 (...)*, align 8
@lapFactor = external dso_local global double, align 8
@offset = external dso_local global i32, align 4
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"\0A\0ANew Value for lapFactor: %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"New Value for offset: %d\0A\0A\00", align 1
@funccost = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"TimberWolf failed to resolve overlap problem.\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"\0A\0APotential Overlap Problem Averted\0A\0A\00", align 1
@doCompaction = external dso_local global i32, align 4
@finalShot = dso_local global i32 0, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"Cannot execute system calls!\0A\00", align 1
@doChannelGraph = external dso_local global i32, align 4
@doGlobalRoute = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @finalout() #0 {
  %1 = alloca [1024 x i8], align 16
  store i32 0, i32* @TWsignal, align 4
  %2 = load double, double* @Tsave, align 8
  %3 = call double @log10(double noundef %2) #5
  %4 = fcmp ogt double %3, 6.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = fadd double %3, -1.000000e+00
  %phi.bo = fmul double %6, 2.000000e+00
  br label %8

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %7, %5
  %.0 = phi double [ %phi.bo, %5 ], [ 1.000000e+01, %7 ]
  %exp2 = call double @exp2(double %.0) #5
  store i32 0, i32* @redoFlag, align 4
  call void @prepOutput()
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %10 = load i8*, i8** @cktName, align 8
  %11 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %9, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %10) #5
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %13 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5
  call void @gpass2(%struct._IO_FILE* noundef %13) #5
  call void @grdcell(%struct._IO_FILE* noundef %13) #5
  %14 = call i32 @fclose(%struct._IO_FILE* noundef %13) #5
  store i32 (...)* @goverlap, i32 (...)** @overlap, align 8
  store i32 (...)* @goverlapf, i32 (...)** @overlapf, align 8
  store i32 (...)* @goverlapx, i32 (...)** @overlapx, align 8
  call void @rebin(i32 noundef 0) #5
  %15 = load double, double* @lapFactor, align 8
  %16 = fmul double %15, 2.000000e+00
  store double %16, double* @lapFactor, align 8
  %17 = fdiv double 4.000000e+00, %16
  %18 = fptosi double %17 to i32
  store i32 %18, i32* @offset, align 4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), double noundef %16) #5
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %22 = load i32, i32* @offset, align 4
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 noundef %22) #5
  %24 = call i32 @findcost() #5
  store i32 %24, i32* @funccost, align 4
  call void @outgeo() #5
  call void @outpin() #5
  %25 = call i32 @checkpen() #5
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %8
  call void @fixpenal() #5
  store i32 1, i32* @redoFlag, align 4
  call void @prepOutput()
  call void @rebin(i32 noundef 0) #5
  %28 = call i32 @findcost() #5
  store i32 %28, i32* @funccost, align 4
  call void @outgeo() #5
  call void @outpin() #5
  %29 = call i32 @checkpen() #5
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %33 = call i64 @fwrite(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %32)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %35 = call i32 @fflush(%struct._IO_FILE* noundef %34) #5
  br label %56

36:                                               ; preds = %27
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %38 = call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %37)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %40 = call i32 @fflush(%struct._IO_FILE* noundef %39) #5
  br label %41

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %8
  %43 = load i32, i32* @doCompaction, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  store i32 1, i32* @finalShot, align 4
  call void @gmain() #5
  call void @rmain() #5
  store i32 0, i32* @redoFlag, align 4
  call void @addpins() #5
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %46) #6
  call void @abort() #7
  unreachable

48:                                               ; preds = %42
  %49 = load i32, i32* @doChannelGraph, align 4
  %.not = icmp eq i32 %49, 0
  br i1 %.not, label %51, label %50

50:                                               ; preds = %48
  call void @gmain() #5
  br label %51

51:                                               ; preds = %50, %48
  %52 = load i32, i32* @doGlobalRoute, align 4
  %.not1 = icmp eq i32 %52, 0
  br i1 %.not1, label %54, label %53

53:                                               ; preds = %51
  call void @rmain() #5
  br label %54

54:                                               ; preds = %53, %51
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55, %31
  ret void
}

; Function Attrs: nounwind
declare dso_local double @log10(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @prepOutput() #0 {
  call void @finalpin() #5
  call void @prboard() #5
  call void @outbig() #5
  call void @outsmall() #5
  call void @output() #5
  %1 = load i32, i32* @finalShot, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @savewolf() #5
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local void @gpass2(%struct._IO_FILE* noundef) #2

declare dso_local void @grdcell(%struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local i32 @goverlap(...) #2

declare dso_local i32 @goverlapf(...) #2

declare dso_local i32 @goverlapx(...) #2

declare dso_local void @rebin(i32 noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local i32 @findcost() #2

declare dso_local void @outgeo() #2

declare dso_local void @outpin() #2

declare dso_local i32 @checkpen() #2

declare dso_local void @fixpenal() #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

declare dso_local void @gmain() #2

declare dso_local void @rmain() #2

declare dso_local void @addpins() #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

declare dso_local void @finalpin() #2

declare dso_local void @prboard() #2

declare dso_local void @outbig() #2

declare dso_local void @outsmall() #2

declare dso_local void @output() #2

declare dso_local void @savewolf() #2

declare double @exp2(double)

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { cold }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
