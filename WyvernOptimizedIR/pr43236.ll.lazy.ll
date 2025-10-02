; ModuleID = './pr43236.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43236.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [30 x i8], align 16
  %2 = alloca [30 x i8], align 16
  %3 = alloca [30 x i8], align 16
  %4 = getelementptr inbounds [30 x i8], [30 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(30) %4, i8 1, i64 30, i1 false)
  %5 = getelementptr inbounds [30 x i8], [30 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(30) %5, i8 1, i64 30, i1 false)
  br label %6

6:                                                ; preds = %9, %0
  %.0 = phi i32 [ 20, %0 ], [ %7, %9 ]
  %7 = add nsw i32 %.0, -1
  %8 = icmp sgt i32 %.0, 10
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [30 x i8], [30 x i8]* %1, i64 0, i64 %10
  store i8 0, i8* %11, align 1
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds [30 x i8], [30 x i8]* %2, i64 0, i64 %12
  store i8 0, i8* %13, align 1
  br label %6, !llvm.loop !4

14:                                               ; preds = %6
  %15 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(30) %15, i8 1, i64 30, i1 false)
  %16 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i64 0, i64 10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(10) %16, i8 0, i64 10, i1 false)
  %17 = getelementptr inbounds [30 x i8], [30 x i8]* %1, i64 0, i64 0
  %18 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(30) %17, i8* noundef nonnull dereferenceable(30) %18, i64 30)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds [30 x i8], [30 x i8]* %2, i64 0, i64 0
  %21 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i64 0, i64 0
  %bcmp1 = call i32 @bcmp(i8* noundef nonnull dereferenceable(30) %20, i8* noundef nonnull dereferenceable(30) %21, i64 30)
  %.not2 = icmp eq i32 %bcmp1, 0
  br i1 %.not2, label %23, label %22

22:                                               ; preds = %19, %14
  call void @abort() #5
  unreachable

23:                                               ; preds = %19
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
