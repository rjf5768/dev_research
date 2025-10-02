; ModuleID = './20001024-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20001024-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b = type { %struct.a, %struct.a }
%struct.a = type { i64, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %0, %struct.b* noalias nocapture noundef readonly %1, %struct.b* noalias nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.b, %struct.b* %1, i64 0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %6, label %15

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.b, %struct.b* %1, i64 0, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %.not1 = icmp eq i64 %8, 250000
  br i1 %.not1, label %9, label %15

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.b, %struct.b* %1, i64 0, i32 1, i32 0
  %11 = load i64, i64* %10, align 8
  %.not2 = icmp eq i64 %11, 0
  br i1 %.not2, label %12, label %15

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.b, %struct.b* %1, i64 0, i32 1, i32 1
  %14 = load i64, i64* %13, align 8
  %.not3 = icmp eq i64 %14, 250000
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %12, %9, %6, %3
  call void @abort() #4
  unreachable

16:                                               ; preds = %12
  ret i32 undef
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = alloca %struct.b, align 8
  %2 = getelementptr inbounds %struct.b, %struct.b* %1, i64 0, i32 0, i32 0
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds %struct.b, %struct.b* %1, i64 0, i32 0, i32 1
  store i64 250000, i64* %3, align 8
  %4 = getelementptr inbounds %struct.b, %struct.b* %1, i64 0, i32 1
  %5 = bitcast %struct.a* %4 to i8*
  %6 = bitcast %struct.b* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %5, i8* noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %7 = call i32 @bar(i32 noundef 0, %struct.b* noundef nonnull %1, %struct.b* noundef null)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  call void @foo()
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
