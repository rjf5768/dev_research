; ModuleID = './20010124-1-lib.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/20010124-1-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [1024 x i8] }
%union.U = type { %struct.anon }
%struct.anon = type { i32, %struct.S }

@inside_main = external dso_local global i32, align 4

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @f(%struct.S* noalias nocapture writeonly sret(%struct.S) align 1 %0, %struct.S* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i64 0
  %4 = getelementptr %struct.S, %struct.S* %1, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1024) %3, i8* noundef nonnull align 1 dereferenceable(1024) %4, i64 1024, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @g(%union.U* nocapture noundef %0) #2 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef returned writeonly %0, i8* noundef readonly %1, i64 noundef %2) #3 {
  %4 = load i32, i32* @inside_main, align 4
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %18, label %5

5:                                                ; preds = %3
  %6 = icmp ult i8* %0, %1
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = getelementptr i8, i8* %0, i64 %2
  %9 = icmp ugt i8* %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  call void @abort() #5
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %7, %5
  %12 = icmp ult i8* %1, %0
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = getelementptr i8, i8* %1, i64 %2
  %15 = icmp ugt i8* %14, %0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @abort() #5
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %13, %11
  br label %26

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %20, %18
  %.03 = phi i64 [ %2, %18 ], [ %21, %20 ]
  %.02 = phi i8* [ %0, %18 ], [ %24, %20 ]
  %.01 = phi i8* [ %1, %18 ], [ %22, %20 ]
  %.not4 = icmp eq i64 %.03, 0
  br i1 %.not4, label %25, label %20

20:                                               ; preds = %19
  %21 = add i64 %.03, -1
  %22 = getelementptr inbounds i8, i8* %.01, i64 1
  %23 = load i8, i8* %.01, align 1
  %24 = getelementptr inbounds i8, i8* %.02, i64 1
  store i8 %23, i8* %.02, align 1
  br label %19, !llvm.loop !4

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %17
  ret i8* %0

UnifiedUnreachableBlock:                          ; preds = %16, %10
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
