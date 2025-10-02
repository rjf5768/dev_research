; ModuleID = './921123-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921123-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.four_quarters = type { i16, i16, i16, i16 }

@b = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@x = dso_local global %struct.four_quarters zeroinitializer, align 2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @f(i64 %0) #0 {
  %2 = alloca i64, align 8
  %tmpcast = bitcast i64* %2 to %struct.four_quarters*
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds %struct.four_quarters, %struct.four_quarters* %tmpcast, i64 0, i32 2
  %4 = load i16, i16* %3, align 4
  %5 = zext i16 %4 to i32
  store i32 %5, i32* @b, align 4
  %6 = getelementptr inbounds %struct.four_quarters, %struct.four_quarters* %tmpcast, i64 0, i32 3
  %7 = load i16, i16* %6, align 2
  %8 = zext i16 %7 to i32
  store i32 %8, i32* @a, align 4
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i64, align 8
  %tmpcast = bitcast i64* %1 to %struct.four_quarters*
  %2 = getelementptr inbounds %struct.four_quarters, %struct.four_quarters* %tmpcast, i64 0, i32 2
  store i16 0, i16* %2, align 4
  %3 = getelementptr inbounds %struct.four_quarters, %struct.four_quarters* %tmpcast, i64 0, i32 1
  store i16 0, i16* %3, align 2
  %4 = bitcast i64* %1 to i16*
  store i16 0, i16* %4, align 8
  %5 = getelementptr inbounds %struct.four_quarters, %struct.four_quarters* %tmpcast, i64 0, i32 3
  store i16 38, i16* %5, align 2
  %6 = load i64, i64* %1, align 8
  call void @f(i64 %6)
  %7 = load i32, i32* @a, align 4
  %.not = icmp eq i32 %7, 38
  br i1 %.not, label %9, label %8

8:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %9, %8
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
