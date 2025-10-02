; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/12-IOtest/IOtestA.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/12-IOtest/IOtestA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.global_result = type { i8, i8, i8, i8 }

@.str = private unnamed_addr constant [33 x i8] c"A %d min %d max %d add %d mult \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @initA(%struct.global_result* noundef %0) #0 {
  %2 = alloca %struct.global_result*, align 8
  store %struct.global_result* %0, %struct.global_result** %2, align 8
  call void @setac(i64 noundef 0)
  %3 = load %struct.global_result*, %struct.global_result** %2, align 8
  %4 = getelementptr inbounds %struct.global_result, %struct.global_result* %3, i32 0, i32 0
  store i8 -1, i8* %4, align 1
  %5 = load %struct.global_result*, %struct.global_result** %2, align 8
  %6 = getelementptr inbounds %struct.global_result, %struct.global_result* %5, i32 0, i32 1
  store i8 0, i8* %6, align 1
  %7 = load %struct.global_result*, %struct.global_result** %2, align 8
  %8 = getelementptr inbounds %struct.global_result, %struct.global_result* %7, i32 0, i32 2
  store i8 0, i8* %8, align 1
  %9 = load %struct.global_result*, %struct.global_result** %2, align 8
  %10 = getelementptr inbounds %struct.global_result, %struct.global_result* %9, i32 0, i32 3
  store i8 1, i8* %10, align 1
  ret void
}

declare dso_local void @setac(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @stepA(%struct.global_result* noundef %0) #0 {
  %2 = alloca %struct.global_result*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store %struct.global_result* %0, %struct.global_result** %2, align 8
  %5 = call i64 @getac()
  %6 = call signext i8 @array(i64 noundef %5)
  store i8 %6, i8* %3, align 1
  %7 = load %struct.global_result*, %struct.global_result** %2, align 8
  %8 = getelementptr inbounds %struct.global_result, %struct.global_result* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 1
  %10 = load i8, i8* %3, align 1
  %11 = call signext i8 @min(i8 noundef signext %9, i8 noundef signext %10)
  %12 = load %struct.global_result*, %struct.global_result** %2, align 8
  %13 = getelementptr inbounds %struct.global_result, %struct.global_result* %12, i32 0, i32 0
  store i8 %11, i8* %13, align 1
  %14 = load %struct.global_result*, %struct.global_result** %2, align 8
  %15 = getelementptr inbounds %struct.global_result, %struct.global_result* %14, i32 0, i32 1
  %16 = load i8, i8* %15, align 1
  %17 = load i8, i8* %3, align 1
  %18 = call signext i8 @max(i8 noundef signext %16, i8 noundef signext %17)
  %19 = load %struct.global_result*, %struct.global_result** %2, align 8
  %20 = getelementptr inbounds %struct.global_result, %struct.global_result* %19, i32 0, i32 1
  store i8 %18, i8* %20, align 1
  %21 = load %struct.global_result*, %struct.global_result** %2, align 8
  %22 = getelementptr inbounds %struct.global_result, %struct.global_result* %21, i32 0, i32 2
  %23 = load i8, i8* %22, align 1
  %24 = load i8, i8* %3, align 1
  %25 = call signext i8 @add(i8 noundef signext %23, i8 noundef signext %24)
  %26 = load %struct.global_result*, %struct.global_result** %2, align 8
  %27 = getelementptr inbounds %struct.global_result, %struct.global_result* %26, i32 0, i32 2
  store i8 %25, i8* %27, align 1
  %28 = load %struct.global_result*, %struct.global_result** %2, align 8
  %29 = getelementptr inbounds %struct.global_result, %struct.global_result* %28, i32 0, i32 3
  %30 = load i8, i8* %29, align 1
  %31 = load i8, i8* %3, align 1
  %32 = call signext i8 @mult(i8 noundef signext %30, i8 noundef signext %31)
  %33 = load %struct.global_result*, %struct.global_result** %2, align 8
  %34 = getelementptr inbounds %struct.global_result, %struct.global_result* %33, i32 0, i32 3
  store i8 %32, i8* %34, align 1
  %35 = call i64 @getac()
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  call void @setac(i64 noundef %38)
  ret void
}

declare dso_local signext i8 @array(i64 noundef) #1

declare dso_local i64 @getac() #1

declare dso_local signext i8 @min(i8 noundef signext, i8 noundef signext) #1

declare dso_local signext i8 @max(i8 noundef signext, i8 noundef signext) #1

declare dso_local signext i8 @add(i8 noundef signext, i8 noundef signext) #1

declare dso_local signext i8 @mult(i8 noundef signext, i8 noundef signext) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testA() #0 {
  %1 = alloca %struct.global_result, align 1
  call void @initarray()
  %2 = bitcast %struct.global_result* %1 to i8*
  call void @loop(void (i8*)* noundef bitcast (void (%struct.global_result*)* @initA to void (i8*)*), void (i8*)* noundef bitcast (void (%struct.global_result*)* @stepA to void (i8*)*), i8* noundef %2)
  %3 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 0
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 2
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 3
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef %5, i32 noundef %8, i32 noundef %11, i32 noundef %14)
  ret void
}

declare dso_local void @initarray() #1

declare dso_local void @loop(void (i8*)* noundef, void (i8*)* noundef, i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
