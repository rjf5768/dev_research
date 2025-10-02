; ModuleID = './20000815-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000815-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { i8*, %struct.table_elt*, %struct.table_elt*, %struct.table_elt*, %struct.table_elt*, %struct.table_elt*, %struct.table_elt*, i32, i32, i8, i8, i8, i8 }
%struct.write_data = type { i8, [3 x i8] }

@table = internal global [32 x %struct.table_elt*] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @invalidate_memory(%struct.write_data* nocapture noundef readonly %0) #0 {
  %2 = getelementptr %struct.write_data, %struct.write_data* %0, i64 0, i32 0
  %3 = load i8, i8* %2, align 4
  br label %4

4:                                                ; preds = %29, %1
  %.01 = phi i32 [ 0, %1 ], [ %30, %29 ]
  %5 = icmp ult i32 %.01, 31
  br i1 %5, label %6, label %31

6:                                                ; preds = %4
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds [32 x %struct.table_elt*], [32 x %struct.table_elt*]* @table, i64 0, i64 %7
  %9 = load %struct.table_elt*, %struct.table_elt** %8, align 8
  br label %10

10:                                               ; preds = %27, %6
  %.0 = phi %struct.table_elt* [ %9, %6 ], [ %13, %27 ]
  %.not = icmp eq %struct.table_elt* %.0, null
  br i1 %.not, label %28, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %.0, i64 0, i32 1
  %13 = load %struct.table_elt*, %struct.table_elt** %12, align 8
  %14 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %.0, i64 0, i32 9
  %15 = load i8, i8* %14, align 8
  %.not2 = icmp eq i8 %15, 0
  br i1 %.not2, label %26, label %16

16:                                               ; preds = %11
  %.mask = and i8 %3, 8
  %.not3 = icmp eq i8 %.mask, 0
  br i1 %.not3, label %17, label %25

17:                                               ; preds = %16
  %.mask5 = and i8 %3, 4
  %.not4 = icmp eq i8 %.mask5, 0
  br i1 %.not4, label %21, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %.0, i64 0, i32 10
  %20 = load i8, i8* %19, align 1
  %.not7 = icmp eq i8 %20, 0
  br i1 %.not7, label %21, label %25

21:                                               ; preds = %18, %17
  %22 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %.0, i64 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @cse_rtx_addr_varies_p(i8* noundef %23)
  %.not6 = icmp eq i32 %24, 0
  br i1 %.not6, label %26, label %25

25:                                               ; preds = %21, %18, %16
  call void @remove_from_table(%struct.table_elt* noundef nonnull %.0, i32 noundef %.01)
  br label %26

26:                                               ; preds = %25, %21, %11
  br label %27

27:                                               ; preds = %26
  br label %10, !llvm.loop !4

28:                                               ; preds = %10
  br label %29

29:                                               ; preds = %28
  %30 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !6

31:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @cse_rtx_addr_varies_p(i8* nocapture noundef readnone %0) #1 {
  ret i32 0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @remove_from_table(%struct.table_elt* nocapture noundef readnone %0, i32 noundef %1) #2 {
  call void @abort() #5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %tmpcast = bitcast i32* %1 to %struct.write_data*
  %2 = alloca %struct.table_elt, align 8
  %3 = bitcast %struct.table_elt* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %3, i8 0, i64 72, i1 false)
  %4 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %2, i64 0, i32 9
  store i8 1, i8* %4, align 8
  store %struct.table_elt* %2, %struct.table_elt** getelementptr inbounds ([32 x %struct.table_elt*], [32 x %struct.table_elt*]* @table, i64 0, i64 0), align 16
  store i32 0, i32* %1, align 4
  %5 = bitcast i32* %1 to i8*
  store i8 6, i8* %5, align 4
  call void @invalidate_memory(%struct.write_data* noundef nonnull %tmpcast)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
