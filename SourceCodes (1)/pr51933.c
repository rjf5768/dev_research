; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr51933.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr51933.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v1 = internal global i8 0, align 1
@v2 = internal global [256 x i8] zeroinitializer, align 16
@v3 = internal global [256 x i8] zeroinitializer, align 16
@__const.main.c = private unnamed_addr constant [18 x i8] c"abcdefghijklmnopq\00", align 16
@.str = private unnamed_addr constant [18 x i8] c"abcdeghhijkmmnoqq\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  call void asm sideeffect "", "imr,imr,imr,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* @v1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @v2, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @v3, i64 0, i64 0)) #4, !srcloc !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %0, i16* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  store i32 %0, i32* %4, align 4
  store i16* %1, i16** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8, i8* @v1, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  call void @foo()
  br label %12

12:                                               ; preds = %11, %3
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %47, %12
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %50

17:                                               ; preds = %13
  %18 = load i16*, i16** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, i16* %18, i64 %20
  %22 = load i16, i16* %21, align 2
  store i16 %22, i16* %8, align 2
  %23 = load i16, i16* %8, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load i16, i16* %8, align 2
  %28 = zext i16 %27 to i64
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* @v2, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  br label %40

32:                                               ; preds = %17
  %33 = load i16, i16* %8, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, 255
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* @v3, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  br label %40

40:                                               ; preds = %32, %26
  %41 = phi i32 [ %31, %26 ], [ %39, %32 ]
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 %42, i8* %46, align 1
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %13, !llvm.loop !5

50:                                               ; preds = %13
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [18 x i8], align 16
  %3 = alloca [18 x i16], align 16
  %4 = alloca [18 x i8], align 16
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast [18 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([18 x i8], [18 x i8]* @__const.main.c, i32 0, i32 0), i64 18, i1 false)
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %22, %0
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 256
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = trunc i32 %11 to i8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* @v2, i64 0, i64 %14
  store i8 %12, i8* %15, align 1
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  %18 = trunc i32 %17 to i8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* @v3, i64 0, i64 %20
  store i8 %18, i8* %21, align 1
  br label %22

22:                                               ; preds = %10
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %7, !llvm.loop !7

25:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %38, %25
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 18
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i16
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [18 x i16], [18 x i16]* %3, i64 0, i64 %36
  store i16 %34, i16* %37, align 2
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %26, !llvm.loop !8

41:                                               ; preds = %26
  %42 = getelementptr inbounds [18 x i16], [18 x i16]* %3, i64 0, i64 5
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  %45 = or i32 %44, 1536
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %42, align 2
  %47 = getelementptr inbounds [18 x i16], [18 x i16]* %3, i64 0, i64 6
  %48 = load i16, i16* %47, align 4
  %49 = zext i16 %48 to i32
  %50 = or i32 %49, 1280
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %47, align 4
  %52 = getelementptr inbounds [18 x i16], [18 x i16]* %3, i64 0, i64 11
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i32
  %55 = or i32 %54, 8192
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %52, align 2
  %57 = getelementptr inbounds [18 x i16], [18 x i16]* %3, i64 0, i64 15
  %58 = load i16, i16* %57, align 2
  %59 = zext i16 %58 to i32
  %60 = or i32 %59, 1280
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %57, align 2
  call void @foo()
  %62 = getelementptr inbounds [18 x i16], [18 x i16]* %3, i64 0, i64 0
  %63 = getelementptr inbounds [18 x i8], [18 x i8]* %2, i64 0, i64 0
  %64 = call i32 @bar(i32 noundef 17, i16* noundef %62, i8* noundef %63)
  %65 = icmp ne i32 %64, 17
  br i1 %65, label %70, label %66

66:                                               ; preds = %41
  %67 = getelementptr inbounds [18 x i8], [18 x i8]* %2, i64 0, i64 0
  %68 = call i32 @memcmp(i8* noundef %67, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 noundef 18) #4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %41
  call void @abort() #5
  unreachable

71:                                               ; preds = %66
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 431}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
