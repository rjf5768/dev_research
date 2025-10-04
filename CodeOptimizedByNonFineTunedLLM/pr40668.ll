; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr40668.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr40668.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %14 [
    i32 1, label %6
    i32 7, label %8
    i32 8, label %10
    i32 9, label %12
  ]

6:                                                ; preds = %2
  %7 = load i8*, i8** %4, align 8
  call void @foo(i32 noundef 305419896, i8* noundef %7)
  br label %14

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  call void @foo(i32 noundef 0, i8* noundef %9)
  br label %14

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  call void @foo(i32 noundef 0, i8* noundef %11)
  br label %14

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  call void @foo(i32 noundef 0, i8* noundef %13)
  br label %14

14:                                               ; preds = %2, %12, %10, %8, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @foo(i32 noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i32* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 4 %6, i64 4, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast i32* %2 to i8*
  call void @bar(i32 noundef 1, i8* noundef %3)
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 305419896
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #3
  unreachable

7:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
