; ModuleID = './builtin-prefetch-6.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtin-prefetch-6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bad_addr = dso_local global [65 x i32*] zeroinitializer, align 16
@arr_used = dso_local global i32 0, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @init_addrs() #0 {
  br label %1

1:                                                ; preds = %9, %0
  %.0 = phi i32 [ 0, %0 ], [ %10, %9 ]
  %2 = icmp ult i32 %.0, 64
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = shl i64 1, %4
  %6 = inttoptr i64 %5 to i32*
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [65 x i32*], [65 x i32*]* @bad_addr, i64 0, i64 %7
  store i32* %6, i32** %8, align 8
  br label %9

9:                                                ; preds = %3
  %10 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

11:                                               ; preds = %1
  store i32 65, i32* @arr_used, align 4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @prefetch_for_read() #1 {
  br label %1

1:                                                ; preds = %8, %0
  %.0 = phi i32 [ 0, %0 ], [ %9, %8 ]
  %2 = icmp ult i32 %.0, 65
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [65 x i32*], [65 x i32*]* @bad_addr, i64 0, i64 %4
  %6 = bitcast i32** %5 to i8**
  %7 = load i8*, i8** %6, align 8
  call void @llvm.prefetch.p0i8(i8* %7, i32 0, i32 0, i32 1)
  br label %8

8:                                                ; preds = %3
  %9 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

10:                                               ; preds = %1
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0i8(i8* nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @prefetch_for_write() #1 {
  br label %1

1:                                                ; preds = %8, %0
  %.0 = phi i32 [ 0, %0 ], [ %9, %8 ]
  %2 = icmp ult i32 %.0, 65
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [65 x i32*], [65 x i32*]* @bad_addr, i64 0, i64 %4
  %6 = bitcast i32** %5 to i8**
  %7 = load i8*, i8** %6, align 8
  call void @llvm.prefetch.p0i8(i8* %7, i32 1, i32 0, i32 1)
  br label %8

8:                                                ; preds = %3
  %9 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !7

10:                                               ; preds = %1
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  call void @init_addrs()
  call void @prefetch_for_read()
  call void @prefetch_for_write()
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
