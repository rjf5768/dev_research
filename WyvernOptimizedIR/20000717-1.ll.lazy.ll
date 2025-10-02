; ModuleID = './20000717-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000717-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trio = type { i32, i32, i32 }

@__const.main.t = private unnamed_addr constant %struct.trio { i32 1, i32 2, i32 3 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.trio, align 4
  %5 = alloca { i64, i32 }, align 8
  %6 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i64 0, i32 0
  store i64 %1, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i64 0, i32 1
  store i32 %2, i32* %7, align 8
  %8 = bitcast %struct.trio* %4 to i8*
  %9 = bitcast { i64, i32 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %8, i8* noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false)
  %10 = getelementptr inbounds %struct.trio, %struct.trio* %4, i64 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.trio, %struct.trio* %4, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.trio, %struct.trio* %4, i64 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.trio, %struct.trio* %4, i64 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %3
  call void @abort() #4
  unreachable

22:                                               ; preds = %15
  ret i32 undef
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i64 %0, i32 %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trio, align 4
  %5 = alloca { i64, i32 }, align 8
  %6 = alloca { i64, i32 }, align 8
  %7 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i64 0, i32 0
  store i64 %0, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i64 0, i32 1
  store i32 %1, i32* %8, align 8
  %9 = bitcast %struct.trio* %4 to i8*
  %10 = bitcast { i64, i32 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %9, i8* noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  %11 = bitcast { i64, i32 }* %6 to i8*
  %12 = bitcast %struct.trio* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %11, i8* noundef nonnull align 4 dereferenceable(12) %12, i64 12, i1 false)
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i64 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i64 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @bar(i32 noundef %2, i64 %14, i32 %16)
  ret i32 %17
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
  %7 = call i32 @foo(i64 %4, i32 %6, i32 noundef 4)
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
