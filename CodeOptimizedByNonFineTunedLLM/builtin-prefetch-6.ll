; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtin-prefetch-6.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtin-prefetch-6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bad_addr = dso_local global [65 x i32*] zeroinitializer, align 16
@arr_used = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_addrs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 64, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %16, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = load i32, i32* %1, align 4
  %9 = zext i32 %8 to i64
  %10 = shl i64 1, %9
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [65 x i32*], [65 x i32*]* @bad_addr, i64 0, i64 %14
  store i32* %12, i32** %15, align 8
  br label %16

16:                                               ; preds = %7
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %3, !llvm.loop !4

19:                                               ; preds = %3
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @arr_used, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @prefetch_for_read() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %11, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 65
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [65 x i32*], [65 x i32*]* @bad_addr, i64 0, i64 %7
  %9 = load i32*, i32** %8, align 8
  %10 = bitcast i32* %9 to i8*
  call void @llvm.prefetch.p0i8(i8* %10, i32 0, i32 0, i32 1)
  br label %11

11:                                               ; preds = %5
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %2, !llvm.loop !6

14:                                               ; preds = %2
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0i8(i8* nocapture readonly, i32 immarg, i32 immarg, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @prefetch_for_write() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %11, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 65
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [65 x i32*], [65 x i32*]* @bad_addr, i64 0, i64 %7
  %9 = load i32*, i32** %8, align 8
  %10 = bitcast i32* %9 to i8*
  call void @llvm.prefetch.p0i8(i8* %10, i32 1, i32 0, i32 1)
  br label %11

11:                                               ; preds = %5
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %2, !llvm.loop !7

14:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @init_addrs()
  call void @prefetch_for_read()
  call void @prefetch_for_write()
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblemem_or_argmemonly nofree nosync nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
