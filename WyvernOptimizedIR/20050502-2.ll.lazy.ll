; ModuleID = './20050502-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050502-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.x = private unnamed_addr constant [11 x i8] c"IJKLMNOPQR\00", align 1
@.str = private unnamed_addr constant [11 x i8] c"IJKL\00NOPQR\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"IJKLMNOP\00R\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @foo(i8* nocapture noundef writeonly %0) #0 {
  br label %2

2:                                                ; preds = %5, %1
  %.0 = phi i32 [ 0, %1 ], [ %6, %5 ]
  %3 = icmp ult i32 %.0, 2
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4
  %6 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

7:                                                ; preds = %2
  %8 = shl nuw nsw i32 %.0, 1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  store i8 0, i8* %10, align 1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @bar(i8* nocapture noundef writeonly %0) #0 {
  br label %2

2:                                                ; preds = %5, %1
  %.0 = phi i32 [ 0, %1 ], [ %6, %5 ]
  %3 = icmp ult i32 %.0, 2
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4
  %6 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !6

7:                                                ; preds = %2
  %8 = shl nsw i32 %.0, 2
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  store i8 0, i8* %10, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [11 x i8], align 1
  %2 = getelementptr inbounds [11 x i8], [11 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(11) %2, i8* noundef nonnull align 1 dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @__const.main.x, i64 0, i64 0), i64 11, i1 false)
  %3 = getelementptr inbounds [11 x i8], [11 x i8]* %1, i64 0, i64 0
  call void @foo(i8* noundef nonnull %3)
  %4 = getelementptr inbounds [11 x i8], [11 x i8]* %1, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(11) %4, i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 11)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #6
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %0
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %1, i64 0, i64 4
  store i8 77, i8* %7, align 1
  %8 = getelementptr inbounds [11 x i8], [11 x i8]* %1, i64 0, i64 0
  call void @bar(i8* noundef nonnull %8)
  %9 = getelementptr inbounds [11 x i8], [11 x i8]* %1, i64 0, i64 0
  %bcmp1 = call i32 @bcmp(i8* noundef nonnull dereferenceable(11) %9, i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 11)
  %.not2 = icmp eq i32 %bcmp1, 0
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %6
  call void @abort() #6
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %6
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %10, %5
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #5

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
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
