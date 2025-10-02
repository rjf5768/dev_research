; ModuleID = './pr36093.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr36093.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Foo = type { [4 x %struct.Bar], [124 x i8] }
%struct.Bar = type { [129 x i8] }

@foo = dso_local global [4 x %struct.Foo] zeroinitializer, align 128

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %15, %0
  %.01 = phi i32 [ 0, %0 ], [ %16, %15 ]
  %2 = icmp ult i32 %.01, 4
  br i1 %2, label %3, label %17

3:                                                ; preds = %1
  %4 = zext i32 %.01 to i64
  br label %5

5:                                                ; preds = %12, %3
  %.0 = phi i32 [ 0, %3 ], [ %13, %12 ]
  %6 = icmp ult i32 %.0, 129
  br i1 %6, label %7, label %14

7:                                                ; preds = %5
  %8 = trunc i32 %.01 to i8
  %9 = add i8 %8, 97
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds [4 x %struct.Foo], [4 x %struct.Foo]* @foo, i64 0, i64 0, i32 0, i64 %4, i32 0, i64 %10
  store i8 %9, i8* %11, align 1
  br label %12

12:                                               ; preds = %7
  %13 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !4

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %14
  %16 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !6

17:                                               ; preds = %1
  %18 = load i8, i8* getelementptr inbounds ([4 x %struct.Foo], [4 x %struct.Foo]* @foo, i64 0, i64 0, i32 0, i64 3, i32 0, i64 128), align 1
  %.not = icmp eq i8 %18, 100
  br i1 %.not, label %20, label %19

19:                                               ; preds = %17
  call void @abort() #2
  unreachable

20:                                               ; preds = %17
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
