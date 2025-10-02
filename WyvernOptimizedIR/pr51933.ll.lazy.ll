; ModuleID = './pr51933.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr51933.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v1 = internal global i8 0, align 1
@v2 = internal global [256 x i8] zeroinitializer, align 16
@v3 = internal global [256 x i8] zeroinitializer, align 16
@__const.main.c = private unnamed_addr constant [18 x i8] c"abcdefghijklmnopq\00", align 16
@.str = private unnamed_addr constant [18 x i8] c"abcdeghhijkmmnoqq\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  call void asm sideeffect "", "imr,imr,imr,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* nonnull @v1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @v2, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @v3, i64 0, i64 0)) #5, !srcloc !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef returned %0, i16* nocapture noundef readonly %1, i8* nocapture noundef writeonly %2) #0 {
  %4 = load i8, i8* @v1, align 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %5, label %6

5:                                                ; preds = %3
  call void @foo()
  br label %6

6:                                                ; preds = %5, %3
  br label %7

7:                                                ; preds = %24, %6
  %.0 = phi i32 [ 0, %6 ], [ %25, %24 ]
  %8 = icmp slt i32 %.0, %0
  br i1 %8, label %9, label %26

9:                                                ; preds = %7
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds i16, i16* %1, i64 %10
  %12 = load i16, i16* %11, align 2
  %13 = icmp ult i16 %12, 256
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = zext i16 %12 to i64
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* @v2, i64 0, i64 %15
  br label %21

17:                                               ; preds = %9
  %18 = and i16 %12, 255
  %19 = zext i16 %18 to i64
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* @v3, i64 0, i64 %19
  br label %21

21:                                               ; preds = %17, %14
  %.in.in = phi i8* [ %16, %14 ], [ %20, %17 ]
  %.in1 = load i8, i8* %.in.in, align 1
  %22 = zext i32 %.0 to i64
  %23 = getelementptr inbounds i8, i8* %2, i64 %22
  store i8 %.in1, i8* %23, align 1
  br label %24

24:                                               ; preds = %21
  %25 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !5

26:                                               ; preds = %7
  %27 = sext i32 %0 to i64
  %28 = getelementptr inbounds i8, i8* %2, i64 %27
  store i8 0, i8* %28, align 1
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [18 x i8], align 16
  %2 = alloca [18 x i16], align 16
  br label %3

3:                                                ; preds = %13, %0
  %.0 = phi i32 [ 0, %0 ], [ %14, %13 ]
  %4 = icmp ult i32 %.0, 256
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = trunc i32 %.0 to i8
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* @v2, i64 0, i64 %7
  store i8 %6, i8* %8, align 1
  %9 = trunc i32 %.0 to i8
  %10 = add i8 %9, 1
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* @v3, i64 0, i64 %11
  store i8 %10, i8* %12, align 1
  br label %13

13:                                               ; preds = %5
  %14 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !7

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %25, %15
  %.1 = phi i32 [ 0, %15 ], [ %26, %25 ]
  %17 = icmp ult i32 %.1, 18
  br i1 %17, label %18, label %27

18:                                               ; preds = %16
  %19 = zext i32 %.1 to i64
  %20 = getelementptr inbounds [18 x i8], [18 x i8]* @__const.main.c, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i16
  %23 = zext i32 %.1 to i64
  %24 = getelementptr inbounds [18 x i16], [18 x i16]* %2, i64 0, i64 %23
  store i16 %22, i16* %24, align 2
  br label %25

25:                                               ; preds = %18
  %26 = add nuw nsw i32 %.1, 1
  br label %16, !llvm.loop !8

27:                                               ; preds = %16
  %28 = getelementptr inbounds [18 x i16], [18 x i16]* %2, i64 0, i64 5
  %29 = load i16, i16* %28, align 2
  %30 = or i16 %29, 1536
  store i16 %30, i16* %28, align 2
  %31 = getelementptr inbounds [18 x i16], [18 x i16]* %2, i64 0, i64 6
  %32 = load i16, i16* %31, align 4
  %33 = or i16 %32, 1280
  store i16 %33, i16* %31, align 4
  %34 = getelementptr inbounds [18 x i16], [18 x i16]* %2, i64 0, i64 11
  %35 = load i16, i16* %34, align 2
  %36 = or i16 %35, 8192
  store i16 %36, i16* %34, align 2
  %37 = getelementptr inbounds [18 x i16], [18 x i16]* %2, i64 0, i64 15
  %38 = load i16, i16* %37, align 2
  %39 = or i16 %38, 1280
  store i16 %39, i16* %37, align 2
  call void @foo()
  %40 = getelementptr inbounds [18 x i16], [18 x i16]* %2, i64 0, i64 0
  %41 = getelementptr inbounds [18 x i8], [18 x i8]* %1, i64 0, i64 0
  %42 = call i32 @bar(i32 noundef 17, i16* noundef nonnull %40, i8* noundef nonnull %41)
  br i1 false, label %45, label %43

43:                                               ; preds = %27
  %44 = getelementptr inbounds [18 x i8], [18 x i8]* %1, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(18) %44, i8* noundef nonnull dereferenceable(18) getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 18)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %46, label %45

45:                                               ; preds = %43, %27
  call void @abort() #6
  unreachable

46:                                               ; preds = %43
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 431}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
