; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr41239.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr41239.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i16, [2 x i64] }

@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@__func__.test = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@__const.main.s = private unnamed_addr constant %struct.S { i16 2, [2 x i64] [i64 5, i64 0] }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @test(%struct.S* noundef %0) #0 {
  %2 = alloca %struct.S*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.S* %0, %struct.S** %2, align 8
  %5 = load %struct.S*, %struct.S** %2, align 8
  %6 = getelementptr inbounds %struct.S, %struct.S* %5, i32 0, i32 1
  %7 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load %struct.S*, %struct.S** %2, align 8
  %11 = getelementptr inbounds %struct.S, %struct.S* %10, i32 0, i32 1
  %12 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = call signext i8 @fn1(i32 noundef 20, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef 924, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.test, i64 0, i64 0), i8* noundef null)
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = call i32 @fn3(i32 noundef 33816706)
  %22 = call i32 (i8*, ...) @fn4(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  call void (i32, ...) @fn2(i32 noundef %21, i32 noundef %22)
  br label %24

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %20
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %4, align 8
  %29 = sdiv i64 %27, %28
  ret i64 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @fn1(i32 noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = load i8*, i8** %10, align 8
  call void asm sideeffect "", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %11, i8* %12) #3, !srcloc !4
  %13 = load i32, i32* %6, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 asm sideeffect "", "=r,r,r,0,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %14, i32 %15, i32 %13) #3, !srcloc !5
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = trunc i32 %17 to i8
  ret i8 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn2(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 asm sideeffect "", "=r,0,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %3) #3, !srcloc !6
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void @exit(i32 noundef 0) #4
  unreachable

8:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn3(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 asm sideeffect "", "=r,0,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %3) #3, !srcloc !7
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn4(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* asm sideeffect "", "=r,0,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %3) #3, !srcloc !8
  store i8* %4, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 8
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct.S* @__const.main.s to i8*), i64 24, i1 false)
  %4 = call i64 @test(%struct.S* noundef %2)
  call void @abort() #4
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 805}
!5 = !{i64 858}
!6 = !{i64 1207}
!7 = !{i64 979}
!8 = !{i64 1096}
