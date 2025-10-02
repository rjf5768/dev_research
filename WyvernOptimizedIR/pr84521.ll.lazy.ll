; ModuleID = './pr84521.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr84521.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 256, align 4
@p = dso_local global i8* bitcast (i32* @x to i8*), align 8
@p1 = dso_local global i8* null, align 8

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @broken_longjmp(i8* noundef %0) #0 {
  call void @llvm.eh.sjlj.longjmp(i8* %0)
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.eh.sjlj.longjmp(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test() #2 {
  %1 = alloca [5 x i8*], align 16
  %2 = alloca i8*, align 8
  %3 = load volatile i8*, i8** @p, align 8
  store volatile i8* %3, i8** %2, align 8
  %4 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 0
  %5 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %5, i8** %4, align 16
  %6 = call i8* @llvm.stacksave()
  %7 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 2
  store i8* %6, i8** %7, align 16
  %8 = bitcast [5 x i8*]* %1 to i8*
  %9 = call i32 @llvm.eh.sjlj.setjmp(i8* nonnull %8)
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %10, label %12

10:                                               ; preds = %0
  %11 = bitcast [5 x i8*]* %1 to i8*
  call void @broken_longjmp(i8* noundef nonnull %11)
  br label %12

12:                                               ; preds = %10, %0
  %13 = load volatile i8*, i8** @p, align 8
  %14 = load volatile i8*, i8** %2, align 8
  %.not1 = icmp eq i8* %13, %14
  br i1 %.not1, label %16, label %15

15:                                               ; preds = %12
  call void @abort() #1
  unreachable

16:                                               ; preds = %12
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #5

; Function Attrs: noreturn
declare dso_local void @abort() #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #2 {
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
  %.not = icmp eq i8* %6, %7
  br i1 %.not, label %9, label %8

8:                                                ; preds = %0
  call void @abort() #1
  unreachable

9:                                                ; preds = %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca i8*, align 8
  %2 = load volatile i8*, i8** @p, align 8
  store volatile i8* %2, i8** %1, align 8
  call void @test()
  call void @test2()
  %3 = load volatile i8*, i8** @p, align 8
  %4 = load volatile i8*, i8** %1, align 8
  %.not = icmp eq i8* %3, %4
  br i1 %.not, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #1
  unreachable

6:                                                ; preds = %0
  ret i32 0
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #4 = { mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
