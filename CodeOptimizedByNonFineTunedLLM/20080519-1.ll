; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20080519-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20080519-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.du_chain = type { %struct.du_chain*, i32 }

@reg_class_contents = dso_local global [2 x [2 x i64]] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @merge_overlapping_regs([2 x i64]* noundef %0) #0 {
  %2 = alloca [2 x i64]*, align 8
  store [2 x i64]* %0, [2 x i64]** %2, align 8
  %3 = load [2 x i64]*, [2 x i64]** %2, align 8
  %4 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, -1
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load [2 x i64]*, [2 x i64]** %2, align 8
  %9 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  call void @abort() #3
  unreachable

13:                                               ; preds = %7
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @regrename_optimize(%struct.du_chain* noundef %0) #0 {
  %2 = alloca %struct.du_chain*, align 8
  %3 = alloca [2 x i64], align 16
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.du_chain*, align 8
  store %struct.du_chain* %0, %struct.du_chain** %2, align 8
  %7 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  store i64 0, i64* %7, align 16
  %8 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  store i64 0, i64* %8, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.du_chain*, %struct.du_chain** %2, align 8
  store %struct.du_chain* %9, %struct.du_chain** %6, align 8
  br label %10

10:                                               ; preds = %38, %1
  %11 = load %struct.du_chain*, %struct.du_chain** %6, align 8
  %12 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %11, i32 0, i32 0
  %13 = load %struct.du_chain*, %struct.du_chain** %12, align 8
  %14 = icmp ne %struct.du_chain* %13, null
  br i1 %14, label %15, label %42

15:                                               ; preds = %10
  %16 = load %struct.du_chain*, %struct.du_chain** %6, align 8
  %17 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @reg_class_contents, i64 0, i64 %19
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64* %21, i64** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = load i64*, i64** %4, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = xor i64 %26, -1
  %28 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %29 = load i64, i64* %28, align 16
  %30 = or i64 %29, %27
  store i64 %30, i64* %28, align 16
  %31 = load i64*, i64** %4, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = xor i64 %33, -1
  %35 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = or i64 %36, %34
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %15
  %39 = load %struct.du_chain*, %struct.du_chain** %6, align 8
  %40 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %39, i32 0, i32 0
  %41 = load %struct.du_chain*, %struct.du_chain** %40, align 8
  store %struct.du_chain* %41, %struct.du_chain** %6, align 8
  br label %10, !llvm.loop !4

42:                                               ; preds = %10
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %67

46:                                               ; preds = %42
  %47 = load %struct.du_chain*, %struct.du_chain** %6, align 8
  %48 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @reg_class_contents, i64 0, i64 %50
  %52 = getelementptr inbounds [2 x i64], [2 x i64]* %51, i64 0, i64 0
  store i64* %52, i64** %4, align 8
  %53 = load i64*, i64** %4, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = xor i64 %55, -1
  %57 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0
  %58 = load i64, i64* %57, align 16
  %59 = or i64 %58, %56
  store i64 %59, i64* %57, align 16
  %60 = load i64*, i64** %4, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = xor i64 %62, -1
  %64 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = or i64 %65, %63
  store i64 %66, i64* %64, align 8
  call void @merge_overlapping_regs([2 x i64]* noundef %3)
  br label %67

67:                                               ; preds = %46, %45
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.du_chain, align 8
  %3 = alloca %struct.du_chain, align 8
  store i32 0, i32* %1, align 4
  %4 = bitcast %struct.du_chain* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %3, i32 0, i32 0
  store %struct.du_chain* %2, %struct.du_chain** %5, align 8
  %6 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %3, i32 0, i32 1
  store i32 1, i32* %6, align 8
  store i64 -1, i64* getelementptr inbounds ([2 x [2 x i64]], [2 x [2 x i64]]* @reg_class_contents, i64 0, i64 0, i64 0), align 16
  store i64 -1, i64* getelementptr inbounds ([2 x [2 x i64]], [2 x [2 x i64]]* @reg_class_contents, i64 0, i64 0, i64 1), align 8
  store i64 0, i64* getelementptr inbounds ([2 x [2 x i64]], [2 x [2 x i64]]* @reg_class_contents, i64 0, i64 1, i64 0), align 16
  store i64 0, i64* getelementptr inbounds ([2 x [2 x i64]], [2 x [2 x i64]]* @reg_class_contents, i64 0, i64 1, i64 1), align 8
  call void @regrename_optimize(%struct.du_chain* noundef %3)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
