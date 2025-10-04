; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43236.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43236.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [30 x i8], align 16
  %3 = alloca [30 x i8], align 16
  %4 = alloca [30 x i8], align 16
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = getelementptr inbounds [30 x i8], [30 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 1, i64 30, i1 false)
  %7 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 1, i64 30, i1 false)
  store i32 20, i32* %5, align 4
  br label %8

8:                                                ; preds = %12, %0
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %5, align 4
  %11 = icmp sgt i32 %9, 10
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [30 x i8], [30 x i8]* %2, i64 0, i64 %14
  store i8 0, i8* %15, align 1
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i64 0, i64 %17
  store i8 0, i8* %18, align 1
  br label %8, !llvm.loop !4

19:                                               ; preds = %8
  %20 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 1, i64 30, i1 false)
  %21 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %22 = getelementptr inbounds i8, i8* %21, i64 10
  call void @llvm.memset.p0i8.i64(i8* align 1 %22, i8 0, i64 10, i1 false)
  %23 = getelementptr inbounds [30 x i8], [30 x i8]* %2, i64 0, i64 0
  %24 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %25 = call i32 @memcmp(i8* noundef %23, i8* noundef %24, i64 noundef 30)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i64 0, i64 0
  %29 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %30 = call i32 @memcmp(i8* noundef %28, i8* noundef %29, i64 noundef 30)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %19
  call void @abort() #4
  unreachable

33:                                               ; preds = %27
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
