; ModuleID = './20001026-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001026-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brfic_args = type { i8*, i8*, %struct.realvaluetype }
%struct.realvaluetype = type { [3 x i64] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.brfic_args, align 8
  %2 = bitcast %struct.brfic_args* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %3 = bitcast %struct.brfic_args* %1 to i8*
  call void @build_real_from_int_cst_1(i8* noundef nonnull %3)
  %4 = getelementptr inbounds %struct.brfic_args, %struct.brfic_args* %1, i64 0, i32 2, i32 0, i64 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #6
  unreachable

8:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal void @build_real_from_int_cst_1(i8* nocapture noundef %0) #2 {
  %2 = alloca %struct.realvaluetype, align 8
  %3 = getelementptr inbounds i8, i8* %0, i64 16
  %4 = bitcast i8* %0 to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %0, i64 8
  %7 = bitcast i8* %6 to i8**
  %8 = load i8*, i8** %7, align 8
  call void @real_value_from_int_cst(%struct.realvaluetype* nonnull sret(%struct.realvaluetype) align 8 %2, i8* noundef %5, i8* noundef %8)
  %9 = bitcast %struct.realvaluetype* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %3, i8* noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define internal void @real_value_from_int_cst(%struct.realvaluetype* noalias nocapture writeonly sret(%struct.realvaluetype) align 8 %0, i8* nocapture noundef readnone %1, i8* nocapture noundef readnone %2) #4 {
  br label %4

4:                                                ; preds = %9, %3
  %.0 = phi i32 [ 0, %3 ], [ %10, %9 ]
  %5 = icmp ult i32 %.0, 3
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.realvaluetype, %struct.realvaluetype* %0, i64 0, i32 0, i64 %7
  store i64 -1, i64* %8, align 8
  br label %9

9:                                                ; preds = %6
  %10 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

11:                                               ; preds = %4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
