; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/read_dir-aux.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/read_dir-aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"my_verify_not_exists\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"my_verify_not_exists: pathname %s still exists\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"my_mkdir: failed to call stat for directory\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"my_mkdir: pathname %s is not a directory\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"my_mkdir: failed to create directory\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @expect_open_to_fail() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @my_verify_not_exists(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @stat(i8* noundef %5, %struct.stat* noundef %3) #5
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = call i32* @__errno_location() #6
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  ret void

14:                                               ; preds = %9, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @perror(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %21

18:                                               ; preds = %14
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* noundef %19)
  br label %21

21:                                               ; preds = %18, %17
  call void @abort() #7
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @stat(i8* noundef, %struct.stat* noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #2

declare dso_local void @perror(i8* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @my_mkdir(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @stat(i8* noundef %5, %struct.stat* noundef %4) #5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = call i32* @__errno_location() #6
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  call void @perror(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  call void @abort() #7
  unreachable

14:                                               ; preds = %9, %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 61440
  %21 = icmp eq i32 %20, 16384
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* noundef %23)
  call void @abort() #7
  unreachable

25:                                               ; preds = %17, %14
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @mkdir(i8* noundef %26, i32 noundef 493) #5
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  call void @perror(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  call void @abort() #7
  unreachable

31:                                               ; preds = %25
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @mkdir(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @my_rmdir(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @rmdir(i8* noundef %3) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @rmdir(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
