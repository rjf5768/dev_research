; ModuleID = './pr43784.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43784.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { [256 x i8] }
%union.u = type { %struct.anon }
%struct.anon = type { %struct.s, i32 }

@p = internal global %struct.s* getelementptr inbounds (%union.u, %union.u* @v, i32 0, i32 0, i32 0), align 8
@q = internal global %struct.s* bitcast (i8* getelementptr inbounds (%union.u, %union.u* @v, i32 0, i32 0, i32 0, i32 0, i64 4) to %struct.s*), align 8
@v = internal global %union.u zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %8, %0
  %.0 = phi i32 [ 0, %0 ], [ %9, %8 ]
  %2 = icmp ult i32 %.0, 256
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = trunc i32 %.0 to i8
  %5 = load %struct.s*, %struct.s** @p, align 8
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds %struct.s, %struct.s* %5, i64 0, i32 0, i64 %6
  store i8 %4, i8* %7, align 1
  br label %8

8:                                                ; preds = %3
  %9 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

10:                                               ; preds = %1
  call void @qp()
  br label %11

11:                                               ; preds = %21, %10
  %.1 = phi i32 [ 0, %10 ], [ %22, %21 ]
  %12 = icmp ult i32 %.1, 256
  br i1 %12, label %13, label %23

13:                                               ; preds = %11
  %14 = load %struct.s*, %struct.s** @q, align 8
  %15 = zext i32 %.1 to i64
  %16 = getelementptr inbounds %struct.s, %struct.s* %14, i64 0, i32 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %.not = icmp eq i32 %.1, %18
  br i1 %.not, label %20, label %19

19:                                               ; preds = %13
  call void @abort() #4
  unreachable

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %.1, 1
  br label %11, !llvm.loop !6

23:                                               ; preds = %11
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal void @qp() #1 {
  %1 = alloca %struct.s, align 1
  %2 = load i8*, i8** bitcast (%struct.s** @q to i8**), align 8
  call void @rp(%struct.s* nonnull sret(%struct.s) align 1 %1)
  %3 = getelementptr inbounds %struct.s, %struct.s* %1, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(256) %2, i8* noundef nonnull align 1 dereferenceable(256) %3, i64 256, i1 false)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal void @rp(%struct.s* noalias nocapture writeonly sret(%struct.s) align 1 %0) #1 {
  %2 = load i8*, i8** bitcast (%struct.s** @p to i8**), align 8
  %3 = getelementptr inbounds %struct.s, %struct.s* %0, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(256) %3, i8* noundef nonnull align 1 dereferenceable(256) %2, i64 256, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
