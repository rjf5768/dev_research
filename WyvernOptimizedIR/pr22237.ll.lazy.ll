; ModuleID = './pr22237.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/pr22237.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.u = type { %struct.anon }
%struct.anon = type { %struct.s, i32 }
%struct.s = type { [256 x i8] }

@v = internal global %union.u zeroinitializer, align 4
@v0 = internal global %union.u zeroinitializer, align 4
@p = internal global %struct.s* getelementptr inbounds (%union.u, %union.u* @v, i32 0, i32 0, i32 0), align 8
@q = internal global %struct.s* bitcast (i8* getelementptr inbounds (%union.u, %union.u* @v, i32 0, i32 0, i32 0, i32 0, i64 4) to %struct.s*), align 8

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @main_test() #0 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(260) getelementptr inbounds (%union.u, %union.u* @v, i64 0, i32 0, i32 0, i32 0, i64 0), i8* noundef nonnull align 4 dereferenceable(260) getelementptr inbounds (%union.u, %union.u* @v0, i64 0, i32 0, i32 0, i32 0, i64 0), i64 260, i1 false)
  %1 = load %struct.s*, %struct.s** @p, align 8
  call void @init(%struct.s* noundef %1)
  call void @qp()
  %2 = load %struct.s*, %struct.s** @q, align 8
  call void @check(%struct.s* noundef %2)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(260) getelementptr inbounds (%union.u, %union.u* @v, i64 0, i32 0, i32 0, i32 0, i64 0), i8* noundef nonnull align 4 dereferenceable(260) getelementptr inbounds (%union.u, %union.u* @v0, i64 0, i32 0, i32 0, i32 0, i64 0), i64 260, i1 false)
  %3 = load %struct.s*, %struct.s** @q, align 8
  call void @init(%struct.s* noundef %3)
  call void @pq()
  %4 = load %struct.s*, %struct.s** @p, align 8
  call void @check(%struct.s* noundef %4)
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define internal void @init(%struct.s* nocapture noundef writeonly %0) #2 {
  br label %2

2:                                                ; preds = %8, %1
  %.0 = phi i32 [ 0, %1 ], [ %9, %8 ]
  %3 = icmp ult i32 %.0, 256
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = trunc i32 %.0 to i8
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds %struct.s, %struct.s* %0, i64 0, i32 0, i64 %6
  store i8 %5, i8* %7, align 1
  br label %8

8:                                                ; preds = %4
  %9 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

10:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal void @qp() #3 {
  %1 = alloca %struct.s, align 1
  %2 = load i8*, i8** bitcast (%struct.s** @q to i8**), align 8
  call void @rp(%struct.s* nonnull sret(%struct.s) align 1 %1)
  %3 = getelementptr inbounds %struct.s, %struct.s* %1, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(256) %2, i8* noundef nonnull align 1 dereferenceable(256) %3, i64 256, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check(%struct.s* nocapture noundef readonly %0) #4 {
  br label %2

2:                                                ; preds = %11, %1
  %.0 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %3 = icmp ult i32 %.0, 256
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds %struct.s, %struct.s* %0, i64 0, i32 0, i64 %5
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %.not = icmp eq i32 %.0, %8
  br i1 %.not, label %10, label %9

9:                                                ; preds = %4
  call void @abort() #6
  unreachable

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !6

13:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal void @pq() #3 {
  %1 = alloca %struct.s, align 1
  %2 = load i8*, i8** bitcast (%struct.s** @p to i8**), align 8
  call void @rq(%struct.s* nonnull sret(%struct.s) align 1 %1)
  %3 = getelementptr inbounds %struct.s, %struct.s* %1, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(256) %2, i8* noundef nonnull align 1 dereferenceable(256) %3, i64 256, i1 false)
  ret void
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal void @rp(%struct.s* noalias nocapture writeonly sret(%struct.s) align 1 %0) #3 {
  %2 = load i8*, i8** bitcast (%struct.s** @p to i8**), align 8
  %3 = getelementptr inbounds %struct.s, %struct.s* %0, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(256) %3, i8* noundef nonnull align 1 dereferenceable(256) %2, i64 256, i1 false)
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #5

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal void @rq(%struct.s* noalias nocapture writeonly sret(%struct.s) align 1 %0) #3 {
  %2 = load i8*, i8** bitcast (%struct.s** @q to i8**), align 8
  %3 = getelementptr inbounds %struct.s, %struct.s* %0, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(256) %3, i8* noundef nonnull align 1 dereferenceable(256) %2, i64 256, i1 false)
  ret void
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
