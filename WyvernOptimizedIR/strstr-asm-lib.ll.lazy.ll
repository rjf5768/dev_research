; ModuleID = './strstr-asm-lib.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strstr-asm-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inside_main = external dso_local global i32, align 4
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @my_strstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @my_strstr(i8* noundef %0, i8* noundef %1) #0 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #3
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %22

6:                                                ; preds = %2
  %7 = load i8, i8* %1, align 1
  %8 = sext i8 %7 to i32
  %9 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef %8) #3
  br label %10

10:                                               ; preds = %16, %6
  %.01 = phi i8* [ %9, %6 ], [ %20, %16 ]
  %.not = icmp eq i8* %.01, null
  br i1 %.not, label %21, label %11

11:                                               ; preds = %10
  %12 = call i32 @strncmp(i8* noundef nonnull %.01, i8* noundef nonnull %1, i64 noundef %3) #3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %22

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds i8, i8* %.01, i64 1
  %18 = load i8, i8* %1, align 1
  %19 = sext i8 %18 to i32
  %20 = call i8* @strchr(i8* noundef nonnull %17, i32 noundef %19) #3
  br label %10, !llvm.loop !4

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21, %14, %5
  %.0 = phi i8* [ %0, %5 ], [ %.01, %14 ], [ null, %21 ]
  ret i8* %.0
}

declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @strstr(i8* noundef %0, i8* noundef %1) #0 {
  %3 = load i32, i32* @inside_main, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  call void @abort() #4
  unreachable

5:                                                ; preds = %2
  %6 = call i8* @my_strstr(i8* noundef %0, i8* noundef %1)
  ret i8* %6
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
