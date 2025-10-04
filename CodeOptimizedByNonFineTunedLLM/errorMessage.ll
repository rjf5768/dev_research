; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/errorMessage.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/errorMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [46 x i8] c"Error Message Too Large for Buffer: flushing\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"unconnected: %s\0A\00", align 1
@errorBuffer = internal global [1024 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [37 x i8] c"Error Message Buffer full: flushing\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"unconnected: %s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"unconnected\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @errorMessage(i8* noundef %0, i8 noundef signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca [1024 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load i8, i8* %4, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strlen(i8* noundef %10) #4
  %12 = icmp ugt i64 %11, 1023
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* noundef %17)
  br label %22

19:                                               ; preds = %9
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @strcpy(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0), i8* noundef %20) #5
  br label %22

22:                                               ; preds = %19, %13
  br label %46

23:                                               ; preds = %2
  %24 = call i64 @strlen(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0)) #4
  %25 = load i8*, i8** %3, align 8
  %26 = call i64 @strlen(i8* noundef %25) #4
  %27 = add i64 %24, %26
  %28 = icmp ugt i64 %27, 1023
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* noundef %33, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0))
  call void @errorMessage(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0)
  br label %45

35:                                               ; preds = %23
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %37 = load i8*, i8** %3, align 8
  %38 = call i8* @strcpy(i8* noundef %36, i8* noundef %37) #5
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %40 = call i8* @strcat(i8* noundef %39, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #5
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %42 = call i8* @strcat(i8* noundef %41, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0)) #5
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %44 = call i8* @strcpy(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0), i8* noundef %43) #5
  br label %45

45:                                               ; preds = %35, %29
  br label %46

46:                                               ; preds = %45, %22
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @flushErrorMessage() #0 {
  %1 = call i64 @strlen(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0)) #4
  %2 = icmp ugt i64 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 @fflush(%struct._IO_FILE* noundef %6)
  br label %8

8:                                                ; preds = %3, %0
  ret void
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
