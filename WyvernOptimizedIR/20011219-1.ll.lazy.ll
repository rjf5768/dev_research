; ModuleID = './20011219-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20011219-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bar\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @bar(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2) #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @foo(i32 noundef %0, i8* nocapture noundef readonly %1) #1 {
  switch i32 %0, label %18 [
    i32 10, label %3
    i32 11, label %6
    i32 12, label %9
    i32 13, label %12
    i32 14, label %15
  ]

3:                                                ; preds = %2
  %4 = bitcast i8* %1 to i64*
  %5 = load i64, i64* %4, align 8
  br label %19

6:                                                ; preds = %2
  %7 = bitcast i8* %1 to i64*
  %8 = load i64, i64* %7, align 8
  br label %19

9:                                                ; preds = %2
  %10 = bitcast i8* %1 to i64*
  %11 = load i64, i64* %10, align 8
  br label %19

12:                                               ; preds = %2
  %13 = bitcast i8* %1 to i64*
  %14 = load i64, i64* %13, align 8
  br label %19

15:                                               ; preds = %2
  %16 = bitcast i8* %1 to i64*
  %17 = load i64, i64* %16, align 8
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %15, %12, %9, %6, %3
  %.0 = phi i64 [ undef, %18 ], [ %17, %15 ], [ %14, %12 ], [ %11, %9 ], [ %8, %6 ], [ %5, %3 ]
  ret i64 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca i64, align 8
  store i64 24, i64* %1, align 8
  %2 = bitcast i64* %1 to i8*
  %3 = call i64 @foo(i32 noundef 13, i8* noundef nonnull %2)
  %.not = icmp eq i64 %3, 24
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %0
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %5, %4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
