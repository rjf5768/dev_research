; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr79327.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr79327.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%#hho\00", align 1
@a = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%#hhx\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [64 x i8], align 16
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %5 = load volatile i32, i32* @a, align 4
  %6 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef %5) #3
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @abort() #4
  unreachable

9:                                                ; preds = %0
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %11 = load volatile i32, i32* @a, align 4
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %10, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef %11) #3
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  call void @abort() #4
  unreachable

15:                                               ; preds = %9
  store volatile i32 1, i32* @a, align 4
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %17 = load volatile i32, i32* @a, align 4
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef %17) #3
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  call void @abort() #4
  unreachable

21:                                               ; preds = %15
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %23 = load volatile i32, i32* @a, align 4
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %22, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef %23) #3
  %25 = icmp ne i32 %24, 3
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void @abort() #4
  unreachable

27:                                               ; preds = %21
  store volatile i32 127, i32* @a, align 4
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %29 = load volatile i32, i32* @a, align 4
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %28, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef %29) #3
  %31 = icmp ne i32 %30, 4
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  call void @abort() #4
  unreachable

33:                                               ; preds = %27
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %35 = load volatile i32, i32* @a, align 4
  %36 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %34, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef %35) #3
  %37 = icmp ne i32 %36, 4
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  call void @abort() #4
  unreachable

39:                                               ; preds = %33
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
