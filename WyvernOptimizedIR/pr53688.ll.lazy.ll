; ModuleID = './pr53688.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr53688.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdr = type { [9 x i8], [8 x i8] }

@p = dso_local global %struct.hdr zeroinitializer, align 1
@.str = private unnamed_addr constant [10 x i8] c"FOOBARFOO\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"SPEC CPU\00", align 1
@headline = dso_local global [256 x i8] zeroinitializer, align 16

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @init() #0 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(9) getelementptr inbounds (%struct.hdr, %struct.hdr* @p, i64 0, i32 0, i64 0), i8* noundef nonnull align 1 dereferenceable(9) getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 9, i1 false)
  store i64 6147487297207357523, i64* bitcast (i8* getelementptr inbounds (%struct.hdr, %struct.hdr* @p, i64 0, i32 1, i64 0) to i64*), align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  call void @init()
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(9) getelementptr inbounds ([256 x i8], [256 x i8]* @headline, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(9) getelementptr inbounds (%struct.hdr, %struct.hdr* @p, i64 0, i32 0, i64 0), i64 9, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(245) getelementptr inbounds ([256 x i8], [256 x i8]* @headline, i64 0, i64 9), i8 32, i64 245, i1 false)
  %1 = load i64, i64* bitcast (i8* getelementptr inbounds (%struct.hdr, %struct.hdr* @p, i64 0, i32 1, i64 0) to i64*), align 1
  store i64 %1, i64* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @headline, i64 0, i64 10) to i64*), align 2
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(238) getelementptr inbounds ([256 x i8], [256 x i8]* @headline, i64 0, i64 18), i8 32, i64 238, i1 false)
  %2 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @headline, i64 0, i64 10), align 2
  %.not = icmp eq i8 %2, 83
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #5
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
