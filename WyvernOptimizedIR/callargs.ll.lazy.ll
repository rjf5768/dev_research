; ModuleID = './callargs.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/callargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"\0AprintArgsNoRet with 15 arguments:\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"\09Args 1-5  : %d %f %c %f %c\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\09Args 6-10 : %d %f %c %f %c\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"\09Args 11-14: %d %f %c %f %c\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@str = private unnamed_addr constant [35 x i8] c"\0AprintArgsNoRet with 15 arguments:\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @printArgsNoRet(i32 noundef %0, float noundef %1, i8 noundef signext %2, double noundef %3, i8* nocapture noundef readonly %4, i32 noundef %5, float noundef %6, i8 noundef signext %7, double noundef %8, i8* nocapture noundef readonly %9, i32 noundef %10, float noundef %11, i8 noundef signext %12, double noundef %13, i8* nocapture noundef readonly %14) #0 {
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @str, i64 0, i64 0))
  %16 = fpext float %1 to double
  %17 = sext i8 %2 to i32
  %18 = load i8, i8* %4, align 1
  %19 = sext i8 %18 to i32
  %20 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef %0, double noundef %16, i32 noundef %17, double noundef %3, i32 noundef %19) #3
  %21 = fpext float %6 to double
  %22 = sext i8 %7 to i32
  %23 = load i8, i8* %9, align 1
  %24 = sext i8 %23 to i32
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef %5, double noundef %21, i32 noundef %22, double noundef %8, i32 noundef %24) #3
  %26 = fpext float %11 to double
  %27 = sext i8 %12 to i32
  %28 = load i8, i8* %14, align 1
  %29 = sext i8 %28 to i32
  %30 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef %10, double noundef %26, i32 noundef %27, double noundef %13, i32 noundef %29) #3
  %putchar = call i32 @putchar(i32 10)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  call void @printArgsNoRet(i32 noundef 1, float noundef 0x4000CCCCC0000000, i8 noundef signext 99, double noundef 4.100000e+00, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 noundef 6, float noundef 0x401C666660000000, i8 noundef signext 104, double noundef 9.100000e+00, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef 11, float noundef 0x4028333340000000, i8 noundef signext 109, double noundef 1.410000e+01, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #2

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
