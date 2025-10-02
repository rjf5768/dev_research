; ModuleID = './960327-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960327-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.f.s = private unnamed_addr constant [14 x i8] c"abcedfg012345\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @g() #0 {
  ret i32 10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f() #1 {
  %1 = alloca [14 x i8], align 1
  %2 = getelementptr inbounds [14 x i8], [14 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(14) %2, i8* noundef nonnull align 1 dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @__const.f.s, i64 0, i64 0), i64 14, i1 false)
  %3 = getelementptr inbounds [14 x i8], [14 x i8]* %1, i64 0, i64 12
  %4 = call i32 @g()
  switch i32 %4, label %6 [
    i32 10, label %5
  ]

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %5, %0
  br label %7

7:                                                ; preds = %11, %6
  %.0 = phi i8* [ %3, %6 ], [ %8, %11 ]
  %8 = getelementptr inbounds i8, i8* %.0, i64 -1
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 48
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %7, !llvm.loop !4

12:                                               ; preds = %7
  %13 = bitcast i8* %.0 to i16*
  store i16 88, i16* %13, align 1
  %14 = getelementptr inbounds [14 x i8], [14 x i8]* %1, i64 0, i64 12
  %15 = load i8, i8* %14, align 1
  %.not = icmp eq i8 %15, 88
  br i1 %.not, label %17, label %16

16:                                               ; preds = %12
  call void @abort() #6
  unreachable

17:                                               ; preds = %12
  ret i32 undef
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #5 {
  %1 = call i32 @f()
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
