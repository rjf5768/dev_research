; ModuleID = './990628-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990628-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_record = type { i32, [100 x i32] }
%struct.anon = type { i64 }

@fetch.fetch_count = internal global i32 0, align 4
@data_tmp = dso_local global %struct.data_record zeroinitializer, align 4
@sqlca = dso_local global %struct.anon zeroinitializer, align 8
@data_ptr = dso_local global %struct.data_record* null, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @num_records() #0 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @fetch() #1 {
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(404) bitcast (%struct.data_record* @data_tmp to i8*), i8 85, i64 404, i1 false)
  %1 = load i32, i32* @fetch.fetch_count, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @fetch.fetch_count, align 4
  %3 = icmp sgt i32 %1, 0
  %4 = select i1 %3, i64 100, i64 0
  store i64 %4, i64* getelementptr inbounds (%struct.anon, %struct.anon* @sqlca, i64 0, i32 0), align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @load_data() #3 {
  %1 = call i32 @num_records()
  %2 = sext i32 %1 to i64
  %3 = mul nsw i64 %2, 404
  %4 = call noalias i8* @malloc(i64 noundef %3) #8
  store i8* %4, i8** bitcast (%struct.data_record** @data_ptr to i8**), align 8
  %5 = sext i32 %1 to i64
  %6 = mul nsw i64 %5, 404
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 -86, i64 %6, i1 false)
  call void @fetch()
  %7 = load %struct.data_record*, %struct.data_record** @data_ptr, align 8
  br label %8

8:                                                ; preds = %11, %0
  %.0 = phi %struct.data_record* [ %7, %0 ], [ %12, %11 ]
  %9 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @sqlca, i64 0, i32 0), align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.data_record, %struct.data_record* %.0, i64 1
  %13 = bitcast %struct.data_record* %.0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(404) %13, i8* noundef nonnull align 4 dereferenceable(404) bitcast (%struct.data_record* @data_tmp to i8*), i64 404, i1 false)
  call void @fetch()
  br label %8, !llvm.loop !4

14:                                               ; preds = %8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #6 {
  call void @load_data()
  %1 = load %struct.data_record*, %struct.data_record** @data_ptr, align 8
  %2 = getelementptr inbounds %struct.data_record, %struct.data_record* %1, i64 0, i32 0
  %3 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %3, 1431655765
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #9
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %0
  call void @exit(i32 noundef 0) #9
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %5, %4
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #7

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
