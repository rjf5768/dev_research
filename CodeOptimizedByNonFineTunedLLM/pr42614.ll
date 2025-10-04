; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr42614.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr42614.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.STable = type { [2 x %struct.SEntry] }
%struct.SEntry = type { i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.STable* @init() #0 {
  %1 = call i8* @malloc(i64 noundef 2)
  %2 = bitcast i8* %1 to %struct.STable*
  ret %struct.STable* %2
}

declare dso_local i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @expect_func(i32 noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @abs(i32 noundef %7) #4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @abort() #5
  unreachable

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @abs(i32 noundef %14) #4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  call void @abort() #5
  unreachable

18:                                               ; preds = %11
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @abs(i32 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca %struct.STable*, align 8
  %4 = alloca %struct.SEntry, align 1
  store i32 0, i32* %1, align 4
  store i8 0, i8* %2, align 1
  %5 = call %struct.STable* @init()
  store %struct.STable* %5, %struct.STable** %3, align 8
  %6 = load %struct.STable*, %struct.STable** %3, align 8
  %7 = getelementptr inbounds %struct.STable, %struct.STable* %6, i32 0, i32 0
  %8 = getelementptr inbounds [2 x %struct.SEntry], [2 x %struct.SEntry]* %7, i64 0, i64 1
  call void @inlined_wrong(%struct.SEntry* noundef %8, i32 noundef 1)
  call void @expect_func(i32 noundef 1, i8* noundef %2)
  call void @inlined_wrong(%struct.SEntry* noundef %4, i32 noundef 1)
  %9 = load %struct.STable*, %struct.STable** %3, align 8
  %10 = bitcast %struct.STable* %9 to i8*
  call void @free(i8* noundef %10)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @inlined_wrong(%struct.SEntry* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.SEntry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.SEntry* %0, %struct.SEntry** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.SEntry*, %struct.SEntry** %3, align 8
  %7 = getelementptr inbounds %struct.SEntry, %struct.SEntry* %6, i32 0, i32 0
  store i8 0, i8* %7, align 1
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @abort() #5
  unreachable

11:                                               ; preds = %2
  store i8 0, i8* %5, align 1
  br label %12

12:                                               ; preds = %21, %11
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load %struct.SEntry*, %struct.SEntry** %3, align 8
  %18 = getelementptr inbounds %struct.SEntry, %struct.SEntry* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 1
  %20 = add i8 %19, 1
  store i8 %20, i8* %18, align 1
  br label %21

21:                                               ; preds = %16
  %22 = load i8, i8* %5, align 1
  %23 = add i8 %22, 1
  store i8 %23, i8* %5, align 1
  br label %12, !llvm.loop !4

24:                                               ; preds = %12
  %25 = load %struct.SEntry*, %struct.SEntry** %3, align 8
  %26 = getelementptr inbounds %struct.SEntry, %struct.SEntry* %25, i32 0, i32 0
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  call void @abort() #5
  unreachable

30:                                               ; preds = %24
  ret void
}

declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
