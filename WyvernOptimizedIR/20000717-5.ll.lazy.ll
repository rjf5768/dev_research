; ModuleID = './20000717-5.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000717-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trio = type { i32, i32, i32 }

@__const.main.t = private unnamed_addr constant %struct.trio { i32 1, i32 2, i32 3 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.trio, align 4
  %7 = alloca { i64, i32 }, align 8
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i64 0, i32 0
  store i64 %3, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i64 0, i32 1
  store i32 %4, i32* %9, align 8
  %10 = bitcast %struct.trio* %6 to i8*
  %11 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %10, i8* noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false)
  %12 = getelementptr inbounds %struct.trio, %struct.trio* %6, i64 0, i32 0
  %13 = load i32, i32* %12, align 4
  %.not = icmp eq i32 %13, 1
  br i1 %.not, label %14, label %23

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.trio, %struct.trio* %6, i64 0, i32 1
  %16 = load i32, i32* %15, align 4
  %.not1 = icmp eq i32 %16, 2
  br i1 %.not1, label %17, label %23

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trio, %struct.trio* %6, i64 0, i32 2
  %19 = load i32, i32* %18, align 4
  %.not2 = icmp eq i32 %19, 3
  br i1 %.not2, label %20, label %23

20:                                               ; preds = %17
  %.not3 = icmp eq i32 %0, 4
  br i1 %.not3, label %21, label %23

21:                                               ; preds = %20
  %.not4 = icmp eq i32 %1, 5
  br i1 %.not4, label %22, label %23

22:                                               ; preds = %21
  %.not5 = icmp eq i32 %2, 6
  br i1 %.not5, label %24, label %23

23:                                               ; preds = %22, %21, %20, %17, %14, %5
  call void @abort() #4
  unreachable

24:                                               ; preds = %22
  ret i32 undef
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i64 %0, i32 %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trio, align 4
  %7 = alloca { i64, i32 }, align 8
  %8 = alloca { i64, i32 }, align 8
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i64 0, i32 0
  store i64 %0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i64 0, i32 1
  store i32 %1, i32* %10, align 8
  %11 = bitcast %struct.trio* %6 to i8*
  %12 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %11, i8* noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %13 = bitcast { i64, i32 }* %8 to i8*
  %14 = bitcast %struct.trio* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %13, i8* noundef nonnull align 4 dereferenceable(12) %14, i64 12, i1 false)
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i64 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i64 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @bar(i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 %16, i32 %18)
  ret i32 %19
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca { i64, i32 }, align 8
  %2 = bitcast { i64, i32 }* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %2, i8* noundef nonnull align 8 dereferenceable(12) bitcast (%struct.trio* @__const.main.t to i8*), i64 12, i1 false)
  %3 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %1, i64 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @foo(i64 %4, i32 %6, i32 noundef 4, i32 noundef 5, i32 noundef 6)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
