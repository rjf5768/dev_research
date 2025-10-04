; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strpcpy-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strpcpy-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf1 = dso_local global [64 x i64] zeroinitializer, align 16
@buf2 = dso_local global i8* getelementptr (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 256), align 8
@.str = private unnamed_addr constant [17 x i8] c"abcdefghijklmnop\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ABCDEFG\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ABCDEFG\00ijklmnop\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ABCDx\00G\00ijklmnop\00", align 1
@inside_main = external dso_local global i32, align 4
@buf5 = dso_local global [20 x i64] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [20 x i8] c"RSTUVWXYZ0123456789\00", align 1
@buf7 = dso_local global [20 x i8] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [10 x i8] c"rstuvwxyz\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i64* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 4, i32* %9, align 4
  %10 = load i64*, i64** %5, align 8
  %11 = bitcast i64* %10 to i8*
  %12 = call i8* @stpcpy(i8* noundef %11, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i8* %12, getelementptr inbounds (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 16)
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = call i32 @memcmp(i8* noundef bitcast ([64 x i64]* @buf1 to i8*), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 noundef 17)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %4
  call void @abort() #4
  unreachable

18:                                               ; preds = %14
  %19 = load i64*, i64** %5, align 8
  %20 = bitcast i64* %19 to i8*
  %21 = call i8* @stpcpy(i8* noundef %20, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #5
  %22 = icmp ne i8* %21, getelementptr inbounds (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 7)
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = call i32 @memcmp(i8* noundef bitcast ([64 x i64]* @buf1 to i8*), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 noundef 17)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %18
  call void @abort() #4
  unreachable

27:                                               ; preds = %23
  %28 = load i64*, i64** %5, align 8
  %29 = bitcast i64* %28 to i8*
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = call i8* @stpcpy(i8* noundef %33, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp ne i8* %34, getelementptr inbounds (i8, i8* bitcast ([64 x i64]* @buf1 to i8*), i64 5)
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = call i32 @memcmp(i8* noundef bitcast ([64 x i64]* @buf1 to i8*), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 noundef 17)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %27
  call void @abort() #4
  unreachable

40:                                               ; preds = %36
  ret void
}

declare dso_local i8* @stpcpy(i8* noundef, i8* noundef) #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  store i32 0, i32* @inside_main, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 bitcast ([20 x i64]* @buf5 to i8*), i8* align 1 getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 20, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @buf7, i64 0, i64 0), i8* align 1 getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 20, i1 false)
  %1 = load i8*, i8** @buf2, align 8
  call void @test(i64* noundef getelementptr inbounds ([64 x i64], [64 x i64]* @buf1, i64 0, i64 0), i8* noundef %1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 noundef 0)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
