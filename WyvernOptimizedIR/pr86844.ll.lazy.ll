; ModuleID = './pr86844.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr86844.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [2 x i32] [i32 -1, i32 0], align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @foo(i32* nocapture noundef %0) #0 {
  store i32 0, i32* %0, align 4
  %2 = bitcast i32* %0 to i8*
  %3 = getelementptr inbounds i8, i8* %2, i64 3
  store i8 1, i8* %3, align 1
  %4 = bitcast i32* %0 to i8*
  %5 = getelementptr inbounds i8, i8* %4, i64 1
  store i8 2, i8* %5, align 1
  %6 = bitcast i32* %0 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 6
  %8 = load i8, i8* %7, align 1
  %9 = bitcast i32* %0 to i8*
  %10 = getelementptr inbounds i8, i8* %9, i64 2
  store i8 %8, i8* %10, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i64, align 8
  store i64 4294967295, i64* %1, align 8
  %2 = bitcast i64* %1 to i8*
  %3 = getelementptr inbounds i8, i8* %2, i64 6
  store i8 3, i8* %3, align 2
  %4 = bitcast i64* %1 to i32*
  call void @foo(i32* noundef nonnull %4)
  %5 = bitcast i64* %1 to i8*
  %6 = load i8, i8* %5, align 8
  %.not = icmp eq i8 %6, 0
  br i1 %.not, label %7, label %19

7:                                                ; preds = %0
  %8 = bitcast i64* %1 to i8*
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = load i8, i8* %9, align 1
  %.not1 = icmp eq i8 %10, 2
  br i1 %.not1, label %11, label %19

11:                                               ; preds = %7
  %12 = bitcast i64* %1 to i8*
  %13 = getelementptr inbounds i8, i8* %12, i64 2
  %14 = load i8, i8* %13, align 2
  %.not2 = icmp eq i8 %14, 3
  br i1 %.not2, label %15, label %19

15:                                               ; preds = %11
  %16 = bitcast i64* %1 to i8*
  %17 = getelementptr inbounds i8, i8* %16, i64 3
  %18 = load i8, i8* %17, align 1
  %.not3 = icmp eq i8 %18, 1
  br i1 %.not3, label %20, label %19

19:                                               ; preds = %15, %11, %7, %0
  call void @abort() #4
  unreachable

20:                                               ; preds = %15
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
