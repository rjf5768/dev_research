; ModuleID = './20141022-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20141022-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"assert.\0A\00", align 1
@str = private unnamed_addr constant [8 x i8] c"assert.\00", align 1
@str.1 = private unnamed_addr constant [8 x i8] c"assert.\00", align 1
@str.2 = private unnamed_addr constant [8 x i8] c"assert.\00", align 1
@str.3 = private unnamed_addr constant [8 x i8] c"assert.\00", align 1
@str.4 = private unnamed_addr constant [8 x i8] c"assert.\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f(i32 noundef %0) #0 {
  %2 = and i32 %0, -5
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %6, label %3

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 6
  %5 = select i1 %4, i32 0, i32 15
  br label %7

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %6, %3
  %8 = phi i32 [ %5, %3 ], [ 0, %6 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @f(i32 noundef 0)
  %.not = icmp eq i32 %1, 15
  br i1 %.not, label %5, label %2

2:                                                ; preds = %0
  br label %3

3:                                                ; preds = %2
  %puts8 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @str.4, i64 0, i64 0))
  call void @abort() #5
  br label %UnifiedUnreachableBlock

4:                                                ; No predecessors!
  br label %5

5:                                                ; preds = %4, %0
  %6 = call i32 @f(i32 noundef 1)
  %.not1 = icmp eq i32 %6, 0
  br i1 %.not1, label %10, label %7

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %7
  %puts7 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @str.3, i64 0, i64 0))
  call void @abort() #5
  br label %UnifiedUnreachableBlock

9:                                                ; No predecessors!
  br label %10

10:                                               ; preds = %9, %5
  %11 = call i32 @f(i32 noundef 6)
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %15, label %12

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12
  %puts6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @str.2, i64 0, i64 0))
  call void @abort() #5
  br label %UnifiedUnreachableBlock

14:                                               ; No predecessors!
  br label %15

15:                                               ; preds = %14, %10
  %16 = call i32 @f(i32 noundef 5)
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %20, label %17

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17
  %puts5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @str.1, i64 0, i64 0))
  call void @abort() #5
  br label %UnifiedUnreachableBlock

19:                                               ; No predecessors!
  br label %20

20:                                               ; preds = %19, %15
  %21 = call i32 @f(i32 noundef 15)
  %.not4 = icmp eq i32 %21, 15
  br i1 %.not4, label %25, label %22

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @str, i64 0, i64 0))
  call void @abort() #5
  br label %UnifiedUnreachableBlock

24:                                               ; No predecessors!
  br label %25

25:                                               ; preds = %24, %20
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %23, %18, %13, %8, %3
  unreachable
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
