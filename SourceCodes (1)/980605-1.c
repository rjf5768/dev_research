; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/980605-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/980605-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 1, align 4
@buf = dso_local global [10 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2(double noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store double %0, double* %2, align 8
  %14 = call i32 @getval()
  store i32 %14, i32* %4, align 4
  %15 = call i32 @getval()
  store i32 %15, i32* %5, align 4
  %16 = call i32 @getval()
  store i32 %16, i32* %6, align 4
  %17 = call i32 @getval()
  store i32 %17, i32* %7, align 4
  %18 = call i32 @getval()
  store i32 %18, i32* %8, align 4
  %19 = call i32 @getval()
  store i32 %19, i32* %9, align 4
  %20 = call i32 @getval()
  store i32 %20, i32* %10, align 4
  %21 = call i32 @getval()
  store i32 %21, i32* %11, align 4
  %22 = call i32 @getval()
  store i32 %22, i32* %12, align 4
  %23 = call i32 @getval()
  store i32 %23, i32* %13, align 4
  %24 = load double, double* %2, align 8
  %25 = fptoui double %24 to i16
  store i16 %25, i16* %3, align 2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i16, i16* %3, align 2
  %46 = zext i16 %45 to i32
  %47 = add nsw i32 %44, %46
  ret i32 %47
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getval() #0 {
  %1 = load i32, i32* @x, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @x, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f() #0 {
  %1 = alloca [100000 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = call i32 @getval()
  store i32 %13, i32* %2, align 4
  %14 = call i32 @getval()
  store i32 %14, i32* %3, align 4
  %15 = call i32 @getval()
  store i32 %15, i32* %4, align 4
  %16 = call i32 @getval()
  store i32 %16, i32* %5, align 4
  %17 = call i32 @getval()
  store i32 %17, i32* %6, align 4
  %18 = call i32 @getval()
  store i32 %18, i32* %7, align 4
  %19 = call i32 @getval()
  store i32 %19, i32* %8, align 4
  %20 = call i32 @getval()
  store i32 %20, i32* %9, align 4
  %21 = call i32 @getval()
  store i32 %21, i32* %10, align 4
  %22 = call i32 @getval()
  store i32 %22, i32* %11, align 4
  %23 = call i32 @f2(double noundef 1.700000e+01)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %44) #3
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %64, %65
  %67 = icmp ne i32 %66, 227
  br i1 %67, label %68, label %69

68:                                               ; preds = %0
  call void @abort() #4
  unreachable

69:                                               ; preds = %0
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @f()
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
