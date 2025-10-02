; ModuleID = './950628-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950628-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { i8, i8, i8, i16 }

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i48 @g() #0 {
  %1 = alloca %struct.T, align 2
  %2 = alloca i48, align 8
  %3 = getelementptr inbounds %struct.T, %struct.T* %1, i64 0, i32 0
  store i8 1, i8* %3, align 2
  %4 = getelementptr inbounds %struct.T, %struct.T* %1, i64 0, i32 1
  store i8 2, i8* %4, align 1
  %5 = getelementptr inbounds %struct.T, %struct.T* %1, i64 0, i32 2
  store i8 3, i8* %5, align 2
  %6 = getelementptr inbounds %struct.T, %struct.T* %1, i64 0, i32 3
  store i16 4, i16* %6, align 2
  %7 = bitcast i48* %2 to i8*
  %8 = getelementptr inbounds %struct.T, %struct.T* %1, i64 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(6) %7, i8* noundef nonnull align 2 dereferenceable(6) %8, i64 6, i1 false)
  %9 = load i48, i48* %2, align 8
  ret i48 %9
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i48 @f() #0 {
  %1 = alloca %struct.T, align 2
  %2 = alloca %struct.T, align 2
  %3 = alloca i48, align 8
  %4 = alloca i48, align 8
  %5 = call i48 @g()
  store i48 %5, i48* %3, align 8
  %6 = getelementptr inbounds %struct.T, %struct.T* %2, i64 0, i32 0
  %7 = bitcast i48* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(6) %6, i8* noundef nonnull align 8 dereferenceable(6) %7, i64 6, i1 false)
  %8 = getelementptr inbounds %struct.T, %struct.T* %1, i64 0, i32 0
  %9 = getelementptr inbounds %struct.T, %struct.T* %2, i64 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(6) %8, i8* noundef nonnull align 2 dereferenceable(6) %9, i64 6, i1 false)
  %10 = bitcast i48* %4 to i8*
  %11 = getelementptr inbounds %struct.T, %struct.T* %1, i64 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(6) %10, i8* noundef nonnull align 2 dereferenceable(6) %11, i64 6, i1 false)
  %12 = load i48, i48* %4, align 8
  ret i48 %12
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca %struct.T, align 2
  %2 = alloca i48, align 8
  %3 = alloca %struct.T, align 2
  %4 = alloca i48, align 8
  %5 = alloca %struct.T, align 2
  %6 = alloca i48, align 8
  %7 = alloca %struct.T, align 2
  %8 = alloca i48, align 8
  %9 = call i48 @f()
  store i48 %9, i48* %2, align 8
  %10 = getelementptr inbounds %struct.T, %struct.T* %1, i64 0, i32 0
  %11 = bitcast i48* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(6) %10, i8* noundef nonnull align 8 dereferenceable(6) %11, i64 6, i1 false)
  %12 = getelementptr inbounds %struct.T, %struct.T* %1, i64 0, i32 0
  %13 = load i8, i8* %12, align 2
  %.not = icmp eq i8 %13, 1
  br i1 %.not, label %14, label %32

14:                                               ; preds = %0
  %15 = call i48 @f()
  store i48 %15, i48* %4, align 8
  %16 = getelementptr inbounds %struct.T, %struct.T* %3, i64 0, i32 0
  %17 = bitcast i48* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(6) %16, i8* noundef nonnull align 8 dereferenceable(6) %17, i64 6, i1 false)
  %18 = getelementptr inbounds %struct.T, %struct.T* %3, i64 0, i32 1
  %19 = load i8, i8* %18, align 1
  %.not1 = icmp eq i8 %19, 2
  br i1 %.not1, label %20, label %32

20:                                               ; preds = %14
  %21 = call i48 @f()
  store i48 %21, i48* %6, align 8
  %22 = getelementptr inbounds %struct.T, %struct.T* %5, i64 0, i32 0
  %23 = bitcast i48* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(6) %22, i8* noundef nonnull align 8 dereferenceable(6) %23, i64 6, i1 false)
  %24 = getelementptr inbounds %struct.T, %struct.T* %5, i64 0, i32 2
  %25 = load i8, i8* %24, align 2
  %.not2 = icmp eq i8 %25, 3
  br i1 %.not2, label %26, label %32

26:                                               ; preds = %20
  %27 = call i48 @f()
  store i48 %27, i48* %8, align 8
  %28 = getelementptr inbounds %struct.T, %struct.T* %7, i64 0, i32 0
  %29 = bitcast i48* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(6) %28, i8* noundef nonnull align 8 dereferenceable(6) %29, i64 6, i1 false)
  %30 = getelementptr inbounds %struct.T, %struct.T* %7, i64 0, i32 3
  %31 = load i16, i16* %30, align 2
  %.not3 = icmp eq i16 %31, 4
  br i1 %.not3, label %33, label %32

32:                                               ; preds = %26, %20, %14, %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %26
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %33, %32
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
