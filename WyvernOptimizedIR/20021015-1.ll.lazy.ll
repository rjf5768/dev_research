; ModuleID = './20021015-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20021015-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_list = dso_local global [1 x i8] c"1", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @g(i8* nocapture noundef readnone %0, i8* nocapture noundef readnone %1, i32 noundef %2, i8** nocapture noundef readnone %3, i8** nocapture noundef readonly %4) #0 {
  %6 = load i8*, i8** %4, align 8
  %.not = icmp eq i8* %6, getelementptr inbounds ([1 x i8], [1 x i8]* @g_list, i64 0, i64 0)
  br i1 %.not, label %8, label %7

7:                                                ; preds = %5
  call void @abort() #2
  unreachable

8:                                                ; preds = %5
  %9 = load i8*, i8** %4, align 8
  store i8 0, i8* %9, align 1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @g_list, i64 0, i64 0), i8** %1, align 8
  br label %3

3:                                                ; preds = %8, %0
  %4 = load i8*, i8** %1, align 8
  %5 = load i8, i8* %4, align 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %9, label %6

6:                                                ; preds = %3
  %7 = load i8*, i8** %1, align 8
  call void @g(i8* noundef null, i8* noundef %7, i32 noundef 100, i8** noundef nonnull %2, i8** noundef nonnull %1)
  br label %8

8:                                                ; preds = %6
  br label %3, !llvm.loop !4

9:                                                ; preds = %3
  ret i32 0
}

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
