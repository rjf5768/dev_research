; ModuleID = './pr45070.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr45070.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.source = type { i32, i32, i32 }
%struct.packed_ushort = type { i16 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.source, align 4
  %2 = alloca %struct.packed_ushort, align 2
  %3 = getelementptr inbounds %struct.source, %struct.source* %1, i64 0, i32 0
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds %struct.source, %struct.source* %1, i64 0, i32 1
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.source, %struct.source* %1, i64 0, i32 2
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %21, %0
  %.0 = phi i32 [ 0, %0 ], [ %22, %21 ]
  %7 = icmp ult i32 %.0, 16
  br i1 %7, label %8, label %23

8:                                                ; preds = %6
  %9 = call i16 @next(%struct.source* noundef nonnull %1)
  %10 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %2, i64 0, i32 0
  store i16 %9, i16* %10, align 2
  %11 = icmp eq i32 %.0, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %2, i64 0, i32 0
  %14 = load i16, i16* %13, align 2
  %.not2 = icmp eq i16 %14, -1
  br i1 %.not2, label %15, label %19

15:                                               ; preds = %12, %8
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %20, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %2, i64 0, i32 0
  %18 = load i16, i16* %17, align 2
  %.not1 = icmp eq i16 %18, 0
  br i1 %.not1, label %20, label %19

19:                                               ; preds = %16, %12
  call void @abort() #5
  unreachable

20:                                               ; preds = %16, %15
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !4

23:                                               ; preds = %6
  ret i32 0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal i16 @next(%struct.source* nocapture noundef %0) #1 {
  %2 = alloca %struct.packed_ushort, align 2
  %3 = getelementptr inbounds %struct.source, %struct.source* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds %struct.source, %struct.source* %0, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  %.not = icmp slt i32 %4, %6
  br i1 %.not, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.source, %struct.source* %0, i64 0, i32 2
  %9 = load i32, i32* %8, align 4
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %14, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.source, %struct.source* %0, i64 0, i32 2
  store i32 0, i32* %11, align 4
  call void @fetch(%struct.source* noundef %0)
  %12 = call i16 @next(%struct.source* noundef %0)
  %13 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %2, i64 0, i32 0
  store i16 %12, i16* %13, align 2
  br label %19

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.source, %struct.source* %0, i64 0, i32 2
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %2, i64 0, i32 0
  store i16 -1, i16* %16, align 2
  br label %19

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %2, i64 0, i32 0
  store i16 0, i16* %18, align 2
  br label %19

19:                                               ; preds = %17, %14, %10
  %20 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %2, i64 0, i32 0
  %21 = load i16, i16* %20, align 2
  ret i16 %21
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @fetch(%struct.source* nocapture noundef writeonly %0) #3 {
  %2 = getelementptr inbounds %struct.source, %struct.source* %0, i64 0, i32 1
  store i32 128, i32* %2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
