; ModuleID = './20010122-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010122-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@func1 = dso_local global [6 x i8* ()*] [i8* ()* @test1, i8* ()* @test2, i8* ()* @test3, i8* ()* @test4, i8* ()* @test5, i8* ()* @test6], align 16
@save_ret1 = dso_local global [6 x i8*] zeroinitializer, align 16
@ret_addr = internal global i8* null, align 8
@func2 = dso_local global [6 x void ()*] [void ()* @test7, void ()* @test8, void ()* @test9, void ()* @test10, void ()* @test11, void ()* @test12], align 16
@save_ret2 = dso_local global [6 x i8*] zeroinitializer, align 16

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i8* @test1() #0 {
  %1 = call i8* @llvm.returnaddress(i32 0)
  ret i8* %1
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i8* @test2() #0 {
  %1 = call i8* @llvm.returnaddress(i32 0)
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias nonnull i8* @dummy() #2 {
  %1 = alloca [4 x i8], align 16
  %.sub = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  ret i8* %.sub
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i8* @test3() #0 {
  %1 = call i8* @llvm.returnaddress(i32 0)
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i8* @test4() #0 {
  %1 = alloca [4 x i8], align 16
  %.sub = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %2 = call i8* @test4a(i8* noundef nonnull %.sub)
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i8* @test4a(i8* nocapture noundef readnone %0) #0 {
  %2 = call i8* @llvm.returnaddress(i32 1)
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i8* @test5() #0 {
  %1 = alloca [4 x i8], align 16
  %.sub = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %2 = call i8* @test5a(i8* noundef nonnull %.sub)
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i8* @test5a(i8* nocapture noundef readnone %0) #0 {
  %2 = call i8* @llvm.returnaddress(i32 1)
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i8* @test6() #0 {
  %1 = alloca [4 x i8], align 16
  %.sub = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %2 = call i8* @test6a(i8* noundef nonnull %.sub)
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i8* @test6a(i8* nocapture noundef readnone %0) #0 {
  %2 = call i8* @llvm.returnaddress(i32 1)
  ret i8* %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @call_func1(i32 noundef %0) #3 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [6 x i8* ()*], [6 x i8* ()*]* @func1, i64 0, i64 %2
  %4 = load i8* ()*, i8* ()** %3, align 8
  %5 = call i8* %4() #7
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 %6
  store i8* %5, i8** %7, align 8
  ret i8* undef
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define dso_local void @test7() #4 {
  %1 = call i8* @llvm.returnaddress(i32 0)
  store i8* %1, i8** @ret_addr, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define dso_local void @test8() #4 {
  %1 = call i8* @llvm.returnaddress(i32 0)
  store i8* %1, i8** @ret_addr, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define dso_local void @test9() #4 {
  %1 = call i8* @llvm.returnaddress(i32 0)
  store i8* %1, i8** @ret_addr, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define dso_local void @test10() #4 {
  %1 = alloca [4 x i8], align 16
  %.sub = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  call void @test10a(i8* noundef nonnull %.sub)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define dso_local void @test10a(i8* nocapture noundef readnone %0) #4 {
  %2 = call i8* @llvm.returnaddress(i32 1)
  store i8* %2, i8** @ret_addr, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define dso_local void @test11() #4 {
  %1 = alloca [4 x i8], align 16
  %.sub = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  call void @test11a(i8* noundef nonnull %.sub)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define dso_local void @test11a(i8* nocapture noundef readnone %0) #4 {
  %2 = call i8* @llvm.returnaddress(i32 1)
  store i8* %2, i8** @ret_addr, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define dso_local void @test12() #4 {
  %1 = alloca [4 x i8], align 16
  %.sub = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  call void @test12a(i8* noundef nonnull %.sub)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define dso_local void @test12a(i8* nocapture noundef readnone %0) #4 {
  %2 = call i8* @llvm.returnaddress(i32 1)
  store i8* %2, i8** @ret_addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @call_func2(i32 noundef %0) #3 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [6 x void ()*], [6 x void ()*]* @func2, i64 0, i64 %2
  %4 = load void ()*, void ()** %3, align 8
  call void %4() #7
  %5 = load i8*, i8** @ret_addr, align 8
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 %6
  store i8* %5, i8** %7, align 8
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #5 {
  br label %1

1:                                                ; preds = %5, %0
  %.0 = phi i32 [ 0, %0 ], [ %6, %5 ]
  %2 = icmp ult i32 %.0, 6
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = call i8* @call_func1(i32 noundef %.0)
  br label %5

5:                                                ; preds = %3
  %6 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

7:                                                ; preds = %1
  %8 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 0), align 16
  %9 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 1), align 8
  %.not = icmp eq i8* %8, %9
  br i1 %.not, label %10, label %13

10:                                               ; preds = %7
  %11 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 1), align 8
  %12 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 2), align 16
  %.not1 = icmp eq i8* %11, %12
  br i1 %.not1, label %14, label %13

13:                                               ; preds = %10, %7
  call void @abort() #8
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %10
  %15 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 3), align 8
  %16 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 4), align 16
  %.not2 = icmp eq i8* %15, %16
  br i1 %.not2, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 4), align 16
  %19 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 5), align 8
  %.not3 = icmp eq i8* %18, %19
  br i1 %.not3, label %21, label %20

20:                                               ; preds = %17, %14
  call void @abort() #8
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %17
  %22 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 3), align 8
  %.not4 = icmp eq i8* %22, null
  br i1 %.not4, label %27, label %23

23:                                               ; preds = %21
  %24 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 0), align 16
  %25 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret1, i64 0, i64 3), align 8
  %.not11 = icmp eq i8* %24, %25
  br i1 %.not11, label %27, label %26

26:                                               ; preds = %23
  call void @abort() #8
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %23, %21
  br label %28

28:                                               ; preds = %31, %27
  %.1 = phi i32 [ 0, %27 ], [ %32, %31 ]
  %29 = icmp ult i32 %.1, 6
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  call void @call_func2(i32 noundef %.1)
  br label %31

31:                                               ; preds = %30
  %32 = add nuw nsw i32 %.1, 1
  br label %28, !llvm.loop !6

33:                                               ; preds = %28
  %34 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 0), align 16
  %35 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 1), align 8
  %.not5 = icmp eq i8* %34, %35
  br i1 %.not5, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 1), align 8
  %38 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 2), align 16
  %.not6 = icmp eq i8* %37, %38
  br i1 %.not6, label %40, label %39

39:                                               ; preds = %36, %33
  call void @abort() #8
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %36
  %41 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 3), align 8
  %42 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 4), align 16
  %.not7 = icmp eq i8* %41, %42
  br i1 %.not7, label %43, label %46

43:                                               ; preds = %40
  %44 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 4), align 16
  %45 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 5), align 8
  %.not8 = icmp eq i8* %44, %45
  br i1 %.not8, label %47, label %46

46:                                               ; preds = %43, %40
  call void @abort() #8
  br label %UnifiedUnreachableBlock

47:                                               ; preds = %43
  %48 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 3), align 8
  %.not9 = icmp eq i8* %48, null
  br i1 %.not9, label %53, label %49

49:                                               ; preds = %47
  %50 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 0), align 16
  %51 = load i8*, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @save_ret2, i64 0, i64 3), align 8
  %.not10 = icmp eq i8* %50, %51
  br i1 %.not10, label %53, label %52

52:                                               ; preds = %49
  call void @abort() #8
  br label %UnifiedUnreachableBlock

53:                                               ; preds = %49, %47
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %53, %52, %46, %39, %26, %20, %13
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #6

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #6

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
