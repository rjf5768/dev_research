; ModuleID = './lto-tbaa-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/lto-tbaa-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b = type { i32* }
%struct.a = type { float* }
%struct.c = type { float* }

@d = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@b = dso_local global %struct.b { i32* @e }, align 8
@b2 = dso_local global %struct.b zeroinitializer, align 8
@ptr = dso_local global i32** getelementptr inbounds (%struct.b, %struct.b* @b2, i32 0, i32 0), align 8
@a = dso_local global %struct.a* null, align 8
@b3 = dso_local global %struct.b zeroinitializer, align 8
@c = dso_local global %struct.c* null, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @use_a(%struct.a* nocapture noundef readnone %0) #0 {
  ret i32 undef
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @set_b(i32** nocapture noundef writeonly %0) #1 {
  store i32* @d, i32** %0, align 8
  ret i32 undef
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @use_c(%struct.c* nocapture noundef readnone %0) #0 {
  ret i32 undef
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32** @retme(i32** noundef readnone returned %0) #0 {
  ret i32** %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  store %struct.a* null, %struct.a** @a, align 8
  store i32* @e, i32** getelementptr inbounds (%struct.b, %struct.b* @b, i64 0, i32 0), align 8
  store i32** getelementptr inbounds (%struct.b, %struct.b* @b, i64 0, i32 0), i32*** @ptr, align 8
  %1 = call i32 @set_b(i32** noundef getelementptr inbounds (%struct.b, %struct.b* @b, i64 0, i32 0))
  %2 = load i64, i64* bitcast (%struct.b* @b to i64*), align 8
  store i64 %2, i64* bitcast (%struct.b* @b3 to i64*), align 8
  %.cast = inttoptr i64 %2 to i32*
  %.not = icmp eq i32* %.cast, @d
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #5
  unreachable

4:                                                ; preds = %0
  store %struct.c* null, %struct.c** @c, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
