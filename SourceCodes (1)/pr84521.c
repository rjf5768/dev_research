; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr84521.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr84521.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 256, align 4
@p = dso_local global i8* bitcast (i32* @x to i8*), align 8
@p1 = dso_local global i8* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @broken_longjmp(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = bitcast i8* %3 to i8**
  %5 = bitcast i8** %4 to i8*
  call void @llvm.eh.sjlj.longjmp(i8* %5)
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.eh.sjlj.longjmp(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test() #0 {
  %1 = alloca [5 x i8*], align 16
  %2 = alloca i8*, align 8
  %3 = load volatile i8*, i8** @p, align 8
  store volatile i8* %3, i8** %2, align 8
  %4 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 0
  %5 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %5, i8** %4, align 16
  %6 = call i8* @llvm.stacksave()
  %7 = getelementptr inbounds i8*, i8** %4, i64 2
  store i8* %6, i8** %7, align 16
  %8 = bitcast i8** %4 to i8*
  %9 = call i32 @llvm.eh.sjlj.setjmp(i8* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 0
  %13 = bitcast i8** %12 to i8*
  call void @broken_longjmp(i8* noundef %13)
  br label %14

14:                                               ; preds = %11, %0
  %15 = load volatile i8*, i8** @p, align 8
  %16 = load volatile i8*, i8** %2, align 8
  %17 = icmp ne i8* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void @abort() #6
  unreachable

19:                                               ; preds = %14
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #2

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #4

; Function Attrs: noreturn
declare dso_local void @abort() #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  %1 = alloca i8*, align 8
  %2 = load volatile i8*, i8** @p, align 8
  store volatile i8* %2, i8** %1, align 8
  %3 = load volatile i32, i32* @x, align 4
  %4 = sext i32 %3 to i64
  %5 = alloca i8, i64 %4, align 16
  store volatile i8* %5, i8** @p1, align 8
  call void @test()
  %6 = load volatile i8*, i8** @p, align 8
  %7 = load volatile i8*, i8** %1, align 8
  %8 = icmp ne i8* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @abort() #6
  unreachable

10:                                               ; preds = %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %3 = load volatile i8*, i8** @p, align 8
  store volatile i8* %3, i8** %2, align 8
  call void @test()
  call void @test2()
  %4 = load volatile i8*, i8** @p, align 8
  %5 = load volatile i8*, i8** %2, align 8
  %6 = icmp ne i8* %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #6
  unreachable

8:                                                ; preds = %0
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
