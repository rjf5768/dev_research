; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ipa-sra-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ipa-sra-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.both = type { %struct.big }
%struct.big = type { [1000000 x i32] }
%struct.small = type { [10 x i32] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %union.both*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i8* @calloc(i64 noundef 1, i64 noundef 40)
  %9 = bitcast i8* %8 to %union.both*
  store %union.both* %9, %union.both** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 2000
  %12 = zext i1 %11 to i32
  %13 = load %union.both*, %union.both** %6, align 8
  %14 = call i32 @foo(i32 noundef %12, %union.both* noundef %13)
  store i32 %14, i32* %7, align 4
  %15 = load %union.both*, %union.both** %6, align 8
  %16 = bitcast %union.both* %15 to i8*
  call void @free(i8* noundef %16)
  %17 = load i32, i32* %7, align 4
  ret i32 %17
}

declare dso_local i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(i32 noundef %0, %union.both* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.both*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %union.both* %1, %union.both** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load %union.both*, %union.both** %4, align 8
  %10 = bitcast %union.both* %9 to %struct.big*
  %11 = getelementptr inbounds %struct.big, %struct.big* %10, i32 0, i32 0
  %12 = getelementptr inbounds [1000000 x i32], [1000000 x i32]* %11, i64 0, i64 999999
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  br label %20

14:                                               ; preds = %2
  %15 = load %union.both*, %union.both** %4, align 8
  %16 = bitcast %union.both* %15 to %struct.small*
  %17 = getelementptr inbounds %struct.small, %struct.small* %16, i32 0, i32 0
  %18 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %14, %8
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
