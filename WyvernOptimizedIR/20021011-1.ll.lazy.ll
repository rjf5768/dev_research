; ModuleID = './20021011-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20021011-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = dso_local global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [9 x i8] c"mystring\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(9) getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 9, i1 false) #5
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 0), i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 9)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %2, label %1

1:                                                ; preds = %0
  call void @abort() #6
  br label %UnifiedUnreachableBlock

2:                                                ; preds = %0
  br label %3

3:                                                ; preds = %13, %2
  %.0 = phi i32 [ 0, %2 ], [ %14, %13 ]
  %4 = icmp ult i32 %.0, 16
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* @buf, i64 0, i64 %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(9) %7, i8* noundef nonnull align 1 dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 9, i1 false) #5
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* @buf, i64 0, i64 %8
  %10 = call i32 @strcmp(i8* noundef nonnull %9, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #5
  %.not1 = icmp eq i32 %10, 0
  br i1 %.not1, label %12, label %11

11:                                               ; preds = %5
  call void @abort() #6
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %12
  %14 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !4

15:                                               ; preds = %3
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %11, %1
  unreachable
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
