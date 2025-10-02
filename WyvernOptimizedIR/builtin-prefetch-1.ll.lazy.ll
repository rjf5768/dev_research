; ModuleID = './builtin-prefetch-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtin-prefetch-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arr = dso_local global [10 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @good_const(i32* nocapture noundef readonly %0) #0 {
  %2 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %2, i32 0, i32 0, i32 1)
  %3 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %3, i32 0, i32 1, i32 1)
  %4 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %4, i32 0, i32 2, i32 1)
  %5 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %5, i32 0, i32 3, i32 1)
  %6 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 1, i32 0, i32 1)
  %7 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %7, i32 1, i32 1, i32 1)
  %8 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %8, i32 1, i32 1, i32 1)
  %9 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %9, i32 1, i32 3, i32 1)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0i8(i8* nocapture readonly, i32 immarg, i32 immarg, i32) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @good_enum(i32* nocapture noundef readonly %0) #0 {
  %2 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %2, i32 0, i32 0, i32 1)
  %3 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %3, i32 0, i32 1, i32 1)
  %4 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %4, i32 0, i32 2, i32 1)
  %5 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %5, i32 0, i32 3, i32 1)
  %6 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %6, i32 1, i32 0, i32 1)
  %7 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %7, i32 1, i32 1, i32 1)
  %8 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %8, i32 1, i32 2, i32 1)
  %9 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %9, i32 1, i32 3, i32 1)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @good_expr(i32* nocapture noundef readonly %0) #0 {
  %2 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %2, i32 0, i32 0, i32 1)
  %3 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %3, i32 1, i32 3, i32 1)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @good_vararg(i32* nocapture noundef readonly %0) #0 {
  %2 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %2, i32 0, i32 3, i32 1)
  %3 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %3, i32 0, i32 3, i32 1)
  %4 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %4, i32 1, i32 3, i32 1)
  %5 = bitcast i32* %0 to i8*
  call void @llvm.prefetch.p0i8(i8* %5, i32 0, i32 3, i32 1)
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  call void @good_const(i32* noundef getelementptr inbounds ([10 x i32], [10 x i32]* @arr, i64 0, i64 0))
  call void @good_enum(i32* noundef getelementptr inbounds ([10 x i32], [10 x i32]* @arr, i64 0, i64 0))
  call void @good_expr(i32* noundef getelementptr inbounds ([10 x i32], [10 x i32]* @arr, i64 0, i64 0))
  call void @good_vararg(i32* noundef getelementptr inbounds ([10 x i32], [10 x i32]* @arr, i64 0, i64 0))
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblemem_or_argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
