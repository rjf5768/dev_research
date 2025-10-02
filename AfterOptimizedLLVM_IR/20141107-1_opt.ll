; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20141107-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20141107-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @f(i32 noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  %5 = zext i1 %1 to i8
  store i8 %5, i8* %4, align 1
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load i8, i8* %4, align 1
  %10 = trunc i8 %9 to i1
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %4, align 1
  br label %13

13:                                               ; preds = %8, %2
  %14 = load i8, i8* %4, align 1
  %15 = trunc i8 %14 to i1
  ret i1 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @checkf(i32 noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  %7 = zext i1 %1 to i8
  store i8 %7, i8* %4, align 1
  %8 = load i32, i32* %3, align 4
  %9 = load i8, i8* %4, align 1
  %10 = trunc i8 %9 to i1
  %11 = call zeroext i1 @f(i32 noundef %8, i1 noundef zeroext %10)
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %5, align 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %5, i64 1, i1 false)
  %13 = load i8, i8* %6, align 1
  %14 = sext i8 %13 to i32
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = icmp ne i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = load i8, i8* %4, align 1
  %21 = trunc i8 %20 to i1
  %22 = zext i1 %21 to i32
  %23 = xor i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  call void @abort() #3
  unreachable

26:                                               ; preds = %2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @checkf(i32 noundef 0, i1 noundef zeroext false)
  call void @checkf(i32 noundef 0, i1 noundef zeroext true)
  call void @checkf(i32 noundef 1, i1 noundef zeroext true)
  call void @checkf(i32 noundef 1, i1 noundef zeroext false)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
