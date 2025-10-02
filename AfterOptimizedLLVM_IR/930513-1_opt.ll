; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930513-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930513-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = dso_local global [2 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [5 x i8] c"%.0f\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 (i8*, i8*, ...)* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32 (i8*, i8*, ...)*, align 8
  store i32 (i8*, i8*, ...)* %0, i32 (i8*, i8*, ...)** %3, align 8
  %4 = load i32 (i8*, i8*, ...)*, i32 (i8*, i8*, ...)** %3, align 8
  %5 = call i32 (i8*, i8*, ...) %4(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), double noundef 5.000000e+00)
  %6 = load i32, i32* %2, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @f(i32 (i8*, i8*, ...)* noundef @sprintf)
  %3 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @buf, i64 0, i64 0), align 1
  %4 = sext i8 %3 to i32
  %5 = icmp ne i32 %4, 53
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @buf, i64 0, i64 1), align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %0
  call void @abort() #3
  unreachable

11:                                               ; preds = %6
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
