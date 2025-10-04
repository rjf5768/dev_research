; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr22061-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr22061-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N = dso_local global i32 1, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @N, align 4
  %4 = zext i32 %3 to i64
  %5 = load i32, i32* @N, align 4
  %6 = trunc i32 %5 to i8
  %7 = load i8*, i8** %2, align 8
  %8 = mul nsw i64 1, %4
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 %6, i8* %10, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i32 4, i32* @N, align 4
  %3 = load i32, i32* @N, align 4
  %4 = mul nsw i32 2, %3
  %5 = sext i32 %4 to i64
  %6 = alloca i8, i64 %5, align 16
  store i8* %6, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = load i32, i32* @N, align 4
  %9 = mul nsw i32 2, %8
  %10 = sext i32 %9 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 0, i64 %10, i1 false)
  %11 = load i8*, i8** %2, align 8
  call void @bar(i8* noundef %11)
  %12 = load i32, i32* @N, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = load i32, i32* @N, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  call void @abort() #3
  unreachable

21:                                               ; preds = %0
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
