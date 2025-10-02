; ModuleID = './pr35472.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr35472.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [16 x i32] }

@p = dso_local global %struct.S* null, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @foo(%struct.S* nocapture noundef writeonly %0, %struct.S* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0, i64 0
  store i32 -1, i32* %3, align 4
  store %struct.S* %1, %struct.S** @p, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test() #1 {
  %1 = alloca %struct.S, align 4
  %2 = alloca %struct.S, align 4
  %3 = bitcast %struct.S* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %4 = bitcast %struct.S* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  call void @foo(%struct.S* noundef nonnull %1, %struct.S* noundef nonnull %2)
  %5 = load i8*, i8** bitcast (%struct.S** @p to i8**), align 8
  %6 = bitcast %struct.S* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(64) %5, i8* noundef nonnull align 4 dereferenceable(64) %6, i64 64, i1 false)
  %7 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(64) %5, i8* noundef nonnull align 4 dereferenceable(64) %7, i64 64, i1 false)
  %8 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0, i64 0
  %9 = load i32, i32* %8, align 4
  %.not = icmp eq i32 %9, -1
  br i1 %.not, label %11, label %10

10:                                               ; preds = %0
  call void @abort() #5
  unreachable

11:                                               ; preds = %0
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void @test()
  ret i32 0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
