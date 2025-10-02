; ModuleID = './20030606-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030606-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local nonnull i32* @foo(i32* noundef writeonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 55, i32* %0, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 %1, i32* %3, align 4
  br label %6

6:                                                ; preds = %4, %2
  %.0 = phi i32* [ %5, %4 ], [ %3, %2 ]
  ret i32* %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [5 x i32], align 16
  %2 = bitcast [5 x i32]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) %2, i8 1, i64 20, i1 false)
  %3 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %4 = call i32* @foo(i32* noundef nonnull %3, i32 noundef 0)
  %5 = ptrtoint i32* %4 to i64
  %6 = ptrtoint [5 x i32]* %1 to i64
  %7 = sub i64 %5, %6
  %.not = icmp eq i64 %7, 4
  br i1 %.not, label %8, label %16

8:                                                ; preds = %0
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %10 = load i32, i32* %9, align 16
  %.not1 = icmp eq i32 %10, 55
  br i1 %.not1, label %11, label %16

11:                                               ; preds = %8
  %12 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 4
  %15 = load i32, i32* %14, align 16
  %.not2 = icmp eq i32 %13, %15
  br i1 %.not2, label %17, label %16

16:                                               ; preds = %11, %8, %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %11
  %18 = bitcast [5 x i32]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) %18, i8 1, i64 20, i1 false)
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %20 = call i32* @foo(i32* noundef nonnull %19, i32 noundef 2)
  %21 = ptrtoint i32* %20 to i64
  %22 = ptrtoint [5 x i32]* %1 to i64
  %23 = sub i64 %21, %22
  %.not3 = icmp eq i64 %23, 8
  br i1 %.not3, label %24, label %30

24:                                               ; preds = %17
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %26 = load i32, i32* %25, align 16
  %.not4 = icmp eq i32 %26, 55
  br i1 %.not4, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %.not5 = icmp eq i32 %29, 2
  br i1 %.not5, label %31, label %30

30:                                               ; preds = %27, %24, %17
  call void @abort() #4
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %27
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %31, %30, %16
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
