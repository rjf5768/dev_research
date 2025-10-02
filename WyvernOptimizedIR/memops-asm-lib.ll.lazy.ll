; ModuleID = './memops-asm-lib.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/memops-asm-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inside_main = external dso_local global i32, align 4
@llvm.compiler.used = appending global [5 x i8*] [i8* bitcast (i8* (i8*, i8*, i64)* @my_memcpy to i8*), i8* bitcast (void (i8*, i8*, i64)* @my_bcopy to i8*), i8* bitcast (i8* (i8*, i8*, i64)* @my_memmove to i8*), i8* bitcast (i8* (i8*, i32, i64)* @my_memset to i8*), i8* bitcast (void (i8*, i64)* @my_bzero to i8*)], section "llvm.metadata"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8* @my_memcpy(i8* noundef returned writeonly %0, i8* nocapture noundef readonly %1, i64 noundef %2) #0 {
  br label %4

4:                                                ; preds = %5, %3
  %.02 = phi i64 [ %2, %3 ], [ %6, %5 ]
  %.01 = phi i8* [ %0, %3 ], [ %9, %5 ]
  %.0 = phi i8* [ %1, %3 ], [ %7, %5 ]
  %.not = icmp eq i64 %.02, 0
  br i1 %.not, label %10, label %5

5:                                                ; preds = %4
  %6 = add i64 %.02, -1
  %7 = getelementptr inbounds i8, i8* %.0, i64 1
  %8 = load i8, i8* %.0, align 1
  %9 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %8, i8* %.01, align 1
  br label %4, !llvm.loop !4

10:                                               ; preds = %4
  ret i8* %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @my_bcopy(i8* noundef readonly %0, i8* noundef writeonly %1, i64 noundef %2) #0 {
  %.not = icmp ult i8* %0, %1
  br i1 %.not, label %12, label %4

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %6, %4
  %.03 = phi i64 [ %2, %4 ], [ %7, %6 ]
  %.01 = phi i8* [ %1, %4 ], [ %10, %6 ]
  %.0 = phi i8* [ %0, %4 ], [ %8, %6 ]
  %.not6 = icmp eq i64 %.03, 0
  br i1 %.not6, label %11, label %6

6:                                                ; preds = %5
  %7 = add i64 %.03, -1
  %8 = getelementptr inbounds i8, i8* %.0, i64 1
  %9 = load i8, i8* %.0, align 1
  %10 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %9, i8* %.01, align 1
  br label %5, !llvm.loop !6

11:                                               ; preds = %5
  br label %22

12:                                               ; preds = %3
  %13 = getelementptr inbounds i8, i8* %1, i64 %2
  %14 = getelementptr inbounds i8, i8* %0, i64 %2
  br label %15

15:                                               ; preds = %16, %12
  %.14 = phi i64 [ %2, %12 ], [ %17, %16 ]
  %.12 = phi i8* [ %13, %12 ], [ %20, %16 ]
  %.1 = phi i8* [ %14, %12 ], [ %18, %16 ]
  %.not5 = icmp eq i64 %.14, 0
  br i1 %.not5, label %21, label %16

16:                                               ; preds = %15
  %17 = add i64 %.14, -1
  %18 = getelementptr inbounds i8, i8* %.1, i64 -1
  %19 = load i8, i8* %18, align 1
  %20 = getelementptr inbounds i8, i8* %.12, i64 -1
  store i8 %19, i8* %20, align 1
  br label %15, !llvm.loop !7

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8* @my_memmove(i8* noundef returned writeonly %0, i8* noundef readonly %1, i64 noundef %2) #0 {
  %.not = icmp ult i8* %1, %0
  br i1 %.not, label %12, label %4

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %6, %4
  %.03 = phi i64 [ %2, %4 ], [ %7, %6 ]
  %.01 = phi i8* [ %0, %4 ], [ %10, %6 ]
  %.0 = phi i8* [ %1, %4 ], [ %8, %6 ]
  %.not6 = icmp eq i64 %.03, 0
  br i1 %.not6, label %11, label %6

