; ModuleID = './20111208-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20111208-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"\80\01\FF\FE\1D\C0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"sl\00", align 1
@a = dso_local global i32 0, align 4

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @pack_unpack(i8* noundef readonly %0, i8* noundef readonly %1) #0 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #6
  %4 = getelementptr inbounds i8, i8* %1, i64 %3
  br label %5

5:                                                ; preds = %24, %2
  %.01 = phi i8* [ %1, %2 ], [ %8, %24 ]
  %.0 = phi i8* [ %0, %2 ], [ %.2, %24 ]
  %6 = icmp ult i8* %.01, %4
  br i1 %6, label %7, label %25

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %.01, i64 1
  %9 = load i8, i8* %.01, align 1
  %10 = sext i8 %9 to i32
  switch i32 %10, label %24 [
    i32 115, label %11
    i32 108, label %12
  ]

11:                                               ; preds = %7
  br label %13

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %11
  %.02 = phi i32 [ 4, %12 ], [ 2, %11 ]
  switch i32 %.02, label %23 [
    i32 2, label %14
    i32 4, label %19
  ]

14:                                               ; preds = %13
  %15 = bitcast i8* %.0 to i16*
  %16 = load i16, i16* %15, align 1
  %17 = getelementptr inbounds i8, i8* %.0, i64 2
  %18 = sext i16 %16 to i32
  call void @do_something(i32 noundef %18)
  br label %23

19:                                               ; preds = %13
  %20 = bitcast i8* %.0 to i32*
  %21 = load i32, i32* %20, align 1
  %22 = getelementptr inbounds i8, i8* %.0, i64 4
  call void @do_something(i32 noundef %21)
  br label %23

23:                                               ; preds = %19, %14, %13
  %.1 = phi i8* [ %.0, %13 ], [ %22, %19 ], [ %17, %14 ]
  br label %24

24:                                               ; preds = %23, %7
  %.2 = phi i8* [ %.0, %7 ], [ %.1, %23 ]
  br label %5, !llvm.loop !4

25:                                               ; preds = %5
  %26 = load i8, i8* %.0, align 1
  %27 = sext i8 %26 to i32
  ret i32 %27
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @do_something(i32 noundef %0) #3 {
  store i32 %0, i32* @a, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #4 {
  %1 = call i32 @pack_unpack(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #7
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #5

attributes #0 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
