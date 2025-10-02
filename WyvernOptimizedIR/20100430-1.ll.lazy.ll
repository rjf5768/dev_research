; ModuleID = './20100430-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20100430-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info_t = type { i32, %struct.packed_struct }
%struct.packed_struct = type { %struct.packed_struct1, [4 x %struct.packed_struct2] }
%struct.packed_struct1 = type { i8, i8 }
%struct.packed_struct2 = type <{ i8, i8, [104 x i16], [13 x i8] }>

@g = internal global i16 0, align 2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.info_t, align 4
  %2 = getelementptr inbounds %struct.info_t, %struct.info_t* %1, i64 0, i32 1, i32 0, i32 0
  store i8 2, i8* %2, align 4
  %3 = getelementptr inbounds %struct.info_t, %struct.info_t* %1, i64 0, i32 1, i32 1, i64 1, i32 1
  store i8 8, i8* %3, align 2
  %4 = getelementptr inbounds %struct.info_t, %struct.info_t* %1, i64 0, i32 1, i32 1, i64 0, i32 1
  store i8 8, i8* %4, align 1
  %5 = call i32 @foo(%struct.info_t* noundef nonnull %1)
  ret i32 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @foo(%struct.info_t* nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %22, %1
  %.01 = phi i32 [ 0, %1 ], [ %23, %22 ]
  %3 = getelementptr inbounds %struct.info_t, %struct.info_t* %0, i64 0, i32 1, i32 0, i32 0
  %4 = load i8, i8* %3, align 4
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %.01, %5
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %19, %7
  %.0 = phi i32 [ 0, %7 ], [ %20, %19 ]
  %9 = zext i32 %.01 to i64
  %10 = getelementptr inbounds %struct.info_t, %struct.info_t* %0, i64 0, i32 1, i32 1, i64 %9, i32 1
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ult i32 %.0, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = zext i32 %.01 to i64
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds %struct.info_t, %struct.info_t* %0, i64 0, i32 1, i32 1, i64 %15, i32 2, i64 %16
  %18 = load i16, i16* %17, align 1
  call void @dummy(i16 noundef zeroext %18)
  br label %19

19:                                               ; preds = %14
  %20 = add nuw nsw i32 %.0, 1
  br label %8, !llvm.loop !4

21:                                               ; preds = %8
  br label %22

22:                                               ; preds = %21
  %23 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !6

24:                                               ; preds = %2
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @dummy(i16 noundef zeroext %0) #1 {
  store i16 %0, i16* @g, align 2
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
