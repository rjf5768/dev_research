; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/hypre_error.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/hypre_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hypre__global_error = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"[No error] \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"[Generic error] \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"[Memory error] \00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"[Error in argument %d] \00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"[Method did not converge] \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @hypre_error_handler(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @hypre__global_error, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* @hypre__global_error, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HYPRE_GetError() #0 {
  %1 = load i32, i32* @hypre__global_error, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HYPRE_CheckError(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %5, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HYPRE_DescribeError(i32 noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #2
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %15, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)) #2
  br label %17

17:                                               ; preds = %14, %10
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 2
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %22, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #2
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @HYPRE_GetErrorArg()
  %31 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %29, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 noundef %30) #2
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 256
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %37, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0)) #2
  br label %39

39:                                               ; preds = %36, %32
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HYPRE_GetErrorArg() #0 {
  %1 = load i32, i32* @hypre__global_error, align 4
  %2 = ashr i32 %1, 3
  %3 = and i32 %2, 31
  ret i32 %3
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
