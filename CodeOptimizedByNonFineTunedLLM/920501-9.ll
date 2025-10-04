; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920501-9.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920501-9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%lx%08.lx\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"12345678\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"aabbccdd12345678\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"ffffffffffffffff\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"aabbccdd\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @proc1() #0 {
  ret i64 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @proc2() #0 {
  ret i64 305419896
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @proc3() #0 {
  ret i64 -6144092016751651208
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @proc4() #0 {
  ret i64 -1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @proc5() #0 {
  ret i64 2864434397
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @print_longlong(i64 noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = ashr i64 %7, 32
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %4, align 8
  %16 = and i64 %15, 4294967295
  %17 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %13, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 noundef %14, i64 noundef %16) #4
  br label %23

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = and i64 %20, 4294967295
  %22 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %19, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 noundef %21) #4
  br label %23

23:                                               ; preds = %18, %12
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [100 x i8], align 16
  store i32 0, i32* %1, align 4
  %3 = call i64 @proc1()
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %5 = call i32 @print_longlong(i64 noundef %3, i8* noundef %4)
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %7 = call i32 @strcmp(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @abort() #5
  unreachable

10:                                               ; preds = %0
  %11 = call i64 @proc2()
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %13 = call i32 @print_longlong(i64 noundef %11, i8* noundef %12)
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %15 = call i32 @strcmp(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  call void @abort() #5
  unreachable

18:                                               ; preds = %10
  %19 = call i64 @proc3()
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %21 = call i32 @print_longlong(i64 noundef %19, i8* noundef %20)
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %23 = call i32 @strcmp(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* noundef %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  call void @abort() #5
  unreachable

26:                                               ; preds = %18
  %27 = call i64 @proc4()
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %29 = call i32 @print_longlong(i64 noundef %27, i8* noundef %28)
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %31 = call i32 @strcmp(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  call void @abort() #5
  unreachable

34:                                               ; preds = %26
  %35 = call i64 @proc5()
  %36 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %37 = call i32 @print_longlong(i64 noundef %35, i8* noundef %36)
  %38 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %39 = call i32 @strcmp(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* noundef %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  call void @abort() #5
  unreachable

42:                                               ; preds = %34
  call void @exit(i32 noundef 0) #5
  unreachable
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
