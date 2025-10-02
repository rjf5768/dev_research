; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr80153.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr80153.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = internal global i8* null, align 8
@i = internal global i32 0, align 4
@l = internal global i32 0, align 4
@string = internal global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [7 x i8] c"oops!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @check(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  call void @abort() #3
  unreachable

10:                                               ; preds = %3
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @_fputs(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** @buf, align 8
  store i32 0, i32* @i, align 4
  %4 = load i8*, i8** @buf, align 8
  %5 = call i64 @strlen(i8* noundef %4) #4
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* @l, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @_fgetc() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = load i8*, i8** @buf, align 8
  %4 = load i32, i32* @i, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, i8* %3, i64 %5
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %2, align 1
  %8 = load i32, i32* @i, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @i, align 4
  %10 = load i32, i32* @i, align 4
  %11 = load i32, i32* @l, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  store i8 -1, i8* %1, align 1
  br label %16

14:                                               ; preds = %0
  %15 = load i8, i8* %2, align 1
  store i8 %15, i8* %1, align 1
  br label %16

16:                                               ; preds = %14, %13
  %17 = load i8, i8* %1, align 1
  ret i8 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = load i8*, i8** @string, align 8
  call void @_fputs(i8* noundef %4)
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %30, %0
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = load i8*, i8** @string, align 8
  %9 = call i64 @strlen(i8* noundef %8) #4
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %5
  %12 = call signext i8 @_fgetc()
  %13 = sext i8 %12 to i32
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i8*, i8** @string, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load i32, i32* %3, align 4
  %22 = load i8*, i8** @string, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %21, %27
  %29 = zext i1 %28 to i32
  call void @check(i32 noundef %14, i32 noundef %20, i32 noundef %29)
  br label %30

30:                                               ; preds = %11
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %5, !llvm.loop !4

33:                                               ; preds = %5
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
