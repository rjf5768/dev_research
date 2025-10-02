; ModuleID = './pr51323.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr51323.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, i32 }

@v = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load i32, i32* @v, align 4
  %.not = icmp eq i32 %4, %0
  br i1 %.not, label %5, label %7

5:                                                ; preds = %3
  %.not1 = icmp eq i32 %1, 0
  br i1 %.not1, label %6, label %7

6:                                                ; preds = %5
  %.not2 = icmp eq i32 %2, 9
  br i1 %.not2, label %8, label %7

7:                                                ; preds = %6, %5, %3
  call void @abort() #4
  unreachable

8:                                                ; preds = %6
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.S, align 4
  %5 = alloca { i64, i32 }, align 8
  %6 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i64 0, i32 0
  store i64 %1, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i64 0, i32 1
  store i32 %2, i32* %7, align 8
  %8 = bitcast %struct.S* %4 to i8*
  %9 = bitcast { i64, i32 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %8, i8* noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false)
  %10 = call i32 @baz(%struct.S* noundef nonnull %4)
  call void @foo(i32 noundef %10, i32 noundef 0, i32 noundef %0)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @baz(%struct.S* nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.S, align 4
  %2 = alloca { i64, i32 }, align 8
  %3 = alloca { i64, i32 }, align 8
  store i32 3, i32* @v, align 4
  %4 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0
  store i32 2, i32* %4, align 4
  %5 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 1
  store i32 3, i32* %5, align 4
  %6 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 2
  store i32 4, i32* %6, align 4
  %7 = bitcast { i64, i32 }* %2 to i8*
  %8 = bitcast %struct.S* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %7, i8* noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false)
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %2, i64 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %2, i64 0, i32 1
  %12 = load i32, i32* %11, align 8
  call void @bar(i32 noundef 9, i64 %10, i32 %12)
  store i32 17, i32* @v, align 4
  %13 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0
  store i32 16, i32* %13, align 4
  %14 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 1
  store i32 17, i32* %14, align 4
  %15 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 2
  store i32 18, i32* %15, align 4
  %16 = bitcast { i64, i32 }* %3 to i8*
  %17 = bitcast %struct.S* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %16, i8* noundef nonnull align 4 dereferenceable(12) %17, i64 12, i1 false)
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %3, i64 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %3, i64 0, i32 1
  %21 = load i32, i32* %20, align 8
  call void @bar(i32 noundef 9, i64 %19, i32 %21)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
