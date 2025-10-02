; ModuleID = './20170401-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20170401-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.source = type { i32, i32 }
%struct.packed_ushort = type { i16 }

@flag = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.source, align 4
  %2 = alloca %struct.packed_ushort, align 2
  %3 = getelementptr inbounds %struct.source, %struct.source* %1, i64 0, i32 0
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds %struct.source, %struct.source* %1, i64 0, i32 1
  store i32 0, i32* %4, align 4
  store i32 0, i32* @flag, align 4
  br label %5

5:                                                ; preds = %20, %0
  %.0 = phi i32 [ 0, %0 ], [ %21, %20 ]
  %6 = icmp ult i32 %.0, 16
  br i1 %6, label %7, label %22

7:                                                ; preds = %5
  %8 = call i16 @next(%struct.source* noundef nonnull %1)
  %9 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %2, i64 0, i32 0
  store i16 %8, i16* %9, align 2
  %10 = icmp eq i32 %.0, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %2, i64 0, i32 0
  %13 = load i16, i16* %12, align 2
  %.not2 = icmp eq i16 %13, -1
  br i1 %.not2, label %14, label %18

14:                                               ; preds = %11, %7
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %19, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %2, i64 0, i32 0
  %17 = load i16, i16* %16, align 2
  %.not1 = icmp eq i16 %17, 0
  br i1 %.not1, label %19, label %18

18:                                               ; preds = %15, %11
  call void @abort() #5
  unreachable

19:                                               ; preds = %15, %14
  br label %20

20:                                               ; preds = %19
  %21 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !4

22:                                               ; preds = %5
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
  br i1 %.not, label %14, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @flag, align 4
  %.not1 = icmp eq i32 %8, 0
  br i1 %.not1, label %12, label %9

9:                                                ; preds = %7
  store i32 0, i32* @flag, align 4
  call void @fetch(%struct.source* noundef %0)
  %10 = call i16 @next(%struct.source* noundef %0)
  %11 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %2, i64 0, i32 0
  store i16 %10, i16* %11, align 2
  br label %16

12:                                               ; preds = %7
  store i32 1, i32* @flag, align 4
  %13 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %2, i64 0, i32 0
  store i16 -1, i16* %13, align 2
  br label %16

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %2, i64 0, i32 0
  store i16 0, i16* %15, align 2
  br label %16

16:                                               ; preds = %14, %12, %9
  %17 = getelementptr inbounds %struct.packed_ushort, %struct.packed_ushort* %2, i64 0, i32 0
  %18 = load i16, i16* %17, align 2
  ret i16 %18
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
