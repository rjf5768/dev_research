; ModuleID = './20000419-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000419-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i32, i32, i32 }

@__const.main.f = private unnamed_addr constant %struct.foo { i32 7, i32 8, i32 9 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @brother(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %3
  call void @abort() #4
  unreachable

5:                                                ; preds = %3
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @sister(i64 %0, i32 %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.foo, align 4
  %6 = alloca { i64, i32 }, align 8
  %7 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i64 0, i32 0
  store i64 %0, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i64 0, i32 1
  store i32 %1, i32* %8, align 8
  %9 = bitcast %struct.foo* %5 to i8*
  %10 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %9, i8* noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  %11 = getelementptr inbounds %struct.foo, %struct.foo* %5, i64 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, %2
  %14 = zext i1 %13 to i32
  call void @brother(i32 noundef %14, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca { i64, i32 }, align 8
  %2 = bitcast { i64, i32 }* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %2, i8* noundef nonnull align 8 dereferenceable(12) bitcast (%struct.foo* @__const.main.f to i8*), i64 12, i1 false)
  %3 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %1, i64 0, i32 1
  %6 = load i32, i32* %5, align 8
  call void @sister(i64 %4, i32 %6, i32 noundef 1, i32 noundef 2)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