6:                                                ; preds = %5
  %7 = add i64 %.03, -1
  %8 = getelementptr inbounds i8, i8* %.0, i64 1
  %9 = load i8, i8* %.0, align 1
  %10 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %9, i8* %.01, align 1
  br label %5, !llvm.loop !8

11:                                               ; preds = %5
  br label %22

12:                                               ; preds = %3
  %13 = getelementptr inbounds i8, i8* %0, i64 %2
  %14 = getelementptr inbounds i8, i8* %1, i64 %2
  br label %15

15:                                               ; preds = %16, %12
  %.14 = phi i64 [ %2, %12 ], [ %17, %16 ]
  %.12 = phi i8* [ %13, %12 ], [ %20, %16 ]
  %.1 = phi i8* [ %14, %12 ], [ %18, %16 ]
  %.not5 = icmp eq i64 %.14, 0
  br i1 %.not5, label %21, label %16

16:                                               ; preds = %15
  %17 = add i64 %.14, -1
  %18 = getelementptr inbounds i8, i8* %.1, i64 -1
  %19 = load i8, i8* %18, align 1
  %20 = getelementptr inbounds i8, i8* %.12, i64 -1
  store i8 %19, i8* %20, align 1
  br label %15, !llvm.loop !9

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %11
  ret i8* %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local i8* @my_memset(i8* noundef returned writeonly %0, i32 noundef %1, i64 noundef %2) #1 {
  br label %4

4:                                                ; preds = %5, %3
  %.01 = phi i64 [ %2, %3 ], [ %6, %5 ]
  %.0 = phi i8* [ %0, %3 ], [ %8, %5 ]
  %.not = icmp eq i64 %.01, 0
  br i1 %.not, label %9, label %5

5:                                                ; preds = %4
  %6 = add i64 %.01, -1
  %7 = trunc i32 %1 to i8
  %8 = getelementptr inbounds i8, i8* %.0, i64 1
  store i8 %7, i8* %.0, align 1
  br label %4, !llvm.loop !10

9:                                                ; preds = %4
  ret i8* %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @my_bzero(i8* nocapture noundef writeonly %0, i64 noundef %1) #1 {
  br label %3

3:                                                ; preds = %4, %2
  %.01 = phi i64 [ %1, %2 ], [ %5, %4 ]
  %.0 = phi i8* [ %0, %2 ], [ %6, %4 ]
  %.not = icmp eq i64 %.01, 0
  br i1 %.not, label %7, label %4

4:                                                ; preds = %3
  %5 = add i64 %.01, -1
  %6 = getelementptr inbounds i8, i8* %.0, i64 1
  store i8 0, i8* %.0, align 1
  br label %3, !llvm.loop !11

7:                                                ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef returned %0, i8* nocapture noundef readonly %1, i64 noundef %2) #2 {
  %4 = call i8* @my_memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2)
  %5 = load i32, i32* @inside_main, align 4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %3
  call void @abort() #4
  unreachable

7:                                                ; preds = %3
  ret i8* %0
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @bcopy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #2 {
  call void @my_bcopy(i8* noundef %0, i8* noundef %1, i64 noundef %2)
  %4 = load i32, i32* @inside_main, align 4
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #4
  unreachable

6:                                                ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef returned %0, i32 noundef %1, i64 noundef %2) #2 {
  %4 = call i8* @my_memset(i8* noundef %0, i32 noundef %1, i64 noundef %2)
  %5 = load i32, i32* @inside_main, align 4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %3
  call void @abort() #4
  unreachable

7:                                                ; preds = %3
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bzero(i8* nocapture noundef writeonly %0, i64 noundef %1) #2 {
  call void @my_bzero(i8* noundef %0, i64 noundef %1)
  %3 = load i32, i32* @inside_main, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  call void @abort() #4
  unreachable

5:                                                ; preds = %2
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
