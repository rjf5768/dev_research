; ModuleID = './pr79737-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr79737-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [9 x i8] }

@j = dso_local global i32 0, align 4
@k = dso_local global i32 0, align 4
@__const.foo.m = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 5, i8 0, i8 -40, i8 -1, i8 -1, i8 79, i8 0, i8 20, i8 0 }, align 1
@h = internal global %struct.S zeroinitializer, align 8
@g = dso_local global i32 0, align 4
@i = dso_local global %struct.S zeroinitializer, align 1

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @foo() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %storemerge = phi i32 [ 0, %0 ], [ %6, %4 ]
  store i32 %storemerge, i32* @j, align 4
  %2 = icmp slt i32 %storemerge, 6
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  store i32 0, i32* @k, align 4
  br label %4

4:                                                ; preds = %3
  %5 = load i32, i32* @j, align 4
  %6 = add nsw i32 %5, 1
  br label %1, !llvm.loop !4

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %17, %7
  %9 = load i32, i32* @k, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(9) getelementptr inbounds (%struct.S, %struct.S* @h, i64 0, i32 0, i64 0), i8* noundef nonnull align 1 dereferenceable(9) getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @__const.foo.m, i64 0, i32 0), i64 9, i1 false)
  %12 = load i32, i32* @g, align 4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %14, label %13

13:                                               ; preds = %11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(9) getelementptr inbounds (%struct.S, %struct.S* @i, i64 0, i32 0, i64 0), i8* noundef nonnull align 1 dereferenceable(9) getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @__const.foo.m, i64 0, i32 0), i64 9, i1 false)
  br label %14

14:                                               ; preds = %13, %11
  %15 = load i72, i72* bitcast (%struct.S* @h to i72*), align 8
  %16 = and i72 %15, -288221580058689537
  store i72 %16, i72* bitcast (%struct.S* @h to i72*), align 8
  br label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @k, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @k, align 4
  br label %8, !llvm.loop !6

20:                                               ; preds = %8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  call void @foo()
  %1 = load i72, i72* bitcast (%struct.S* @h to i72*), align 8
  %2 = shl i72 %1, 14
  %3 = ashr i72 %2, 57
  %4 = trunc i72 %3 to i32
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #4
  unreachable

6:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
