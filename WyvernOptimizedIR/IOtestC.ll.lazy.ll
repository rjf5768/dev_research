; ModuleID = './IOtestC.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/12-IOtest/IOtestC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.global_result = type { i8, i8, i8, i8 }

@.str = private unnamed_addr constant [33 x i8] c"C %d min %d max %d add %d mult \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testC() #0 {
  %1 = alloca %struct.global_result, align 1
  call void @initarray() #2
  %2 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i64 0, i32 0
  call void @loop(void (i8*)* noundef nonnull @initminB, void (i8*)* noundef nonnull @stepminB, i8* noundef nonnull %2) #2
  %3 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i64 0, i32 1
  call void @loop(void (i8*)* noundef nonnull @initmaxB, void (i8*)* noundef nonnull @stepmaxB, i8* noundef nonnull %3) #2
  %4 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i64 0, i32 2
  call void @loop(void (i8*)* noundef nonnull @initaddB, void (i8*)* noundef nonnull @stepaddB, i8* noundef nonnull %4) #2
  %5 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i64 0, i32 3
  call void @loop(void (i8*)* noundef nonnull @initmultB, void (i8*)* noundef nonnull @stepmultB, i8* noundef nonnull %5) #2
  %6 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i64 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i64 0, i32 1
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i64 0, i32 2
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i64 0, i32 3
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 noundef %8, i32 noundef %11, i32 noundef %14, i32 noundef %17) #2
  ret void
}

declare dso_local void @initarray() #1

declare dso_local void @loop(void (i8*)* noundef, void (i8*)* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @initminB(i8* nocapture noundef writeonly %0) #0 {
  call void @setac(i64 noundef 0) #2
  store i8 -1, i8* %0, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @stepminB(i8* nocapture noundef %0) #0 {
  %2 = call i64 @getac() #2
  %3 = call signext i8 @array(i64 noundef %2) #2
  %4 = load i8, i8* %0, align 1
  %5 = call signext i8 @min(i8 noundef signext %4, i8 noundef signext %3) #2
  store i8 %5, i8* %0, align 1
  %6 = call i64 @getac() #2
  %7 = add i64 %6, 4097
  call void @setac(i64 noundef %7) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @initmaxB(i8* nocapture noundef writeonly %0) #0 {
  call void @setac(i64 noundef 0) #2
  store i8 0, i8* %0, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @stepmaxB(i8* nocapture noundef %0) #0 {
  %2 = call i64 @getac() #2
  %3 = call signext i8 @array(i64 noundef %2) #2
  %4 = load i8, i8* %0, align 1
  %5 = call signext i8 @max(i8 noundef signext %4, i8 noundef signext %3) #2
  store i8 %5, i8* %0, align 1
  %6 = call i64 @getac() #2
  %7 = add i64 %6, 4097
  call void @setac(i64 noundef %7) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @initaddB(i8* nocapture noundef writeonly %0) #0 {
  call void @setac(i64 noundef 0) #2
  store i8 0, i8* %0, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @stepaddB(i8* nocapture noundef %0) #0 {
  %2 = call i64 @getac() #2
  %3 = call signext i8 @array(i64 noundef %2) #2
  %4 = load i8, i8* %0, align 1
  %5 = call signext i8 @add(i8 noundef signext %4, i8 noundef signext %3) #2
  store i8 %5, i8* %0, align 1
  %6 = call i64 @getac() #2
  %7 = add i64 %6, 4097
  call void @setac(i64 noundef %7) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @initmultB(i8* nocapture noundef writeonly %0) #0 {
  call void @setac(i64 noundef 0) #2
  store i8 1, i8* %0, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @stepmultB(i8* nocapture noundef %0) #0 {
  %2 = call i64 @getac() #2
  %3 = call signext i8 @array(i64 noundef %2) #2
  %4 = load i8, i8* %0, align 1
  %5 = call signext i8 @mult(i8 noundef signext %4, i8 noundef signext %3) #2
  store i8 %5, i8* %0, align 1
  %6 = call i64 @getac() #2
  %7 = add i64 %6, 4097
  call void @setac(i64 noundef %7) #2
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
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
