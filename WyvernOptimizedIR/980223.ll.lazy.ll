; ModuleID = './980223.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/980223.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i8*, i64 }

@nil = dso_local global i32 0, align 4
@cons1 = dso_local global [2 x %struct.object] [%struct.object { i8* bitcast (i32* @nil to i8*), i64 0 }, %struct.object { i8* bitcast (i32* @nil to i8*), i64 0 }], align 16
@cons2 = dso_local global [2 x %struct.object] [%struct.object { i8* bitcast ([2 x %struct.object]* @cons1 to i8*), i64 64 }, %struct.object { i8* bitcast (i32* @nil to i8*), i64 0 }], align 16
@__const.main.x = private unnamed_addr constant %struct.object { i8* bitcast ([2 x %struct.object]* @cons2 to i8*), i64 64 }, align 8
@__const.main.y = private unnamed_addr constant %struct.object { i8* bitcast (i32* @nil to i8*), i64 0 }, align 8

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local { i8*, i64 } @bar(i8* %0, i64 %1) #0 {
  call void @abort() #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local { i8*, i64 } @foo(i8* %0, i64 %1, i8* %2, i64 %3) #2 {
  %5 = alloca %struct.object, align 8
  %6 = alloca %struct.object, align 8
  %7 = alloca %struct.object, align 8
  %8 = alloca %struct.object, align 8
  %9 = alloca %struct.object, align 8
  %10 = getelementptr inbounds %struct.object, %struct.object* %6, i64 0, i32 0
  store i8* %0, i8** %10, align 8
  %11 = getelementptr inbounds %struct.object, %struct.object* %6, i64 0, i32 1
  store i64 %1, i64* %11, align 8
  %12 = getelementptr inbounds %struct.object, %struct.object* %7, i64 0, i32 0
  store i8* %2, i8** %12, align 8
  %13 = getelementptr inbounds %struct.object, %struct.object* %7, i64 0, i32 1
  store i64 %3, i64* %13, align 8
  %14 = getelementptr inbounds %struct.object, %struct.object* %6, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = bitcast %struct.object* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %16, i8* noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false)
  %17 = getelementptr inbounds %struct.object, %struct.object* %8, i64 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = and i64 %18, 64
  %.not = icmp eq i64 %19, 0
  br i1 %.not, label %42, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.object, %struct.object* %8, i64 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 16
  %24 = bitcast %struct.object* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %24, i8* noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false)
  %25 = bitcast %struct.object* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %25, i8* noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false)
  %26 = getelementptr inbounds %struct.object, %struct.object* %8, i64 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = and i64 %27, 64
  %.not3 = icmp eq i64 %28, 0
  br i1 %.not3, label %41, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.object, %struct.object* %7, i64 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %struct.object, %struct.object* %7, i64 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call { i8*, i64 } @bar(i8* %31, i64 %33)
  %35 = getelementptr inbounds %struct.object, %struct.object* %9, i64 0, i32 0
  %36 = extractvalue { i8*, i64 } %34, 0
  store i8* %36, i8** %35, align 8
  %37 = getelementptr inbounds %struct.object, %struct.object* %9, i64 0, i32 1
  %38 = extractvalue { i8*, i64 } %34, 1
  store i64 %38, i64* %37, align 8
  %39 = bitcast %struct.object* %7 to i8*
  %40 = bitcast %struct.object* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %39, i8* noundef nonnull align 8 dereferenceable(16) %40, i64 16, i1 false)
  br label %41

41:                                               ; preds = %29, %20
  br label %42

42:                                               ; preds = %41, %4
  %43 = bitcast %struct.object* %5 to i8*
  %44 = bitcast %struct.object* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %43, i8* noundef nonnull align 8 dereferenceable(16) %44, i64 16, i1 false)
  %.elt = getelementptr inbounds %struct.object, %struct.object* %5, i64 0, i32 0
  %.unpack = load i8*, i8** %.elt, align 8
  %45 = insertvalue { i8*, i64 } undef, i8* %.unpack, 0
  %46 = getelementptr inbounds %struct.object, %struct.object* %5, i64 0, i32 1
  %.unpack2 = load i64, i64* %46, align 8
  %47 = insertvalue { i8*, i64 } %45, i64 %.unpack2, 1
  ret { i8*, i64 } %47
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call { i8*, i64 } @foo(i8* bitcast ([2 x %struct.object]* @cons2 to i8*), i64 64, i8* bitcast (i32* @nil to i8*), i64 0)
  ret i32 0
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
