; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010122-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010122-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@func1 = dso_local global [6 x i8* ()*] [i8* ()* @test1, i8* ()* @test2, i8* ()* @test3, i8* ()* @test4, i8* ()* @test5, i8* ()* @test6], align 16
@save_ret1 = dso_local global [6 x i8*] zeroinitializer, align 16
@ret_addr = internal global i8* null, align 8
@func2 = dso_local global [6 x void ()*] [void ()* @test7, void ()* @test8, void ()* @test9, void ()* @test10, void ()* @test11, void ()* @test12], align 16
@save_ret2 = dso_local global [6 x i8*] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @test1() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @llvm.returnaddress(i32 0)
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  ret i8* %3
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @test2() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @dummy()
  %3 = call i8* @llvm.returnaddress(i32 0)
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @dummy() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8, i64 4, align 16
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @test3() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @llvm.returnaddress(i32 0)
  store i8* %2, i8** %1, align 8
  %3 = call i8* @dummy()
  %4 = load i8*, i8** %1, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @test4() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8, i64 4, align 16
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i8* @test4a(i8* noundef %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @test4a(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i8* @llvm.returnaddress(i32 1)
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @test5() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8, i64 4, align 16
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i8* @test5a(i8* noundef %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @test5a(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i8* @dummy()
  %5 = call i8* @llvm.returnaddress(i32 1)
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  ret i8* %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @test6() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8, i64 4, align 16
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i8* @test6a(i8* noundef %3)
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @test6a(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i8* @llvm.returnaddress(i32 1)
  store i8* %4, i8** %3, align 8
  %5 = call i8* @dummy()
  %6 = load i8*, i8** %3, align 8
  ret i8* %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @call_func1(i32 noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [6 x i8* ()*], [6 x i8* ()*]* @func1, i64 0, i64 %5
  %7 = load i8* ()*, i8* ()** %6, align 8
  %8 = call i8* %7()
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 %10
  store i8* %8, i8** %11, align 8
  %12 = load i8*, i8** %2, align 8
  ret i8* %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test7() #0 {
  %1 = call i8* @llvm.returnaddress(i32 0)
  store i8* %1, i8** @ret_addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test8() #0 {
  %1 = call i8* @dummy()
  %2 = call i8* @llvm.returnaddress(i32 0)
  store i8* %2, i8** @ret_addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test9() #0 {
  %1 = call i8* @llvm.returnaddress(i32 0)
  store i8* %1, i8** @ret_addr, align 8
  %2 = call i8* @dummy()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test10() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8, i64 4, align 16
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  call void @test10a(i8* noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test10a(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i8* @llvm.returnaddress(i32 1)
  store i8* %3, i8** @ret_addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test11() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8, i64 4, align 16
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  call void @test11a(i8* noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test11a(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i8* @dummy()
  %4 = call i8* @llvm.returnaddress(i32 1)
  store i8* %4, i8** @ret_addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test12() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8, i64 4, align 16
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  call void @test12a(i8* noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test12a(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i8* @llvm.returnaddress(i32 1)
  store i8* %3, i8** @ret_addr, align 8
  %4 = call i8* @dummy()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @call_func2(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [6 x void ()*], [6 x void ()*]* @func2, i64 0, i64 %4
  %6 = load void ()*, void ()** %5, align 8
  call void %6()
  %7 = load i8*, i8** @ret_addr, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 %9
  store i8* %7, i8** %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %9, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 6
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = call i8* @call_func1(i32 noundef %7)
  br label %9

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %2, align 4
  br label %3, !llvm.loop !4

12:                                               ; preds = %3
  %13 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 0), align 16
  %14 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 1), align 8
  %15 = icmp ne i8* %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 1), align 8
  %18 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 2), align 16
  %19 = icmp ne i8* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %12
  call void @abort() #3
  unreachable

21:                                               ; preds = %16
  %22 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 3), align 8
  %23 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 4), align 16
  %24 = icmp ne i8* %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 4), align 16
  %27 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 5), align 8
  %28 = icmp ne i8* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  call void @abort() #3
  unreachable

30:                                               ; preds = %25
  %31 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 3), align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 0), align 16
  %35 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 3), align 8
  %36 = icmp ne i8* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  call void @abort() #3
  unreachable

38:                                               ; preds = %33, %30
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %44, %38
  %40 = load i32, i32* %2, align 4
  %41 = icmp slt i32 %40, 6
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* %2, align 4
  call void @call_func2(i32 noundef %43)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %39, !llvm.loop !6

47:                                               ; preds = %39
  %48 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 0), align 16
  %49 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 1), align 8
  %50 = icmp ne i8* %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 1), align 8
  %53 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 2), align 16
  %54 = icmp ne i8* %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %47
  call void @abort() #3
  unreachable

56:                                               ; preds = %51
  %57 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 3), align 8
  %58 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 4), align 16
  %59 = icmp ne i8* %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 4), align 16
  %62 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 5), align 8
  %63 = icmp ne i8* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %56
  call void @abort() #3
  unreachable

65:                                               ; preds = %60
  %66 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 3), align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 0), align 16
  %70 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 3), align 8
  %71 = icmp ne i8* %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  call void @abort() #3
  unreachable

73:                                               ; preds = %68, %65
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
