; ModuleID = './20030928-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030928-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"a1111\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"a1112\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"a1113\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"a1114\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"a1115\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"a1116\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"a1117\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"a1118\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @get_addrs(i8** nocapture noundef writeonly %0, i32* nocapture noundef readonly %1) #0 {
  %3 = load i32, i32* %1, align 4
  %4 = shl i32 %3, 1
  %5 = add i32 %4, -131072
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [6 x i8], [6 x i8]* @.str, i64 0, i64 %6
  store i8* %7, i8** %0, align 8
  %8 = getelementptr inbounds i32, i32* %1, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 1
  %11 = add i32 %10, -262144
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [6 x i8], [6 x i8]* @.str.1, i64 0, i64 %12
  %14 = getelementptr inbounds i8*, i8** %0, i64 1
  store i8* %13, i8** %14, align 8
  %15 = getelementptr inbounds i32, i32* %1, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 1
  %18 = add i32 %17, -393216
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [6 x i8], [6 x i8]* @.str.2, i64 0, i64 %19
  %21 = getelementptr inbounds i8*, i8** %0, i64 2
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds i32, i32* %1, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 1
  %25 = add i32 %24, -524288
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [6 x i8], [6 x i8]* @.str.3, i64 0, i64 %26
  %28 = getelementptr inbounds i8*, i8** %0, i64 3
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds i32, i32* %1, i64 4
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 1
  %32 = add i32 %31, -655360
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [6 x i8], [6 x i8]* @.str.4, i64 0, i64 %33
  %35 = getelementptr inbounds i8*, i8** %0, i64 4
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds i32, i32* %1, i64 5
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 1
  %39 = add i32 %38, -786432
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [6 x i8], [6 x i8]* @.str.5, i64 0, i64 %40
  %42 = getelementptr inbounds i8*, i8** %0, i64 5
  store i8* %41, i8** %42, align 8
  %43 = getelementptr inbounds i32, i32* %1, i64 6
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 1
  %46 = add i32 %45, -917504
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [6 x i8], [6 x i8]* @.str.6, i64 0, i64 %47
  %49 = getelementptr inbounds i8*, i8** %0, i64 6
  store i8* %48, i8** %49, align 8
  %50 = getelementptr inbounds i32, i32* %1, i64 7
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 1
  %53 = add i32 %52, -1048576
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [6 x i8], [6 x i8]* @.str.7, i64 0, i64 %54
  %56 = getelementptr inbounds i8*, i8** %0, i64 7
  store i8* %55, i8** %56, align 8
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [8 x i8*], align 16
  %2 = alloca [8 x i32], align 16
  br label %3

3:                                                ; preds = %10, %0
  %.0 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %4 = icmp ult i32 %.0, 8
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = shl i32 %.0, 16
  %7 = add i32 %6, 65536
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %8
  store i32 %7, i32* %9, align 4
  br label %10

10:                                               ; preds = %5
  %11 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !4

12:                                               ; preds = %3
  %13 = getelementptr inbounds [8 x i8*], [8 x i8*]* %1, i64 0, i64 0
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 0
  call void @get_addrs(i8** noundef nonnull %13, i32* noundef nonnull %14)
  br label %15

15:                                               ; preds = %24, %12
  %.1 = phi i32 [ 0, %12 ], [ %25, %24 ]
  %16 = icmp ult i32 %.1, 8
  br i1 %16, label %17, label %26

17:                                               ; preds = %15
  %18 = zext i32 %.1 to i64
  %19 = getelementptr inbounds [8 x i8*], [8 x i8*]* %1, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %.not = icmp eq i8 %21, 97
  br i1 %.not, label %23, label %22

22:                                               ; preds = %17
  call void @abort() #3
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  %25 = add nuw nsw i32 %.1, 1
  br label %15, !llvm.loop !6

26:                                               ; preds = %15
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %26, %22
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
