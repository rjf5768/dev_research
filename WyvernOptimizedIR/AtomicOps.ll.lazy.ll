; ModuleID = './AtomicOps.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/AtomicOps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%d, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"test = %d\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define dso_local i32 @foo(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = atomicrmw add i32* %0, i32 %1 seq_cst, align 4
  %5 = add nsw i32 %4, %2
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %2 = call i32 @foo(i32* noundef nonnull @x, i32 noundef 1, i32 noundef 2)
  %3 = load volatile i32, i32* @x, align 4
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %2, i32 noundef %3) #3
  %5 = cmpxchg i32* @x, i32 1, i32 2 seq_cst seq_cst, align 4
  %6 = extractvalue { i32, i1 } %5, 0
  %7 = load volatile i32, i32* @x, align 4
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %6, i32 noundef %7) #3
  %9 = atomicrmw xchg i32* @x, i32 1 seq_cst, align 4
  %10 = load volatile i32, i32* @x, align 4
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %9, i32 noundef %10) #3
  br label %12

12:                                               ; preds = %19, %0
  %.0 = phi i32 [ 0, %0 ], [ %20, %19 ]
  %13 = icmp ult i32 %.0, 5
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = atomicrmw add i64* %1, i64 1 seq_cst, align 8
  %16 = load i64, i64* %1, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef %17) #3
  br label %19

19:                                               ; preds = %14
  %20 = add nuw nsw i32 %.0, 1
  br label %12, !llvm.loop !4

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %29, %21
  %.1 = phi i32 [ 0, %21 ], [ %30, %29 ]
  %23 = icmp ult i32 %.1, 5
  br i1 %23, label %24, label %31

24:                                               ; preds = %22
  %25 = atomicrmw sub i64* %1, i64 1 seq_cst, align 8
  %26 = load i64, i64* %1, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef %27) #3
  br label %29

29:                                               ; preds = %24
  %30 = add nuw nsw i32 %.1, 1
  br label %22, !llvm.loop !6

31:                                               ; preds = %22
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
