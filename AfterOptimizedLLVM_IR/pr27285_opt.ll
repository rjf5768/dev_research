; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr27285.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr27285.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, i8, i8, [16 x i8] }

@__const.main.x = private unnamed_addr constant { i8, i8, i8, <{ i8, i8, i8, i8, [12 x i8] }> } { i8 0, i8 25, i8 0, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 -86, i8 -69, i8 -52, i8 -35, [12 x i8] zeroinitializer }> }, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.S* noundef %0, %struct.S* noundef %1) #0 {
  %3 = alloca %struct.S*, align 8
  %4 = alloca %struct.S*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.S* %0, %struct.S** %3, align 8
  store %struct.S* %1, %struct.S** %4, align 8
  %10 = load %struct.S*, %struct.S** %3, align 8
  %11 = getelementptr inbounds %struct.S, %struct.S* %10, i32 0, i32 1
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load %struct.S*, %struct.S** %3, align 8
  %15 = getelementptr inbounds %struct.S, %struct.S* %14, i32 0, i32 3
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  store i8* %16, i8** %8, align 8
  %17 = load %struct.S*, %struct.S** %4, align 8
  %18 = getelementptr inbounds %struct.S, %struct.S* %17, i32 0, i32 3
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i64 0, i64 0
  store i8* %19, i8** %9, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %34, %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = icmp sge i32 %24, 8
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  store i8 -1, i8* %7, align 1
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, 8
  store i32 %28, i32* %6, align 4
  br label %34

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 8, %30
  %32 = shl i32 255, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %7, align 1
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %26
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* %7, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %40, %42
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 %44, i8* %48, align 1
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %20, !llvm.loop !4

51:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 1
  %3 = alloca %struct.S, align 1
  store i32 0, i32* %1, align 4
  %4 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ({ i8, i8, i8, <{ i8, i8, i8, i8, [12 x i8] }> }, { i8, i8, i8, <{ i8, i8, i8, i8, [12 x i8] }> }* @__const.main.x, i32 0, i32 0), i64 19, i1 false)
  %5 = bitcast %struct.S* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %5, i8 0, i64 19, i1 false)
  call void @foo(%struct.S* noundef %2, %struct.S* noundef %3)
  %6 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 3
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 3
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp ne i32 %9, %13
  br i1 %14, label %46, label %15

15:                                               ; preds = %0
  %16 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 3
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 3
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %19, %23
  br i1 %24, label %46, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 3
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %26, i64 0, i64 2
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 3
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %30, i64 0, i64 2
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %29, %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 3
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %36, i64 0, i64 3
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 128
  %41 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 3
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %41, i64 0, i64 3
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %35, %25, %15, %0
  call void @abort() #4
  unreachable

47:                                               ; preds = %35
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
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
