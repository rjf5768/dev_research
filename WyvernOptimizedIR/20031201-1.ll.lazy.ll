; ModuleID = './20031201-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20031201-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io = type { %struct.s1, %struct.s2 }
%struct.s1 = type { i32 }
%struct.s2 = type { i32 }

@i = internal global %struct.io* null, align 8
@test_t1 = internal global i64 0, align 8
@m = internal global i32 1, align 4
@test_length = internal global i32 2, align 4
@test_t0 = internal global i64 0, align 8
@d = internal global i32 1, align 4
@f0.washere = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1(i8* noundef %0) #0 {
  %2 = alloca %struct.s1, align 4
  %3 = alloca %struct.s2, align 4
  %4 = getelementptr inbounds %struct.s1, %struct.s1* %2, i64 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.s2, %struct.s2* %3, i64 0, i32 0
  store i32 0, i32* %5, align 4
  store i8* %0, i8** bitcast (%struct.io** @i to i8**), align 8
  %6 = getelementptr inbounds %struct.s2, %struct.s2* %3, i64 0, i32 0
  store i32 32, i32* %6, align 4
  %7 = getelementptr inbounds %struct.s1, %struct.s1* %2, i64 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, -65536
  %10 = or i32 %9, 32
  store i32 %10, i32* %7, align 4
  %11 = load i32*, i32** bitcast (%struct.io** @i to i32**), align 8
  store i32 %10, i32* %11, align 4
  %12 = load %struct.io*, %struct.io** @i, align 8
  %13 = getelementptr inbounds %struct.s2, %struct.s2* %3, i64 0, i32 0
  %14 = getelementptr inbounds %struct.io, %struct.io* %12, i64 0, i32 1, i32 0
  %15 = load i32, i32* %13, align 4
  store i32 %15, i32* %14, align 4
  br label %16

16:                                               ; preds = %17, %1
  call void @f0()
  br label %17

17:                                               ; preds = %16
  %18 = load i64, i64* @test_t1, align 8
  %.not = icmp eq i64 %18, 0
  br i1 %.not, label %19, label %16, !llvm.loop !4

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.s2, %struct.s2* %3, i64 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, -65536
  %23 = or i32 %22, 8
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds %struct.s1, %struct.s1* %2, i64 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, -65536
  %27 = or i32 %26, 8
  store i32 %27, i32* %24, align 4
  %28 = load i32*, i32** bitcast (%struct.io** @i to i32**), align 8
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = getelementptr inbounds %struct.s2, %struct.s2* %3, i64 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %29, align 4
  call void @test()
  %32 = load i32, i32* @m, align 4
  %.not1 = icmp eq i32 %32, 0
  br i1 %.not1, label %45, label %33

33:                                               ; preds = %19
  %34 = load i32, i32* @test_length, align 4
  %35 = mul nsw i32 %34, 2170
  %36 = zext i32 %35 to i64
  %37 = load i64, i64* @test_t1, align 8
  %38 = load i64, i64* @test_t0, align 8
  %39 = add i64 %38, %36
  %40 = sub i64 %37, %39
  %41 = and i64 %40, 2147483647
  %42 = icmp ugt i64 %41, 1000
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  call void @f0()
  br label %44

44:                                               ; preds = %43, %33
  br label %45

45:                                               ; preds = %44, %19
  %46 = load i32, i32* @d, align 4
  %.not2 = icmp eq i32 %46, 0
  br i1 %.not2, label %59, label %47

47:                                               ; preds = %45
  %48 = load i32, i32* @test_length, align 4
  %49 = mul nsw i32 %48, 2170
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* @test_t1, align 8
  %52 = load i64, i64* @test_t0, align 8
  %53 = add i64 %52, %50
  %54 = sub i64 %51, %53
  %55 = and i64 %54, 2147483647
  %56 = icmp ugt i64 %55, 1000
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  call void @f0()
  br label %58

58:                                               ; preds = %57, %47
  br label %59

59:                                               ; preds = %58, %45
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @f0() #0 {
  %1 = load %struct.io*, %struct.io** @i, align 8
  %2 = load i32, i32* @f0.washere, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @f0.washere, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %4, label %12

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.io, %struct.io* %1, i64 0, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 65535
  %.not1 = icmp eq i32 %7, 32
  br i1 %.not1, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.io, %struct.io* %1, i64 0, i32 1, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 65535
  %.not2 = icmp eq i32 %11, 32
  br i1 %.not2, label %13, label %12

12:                                               ; preds = %8, %4, %0
  call void @abort() #5
  unreachable

13:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @test() #3 {
  %1 = load %struct.io*, %struct.io** @i, align 8
  %2 = getelementptr inbounds %struct.io, %struct.io* %1, i64 0, i32 0, i32 0
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 65535
  %.not = icmp eq i32 %4, 8
  br i1 %.not, label %5, label %9

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.io, %struct.io* %1, i64 0, i32 1, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 65535
  %.not1 = icmp eq i32 %8, 8
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %5, %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %5
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %10, %9
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca %struct.io, align 4
  %2 = bitcast %struct.io* %1 to i8*
  %3 = call i32 @f1(i8* noundef nonnull %2)
  call void @abort() #5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
