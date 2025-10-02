; ModuleID = './pr22141-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr22141-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { %struct.T }
%struct.T = type { i8, i8, i8, i8 }
%struct.U = type { [4 x %struct.S] }

@u = dso_local global %struct.S zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @c1(%struct.T* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.T, %struct.T* %0, i64 0, i32 0
  %3 = load i8, i8* %2, align 1
  %.not = icmp eq i8 %3, 1
  br i1 %.not, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.T, %struct.T* %0, i64 0, i32 1
  %6 = load i8, i8* %5, align 1
  %.not1 = icmp eq i8 %6, 2
  br i1 %.not1, label %7, label %13

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.T, %struct.T* %0, i64 0, i32 2
  %9 = load i8, i8* %8, align 1
  %.not2 = icmp eq i8 %9, 3
  br i1 %.not2, label %10, label %13

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.T, %struct.T* %0, i64 0, i32 3
  %12 = load i8, i8* %11, align 1
  %.not3 = icmp eq i8 %12, 4
  br i1 %.not3, label %14, label %13

13:                                               ; preds = %10, %7, %4, %1
  call void @abort() #6
  unreachable

14:                                               ; preds = %10
  %15 = bitcast %struct.T* %0 to i32*
  store i32 -1431655766, i32* %15, align 1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @c2(%struct.S* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0
  call void @c1(%struct.T* noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @c3(%struct.U* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.U, %struct.U* %0, i64 0, i32 0, i64 2
  call void @c2(%struct.S* noundef nonnull %2)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @f1() #3 {
  %1 = alloca i32, align 4
  %tmpcast = bitcast i32* %1 to %struct.S*
  %2 = bitcast i32* %1 to i8*
  store i8 1, i8* %2, align 4
  %3 = getelementptr inbounds %struct.S, %struct.S* %tmpcast, i64 0, i32 0, i32 1
  store i8 2, i8* %3, align 1
  %4 = getelementptr inbounds %struct.S, %struct.S* %tmpcast, i64 0, i32 0, i32 2
  store i8 3, i8* %4, align 2
  %5 = getelementptr inbounds %struct.S, %struct.S* %tmpcast, i64 0, i32 0, i32 3
  store i8 4, i8* %5, align 1
  %6 = load i32, i32* %1, align 4
  store i32 %6, i32* bitcast (%struct.S* @u to i32*), align 16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @f2() #5 {
  store i8 1, i8* getelementptr inbounds (%struct.S, %struct.S* @u, i64 0, i32 0, i32 0), align 16
  store i8 2, i8* getelementptr inbounds (%struct.S, %struct.S* @u, i64 0, i32 0, i32 1), align 1
  store i8 3, i8* getelementptr inbounds (%struct.S, %struct.S* @u, i64 0, i32 0, i32 2), align 2
  store i8 4, i8* getelementptr inbounds (%struct.S, %struct.S* @u, i64 0, i32 0, i32 3), align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @f3() #5 {
  store i8 4, i8* getelementptr inbounds (%struct.S, %struct.S* @u, i64 0, i32 0, i32 3), align 1
  store i8 2, i8* getelementptr inbounds (%struct.S, %struct.S* @u, i64 0, i32 0, i32 1), align 1
  store i8 1, i8* getelementptr inbounds (%struct.S, %struct.S* @u, i64 0, i32 0, i32 0), align 16
  store i8 3, i8* getelementptr inbounds (%struct.S, %struct.S* @u, i64 0, i32 0, i32 2), align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f4() #0 {
  %1 = alloca %struct.S, align 16
  %2 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i32 0
  store i8 1, i8* %2, align 16
  %3 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i32 1
  store i8 2, i8* %3, align 1
  %4 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i32 2
  store i8 3, i8* %4, align 2
  %5 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0, i32 3
  store i8 4, i8* %5, align 1
  call void @c2(%struct.S* noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @f5(%struct.S* nocapture noundef writeonly %0) #5 {
  %2 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i32 0
  store i8 1, i8* %2, align 1
  %3 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i32 2
  store i8 3, i8* %3, align 1
  %4 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i32 3
  store i8 4, i8* %4, align 1
  %5 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i32 1
  store i8 2, i8* %5, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f6() #0 {
  %1 = alloca %struct.U, align 16
  %2 = getelementptr inbounds %struct.U, %struct.U* %1, i64 0, i32 0, i64 2, i32 0, i32 0
  store i8 1, i8* %2, align 8
  %3 = getelementptr inbounds %struct.U, %struct.U* %1, i64 0, i32 0, i64 2, i32 0, i32 1
  store i8 2, i8* %3, align 1
  %4 = getelementptr inbounds %struct.U, %struct.U* %1, i64 0, i32 0, i64 2, i32 0, i32 2
  store i8 3, i8* %4, align 2
  %5 = getelementptr inbounds %struct.U, %struct.U* %1, i64 0, i32 0, i64 2, i32 0, i32 3
  store i8 4, i8* %5, align 1
  call void @c3(%struct.U* noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @f7(%struct.U* nocapture noundef writeonly %0) #5 {
  %2 = getelementptr inbounds %struct.U, %struct.U* %0, i64 0, i32 0, i64 2, i32 0, i32 0
  store i8 1, i8* %2, align 1
  %3 = getelementptr inbounds %struct.U, %struct.U* %0, i64 0, i32 0, i64 2, i32 0, i32 2
  store i8 3, i8* %3, align 1
  %4 = getelementptr inbounds %struct.U, %struct.U* %0, i64 0, i32 0, i64 2, i32 0, i32 3
  store i8 4, i8* %4, align 1
  %5 = getelementptr inbounds %struct.U, %struct.U* %0, i64 0, i32 0, i64 2, i32 0, i32 1
  store i8 2, i8* %5, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.U, align 16
  call void @f1()
  call void @c2(%struct.S* noundef nonnull @u)
  call void @f2()
  call void @c1(%struct.T* noundef getelementptr inbounds (%struct.S, %struct.S* @u, i64 0, i32 0))
  call void @f3()
  call void @c2(%struct.S* noundef nonnull @u)
  call void @f4()
  call void @f5(%struct.S* noundef nonnull @u)
  call void @c2(%struct.S* noundef nonnull @u)
  call void @f6()
  call void @f7(%struct.U* noundef nonnull %1)
  call void @c3(%struct.U* noundef nonnull %1)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
