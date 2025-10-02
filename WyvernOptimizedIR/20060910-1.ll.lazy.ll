; ModuleID = './20060910-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20060910-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ty = type { i8*, i8* }

@b = dso_local global [6 x i8] zeroinitializer, align 1
@s = dso_local global %struct.input_ty zeroinitializer, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @input_getc_complicated(%struct.input_ty* nocapture noundef readnone %0) #0 {
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @check_header(%struct.input_ty* nocapture noundef %0) #1 {
  br label %2

2:                                                ; preds = %23, %1
  %.01 = phi i32 [ 0, %1 ], [ %24, %23 ]
  %3 = icmp ult i32 %.01, 6
  br i1 %3, label %4, label %25

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.input_ty, %struct.input_ty* %0, i64 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds %struct.input_ty, %struct.input_ty* %0, i64 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ult i8* %6, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.input_ty, %struct.input_ty* %0, i64 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8* %13, i8** %11, align 8
  %14 = load i8, i8* %12, align 1
  %15 = zext i8 %14 to i32
  br label %18

16:                                               ; preds = %4
  %17 = call i32 @input_getc_complicated(%struct.input_ty* noundef %0)
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi i32 [ %15, %10 ], [ %17, %16 ]
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %26

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22
  %24 = add i32 %.01, 1
  br label %2, !llvm.loop !4

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %21
  %.0 = phi i32 [ 0, %21 ], [ 1, %25 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @b, i64 0, i64 0), i8** getelementptr inbounds (%struct.input_ty, %struct.input_ty* @s, i64 0, i32 0), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @b, i64 1, i64 0), i8** getelementptr inbounds (%struct.input_ty, %struct.input_ty* @s, i64 0, i32 1), align 8
  %1 = call i32 @check_header(%struct.input_ty* noundef nonnull @s)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %2, label %3

2:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds (%struct.input_ty, %struct.input_ty* @s, i64 0, i32 0), align 8
  %5 = load i8*, i8** getelementptr inbounds (%struct.input_ty, %struct.input_ty* @s, i64 0, i32 1), align 8
  %.not1 = icmp eq i8* %4, %5
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %3
  call void @abort() #4
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %3
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %6, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
