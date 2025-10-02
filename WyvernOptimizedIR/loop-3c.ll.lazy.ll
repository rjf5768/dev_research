; ModuleID = './loop-3c.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-3c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [255 x i8*] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local i32 @f(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %9, %1
  %.01 = phi i32 [ %0, %1 ], [ %10, %9 ]
  %.0 = phi i32 [ 256, %1 ], [ %6, %9 ]
  %3 = shl i32 %.01, 3
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds i8, i8* bitcast ([255 x i8*]* @a to i8*), i64 %4
  %6 = lshr i32 %.0, 1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [255 x i8*], [255 x i8*]* @a, i64 0, i64 %7
  store i8* %5, i8** %8, align 8
  br label %9

9:                                                ; preds = %2
  %10 = add nsw i32 %.01, 4
  %11 = icmp slt i32 %.01, 1073741836
  br i1 %11, label %2, label %12, !llvm.loop !4

12:                                               ; preds = %9
  ret i32 undef
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  store i8* null, i8** getelementptr inbounds ([255 x i8*], [255 x i8*]* @a, i64 0, i64 16), align 16
  store i8* null, i8** getelementptr inbounds ([255 x i8*], [255 x i8*]* @a, i64 0, i64 8), align 16
  %1 = call i32 @f(i32 noundef 1610612736)
  %2 = load i8*, i8** getelementptr inbounds ([255 x i8*], [255 x i8*]* @a, i64 0, i64 16), align 16
  %.not = icmp eq i8* %2, null
  br i1 %.not, label %3, label %5

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([255 x i8*], [255 x i8*]* @a, i64 0, i64 8), align 16
  %.not1 = icmp eq i8* %4, null
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  store i8* null, i8** getelementptr inbounds ([255 x i8*], [255 x i8*]* @a, i64 0, i64 16), align 16
  store i8* null, i8** getelementptr inbounds ([255 x i8*], [255 x i8*]* @a, i64 0, i64 8), align 16
  %7 = call i32 @f(i32 noundef 1073741824)
  %8 = load i8*, i8** getelementptr inbounds ([255 x i8*], [255 x i8*]* @a, i64 0, i64 16), align 16
  %.not2 = icmp eq i8* %8, null
  br i1 %.not2, label %11, label %9

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([255 x i8*], [255 x i8*]* @a, i64 0, i64 8), align 16
  %.not3 = icmp eq i8* %10, null
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %9, %6
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %12, %11, %5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
