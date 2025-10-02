; ModuleID = './20081218-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20081218-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, i32, [512 x i8] }

@a = dso_local global %struct.A zeroinitializer, align 4

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @foo() #0 {
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(520) bitcast (%struct.A* @a to i8*), i8 38, i64 520, i1 false)
  %1 = load i32, i32* getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 0), align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define dso_local void @bar() #2 {
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(520) bitcast (%struct.A* @a to i8*), i8 54, i64 520, i1 false)
  store i32 909522486, i32* getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 0), align 4
  store i32 909588022, i32* getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 1), align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = call i32 @foo()
  %.not = icmp eq i32 %1, 640034342
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %12, %3
  %.0 = phi i32 [ 0, %3 ], [ %13, %12 ]
  %5 = icmp ult i32 %.0, 520
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds i8, i8* bitcast (%struct.A* @a to i8*), i64 %7
  %9 = load i8, i8* %8, align 1
  %.not3 = icmp eq i8 %9, 38
  br i1 %.not3, label %11, label %10

10:                                               ; preds = %6
  call void @abort() #5
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

14:                                               ; preds = %4
  call void @bar()
  %15 = load i32, i32* getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 1), align 4
  %.not1 = icmp eq i32 %15, 909588022
  br i1 %.not1, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #5
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  store i32 909522486, i32* getelementptr inbounds (%struct.A, %struct.A* @a, i64 0, i32 1), align 4
  br label %18

18:                                               ; preds = %26, %17
  %.1 = phi i32 [ 0, %17 ], [ %27, %26 ]
  %19 = icmp ult i32 %.1, 520
  br i1 %19, label %20, label %28

20:                                               ; preds = %18
  %21 = zext i32 %.1 to i64
  %22 = getelementptr inbounds i8, i8* bitcast (%struct.A* @a to i8*), i64 %21
  %23 = load i8, i8* %22, align 1
  %.not2 = icmp eq i8 %23, 54
  br i1 %.not2, label %25, label %24

24:                                               ; preds = %20
  call void @abort() #5
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25
  %27 = add nuw nsw i32 %.1, 1
  br label %18, !llvm.loop !6

28:                                               ; preds = %18
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %24, %16, %10, %2
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
