; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr64242.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr64242.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 0, align 4
@p = dso_local global i8* null, align 8
@q = dso_local global i8* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @broken_longjmp(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [32 x i8*], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 0
  %5 = bitcast i8** %4 to i8*
  %6 = load i8*, i8** %2, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 1 %6, i64 40, i1 false)
  %7 = load i8*, i8** %2, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 0, i64 40, i1 false)
  %8 = getelementptr inbounds [32 x i8*], [32 x i8*]* %3, i64 0, i64 0
  %9 = bitcast i8** %8 to i8*
  call void @llvm.eh.sjlj.longjmp(i8* %9)
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare void @llvm.eh.sjlj.longjmp(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i8*], align 16
  store i32 0, i32* %1, align 4
  %3 = load volatile i32, i32* @x, align 4
  %4 = sext i32 %3 to i64
  %5 = alloca i8, i64 %4, align 16
  store volatile i8* %5, i8** @p, align 8
  %6 = load volatile i32, i32* @x, align 4
  %7 = sext i32 %6 to i64
  %8 = alloca i8, i64 %7, align 16
  store volatile i8* %8, i8** @q, align 8
  %9 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 0
  %10 = call i8* @llvm.frameaddress.p0i8(i32 0)
  store i8* %10, i8** %9, align 16
  %11 = call i8* @llvm.stacksave()
  %12 = getelementptr inbounds i8*, i8** %9, i64 2
  store i8* %11, i8** %12, align 16
  %13 = bitcast i8** %9 to i8*
  %14 = call i32 @llvm.eh.sjlj.setjmp(i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %0
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 0
  %18 = bitcast i8** %17 to i8*
  call void @broken_longjmp(i8* noundef %18)
  br label %19

19:                                               ; preds = %16, %0
  %20 = load volatile i8*, i8** @q, align 8
  %21 = load volatile i8*, i8** @q, align 8
  %22 = load volatile i8*, i8** @p, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = getelementptr inbounds i8, i8* %20, i64 %25
  store volatile i8* %26, i8** @p, align 8
  %27 = load volatile i8*, i8** @p, align 8
  %28 = load volatile i32, i32* @x, align 4
  %29 = sext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  %31 = icmp ne i8* %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  call void @abort() #8
  unreachable

33:                                               ; preds = %19
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.frameaddress.p0i8(i32 immarg) #4

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #5

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(i8*) #6

; Function Attrs: noreturn
declare dso_local void @abort() #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn nounwind }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
