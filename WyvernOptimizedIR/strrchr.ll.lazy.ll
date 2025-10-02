; ModuleID = './strrchr.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strrchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"hi world\00", align 1
@bar = dso_local global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), align 8
@x = dso_local global i32 7, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"hello\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  br i1 false, label %1, label %2

1:                                                ; preds = %0
  br label %UnifiedUnreachableBlock

2:                                                ; preds = %0
  br i1 false, label %3, label %4

3:                                                ; preds = %2
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %2
  br i1 false, label %5, label %6

5:                                                ; preds = %4
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  br i1 false, label %7, label %8

7:                                                ; preds = %6
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  br i1 false, label %9, label %10

9:                                                ; preds = %8
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  %11 = load i8*, i8** @bar, align 8
  %strlen = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %11)
  %strchr1 = getelementptr i8, i8* %11, i64 %strlen
  %12 = getelementptr inbounds i8, i8* %11, i64 8
  %.not = icmp eq i8* %strchr1, %12
  br i1 %.not, label %14, label %13

13:                                               ; preds = %10
  call void @abort() #4
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %10
  %15 = load i8*, i8** @bar, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 4
  %strlen2 = call i64 @strlen(i8* noundef nonnull %16)
  %strchr3 = getelementptr i8, i8* %16, i64 %strlen2
  %17 = getelementptr inbounds i8, i8* %15, i64 8
  %.not4 = icmp eq i8* %strchr3, %17
  br i1 %.not4, label %19, label %18

18:                                               ; preds = %14
  call void @abort() #4
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %14
  %20 = load i8*, i8** @bar, align 8
  %21 = load i32, i32* @x, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @x, align 4
  %23 = and i32 %21, 3
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  %strlen5 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %25)
  %strchr6 = getelementptr i8, i8* %25, i64 %strlen5
  %26 = load i8*, i8** @bar, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 8
  %.not7 = icmp eq i8* %strchr6, %27
  br i1 %.not7, label %29, label %28

28:                                               ; preds = %19
  call void @abort() #4
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %19
  %30 = load i32, i32* @x, align 4
  %.not8 = icmp eq i32 %30, 8
  br i1 %.not8, label %32, label %31

31:                                               ; preds = %29
  call void @abort() #4
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %29
  %33 = call i8* @rindex(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 noundef 122) #5
  %.not9 = icmp eq i8* %33, null
  br i1 %.not9, label %35, label %34

34:                                               ; preds = %32
  call void @abort() #4
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %32
  br i1 false, label %36, label %37

36:                                               ; preds = %35
  br label %UnifiedUnreachableBlock

37:                                               ; preds = %35
  %38 = call i8* @rindex(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef 111) #5
  %.not10 = icmp eq i8* %38, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 7)
  br i1 %.not10, label %40, label %39

39:                                               ; preds = %37
  call void @abort() #4
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %37
  ret void

UnifiedUnreachableBlock:                          ; preds = %39, %36, %34, %31, %28, %18, %13, %9, %7, %5, %3, %1
  unreachable
}

declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

declare dso_local i8* @rindex(i8* noundef, i32 noundef) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind readonly willreturn }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
