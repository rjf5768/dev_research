; ModuleID = './pr65215-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65215-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i64 }

@__const.main.s = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -66, i8 -83, i8 -34, i8 -17, i8 -88, i8 -66, i8 -19, i8 -2 }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @bar(%struct.S* nocapture noundef readonly %0) #0 {
  %2 = getelementptr %struct.S, %struct.S* %0, i64 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = trunc i64 %3 to i32
  %5 = trunc i64 %3 to i32
  %6 = call i32 @llvm.fshl.i32(i32 %4, i32 %5, i32 8)
  %7 = call i32 @foo(i32 noundef %6)
  %8 = zext i32 %7 to i64
  %9 = getelementptr %struct.S, %struct.S* %0, i64 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = lshr i64 %10, 32
  %12 = trunc i64 %11 to i32
  %13 = call i32 @foo(i32 noundef %12)
  %14 = zext i32 %13 to i64
  %15 = shl nuw i64 %14, 32
  %16 = or i64 %15, %8
  ret i64 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @foo(i32 noundef %0) #1 {
  %2 = call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call i64 @bar(%struct.S* noundef bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @__const.main.s to %struct.S*))
  %2 = lshr i64 %1, 32
  %3 = trunc i64 %2 to i32
  %4 = call i32 @foo(i32 noundef %3)
  %.not = icmp eq i32 %4, -17973592
  br i1 %.not, label %5, label %12

5:                                                ; preds = %0
  %6 = trunc i64 %1 to i32
  %7 = call i32 @foo(i32 noundef %6)
  %.mask = and i32 %7, -256
  %.not1 = icmp eq i32 %.mask, -559038976
  br i1 %.not1, label %8, label %12

8:                                                ; preds = %5
  %9 = trunc i64 %1 to i32
  %10 = call i32 @foo(i32 noundef %9)
  %11 = and i32 %10, 255
  %.not2 = icmp eq i32 %11, 239
  br i1 %.not2, label %13, label %12

12:                                               ; preds = %8, %5, %0
  call void @abort() #6
  unreachable

13:                                               ; preds = %8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
