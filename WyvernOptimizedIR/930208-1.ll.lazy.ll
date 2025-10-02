; ModuleID = './930208-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930208-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.T = type { i64 }
%struct.anon = type { i8, i8, i8, i8 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f(i64 %0) #0 {
  %2 = alloca %union.T, align 8
  %3 = getelementptr inbounds %union.T, %union.T* %2, i64 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = bitcast %union.T* %2 to %struct.anon*
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 3
  %6 = load i8, i8* %5, align 1
  %7 = add i8 %6, 1
  store i8 %7, i8* %5, align 1
  %8 = bitcast %union.T* %2 to i8*
  %9 = load i8, i8* %8, align 8
  %10 = add i8 %9, 1
  store i8 %10, i8* %8, align 8
  %11 = bitcast %union.T* %2 to %struct.anon*
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %11, i64 0, i32 2
  %13 = load i8, i8* %12, align 2
  %.not = icmp eq i8 %13, 2
  br i1 %.not, label %14, label %19

14:                                               ; preds = %1
  %15 = bitcast %union.T* %2 to %struct.anon*
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i64 0, i32 1
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 2
  %phi.cast = zext i1 %18 to i32
  br label %19

19:                                               ; preds = %14, %1
  %20 = phi i32 [ 1, %1 ], [ %phi.cast, %14 ]
  ret i32 %20
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %union.T, align 8
  %2 = bitcast %union.T* %1 to %struct.anon*
  %3 = getelementptr inbounds %struct.anon, %struct.anon* %2, i64 0, i32 2
  store i8 2, i8* %3, align 2
  %4 = bitcast %union.T* %1 to %struct.anon*
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 1
  store i8 2, i8* %5, align 1
  %6 = bitcast %union.T* %1 to %struct.anon*
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %6, i64 0, i32 3
  store i8 -1, i8* %7, align 1
  %8 = bitcast %union.T* %1 to i8*
  store i8 -1, i8* %8, align 8
  %9 = getelementptr inbounds %union.T, %union.T* %1, i64 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @f(i64 %10)
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %13, label %12

12:                                               ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %13, %12
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
