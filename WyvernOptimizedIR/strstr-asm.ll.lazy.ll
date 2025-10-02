; ModuleID = './strstr-asm.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strstr-asm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"rld\00", align 1
@p = dso_local global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@q = dso_local global i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"world\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = call i8* @my_strstr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #4
  %.not = icmp eq i8* %1, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = call i8* @my_strstr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 4), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #4
  %.not1 = icmp eq i8* %4, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 4)
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #5
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  %7 = call i8* @my_strstr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #4
  %.not2 = icmp eq i8* %7, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)
  br i1 %.not2, label %9, label %8

8:                                                ; preds = %6
  call void @abort() #5
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  %10 = call i8* @my_strstr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #4
  %.not3 = icmp eq i8* %10, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 6)
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %9
  call void @abort() #5
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  %13 = call i8* @my_strstr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 6), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #4
  %.not4 = icmp eq i8* %13, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 7)
  br i1 %.not4, label %15, label %14

14:                                               ; preds = %12
  call void @abort() #5
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %12
  %16 = call i8* @my_strstr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 1), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #4
  %.not5 = icmp eq i8* %16, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 6)
  br i1 %.not5, label %18, label %17

17:                                               ; preds = %15
  call void @abort() #5
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %15
  %19 = load i8*, i8** @p, align 8
  %20 = call i8* @my_strstr(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 2), i8* noundef %19) #4
  %.not6 = icmp eq i8* %20, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 8)
  br i1 %.not6, label %22, label %21

21:                                               ; preds = %18
  call void @abort() #5
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %18
  %23 = load i8*, i8** @q, align 8
  %24 = call i8* @my_strstr(i8* noundef %23, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #4
  %25 = load i8*, i8** @q, align 8
  %.not7 = icmp eq i8* %24, %25
  br i1 %.not7, label %27, label %26

26:                                               ; preds = %22
  call void @abort() #5
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %22
  %28 = load i8*, i8** @q, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = call i8* @my_strstr(i8* noundef nonnull %29, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #4
  %31 = load i8*, i8** @q, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  %.not8 = icmp eq i8* %30, %32
  br i1 %.not8, label %34, label %33

33:                                               ; preds = %27
  call void @abort() #5
  br label %UnifiedUnreachableBlock

34:                                               ; preds = %27
  br i1 false, label %35, label %36

35:                                               ; preds = %34
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %34
  ret void

UnifiedUnreachableBlock:                          ; preds = %35, %33, %26, %21, %17, %14, %11, %8, %5, %2
  unreachable
}

declare dso_local i8* @my_strstr(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: nounwind
declare dso_local i8* @strstr(i8* noundef, i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
