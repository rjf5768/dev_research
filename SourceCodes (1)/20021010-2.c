; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20021010-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20021010-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IOGBounds = type { i16, i16, i16, i16 }

@expectedwidth = dso_local global i32 50, align 4
@global_vramPtr = dso_local global i32* inttoptr (i64 40960 to i32*), align 8
@global_bounds = dso_local global %struct.IOGBounds { i16 100, i16 150, i16 100, i16 150 }, align 2
@global_saveRect = dso_local global %struct.IOGBounds { i16 75, i16 175, i16 75, i16 175 }, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.IOGBounds, align 2
  %5 = alloca %struct.IOGBounds, align 2
  store i32 0, i32* %1, align 4
  %6 = bitcast %struct.IOGBounds* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %6, i8* align 2 bitcast (%struct.IOGBounds* @global_saveRect to i8*), i64 8, i1 false)
  %7 = bitcast %struct.IOGBounds* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %7, i8* align 2 bitcast (%struct.IOGBounds* @global_bounds to i8*), i64 8, i1 false)
  %8 = getelementptr inbounds %struct.IOGBounds, %struct.IOGBounds* %4, i32 0, i32 0
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds %struct.IOGBounds, %struct.IOGBounds* %5, i32 0, i32 0
  %12 = load i16, i16* %11, align 2
  %13 = sext i16 %12 to i32
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %0
  %16 = getelementptr inbounds %struct.IOGBounds, %struct.IOGBounds* %5, i32 0, i32 0
  %17 = load i16, i16* %16, align 2
  %18 = getelementptr inbounds %struct.IOGBounds, %struct.IOGBounds* %4, i32 0, i32 0
  store i16 %17, i16* %18, align 2
  br label %19

19:                                               ; preds = %15, %0
  %20 = getelementptr inbounds %struct.IOGBounds, %struct.IOGBounds* %4, i32 0, i32 1
  %21 = load i16, i16* %20, align 2
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.IOGBounds, %struct.IOGBounds* %5, i32 0, i32 1
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i32
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.IOGBounds, %struct.IOGBounds* %5, i32 0, i32 1
  %29 = load i16, i16* %28, align 2
  %30 = getelementptr inbounds %struct.IOGBounds, %struct.IOGBounds* %4, i32 0, i32 1
  store i16 %29, i16* %30, align 2
  br label %31

31:                                               ; preds = %27, %19
  %32 = load i32*, i32** @global_vramPtr, align 8
  %33 = getelementptr inbounds %struct.IOGBounds, %struct.IOGBounds* %4, i32 0, i32 2
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i32
  %36 = getelementptr inbounds %struct.IOGBounds, %struct.IOGBounds* %5, i32 0, i32 2
  %37 = load i16, i16* %36, align 2
  %38 = sext i16 %37 to i32
  %39 = sub nsw i32 %35, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %32, i64 %40
  store i32* %41, i32** %2, align 8
  %42 = getelementptr inbounds %struct.IOGBounds, %struct.IOGBounds* %4, i32 0, i32 1
  %43 = load i16, i16* %42, align 2
  %44 = sext i16 %43 to i32
  %45 = getelementptr inbounds %struct.IOGBounds, %struct.IOGBounds* %4, i32 0, i32 0
  %46 = load i16, i16* %45, align 2
  %47 = sext i16 %46 to i32
  %48 = sub nsw i32 %44, %47
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @expectedwidth, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %31
  call void @abort() #3
  unreachable

53:                                               ; preds = %31
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
