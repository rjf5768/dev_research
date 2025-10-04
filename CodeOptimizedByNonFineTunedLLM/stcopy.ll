; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/stcopy.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/archie-client/stcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@string_count = dso_local global i32 0, align 4
@string_max = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @stcopy(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %21

7:                                                ; preds = %1
  %8 = load i32, i32* @string_max, align 4
  %9 = load i32, i32* @string_count, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @string_count, align 4
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load i32, i32* @string_count, align 4
  store i32 %13, i32* @string_max, align 4
  br label %14

14:                                               ; preds = %12, %7
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strlen(i8* noundef %15)
  %17 = add i64 %16, 1
  %18 = call noalias i8* @malloc(i64 noundef %17) #3
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @strcpy(i8* noundef %18, i8* noundef %19)
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %14, %6
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @stcopyr(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i8*, i8** %5, align 8
  call void @free(i8* noundef %13) #3
  %14 = load i32, i32* @string_count, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* @string_count, align 4
  store i8* null, i8** %3, align 8
  br label %57

16:                                               ; preds = %9, %2
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %57

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @strlen(i8* noundef %22)
  %24 = add i64 %23, 1
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %21
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @strlen(i8* noundef %29)
  %31 = add i64 %30, 1
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i8*, i8** %5, align 8
  call void @free(i8* noundef %36) #3
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = call noalias i8* @malloc(i64 noundef %38) #3
  store i8* %39, i8** %5, align 8
  br label %40

40:                                               ; preds = %35, %28
  br label %53

41:                                               ; preds = %21
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = call noalias i8* @malloc(i64 noundef %43) #3
  store i8* %44, i8** %5, align 8
  %45 = load i32, i32* @string_count, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @string_count, align 4
  %47 = load i32, i32* @string_max, align 4
  %48 = load i32, i32* @string_count, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @string_count, align 4
  store i32 %51, i32* @string_max, align 4
  br label %52

52:                                               ; preds = %50, %41
  br label %53

53:                                               ; preds = %52, %40
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call i8* @strcpy(i8* noundef %54, i8* noundef %55)
  store i8* %56, i8** %3, align 8
  br label %57

57:                                               ; preds = %53, %19, %12
  %58 = load i8*, i8** %3, align 8
  ret i8* %58
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @stfree(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8
  call void @free(i8* noundef %6) #3
  %7 = load i32, i32* @string_count, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* @string_count, align 4
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
