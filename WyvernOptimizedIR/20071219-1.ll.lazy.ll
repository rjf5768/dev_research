; ModuleID = './20071219-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071219-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [25 x i8] }

@p = dso_local global %struct.S* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.S* noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %17, %2
  %.0 = phi i32 [ 0, %2 ], [ %18, %17 ]
  %4 = icmp ult i32 %.0, 25
  br i1 %4, label %5, label %19

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i64 %6
  %8 = load i8, i8* %7, align 1
  %.not = icmp eq i8 %8, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %5
  call void @abort() #4
  unreachable

10:                                               ; preds = %5
  %.not1 = icmp eq i32 %1, 0
  br i1 %.not1, label %15, label %11

11:                                               ; preds = %10
  %12 = trunc i32 %1 to i8
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i64 %13
  store i8 %12, i8* %14, align 1
  br label %15

15:                                               ; preds = %11, %10
  br label %16

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %16
  %18 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !4

19:                                               ; preds = %3
  store %struct.S* %0, %struct.S** @p, align 8
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
  %1 = alloca %struct.S, align 1
  %2 = alloca %struct.S, align 1
  %3 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(25) %3, i8 0, i64 25, i1 false)
  call void @foo(%struct.S* noundef nonnull %1, i32 noundef 0)
  %4 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0, i64 0
  %5 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(25) %4, i8* noundef nonnull align 1 dereferenceable(25) %5, i64 25, i1 false)
  call void @foo(%struct.S* noundef nonnull %2, i32 noundef 1)
  %6 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0, i64 0
  %7 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(25) %6, i8* noundef nonnull align 1 dereferenceable(25) %7, i64 25, i1 false)
  call void @foo(%struct.S* noundef nonnull %2, i32 noundef 0)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  %1 = alloca %struct.S, align 1
  %2 = alloca %struct.S, align 1
  %3 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(25) %3, i8 0, i64 25, i1 false)
  call void @foo(%struct.S* noundef nonnull %1, i32 noundef 0)
  %4 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0, i64 0
  %5 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(25) %4, i8* noundef nonnull align 1 dereferenceable(25) %5, i64 25, i1 false)
  call void @foo(%struct.S* noundef nonnull %2, i32 noundef 1)
  %6 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0, i64 0
  %7 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(25) %6, i8* noundef nonnull align 1 dereferenceable(25) %7, i64 25, i1 false)
  %8 = load i8*, i8** bitcast (%struct.S** @p to i8**), align 8
  %9 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(25) %9, i8* noundef nonnull align 1 dereferenceable(25) %8, i64 25, i1 false)
  call void @foo(%struct.S* noundef nonnull %2, i32 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3() #0 {
  %1 = alloca %struct.S, align 1
  %2 = alloca %struct.S, align 1
  %3 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(25) %3, i8 0, i64 25, i1 false)
  call void @foo(%struct.S* noundef nonnull %1, i32 noundef 0)
  %4 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0, i64 0
  %5 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(25) %4, i8* noundef nonnull align 1 dereferenceable(25) %5, i64 25, i1 false)
  call void @foo(%struct.S* noundef nonnull %2, i32 noundef 1)
  %6 = load i8*, i8** bitcast (%struct.S** @p to i8**), align 8
  %7 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(25) %6, i8* noundef nonnull align 1 dereferenceable(25) %7, i64 25, i1 false)
  %8 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(25) %6, i8* noundef nonnull align 1 dereferenceable(25) %8, i64 25, i1 false)
  call void @foo(%struct.S* noundef nonnull %2, i32 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @test1()
  call void @test2()
  call void @test3()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
