; ModuleID = './20000706-5.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000706-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baz = type { i32, i32, i32 }

@c = dso_local global %struct.baz* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0) #0 {
  %2 = load %struct.baz*, %struct.baz** @c, align 8
  %3 = getelementptr inbounds %struct.baz, %struct.baz* %2, i64 0, i32 0
  %4 = load i32, i32* %3, align 4
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %5, label %14

5:                                                ; preds = %1
  %6 = load %struct.baz*, %struct.baz** @c, align 8
  %7 = getelementptr inbounds %struct.baz, %struct.baz* %6, i64 0, i32 1
  %8 = load i32, i32* %7, align 4
  %.not1 = icmp eq i32 %8, 2
  br i1 %.not1, label %9, label %14

9:                                                ; preds = %5
  %10 = load %struct.baz*, %struct.baz** @c, align 8
  %11 = getelementptr inbounds %struct.baz, %struct.baz* %10, i64 0, i32 2
  %12 = load i32, i32* %11, align 4
  %.not2 = icmp eq i32 %12, 3
  br i1 %.not2, label %13, label %14

13:                                               ; preds = %9
  %.not3 = icmp eq i32 %0, 4
  br i1 %.not3, label %15, label %14

14:                                               ; preds = %13, %9, %5, %1
  call void @abort() #4
  unreachable

15:                                               ; preds = %13
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i64 %0, i32 %1, i32 noundef %2) #0 {
  %4 = alloca %struct.baz, align 4
  %5 = alloca { i64, i32 }, align 8
  %6 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i64 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i64 0, i32 1
  store i32 %1, i32* %7, align 8
  %8 = bitcast %struct.baz* %4 to i8*
  %9 = bitcast { i64, i32 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %8, i8* noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false)
  store %struct.baz* %4, %struct.baz** @c, align 8
  call void @bar(i32 noundef %2)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca %struct.baz, align 4
  %2 = alloca { i64, i32 }, align 8
  %3 = getelementptr inbounds %struct.baz, %struct.baz* %1, i64 0, i32 0
  store i32 1, i32* %3, align 4
  %4 = getelementptr inbounds %struct.baz, %struct.baz* %1, i64 0, i32 1
  store i32 2, i32* %4, align 4
  %5 = getelementptr inbounds %struct.baz, %struct.baz* %1, i64 0, i32 2
  store i32 3, i32* %5, align 4
  %6 = bitcast { i64, i32 }* %2 to i8*
  %7 = bitcast %struct.baz* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %6, i8* noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false)
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %2, i64 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %2, i64 0, i32 1
  %11 = load i32, i32* %10, align 8
  call void @foo(i64 %9, i32 %11, i32 noundef 4)
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
