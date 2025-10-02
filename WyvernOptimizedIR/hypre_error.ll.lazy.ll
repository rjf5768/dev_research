; ModuleID = './hypre_error.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/hypre_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hypre__global_error = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"[No error] \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"[Generic error] \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"[Memory error] \00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"[Error in argument %d] \00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"[Method did not converge] \00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @hypre_error_handler(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load i32, i32* @hypre__global_error, align 4
  %5 = or i32 %4, %2
  store i32 %5, i32* @hypre__global_error, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @HYPRE_GetError() #1 {
  %1 = load i32, i32* @hypre__global_error, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @HYPRE_CheckError(i32 noundef %0, i32 noundef %1) #2 {
  %3 = and i32 %0, %1
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HYPRE_DescribeError(i32 noundef %0, i8* noundef %1) #3 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(12) %1, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 12, i1 false)
  br label %5

5:                                                ; preds = %4, %2
  %6 = and i32 %0, 1
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %8, label %7

7:                                                ; preds = %5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(17) %1, i8* noundef nonnull align 1 dereferenceable(17) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 17, i1 false)
  br label %8

8:                                                ; preds = %7, %5
  %9 = and i32 %0, 2
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %1, i8* noundef nonnull align 1 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 16, i1 false)
  br label %11

11:                                               ; preds = %10, %8
  %12 = and i32 %0, 4
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %16, label %13

13:                                               ; preds = %11
  %14 = call i32 @HYPRE_GetErrorArg()
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 noundef %14) #6
  br label %16

16:                                               ; preds = %13, %11
  %17 = and i32 %0, 256
  %.not3 = icmp eq i32 %17, 0
  br i1 %.not3, label %19, label %18

18:                                               ; preds = %16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(27) %1, i8* noundef nonnull align 1 dereferenceable(27) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 27, i1 false)
  br label %19

19:                                               ; preds = %18, %16
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @HYPRE_GetErrorArg() #1 {
  %1 = load i32, i32* @hypre__global_error, align 4
  %2 = lshr i32 %1, 3
  %3 = and i32 %2, 31
  ret i32 %3
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
