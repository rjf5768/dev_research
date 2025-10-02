; ModuleID = './20121108-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20121108-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@temp = dso_local global [16 x i8] c"192.168.190.160\00", align 16
@result = dso_local global i32 -1062682976, align 4
@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"WORKS.\0A\00", align 1
@str = private unnamed_addr constant [7 x i8] c"WORKS.\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @strtoul1(i8* noundef %0, i8** nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds i8, i8* %0, i64 3
  store i8* %4, i8** %1, align 8
  %5 = icmp eq i8* %0, getelementptr inbounds ([16 x i8], [16 x i8]* @temp, i64 0, i64 0)
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %20

7:                                                ; preds = %3
  %8 = icmp eq i8* %0, getelementptr inbounds ([16 x i8], [16 x i8]* @temp, i64 0, i64 4)
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %20

10:                                               ; preds = %7
  %11 = icmp eq i8* %0, getelementptr inbounds ([16 x i8], [16 x i8]* @temp, i64 0, i64 8)
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  br label %20

13:                                               ; preds = %10
  %14 = icmp eq i8* %0, getelementptr inbounds ([16 x i8], [16 x i8]* @temp, i64 0, i64 12)
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  br label %20

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16
  br label %18

18:                                               ; preds = %17
  br label %19

19:                                               ; preds = %18
  call void @abort() #4
  unreachable

20:                                               ; preds = %15, %12, %9, %6
  %.0 = phi i32 [ 192, %6 ], [ 168, %9 ], [ 190, %12 ], [ 160, %15 ]
  ret i32 %.0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @string_to_ip(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = icmp eq i8* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %31

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %28, %5
  %.03 = phi i32 [ 0, %5 ], [ %29, %28 ]
  %.02 = phi i32 [ 0, %5 ], [ %16, %28 ]
  %.01 = phi i8* [ %0, %5 ], [ %.1, %28 ]
  %7 = icmp ult i32 %.03, 4
  br i1 %7, label %8, label %30

8:                                                ; preds = %6
  %.not = icmp eq i8* %.01, null
  br i1 %.not, label %11, label %9

9:                                                ; preds = %8
  %10 = call i32 @strtoul1(i8* noundef nonnull %.01, i8** noundef nonnull %2, i32 noundef 10)
  br label %12

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ 0, %11 ]
  %14 = shl i32 %.02, 8
  %15 = and i32 %13, 255
  %16 = or i32 %14, %15
  %.not4 = icmp eq i8* %.01, null
  br i1 %.not4, label %27, label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %2, align 8
  %19 = load i8, i8* %18, align 1
  %.not5 = icmp eq i8 %19, 0
  br i1 %.not5, label %23, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** %2, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  br label %25

23:                                               ; preds = %17
  %24 = load i8*, i8** %2, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i8* [ %22, %20 ], [ %24, %23 ]
  br label %27

27:                                               ; preds = %25, %12
  %.1 = phi i8* [ %26, %25 ], [ %.01, %12 ]
  br label %28

28:                                               ; preds = %27
  %29 = add nuw nsw i32 %.03, 1
  br label %6, !llvm.loop !4

30:                                               ; preds = %6
  br label %31

31:                                               ; preds = %30, %4
  %.0 = phi i32 [ 0, %4 ], [ %.02, %30 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @string_to_ip(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @temp, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %1) #5
  %3 = load i32, i32* @result, align 4
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %3) #5
  %5 = load i32, i32* @result, align 4
  %.not = icmp eq i32 %1, %5
  br i1 %.not, label %7, label %6

6:                                                ; preds = %0
  call void @abort() #4
  unreachable

7:                                                ; preds = %0
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
