; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20031204-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20031204-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.addr = internal global [19 x i8] c"10.11.12.13:/hello\00", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @in_aton(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  ret i64 168496141
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @root_nfs_parse_addr(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %6, align 8
  store i8* %7, i8** %5, align 8
  br label %8

8:                                                ; preds = %56, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %58

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %24, %11
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp sge i32 %15, 48
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sle i32 %20, 57
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ false, %12 ], [ %21, %17 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  br label %12, !llvm.loop !4

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = icmp sgt i64 %36, 3
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %27
  br label %58

39:                                               ; preds = %31
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 46
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %5, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i8*, i8** %5, align 8
  store i8* %57, i8** %6, align 8
  br label %8, !llvm.loop !6

58:                                               ; preds = %38, %8
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %61, label %85

61:                                               ; preds = %58
  %62 = load i8*, i8** %5, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 58
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load i8*, i8** %5, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66, %61
  %72 = load i8*, i8** %5, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 58
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %5, align 8
  store i8 0, i8* %77, align 1
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i8*, i8** %2, align 8
  %81 = call i64 @in_aton(i8* noundef %80)
  store i64 %81, i64* %3, align 8
  %82 = load i8*, i8** %2, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = call i8* @strcpy(i8* noundef %82, i8* noundef %83) #3
  br label %86

85:                                               ; preds = %66, %58
  store i64 -1, i64* %3, align 8
  br label %86

86:                                               ; preds = %85, %79
  %87 = load i64, i64* %3, align 8
  ret i64 %87
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %3 = call i64 @root_nfs_parse_addr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @main.addr, i64 0, i64 0))
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp ne i64 %4, 168496141
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #4
  unreachable

7:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
