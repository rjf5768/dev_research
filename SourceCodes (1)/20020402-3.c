; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020402-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020402-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blockvector = type { i32, [2 x %struct.block*] }
%struct.block = type { i64, i64, %struct.symbol*, %struct.block*, i8, i32, [1 x %struct.symbol] }
%struct.symbol = type { i32, i8* }
%struct.symtab = type { %struct.blockvector* }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.blockvector* @blockvector_for_pc_sect(i64 noundef %0, %struct.symtab* noundef %1) #0 {
  %3 = alloca %struct.blockvector*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.symtab*, align 8
  %6 = alloca %struct.block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.blockvector*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.symtab* %1, %struct.symtab** %5, align 8
  %11 = load %struct.symtab*, %struct.symtab** %5, align 8
  %12 = getelementptr inbounds %struct.symtab, %struct.symtab* %11, i32 0, i32 0
  %13 = load %struct.blockvector*, %struct.blockvector** %12, align 8
  store %struct.blockvector* %13, %struct.blockvector** %10, align 8
  %14 = load %struct.blockvector*, %struct.blockvector** %10, align 8
  %15 = getelementptr inbounds %struct.blockvector, %struct.blockvector* %14, i32 0, i32 1
  %16 = getelementptr inbounds [2 x %struct.block*], [2 x %struct.block*]* %15, i64 0, i64 0
  %17 = load %struct.block*, %struct.block** %16, align 8
  store %struct.block* %17, %struct.block** %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.blockvector*, %struct.blockvector** %10, align 8
  %19 = getelementptr inbounds %struct.blockvector, %struct.blockvector* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %53, %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %22, %23
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %54

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %27, %28
  %30 = add nsw i32 %29, 1
  %31 = ashr i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = load %struct.blockvector*, %struct.blockvector** %10, align 8
  %33 = getelementptr inbounds %struct.blockvector, %struct.blockvector* %32, i32 0, i32 1
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x %struct.block*], [2 x %struct.block*]* %33, i64 0, i64 %37
  %39 = load %struct.block*, %struct.block** %38, align 8
  store %struct.block* %39, %struct.block** %6, align 8
  %40 = load %struct.block*, %struct.block** %6, align 8
  %41 = getelementptr inbounds %struct.block, %struct.block* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp ule i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %26
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %53

49:                                               ; preds = %26
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %49, %45
  br label %21, !llvm.loop !4

54:                                               ; preds = %21
  br label %55

55:                                               ; preds = %72, %54
  %56 = load i32, i32* %7, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load %struct.blockvector*, %struct.blockvector** %10, align 8
  %60 = getelementptr inbounds %struct.blockvector, %struct.blockvector* %59, i32 0, i32 1
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [2 x %struct.block*], [2 x %struct.block*]* %60, i64 0, i64 %62
  %64 = load %struct.block*, %struct.block** %63, align 8
  store %struct.block* %64, %struct.block** %6, align 8
  %65 = load %struct.block*, %struct.block** %6, align 8
  %66 = getelementptr inbounds %struct.block, %struct.block* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %4, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load %struct.blockvector*, %struct.blockvector** %10, align 8
  store %struct.blockvector* %71, %struct.blockvector** %3, align 8
  br label %76

72:                                               ; preds = %58
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %7, align 4
  br label %55, !llvm.loop !6

75:                                               ; preds = %55
  store %struct.blockvector* null, %struct.blockvector** %3, align 8
  br label %76

76:                                               ; preds = %75, %70
  %77 = load %struct.blockvector*, %struct.blockvector** %3, align 8
  ret %struct.blockvector* %77
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.block, align 8
  %3 = alloca %struct.block, align 8
  %4 = alloca %struct.blockvector, align 8
  %5 = alloca %struct.symtab, align 8
  %6 = alloca %struct.blockvector*, align 8
  store i32 0, i32* %1, align 4
  %7 = bitcast %struct.block* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 56, i1 false)
  %8 = bitcast i8* %7 to %struct.block*
  %9 = getelementptr inbounds %struct.block, %struct.block* %8, i32 0, i32 1
  store i64 65536, i64* %9, align 8
  %10 = getelementptr inbounds %struct.block, %struct.block* %8, i32 0, i32 4
  store i8 1, i8* %10, align 8
  %11 = getelementptr inbounds %struct.block, %struct.block* %8, i32 0, i32 5
  store i32 20, i32* %11, align 4
  %12 = bitcast %struct.block* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 56, i1 false)
  %13 = bitcast i8* %12 to %struct.block*
  %14 = getelementptr inbounds %struct.block, %struct.block* %13, i32 0, i32 0
  store i64 65536, i64* %14, align 8
  %15 = getelementptr inbounds %struct.block, %struct.block* %13, i32 0, i32 1
  store i64 131072, i64* %15, align 8
  %16 = getelementptr inbounds %struct.block, %struct.block* %13, i32 0, i32 4
  store i8 1, i8* %16, align 8
  %17 = getelementptr inbounds %struct.block, %struct.block* %13, i32 0, i32 5
  store i32 20, i32* %17, align 4
  %18 = getelementptr inbounds %struct.blockvector, %struct.blockvector* %4, i32 0, i32 0
  store i32 2, i32* %18, align 8
  %19 = getelementptr inbounds %struct.blockvector, %struct.blockvector* %4, i32 0, i32 1
  %20 = getelementptr inbounds [2 x %struct.block*], [2 x %struct.block*]* %19, i64 0, i64 0
  store %struct.block* %2, %struct.block** %20, align 8
  %21 = getelementptr inbounds %struct.block*, %struct.block** %20, i64 1
  store %struct.block* %3, %struct.block** %21, align 8
  %22 = getelementptr inbounds %struct.symtab, %struct.symtab* %5, i32 0, i32 0
  store %struct.blockvector* %4, %struct.blockvector** %22, align 8
  %23 = call %struct.blockvector* @blockvector_for_pc_sect(i64 noundef 1280, %struct.symtab* noundef %5)
  store %struct.blockvector* %23, %struct.blockvector** %6, align 8
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
