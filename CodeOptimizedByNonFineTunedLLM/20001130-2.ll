; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001130-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001130-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@which_alternative = internal global i32 3, align 4
@.str = private unnamed_addr constant [10 x i8] c"mov\09%1,%0\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ld\09%1,%0\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"st\09%1,%0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"foo\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %3 = call i8* @output_25()
  store i8* %3, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 115
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @abort() #2
  unreachable

10:                                               ; preds = %0
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @output_25() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @which_alternative, align 4
  switch i32 %2, label %8 [
    i32 0, label %3
    i32 1, label %4
    i32 2, label %6
    i32 3, label %7
  ]

3:                                                ; preds = %0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %8

4:                                                ; preds = %0
  %5 = call i8* @i960_output_ldconst()
  store i8* %5, i8** %1, align 8
  br label %8

6:                                                ; preds = %0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %8

7:                                                ; preds = %0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %8

8:                                                ; preds = %3, %4, %6, %7, %0
  %9 = load i8*, i8** %1, align 8
  ret i8* %9
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @i960_output_ldconst() #0 {
  ret i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
