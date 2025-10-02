; ModuleID = './20021010-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20021010-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IOGBounds = type { i16, i16, i16, i16 }

@expectedwidth = dso_local global i32 50, align 4
@global_vramPtr = dso_local global i32* inttoptr (i64 40960 to i32*), align 8
@global_bounds = dso_local global %struct.IOGBounds { i16 100, i16 150, i16 100, i16 150 }, align 8
@global_saveRect = dso_local global %struct.IOGBounds { i16 75, i16 175, i16 75, i16 175 }, align 8

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i64, align 8
  %tmpcast = bitcast i64* %1 to %struct.IOGBounds*
  %2 = alloca i64, align 8
  %tmpcast1 = bitcast i64* %2 to %struct.IOGBounds*
  %3 = load i64, i64* bitcast (%struct.IOGBounds* @global_saveRect to i64*), align 8
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* bitcast (%struct.IOGBounds* @global_bounds to i64*), align 8
  store i64 %4, i64* %2, align 8
  %5 = bitcast i64* %1 to i16*
  %6 = load i16, i16* %5, align 8
  %7 = bitcast i64* %2 to i16*
  %8 = load i16, i16* %7, align 8
  %9 = icmp slt i16 %6, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = bitcast i64* %2 to i16*
  %12 = load i16, i16* %11, align 8
  %13 = bitcast i64* %1 to i16*
  store i16 %12, i16* %13, align 8
  br label %14

14:                                               ; preds = %10, %0
  %15 = getelementptr inbounds %struct.IOGBounds, %struct.IOGBounds* %tmpcast, i64 0, i32 1
  %16 = load i16, i16* %15, align 2
  %17 = getelementptr inbounds %struct.IOGBounds, %struct.IOGBounds* %tmpcast1, i64 0, i32 1
  %18 = load i16, i16* %17, align 2
  %19 = icmp sgt i16 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.IOGBounds, %struct.IOGBounds* %tmpcast1, i64 0, i32 1
  %22 = load i16, i16* %21, align 2
  %23 = getelementptr inbounds %struct.IOGBounds, %struct.IOGBounds* %tmpcast, i64 0, i32 1
  store i16 %22, i16* %23, align 2
  br label %24

24:                                               ; preds = %20, %14
  %25 = getelementptr inbounds %struct.IOGBounds, %struct.IOGBounds* %tmpcast, i64 0, i32 1
  %26 = load i16, i16* %25, align 2
  %27 = sext i16 %26 to i32
  %28 = bitcast i64* %1 to i16*
  %29 = load i16, i16* %28, align 8
  %30 = sext i16 %29 to i32
  %31 = sub nsw i32 %27, %30
  %32 = load i32, i32* @expectedwidth, align 4
  %.not = icmp eq i32 %31, %32
  br i1 %.not, label %34, label %33

33:                                               ; preds = %24
  call void @abort() #3
  br label %UnifiedUnreachableBlock

34:                                               ; preds = %24
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %34, %33
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
