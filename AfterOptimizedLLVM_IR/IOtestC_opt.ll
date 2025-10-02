; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/12-IOtest/IOtestC.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/12-IOtest/IOtestC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.global_result = type { i8, i8, i8, i8 }

@.str = private unnamed_addr constant [33 x i8] c"C %d min %d max %d add %d mult \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testC() #0 {
  %1 = alloca %struct.global_result, align 1
  call void @initarray()
  %2 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 0
  call void @loop(void (i8*)* noundef @initminB, void (i8*)* noundef @stepminB, i8* noundef %2)
  %3 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 1
  call void @loop(void (i8*)* noundef @initmaxB, void (i8*)* noundef @stepmaxB, i8* noundef %3)
  %4 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 2
  call void @loop(void (i8*)* noundef @initaddB, void (i8*)* noundef @stepaddB, i8* noundef %4)
  %5 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 3
  call void @loop(void (i8*)* noundef @initmultB, void (i8*)* noundef @stepmultB, i8* noundef %5)
  %6 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 1
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 2
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 3
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef %8, i32 noundef %11, i32 noundef %14, i32 noundef %17)
  ret void
}

declare dso_local void @initarray() #1

declare dso_local void @loop(void (i8*)* noundef, void (i8*)* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @initminB(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @setac(i64 noundef 0)
  %3 = load i8*, i8** %2, align 8
  store i8 -1, i8* %3, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @stepminB(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i64 @getac()
  %6 = call signext i8 @array(i64 noundef %5)
  store i8 %6, i8* %3, align 1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = load i8, i8* %3, align 1
  %10 = call signext i8 @min(i8 noundef signext %8, i8 noundef signext %9)
  %11 = load i8*, i8** %2, align 8
  store i8 %10, i8* %11, align 1
  %12 = call i64 @getac()
  %13 = add i64 %12, 4097
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  call void @setac(i64 noundef %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @initmaxB(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @setac(i64 noundef 0)
  %3 = load i8*, i8** %2, align 8
  store i8 0, i8* %3, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @stepmaxB(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i64 @getac()
  %6 = call signext i8 @array(i64 noundef %5)
  store i8 %6, i8* %3, align 1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = load i8, i8* %3, align 1
  %10 = call signext i8 @max(i8 noundef signext %8, i8 noundef signext %9)
  %11 = load i8*, i8** %2, align 8
  store i8 %10, i8* %11, align 1
  %12 = call i64 @getac()
  %13 = add i64 %12, 4097
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  call void @setac(i64 noundef %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @initaddB(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @setac(i64 noundef 0)
  %3 = load i8*, i8** %2, align 8
  store i8 0, i8* %3, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @stepaddB(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i64 @getac()
  %6 = call signext i8 @array(i64 noundef %5)
  store i8 %6, i8* %3, align 1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = load i8, i8* %3, align 1
  %10 = call signext i8 @add(i8 noundef signext %8, i8 noundef signext %9)
  %11 = load i8*, i8** %2, align 8
  store i8 %10, i8* %11, align 1
  %12 = call i64 @getac()
  %13 = add i64 %12, 4097
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  call void @setac(i64 noundef %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @initmultB(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @setac(i64 noundef 0)
  %3 = load i8*, i8** %2, align 8
  store i8 1, i8* %3, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @stepmultB(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i64 @getac()
  %6 = call signext i8 @array(i64 noundef %5)
  store i8 %6, i8* %3, align 1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = load i8, i8* %3, align 1
  %10 = call signext i8 @mult(i8 noundef signext %8, i8 noundef signext %9)
  %11 = load i8*, i8** %2, align 8
  store i8 %10, i8* %11, align 1
  %12 = call i64 @getac()
  %13 = add i64 %12, 4097
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  call void @setac(i64 noundef %14)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local void @setac(i64 noundef) #1

declare dso_local signext i8 @array(i64 noundef) #1

declare dso_local i64 @getac() #1

declare dso_local signext i8 @min(i8 noundef signext, i8 noundef signext) #1

declare dso_local signext i8 @max(i8 noundef signext, i8 noundef signext) #1

declare dso_local signext i8 @add(i8 noundef signext, i8 noundef signext) #1

declare dso_local signext i8 @mult(i8 noundef signext, i8 noundef signext) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
