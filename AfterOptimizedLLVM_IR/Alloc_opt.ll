; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Alloc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/Alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @MyAlloc(i64 noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %10

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = call noalias i8* @malloc(i64 noundef %8) #2
  store i8* %9, i8** %2, align 8
  br label %10

10:                                               ; preds = %7, %6
  %11 = load i8*, i8** %2, align 8
  ret i8* %11
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @MyFree(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void @free(i8* noundef %3) #2
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @MidAlloc(i64 noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %10

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = call i8* @VirtualAlloc(i64 noundef %8, i32 noundef 0)
  store i8* %9, i8** %2, align 8
  br label %10

10:                                               ; preds = %7, %6
  %11 = load i8*, i8** %2, align 8
  ret i8* %11
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @VirtualAlloc(i64 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = call noalias i8* @malloc(i64 noundef %5) #2
  ret i8* %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @MidFree(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %9

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @VirtualFree(i8* noundef %7)
  br label %9

9:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @VirtualFree(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void @free(i8* noundef %3) #2
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SetLargePageSize() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @BigAlloc(i64 noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %10

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = call i8* @VirtualAlloc(i64 noundef %8, i32 noundef 0)
  store i8* %9, i8** %2, align 8
  br label %10

10:                                               ; preds = %7, %6
  %11 = load i8*, i8** %2, align 8
  ret i8* %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BigFree(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %9

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @VirtualFree(i8* noundef %7)
  br label %9

9:                                                ; preds = %6, %5
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
