; ModuleID = './20030613-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030613-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CS = type { i64, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @c5p(i64 -7, i64 -7)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %2, label %3

2:                                                ; preds = %0
  call void @abort() #5
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal i32 @c5p(i64 %0, i64 %1) #1 {
  %3 = alloca %struct.CS, align 8
  %4 = alloca %struct.CS, align 8
  %5 = alloca %struct.CS, align 8
  %6 = alloca %struct.CS, align 8
  %7 = call { i64, i64 } @CPOW(i64 %0, i64 %1, i32 noundef 2)
  %8 = getelementptr inbounds %struct.CS, %struct.CS* %5, i64 0, i32 0
  %9 = extractvalue { i64, i64 } %7, 0
  store i64 %9, i64* %8, align 8
  %10 = getelementptr inbounds %struct.CS, %struct.CS* %5, i64 0, i32 1
  %11 = extractvalue { i64, i64 } %7, 1
  store i64 %11, i64* %10, align 8
  %12 = bitcast %struct.CS* %3 to i8*
  %13 = bitcast %struct.CS* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %12, i8* noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false)
  %14 = getelementptr inbounds %struct.CS, %struct.CS* %3, i64 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.CS, %struct.CS* %3, i64 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call { i64, i64 } @CPOW(i64 %15, i64 %17, i32 noundef 2)
  %19 = extractvalue { i64, i64 } %18, 0
  %20 = extractvalue { i64, i64 } %18, 1
  %21 = call { i64, i64 } @CCID(i64 %19, i64 %20)
  %22 = getelementptr inbounds %struct.CS, %struct.CS* %6, i64 0, i32 0
  %23 = extractvalue { i64, i64 } %21, 0
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds %struct.CS, %struct.CS* %6, i64 0, i32 1
  %25 = extractvalue { i64, i64 } %21, 1
  store i64 %25, i64* %24, align 8
  %26 = bitcast %struct.CS* %4 to i8*
  %27 = bitcast %struct.CS* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %26, i8* noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false)
  %28 = getelementptr inbounds %struct.CS, %struct.CS* %4, i64 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.CS, %struct.CS* %4, i64 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %29, %31
  %33 = zext i1 %32 to i32
  ret i32 %33
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define internal { i64, i64 } @CPOW(i64 %0, i64 %1, i32 noundef %2) #1 {
  %4 = alloca %struct.CS, align 8
  %5 = alloca %struct.CS, align 8
  %6 = alloca %struct.CS, align 8
  %7 = getelementptr inbounds %struct.CS, %struct.CS* %5, i64 0, i32 0
  store i64 %0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.CS, %struct.CS* %5, i64 0, i32 1
  store i64 %1, i64* %8, align 8
  %9 = bitcast %struct.CS* %4 to i8*
  %10 = bitcast %struct.CS* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %9, i8* noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false)
  br label %11

11:                                               ; preds = %13, %3
  %.0 = phi i32 [ %2, %3 ], [ %14, %13 ]
  %12 = icmp sgt i32 %.0, 1
  br i1 %12, label %13, label %26

13:                                               ; preds = %11
  %14 = add nsw i32 %.0, -1
  %15 = getelementptr inbounds %struct.CS, %struct.CS* %4, i64 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.CS, %struct.CS* %4, i64 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call { i64, i64 } @CCID(i64 %16, i64 %18)
  %20 = getelementptr inbounds %struct.CS, %struct.CS* %6, i64 0, i32 0
  %21 = extractvalue { i64, i64 } %19, 0
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds %struct.CS, %struct.CS* %6, i64 0, i32 1
  %23 = extractvalue { i64, i64 } %19, 1
  store i64 %23, i64* %22, align 8
  %24 = bitcast %struct.CS* %4 to i8*
  %25 = bitcast %struct.CS* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %24, i8* noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false)
  br label %11, !llvm.loop !4

26:                                               ; preds = %11
  %.elt = getelementptr inbounds %struct.CS, %struct.CS* %4, i64 0, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %27 = insertvalue { i64, i64 } undef, i64 %.unpack, 0
  %28 = getelementptr inbounds %struct.CS, %struct.CS* %4, i64 0, i32 1
  %.unpack2 = load i64, i64* %28, align 8
  %29 = insertvalue { i64, i64 } %27, i64 %.unpack2, 1
  ret { i64, i64 } %29
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal { i64, i64 } @CCID(i64 %0, i64 %1) #4 {
  %3 = insertvalue { i64, i64 } undef, i64 %0, 0
  %4 = insertvalue { i64, i64 } %3, i64 %1, 1
  ret { i64, i64 } %4
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
