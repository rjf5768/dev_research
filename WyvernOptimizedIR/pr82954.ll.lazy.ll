; ModuleID = './pr82954.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr82954.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.p = private unnamed_addr constant [4 x i32] [i32 16, i32 32, i32 64, i32 128], align 16
@__const.main.q = private unnamed_addr constant [4 x i32] [i32 8, i32 4, i32 2, i32 1], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @foo(i32* noalias nocapture noundef %0, i32* noalias nocapture noundef readonly %1) #0 {
  %3 = load i32, i32* %0, align 4
  %4 = xor i32 %3, 1
  store i32 %4, i32* %0, align 4
  %5 = getelementptr inbounds i32, i32* %0, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = xor i32 %6, 2
  %8 = getelementptr inbounds i32, i32* %0, i64 1
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds i32, i32* %0, i64 2
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %1, i64 2
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %10, %12
  %14 = getelementptr inbounds i32, i32* %0, i64 2
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %0, i64 3
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %1, i64 3
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %16, %18
  %20 = getelementptr inbounds i32, i32* %0, i64 3
  store i32 %19, i32* %20, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca [4 x i32], align 16
  %3 = bitcast [4 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %3, i8* noundef nonnull align 16 dereferenceable(16) bitcast ([4 x i32]* @__const.main.p to i8*), i64 16, i1 false)
  %4 = bitcast [4 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %4, i8* noundef nonnull align 16 dereferenceable(16) bitcast ([4 x i32]* @__const.main.q to i8*), i64 16, i1 false)
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  call void asm sideeffect "", "imr,imr,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i32* nonnull %6) #4, !srcloc !4
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  call void @foo(i32* noundef nonnull %7, i32* noundef nonnull %8)
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %10 = load i32, i32* %9, align 16
  %.not = icmp eq i32 %10, 17
  br i1 %.not, label %11, label %20

11:                                               ; preds = %0
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %13 = load i32, i32* %12, align 4
  %.not1 = icmp eq i32 %13, 34
  br i1 %.not1, label %14, label %20

14:                                               ; preds = %11
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  %16 = load i32, i32* %15, align 8
  %.not2 = icmp eq i32 %16, 66
  br i1 %.not2, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 3
  %19 = load i32, i32* %18, align 4
  %.not3 = icmp eq i32 %19, 129
  br i1 %.not3, label %21, label %20

20:                                               ; preds = %17, %14, %11, %0
  call void @abort() #5
  unreachable

21:                                               ; preds = %17
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
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 287}
