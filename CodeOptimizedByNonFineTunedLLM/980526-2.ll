; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/980526-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/980526-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @do_mknod(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 360710264
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  call void @exit(i32 noundef 0) #2
  unreachable

10:                                               ; preds = %3
  call void @abort() #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @getname(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = ptrtoint i8* %12 to i32
  %14 = mul i32 %13, 5
  %15 = add i32 %14, 1
  store i32 %15, i32* %3, align 4
  %16 = load i8*, i8** %2, align 8
  %17 = ptrtoint i8* %16 to i32
  %18 = mul i32 %17, 6
  %19 = add i32 %18, 2
  store i32 %19, i32* %4, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = ptrtoint i8* %20 to i32
  %22 = mul i32 %21, 7
  %23 = add i32 %22, 3
  store i32 %23, i32* %5, align 4
  %24 = load i8*, i8** %2, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = mul i32 %25, 8
  %27 = add i32 %26, 4
  store i32 %27, i32* %6, align 4
  %28 = load i8*, i8** %2, align 8
  %29 = ptrtoint i8* %28 to i32
  %30 = mul i32 %29, 9
  %31 = add i32 %30, 5
  store i32 %31, i32* %7, align 4
  %32 = load i8*, i8** %2, align 8
  %33 = ptrtoint i8* %32 to i32
  %34 = mul i32 %33, 10
  %35 = add i32 %34, 5
  store i32 %35, i32* %8, align 4
  %36 = load i8*, i8** %2, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = mul i32 %37, 11
  %39 = add i32 %38, 5
  store i32 %39, i32* %9, align 4
  %40 = load i8*, i8** %2, align 8
  %41 = ptrtoint i8* %40 to i32
  %42 = mul i32 %41, 12
  %43 = add i32 %42, 5
  store i32 %43, i32* %10, align 4
  %44 = load i8*, i8** %2, align 8
  %45 = ptrtoint i8* %44 to i32
  %46 = mul i32 %45, 13
  %47 = add i32 %46, 5
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = mul i32 %48, %49
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = mul i32 %51, %52
  %54 = add i32 %50, %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = mul i32 %55, %56
  %58 = add i32 %54, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = mul i32 %59, %60
  %62 = add i32 %58, %61
  %63 = load i32, i32* %11, align 4
  %64 = add i32 %62, %63
  %65 = zext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  ret i8* %66
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sys_mknod(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @getname(i8* noundef %9)
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @to_kdev_t(i32 noundef %16)
  call void @do_mknod(i8* noundef %14, i32 noundef %15, i32 noundef %17)
  %18 = load i32, i32* %7, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @to_kdev_t(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = ashr i32 %5, 8
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, 255
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = shl i32 %9, 22
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %10, %11
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @sys_mknod(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef 1, i32 noundef 305419896)
  ret i32 %2
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
