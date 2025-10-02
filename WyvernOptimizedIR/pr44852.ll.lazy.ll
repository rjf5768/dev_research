; ModuleID = './pr44852.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr44852.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.s = private unnamed_addr constant [7 x i8] c"999999\00", align 1
@.str = private unnamed_addr constant [7 x i8] c"199999\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sf(i8* noundef %0, i8* noundef readnone %1) #0 {
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !4
  br label %3

3:                                                ; preds = %10, %2
  %.0 = phi i8* [ %0, %2 ], [ %4, %10 ]
  %4 = getelementptr inbounds i8, i8* %.0, i64 -1
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 57
  br i1 %6, label %7, label %.loopexit

7:                                                ; preds = %3
  %8 = icmp eq i8* %4, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  store i8 48, i8* %4, align 1
  br label %11

10:                                               ; preds = %7
  br label %3, !llvm.loop !5

.loopexit:                                        ; preds = %3
  br label %11

11:                                               ; preds = %.loopexit, %9
  %12 = load i8, i8* %4, align 1
  %13 = add i8 %12, 1
  store i8 %13, i8* %4, align 1
  ret i8* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [7 x i8], align 1
  %2 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7) %2, i8* noundef nonnull align 1 dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main.s, i64 0, i64 0), i64 7, i1 false)
  %3 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 2
  %4 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 0
  %5 = call i8* @sf(i8* noundef nonnull %3, i8* noundef nonnull %4)
  %6 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 1
  %.not = icmp eq i8* %5, %6
  br i1 %.not, label %7, label %9

7:                                                ; preds = %0
  %8 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %8, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 7)
  %.not1 = icmp eq i32 %bcmp, 0
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %7, %0
  call void @abort() #6
  unreachable

10:                                               ; preds = %7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 70}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
