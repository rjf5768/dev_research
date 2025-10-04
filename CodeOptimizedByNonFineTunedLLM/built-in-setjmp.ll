; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/built-in-setjmp.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/built-in-setjmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = dso_local global [20 x i8*] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @sub2() #0 {
  call void @llvm.eh.sjlj.longjmp(i8* bitcast ([20 x i8*]* @buf to i8*))
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.eh.sjlj.longjmp(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = alloca i8, i64 20, align 16
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @strcpy(i8* noundef %6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %8, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @buf, i64 0, i64 0), align 16
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @buf, i64 0, i64 2), align 16
  %10 = call i32 @llvm.eh.sjlj.setjmp(i8* bitcast ([20 x i8*]* @buf to i8*))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %0
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @strcmp(i8* noundef %13, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  call void @abort() #7
  unreachable

17:                                               ; preds = %12
  call void @exit(i32 noundef 0) #7
  unreachable

18:                                               ; preds = %0
  %19 = load i8*, i8** %2, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i64
  %23 = mul i64 %22, 4
  %24 = alloca i8, i64 %23, align 16
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %38, %18
  %27 = load i32, i32* %4, align 4
  %28 = load i8*, i8** %2, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %26, !llvm.loop !4

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41, %42
  call void @sub2()
  br label %42
}

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #3

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #5

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #6

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone willreturn }
attributes #4 = { nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
