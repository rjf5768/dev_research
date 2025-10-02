; ModuleID = './20051113-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20051113-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Struct3 = type { i32, [0 x %union.Union] }
%union.Union = type { %struct.Struct2 }
%struct.Struct2 = type <{ i16, i16, i16, i64, i64, i64 }>

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @Sum(%struct.Struct3* nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %7, %1
  %.01 = phi i64 [ 0, %1 ], [ %11, %7 ]
  %.0 = phi i32 [ 0, %1 ], [ %12, %7 ]
  %3 = getelementptr inbounds %struct.Struct3, %struct.Struct3* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 1
  %5 = icmp slt i32 %.0, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds %struct.Struct3, %struct.Struct3* %0, i64 0, i32 1, i64 %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 1
  %11 = add i64 %.01, %10
  %12 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

13:                                               ; preds = %2
  ret i64 %.01
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @Sum2(%struct.Struct3* nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %7, %1
  %.01 = phi i64 [ 0, %1 ], [ %11, %7 ]
  %.0 = phi i32 [ 0, %1 ], [ %12, %7 ]
  %3 = getelementptr inbounds %struct.Struct3, %struct.Struct3* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 1
  %5 = icmp slt i32 %.0, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds %struct.Struct3, %struct.Struct3* %0, i64 0, i32 1, i64 %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 1
  %11 = add nsw i64 %.01, %10
  %12 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !6

13:                                               ; preds = %2
  ret i64 %.01
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call dereferenceable_or_null(94) i8* @malloc(i64 noundef 94) #5
  %2 = bitcast i8* %1 to %struct.Struct3*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(94) %1, i8 0, i64 94, i1 false)
  %3 = getelementptr inbounds %struct.Struct3, %struct.Struct3* %2, i64 0, i32 0
  store i32 3, i32* %3, align 1
  %4 = getelementptr inbounds %struct.Struct3, %struct.Struct3* %2, i64 0, i32 1, i64 0, i32 0, i32 3
  store i64 555, i64* %4, align 1
  %5 = getelementptr inbounds %struct.Struct3, %struct.Struct3* %2, i64 0, i32 1, i64 1, i32 0, i32 3
  store i64 999, i64* %5, align 1
  %6 = getelementptr inbounds %struct.Struct3, %struct.Struct3* %2, i64 0, i32 1, i64 2, i32 0, i32 3
  store i64 4311810305, i64* %6, align 1
  %7 = getelementptr inbounds %struct.Struct3, %struct.Struct3* %2, i64 0, i32 1, i64 0, i32 0, i32 4
  store i64 555, i64* %7, align 1
  %8 = getelementptr inbounds %struct.Struct3, %struct.Struct3* %2, i64 0, i32 1, i64 1, i32 0, i32 4
  store i64 999, i64* %8, align 1
  %9 = getelementptr inbounds %struct.Struct3, %struct.Struct3* %2, i64 0, i32 1, i64 2, i32 0, i32 4
  store i64 4311810305, i64* %9, align 1
  %10 = call i64 @Sum(%struct.Struct3* noundef %2)
  %.not = icmp eq i64 %10, 4311811859
  br i1 %.not, label %12, label %11

11:                                               ; preds = %0
  call void @abort() #6
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %0
  %13 = call i64 @Sum2(%struct.Struct3* noundef %2)
  %.not1 = icmp eq i64 %13, 4311811859
  br i1 %.not1, label %15, label %14

14:                                               ; preds = %12
  call void @abort() #6
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %12
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %14, %11
  unreachable
}

declare dso_local i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare dso_local void @abort() #4

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !5}
