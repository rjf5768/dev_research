; ModuleID = './pr34176.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr34176.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mult_index = type { i32, i32 }

@foo.count = internal global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @hash_find_entry(i64* nocapture noundef writeonly %0) #0 {
  store i64 2, i64* %0, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.mult_index* @foo(i64 noundef %0) #1 {
  %2 = load i32, i32* @foo.count, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @foo.count, align 4
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @abort() #3
  unreachable

6:                                                ; preds = %1
  ret %struct.mult_index* null
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i64, align 8
  br label %2

2:                                                ; preds = %13, %0
  %.01 = phi i64 [ 0, %0 ], [ %17, %13 ]
  %3 = call i32 @hash_find_entry(i64* noundef nonnull %1)
  %4 = load i64, i64* %1, align 8
  %.not = icmp eq i64 %.01, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %2
  br label %18

6:                                                ; preds = %2
  %7 = add i64 %.01, %4
  %8 = call %struct.mult_index* @foo(i64 noundef %7)
  br label %9

9:                                                ; preds = %10, %6
  %.02 = phi i64 [ %4, %6 ], [ %11, %10 ]
  %.0 = phi %struct.mult_index* [ %8, %6 ], [ %12, %10 ]
  %.not3 = icmp eq i64 %.02, 0
  br i1 %.not3, label %13, label %10

10:                                               ; preds = %9
  %11 = add i64 %.02, -1
  %12 = getelementptr inbounds %struct.mult_index, %struct.mult_index* %.0, i64 1
  br label %9, !llvm.loop !4

13:                                               ; preds = %9
  %14 = ptrtoint %struct.mult_index* %.0 to i64
  %15 = ptrtoint %struct.mult_index* %8 to i64
  %16 = sub i64 %14, %15
  %17 = ashr exact i64 %16, 3
  br label %2

18:                                               ; preds = %5
  ret i32 0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
