; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000112-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000112-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"ee\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"*e\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @special_format(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #3
  unreachable

5:                                                ; preds = %0
  %6 = call i32 @special_format(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  call void @abort() #3
  unreachable

9:                                                ; preds = %5
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @special_format(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @strchr(i8* noundef %3, i32 noundef 42) #4
  %5 = icmp ne i8* %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @strchr(i8* noundef %7, i32 noundef 86) #4
  %9 = icmp ne i8* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = load i8*, i8** %2, align 8
  %12 = call i8* @strchr(i8* noundef %11, i32 noundef 83) #4
  %13 = icmp ne i8* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i8*, i8** %2, align 8
  %16 = call i8* @strchr(i8* noundef %15, i32 noundef 110) #4
  %17 = icmp ne i8* %16, null
  br label %18

18:                                               ; preds = %14, %10, %6, %1
  %19 = phi i1 [ true, %10 ], [ true, %6 ], [ true, %1 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }
attributes #4 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
