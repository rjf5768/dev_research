; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr34456.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr34456.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i32, i32 (i32)* }

@array = dso_local global [2 x %struct.s] [%struct.s { i32 1, i32 (i32)* @bad_compare }, %struct.s { i32 -1, i32 (i32)* @bad_compare }], align 16
@errors = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @debug() #0 {
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bad_compare(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sub nsw i32 0, %3
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @qsort(i8* noundef bitcast ([2 x %struct.s]* @array to i8*), i64 noundef 2, i64 noundef 16, i32 (i8*, i8*)* noundef @compare)
  %2 = load i32, i32* @errors, align 4
  %3 = icmp eq i32 %2, 0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s*, align 8
  %6 = alloca %struct.s*, align 8
  %7 = alloca i32 (i32)*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.s*
  store %struct.s* %10, %struct.s** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.s*
  store %struct.s* %12, %struct.s** %6, align 8
  %13 = load %struct.s*, %struct.s** %5, align 8
  %14 = getelementptr inbounds %struct.s, %struct.s* %13, i32 0, i32 1
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  store i32 (i32)* %15, i32 (i32)** %7, align 8
  %16 = load %struct.s*, %struct.s** %6, align 8
  %17 = getelementptr inbounds %struct.s, %struct.s* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = call i32 @debug()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32 (i32)*, i32 (i32)** %7, align 8
  %26 = load %struct.s*, %struct.s** %5, align 8
  %27 = getelementptr inbounds %struct.s, %struct.s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %25(i32 noundef %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @errors, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @errors, align 4
  br label %34

34:                                               ; preds = %31, %24, %21, %2
  %35 = load i32 (i32)*, i32 (i32)** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 %35(i32 noundef %36)
  ret i32 %37
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
