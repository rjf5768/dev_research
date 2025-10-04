; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991201-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991201-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, [48 x i8] }
%struct.vc = type { %struct.vc_data* }

@a_con = dso_local global %struct.vc_data zeroinitializer, align 8
@vc_cons = dso_local global <{ %struct.vc, [62 x %struct.vc] }> <{ %struct.vc { %struct.vc_data* @a_con }, [62 x %struct.vc] zeroinitializer }>, align 16
@default_red = dso_local global [16 x i32] zeroinitializer, align 16
@default_grn = dso_local global [16 x i32] zeroinitializer, align 16
@default_blu = dso_local global [16 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @reset_palette(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %54, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 16
  br i1 %7, label %8, label %57

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* @default_red, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = trunc i32 %12 to i8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [63 x %struct.vc], [63 x %struct.vc]* bitcast (<{ %struct.vc, [62 x %struct.vc] }>* @vc_cons to [63 x %struct.vc]*), i64 0, i64 %15
  %17 = getelementptr inbounds %struct.vc, %struct.vc* %16, i32 0, i32 0
  %18 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 1
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds [48 x i8], [48 x i8]* %19, i64 0, i64 %22
  store i8 %13, i8* %23, align 1
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* @default_grn, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = trunc i32 %27 to i8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [63 x %struct.vc], [63 x %struct.vc]* bitcast (<{ %struct.vc, [62 x %struct.vc] }>* @vc_cons to [63 x %struct.vc]*), i64 0, i64 %30
  %32 = getelementptr inbounds %struct.vc, %struct.vc* %31, i32 0, i32 0
  %33 = load %struct.vc_data*, %struct.vc_data** %32, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 1
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds [48 x i8], [48 x i8]* %34, i64 0, i64 %37
  store i8 %28, i8* %38, align 1
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* @default_blu, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = trunc i32 %42 to i8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [63 x %struct.vc], [63 x %struct.vc]* bitcast (<{ %struct.vc, [62 x %struct.vc] }>* @vc_cons to [63 x %struct.vc]*), i64 0, i64 %45
  %47 = getelementptr inbounds %struct.vc, %struct.vc* %46, i32 0, i32 0
  %48 = load %struct.vc_data*, %struct.vc_data** %47, align 8
  %49 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %48, i32 0, i32 1
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds [48 x i8], [48 x i8]* %49, i64 0, i64 %52
  store i8 %43, i8* %53, align 1
  br label %54

54:                                               ; preds = %8
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %5, !llvm.loop !4

57:                                               ; preds = %5
  %58 = load i32, i32* %4, align 4
  call void @bar(i32 noundef %58)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 48
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @abort() #2
  unreachable

6:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @reset_palette(i32 noundef 0)
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
