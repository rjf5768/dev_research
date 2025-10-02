; ModuleID = './sym_tab.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/simulator/sym_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @INIT_SYM_TAB(%struct.SYMBOL_TABLE_ENTRY** nocapture noundef writeonly %0) #0 {
  store %struct.SYMBOL_TABLE_ENTRY* null, %struct.SYMBOL_TABLE_ENTRY** %0, align 8
  ret void
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define dso_local %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(i8* noundef readonly %0, i8* noundef readonly %1, %struct.SYMBOL_TABLE_ENTRY** nocapture noundef readonly %2) #1 {
  br label %4

4:                                                ; preds = %12, %3
  %.01.in = phi %struct.SYMBOL_TABLE_ENTRY** [ %2, %3 ], [ %13, %12 ]
  %.01 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %.01.in, align 8
  %.not = icmp eq %struct.SYMBOL_TABLE_ENTRY* %.01, null
  br i1 %.not, label %14, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %.01, i64 0, i32 1, i64 0
  %7 = call i32 @strcmp(i8* noundef nonnull %6, i8* noundef nonnull dereferenceable(1) %0) #5
  %.not3 = icmp eq i32 %7, 0
  br i1 %.not3, label %8, label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %.01, i64 0, i32 0, i64 0
  %10 = call i32 @strcmp(i8* noundef nonnull %9, i8* noundef nonnull dereferenceable(1) %1) #5
  %.not4 = icmp eq i32 %10, 0
  br i1 %.not4, label %11, label %12

11:                                               ; preds = %8
  br label %15

12:                                               ; preds = %8, %5
  %13 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %.01, i64 0, i32 5
  br label %4, !llvm.loop !4

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %14, %11
  %.0 = phi %struct.SYMBOL_TABLE_ENTRY* [ %.01, %11 ], [ null, %14 ]
  ret %struct.SYMBOL_TABLE_ENTRY* %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @INSERT_IN_SYM_TAB(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, %struct.SYMBOL_TABLE_ENTRY** nocapture noundef %4) #3 {
  %6 = call %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(i8* noundef %0, i8* noundef %1, %struct.SYMBOL_TABLE_ENTRY** noundef %4)
  %7 = icmp eq %struct.SYMBOL_TABLE_ENTRY* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #6
  %10 = bitcast i8* %9 to %struct.SYMBOL_TABLE_ENTRY*
  %11 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %4, align 8
  %12 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %10, i64 0, i32 5
  store %struct.SYMBOL_TABLE_ENTRY* %11, %struct.SYMBOL_TABLE_ENTRY** %12, align 8
  %13 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %10, i64 0, i32 1, i64 0
  %14 = call i8* @strcpy(i8* noundef nonnull %13, i8* noundef nonnull dereferenceable(1) %0) #6
  %15 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %10, i64 0, i32 0, i64 0
  %16 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %15, i8* noundef nonnull dereferenceable(1) %1) #6
  %17 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %10, i64 0, i32 2
  store i32 %2, i32* %17, align 4
  %18 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %10, i64 0, i32 3
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %10, i64 0, i32 4
  store i32 %3, i32* %19, align 4
  %20 = bitcast %struct.SYMBOL_TABLE_ENTRY** %4 to i8**
  store i8* %9, i8** %20, align 8
  br label %22

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21, %8
  %.0 = phi i32 [ 1, %8 ], [ 0, %21 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
