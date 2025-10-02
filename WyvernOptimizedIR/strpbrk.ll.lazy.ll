; ModuleID = './strpbrk.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strpbrk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"lrooo\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"llo world\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"bye bye world\00", align 1
@__const.main_test.foo = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn(i8* noundef %0, i8** nocapture noundef readonly %1) #0 {
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
  %11 = getelementptr inbounds i8*, i8** %1, i64 -1
  %12 = load i8*, i8** %11, align 8
  %strchr = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %12, i32 104)
  %.not = icmp eq i8* %strchr, %0
  br i1 %.not, label %14, label %13

13:                                               ; preds = %10
  call void @abort() #5
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %10
  %strchr1 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 104)
  %.not2 = icmp eq i8* %strchr1, %0
  br i1 %.not2, label %16, label %15

15:                                               ; preds = %14
  call void @abort() #5
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  %strchr3 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 119)
  %17 = getelementptr inbounds i8, i8* %0, i64 6
  %.not4 = icmp eq i8* %strchr3, %17
  br i1 %.not4, label %19, label %18

18:                                               ; preds = %16
  call void @abort() #5
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %16
  %20 = getelementptr inbounds i8, i8* %0, i64 6
  %strchr5 = call i8* @strchr(i8* noundef nonnull %20, i32 111)
  %21 = getelementptr inbounds i8, i8* %0, i64 7
  %.not6 = icmp eq i8* %strchr5, %21
  br i1 %.not6, label %23, label %22

22:                                               ; preds = %19
  call void @abort() #5
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, i8* %0, i64 6
  %strchr7 = call i8* @strchr(i8* noundef nonnull %24, i32 111)
  %25 = getelementptr inbounds i8, i8* %0, i64 7
  %.not8 = icmp eq i8* %strchr7, %25
  br i1 %.not8, label %27, label %26

26:                                               ; preds = %23
  call void @abort() #5
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %23
  ret void

UnifiedUnreachableBlock:                          ; preds = %26, %22, %18, %15, %13, %9, %7, %5, %3
  unreachable
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

declare dso_local i8* @strpbrk(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca [2 x i8*], align 16
  %2 = bitcast [2 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %2, i8* noundef nonnull align 16 dereferenceable(16) bitcast ([2 x i8*]* @__const.main_test.foo to i8*), i64 16, i1 false)
  %3 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  %4 = load i8*, i8** %3, align 16
  %5 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 1
  call void @fn(i8* noundef %4, i8** noundef nonnull %5)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
