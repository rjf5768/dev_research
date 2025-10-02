; ModuleID = './2009-12-07-StructReturn.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2009-12-07-StructReturn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.barstruct = type { %struct.foostruct, float }
%struct.foostruct = type { [3 x float] }

@bar_ary = dso_local global [4 x %struct.barstruct] zeroinitializer, align 16
@foobify.my_static_foo = internal global %struct.barstruct { %struct.foostruct { [3 x float] [float 4.200000e+01, float 4.200000e+01, float 4.200000e+01] }, float 4.200000e+01 }, align 4
@.str = private unnamed_addr constant [51 x i8] c"error: store clobbered memory outside destination\0A\00", align 1
@str = private unnamed_addr constant [50 x i8] c"error: store clobbered memory outside destination\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local nonnull float* @spooky(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [4 x %struct.barstruct], [4 x %struct.barstruct]* @bar_ary, i64 0, i64 %2, i32 1
  store float 1.420000e+02, float* %3, align 4
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x %struct.barstruct], [4 x %struct.barstruct]* @bar_ary, i64 0, i64 %4, i32 1
  ret float* %5
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local { <2 x float>, float } @foobify() #1 {
  %1 = alloca %struct.foostruct, align 4
  %2 = alloca { <2 x float>, float }, align 8
  %3 = bitcast %struct.foostruct* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %3, i8* noundef nonnull align 4 dereferenceable(12) bitcast (%struct.barstruct* @foobify.my_static_foo to i8*), i64 12, i1 false)
  %4 = bitcast { <2 x float>, float }* %2 to i8*
  %5 = bitcast %struct.foostruct* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %4, i8* noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  %6 = load { <2 x float>, float }, { <2 x float>, float }* %2, align 8
  ret { <2 x float>, float } %6
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #3 {
  %3 = alloca %struct.foostruct, align 4
  %4 = alloca { <2 x float>, float }, align 8
  %5 = call float* @spooky(i32 noundef 0)
  %6 = call { <2 x float>, float } @foobify()
  store { <2 x float>, float } %6, { <2 x float>, float }* %4, align 8
  %7 = bitcast %struct.foostruct* %3 to i8*
  %8 = bitcast { <2 x float>, float }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %7, i8* noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false)
  %9 = bitcast %struct.foostruct* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) bitcast ([4 x %struct.barstruct]* @bar_ary to i8*), i8* noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false)
  %10 = load float, float* %5, align 4
  %11 = fcmp une float %10, 1.420000e+02
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([50 x i8], [50 x i8]* @str, i64 0, i64 0))
  call void @abort() #7
  unreachable

13:                                               ; preds = %2
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #4

; Function Attrs: noreturn
declare dso_local void @abort() #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
