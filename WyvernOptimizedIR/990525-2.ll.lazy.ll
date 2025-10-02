; ModuleID = './990525-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990525-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Test1 = type { [4 x i32] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @func1() #0 {
  %1 = alloca %struct.Test1, align 4
  %2 = alloca { i64, i64 }, align 8
  %3 = call { i64, i64 } @func2()
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i64 0, i32 0
  %5 = extractvalue { i64, i64 } %3, 0
  store i64 %5, i64* %4, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i64 0, i32 1
  %7 = extractvalue { i64, i64 } %3, 1
  store i64 %7, i64* %6, align 8
  %8 = bitcast %struct.Test1* %1 to i8*
  %9 = bitcast { i64, i64 }* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %8, i8* noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  %10 = getelementptr inbounds %struct.Test1, %struct.Test1* %1, i64 0, i32 0, i64 0
  %11 = load i32, i32* %10, align 4
  %.not = icmp eq i32 %11, 10
  br i1 %.not, label %13, label %12

12:                                               ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.Test1, %struct.Test1* %1, i64 0, i32 0, i64 1
  %15 = load i32, i32* %14, align 4
  %.not1 = icmp eq i32 %15, 20
  br i1 %.not1, label %17, label %16

16:                                               ; preds = %13
  call void @abort() #5
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Test1, %struct.Test1* %1, i64 0, i32 0, i64 2
  %19 = load i32, i32* %18, align 4
  %.not2 = icmp eq i32 %19, 30
  br i1 %.not2, label %21, label %20

20:                                               ; preds = %17
  call void @abort() #5
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Test1, %struct.Test1* %1, i64 0, i32 0, i64 3
  %23 = load i32, i32* %22, align 4
  %.not3 = icmp eq i32 %23, 40
  br i1 %.not3, label %25, label %24

24:                                               ; preds = %21
  call void @abort() #5
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %21
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %24, %20, %16, %12
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local { i64, i64 } @func2() #3 {
  %1 = alloca { i64, i64 }, align 8
  %tmpcast = bitcast { i64, i64 }* %1 to %struct.Test1*
  %2 = bitcast { i64, i64 }* %1 to i32*
  store i32 10, i32* %2, align 8
  %3 = getelementptr inbounds %struct.Test1, %struct.Test1* %tmpcast, i64 0, i32 0, i64 1
  store i32 20, i32* %3, align 4
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i64 0, i32 1
  %5 = bitcast i64* %4 to i32*
  store i32 30, i32* %5, align 8
  %6 = getelementptr inbounds %struct.Test1, %struct.Test1* %tmpcast, i64 0, i32 0, i64 3
  store i32 40, i32* %6, align 4
  %.elt = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i64 0, i32 0
  %.unpack = load i64, i64* %.elt, align 8
  %7 = insertvalue { i64, i64 } undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i64 0, i32 1
  %.unpack2 = load i64, i64* %.elt1, align 8
  %8 = insertvalue { i64, i64 } %7, i64 %.unpack2, 1
  ret { i64, i64 } %8
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #4 {
  %1 = call i32 @func1()
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
