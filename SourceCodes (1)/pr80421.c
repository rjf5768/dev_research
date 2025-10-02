; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr80421.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr80421.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"x %c\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"case default\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"This should never be reached.\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"case 'D'\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"case 'I'\0A\00", align 1
@__const.bar.c = private unnamed_addr constant <{ [402 x i8], [18 x i8] }> <{ [402 x i8] c"\02\04\01\02\05\05\02\04\04\00\00\00\00\00\00\03\04\04\02\04\01\02\05\05\02\04\01\00\00\00\02\04\04\03\04\03\03\05\01\03\05\05\02\04\04\02\04\01\03\05\03\03\05\01\03\05\01\02\04\04\02\04\02\03\05\01\03\05\01\03\05\05\02\04\01\02\04\02\03\05\03\03\05\01\03\05\05\02\04\01\02\04\01\03\05\03\03\05\01\03\05\05\02\04\04\02\04\01\03\05\03\03\05\01\03\05\01\02\04\01\02\04\02\03\05\01\03\05\01\03\05\01\02\04\01\02\04\01\03\05\01\03\05\01\03\05\01\02\04\04\02\04\01\03\05\01\03\05\01\03\05\05\02\04\04\02\04\02\03\05\03\03\05\01\03\05\05\02\04\04\02\04\01\03\05\03\03\05\01\03\05\01\02\05\05\02\04\02\03\05\01\03\04\01\03\05\01\02\05\05\02\04\01\02\05\01\03\05\03\03\05\01\02\05\05\02\04\02\02\05\01\03\05\03\03\05\01\02\05\01\02\04\01\02\05\02\03\05\01\03\05\01\02\05\01\02\04\02\02\05\01\03\05\01\03\05\01\02\05\05\02\04\02\02\05\02\03\05\03\03\05\01\02\05\05\02\04\02\02\05\02\03\05\03\03\05\01\02\05\05\02\04\02\02\05\01\03\05\03\03\05\01\02\05\05\02\04\02\02\05\01\03\05\03\03\05\01\02\05\01\02\04\01\02\05\02\03\05\01\03\05\01\02\05\05\02\04\02\02\05\02\03\05\03\03\05\01\02\05\05\02\04\01\02\05\01\03\05\03\03\05\01\02\05\05\02\04\02\02\05\01\03\05\03\03\05\01\02\05\05\02\04\02\02\05\01\03\05\03\03\05\01", [18 x i8] zeroinitializer }>, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %3) #3, !srcloc !4
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 84
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void @abort() #4
  unreachable

9:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i8 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  call void (i8*, ...) @baz(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef %5)
  %6 = load i8, i8* %3, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %8 [
    i32 68, label %18
    i32 73, label %19
  ]

8:                                                ; preds = %1
  call void (i8*, ...) @baz(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i8, i8* %3, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 68
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i8, i8* %3, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 73
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %8
  call void (i8*, ...) @baz(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %17

17:                                               ; preds = %16, %12
  store i32 0, i32* %2, align 4
  br label %20

18:                                               ; preds = %1
  call void (i8*, ...) @baz(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %20

19:                                               ; preds = %1
  call void (i8*, ...) @baz(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %18, %17
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [420 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store i32 2, i32* %1, align 4
  store i32 5, i32* %2, align 4
  %13 = bitcast [420 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 getelementptr inbounds (<{ [402 x i8], [18 x i8] }>, <{ [402 x i8], [18 x i8] }>* @__const.bar.c, i32 0, i32 0, i32 0), i64 420, i1 false)
  %14 = getelementptr inbounds [420 x i8], [420 x i8]* %3, i64 0, i64 0
  %15 = getelementptr inbounds i8, i8* %14, i64 390
  store i8* %15, i8** %4, align 8
  store i32 26, i32* %5, align 4
  store i32 25, i32* %6, align 4
  store i8 77, i8* %11, align 1
  store i8 77, i8* %10, align 1
  store i32 2, i32* %9, align 4
  br label %16

16:                                               ; preds = %91, %0
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %92

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %1, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %12, align 4
  br label %28

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %12, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = mul nsw i32 %33, 3
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  switch i32 %42, label %78 [
    i32 1, label %43
    i32 2, label %54
    i32 3, label %63
    i32 4, label %72
    i32 5, label %75
  ]

43:                                               ; preds = %28
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %6, align 4
  store i32 2, i32* %9, align 4
  %48 = load i32, i32* %2, align 4
  %49 = mul nsw i32 %48, 3
  %50 = load i8*, i8** %4, align 8
  %51 = sext i32 %49 to i64
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8* %53, i8** %4, align 8
  store i8 77, i8* %10, align 1
  br label %78

54:                                               ; preds = %28
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %57 = load i32, i32* %2, align 4
  %58 = mul nsw i32 %57, 3
  %59 = load i8*, i8** %4, align 8
  %60 = sext i32 %58 to i64
  %61 = sub i64 0, %60
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8* %62, i8** %4, align 8
  store i8 73, i8* %10, align 1
  br label %78

63:                                               ; preds = %28
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %5, align 4
  store i32 2, i32* %9, align 4
  %66 = load i32, i32* %2, align 4
  %67 = mul nsw i32 %66, 3
  %68 = load i8*, i8** %4, align 8
  %69 = sext i32 %67 to i64
  %70 = sub i64 0, %69
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8* %71, i8** %4, align 8
  store i8 73, i8* %10, align 1
  br label %78

72:                                               ; preds = %28
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %6, align 4
  store i32 1, i32* %9, align 4
  store i8 68, i8* %10, align 1
  br label %78

75:                                               ; preds = %28
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %6, align 4
  store i32 2, i32* %9, align 4
  store i8 68, i8* %10, align 1
  br label %78

78:                                               ; preds = %28, %75, %72, %63, %54, %43
  %79 = load i8, i8* %10, align 1
  %80 = sext i8 %79 to i32
  %81 = load i8, i8* %11, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %91

87:                                               ; preds = %78
  %88 = load i8, i8* %11, align 1
  %89 = call i32 @foo(i8 noundef signext %88)
  %90 = load i8, i8* %10, align 1
  store i8 %90, i8* %11, align 1
  br label %91

91:                                               ; preds = %87, %84
  br label %16, !llvm.loop !5

92:                                               ; preds = %16
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  store i8 68, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = call i32 @foo(i8 noundef signext %3)
  call void @bar()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 113}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
