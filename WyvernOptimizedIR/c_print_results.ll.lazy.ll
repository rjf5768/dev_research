; ModuleID = './c_print_results.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/NPB-serial/dc/c_print_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"\0A\0A %s Benchmark Completed\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c" Class           =                        %c\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c" Size            =             %12ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c" Size            =             %4dx%4dx%4d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c" Iterations      =             %12d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c" Verification    =            NOT PERFORMED\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c" Verification    =               SUCCESSFUL\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c" Verification    =             UNSUCCESSFUL\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c" Please send all errors/feedbacks to:\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c" NPB Development Team\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c" npb@nas.nasa.gov\0A\0A\00", align 1
@str = private unnamed_addr constant [44 x i8] c" Verification    =             UNSUCCESSFUL\00", align 1
@str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@str.2 = private unnamed_addr constant [39 x i8] c" Please send all errors/feedbacks to:\0A\00", align 1
@str.3 = private unnamed_addr constant [22 x i8] c" NPB Development Team\00", align 1
@str.4 = private unnamed_addr constant [19 x i8] c" npb@nas.nasa.gov\0A\00", align 1
@str.5 = private unnamed_addr constant [44 x i8] c" Verification    =               SUCCESSFUL\00", align 1
@str.6 = private unnamed_addr constant [44 x i8] c" Verification    =            NOT PERFORMED\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @c_print_results(i8* noundef %0, i8 noundef signext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8* noundef %6, i32 noundef %7, i8* noundef %8) #0 {
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* noundef %0) #3
  %11 = sext i8 %1 to i32
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 noundef %11) #3
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = sext i32 %2 to i64
  %.not7 = icmp eq i32 %3, 0
  br i1 %.not7, label %19, label %16

16:                                               ; preds = %14
  %17 = sext i32 %3 to i64
  %18 = mul nsw i64 %15, %17
  br label %19

19:                                               ; preds = %16, %14
  %.0 = phi i64 [ %18, %16 ], [ %15, %14 ]
  %20 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 noundef %.0) #3
  br label %23

21:                                               ; preds = %9
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 noundef %2, i32 noundef %3, i32 noundef %4) #3
  br label %23

23:                                               ; preds = %21, %19
  %24 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 noundef %5) #3
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* noundef %6) #3
  %26 = icmp slt i32 %7, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  %puts6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @str.6, i64 0, i64 0))
  br label %32

28:                                               ; preds = %23
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %30, label %29

29:                                               ; preds = %28
  %puts5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @str.5, i64 0, i64 0))
  br label %31

30:                                               ; preds = %28
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %30, %29
  br label %32

32:                                               ; preds = %31, %27
  %33 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* noundef %8) #3
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.1, i64 0, i64 0))
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @str.2, i64 0, i64 0))
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @str.3, i64 0, i64 0))
  %puts4 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #2

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
