; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000314-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000314-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg0 = internal global [5 x i8] c"arg0\00", align 1
@arg1 = internal global [5 x i8] c"arg1\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @attr_eq(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @arg0, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @arg1, i64 0, i64 0))
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @attr_eq(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i8* @attr_string(i8* noundef %5)
  %7 = load i8*, i8** %4, align 8
  %8 = call i8* @attr_string(i8* noundef %7)
  call void @attr_rtx(i8* noundef %6, i8* noundef %8)
  ret void
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @attr_rtx(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, getelementptr inbounds ([5 x i8], [5 x i8]* @arg0, i64 0, i64 0)
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @abort() #2
  unreachable

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, getelementptr inbounds ([5 x i8], [5 x i8]* @arg1, i64 0, i64 0)
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @abort() #2
  unreachable

12:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @attr_string(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
