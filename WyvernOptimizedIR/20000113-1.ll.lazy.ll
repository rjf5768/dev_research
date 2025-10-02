; ModuleID = './20000113-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000113-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x = type { i8, [3 x i8] }

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @foobar(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.x, align 4
  %5 = alloca %struct.x, align 4
  %6 = getelementptr inbounds %struct.x, %struct.x* %4, i64 0, i32 0
  %7 = trunc i32 %0 to i8
  %8 = load i8, i8* %6, align 4
  %9 = and i8 %7, 1
  %10 = and i8 %8, -2
  %11 = or i8 %10, %9
  store i8 %11, i8* %6, align 4
  %12 = getelementptr inbounds %struct.x, %struct.x* %4, i64 0, i32 0
  %13 = trunc i32 %1 to i8
  %14 = shl i8 %13, 1
  %15 = and i8 %14, 6
  %16 = and i8 %11, -7
  %17 = or i8 %16, %15
  store i8 %17, i8* %12, align 4
  %18 = getelementptr inbounds %struct.x, %struct.x* %4, i64 0, i32 0
  %19 = trunc i32 %2 to i8
  %20 = shl i8 %19, 3
  %21 = and i8 %20, 56
  %22 = and i8 %17, -57
  %23 = or i8 %22, %21
  store i8 %23, i8* %18, align 4
  %24 = getelementptr inbounds %struct.x, %struct.x* %5, i64 0, i32 0
  %25 = trunc i32 %0 to i8
  %26 = load i8, i8* %24, align 4
  %27 = and i8 %25, 1
  %28 = and i8 %26, -2
  %29 = or i8 %28, %27
  store i8 %29, i8* %24, align 4
  %30 = getelementptr inbounds %struct.x, %struct.x* %5, i64 0, i32 0
  %31 = trunc i32 %1 to i8
  %32 = shl i8 %31, 1
  %33 = and i8 %32, 6
  %34 = and i8 %29, -7
  %35 = or i8 %34, %33
  store i8 %35, i8* %30, align 4
  %36 = getelementptr inbounds %struct.x, %struct.x* %5, i64 0, i32 0
  %37 = trunc i32 %2 to i8
  %38 = shl i8 %37, 3
  %39 = and i8 %38, 56
  %40 = and i8 %35, -57
  %41 = or i8 %40, %39
  store i8 %41, i8* %36, align 4
  %42 = getelementptr inbounds %struct.x, %struct.x* %4, i64 0, i32 0
  %43 = load i8, i8* %42, align 4
  %44 = lshr i8 %43, 1
  %45 = and i8 %44, 3
  %46 = and i8 %43, 1
  %47 = sub nsw i8 %45, %46
  %48 = getelementptr inbounds %struct.x, %struct.x* %5, i64 0, i32 0
  %49 = load i8, i8* %48, align 4
  %50 = lshr i8 %49, 1
  %51 = and i8 %50, 3
  %52 = mul nsw i8 %47, %51
  %53 = getelementptr inbounds %struct.x, %struct.x* %5, i64 0, i32 0
  %54 = shl i8 %52, 3
  %55 = add i8 %49, %54
  %56 = and i8 %55, 56
  %57 = and i8 %49, -57
  %58 = or i8 %57, %56
  store i8 %58, i8* %53, align 4
  %59 = getelementptr inbounds %struct.x, %struct.x* %4, i64 0, i32 0
  %60 = load i8, i8* %59, align 4
  %61 = and i8 %60, 1
  %.not.not = icmp eq i8 %61, 0
  br i1 %.not.not, label %66, label %62

62:                                               ; preds = %3
  %63 = getelementptr inbounds %struct.x, %struct.x* %5, i64 0, i32 0
  %64 = load i8, i8* %63, align 4
  %65 = and i8 %64, 56
  %.not = icmp eq i8 %65, 40
  br i1 %.not, label %67, label %66

66:                                               ; preds = %62, %3
  call void @abort() #2
  br label %UnifiedUnreachableBlock

67:                                               ; preds = %62
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %67, %66
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @foobar(i32 noundef 1, i32 noundef 2, i32 noundef 3)
  ret i32 0
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
