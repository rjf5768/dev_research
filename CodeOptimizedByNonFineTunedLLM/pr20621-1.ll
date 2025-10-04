; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr20621-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr20621-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.big = type { [16384 x i32] }

@gb = dso_local global %struct.big zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(%struct.big* noundef byval(%struct.big) align 8 %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  %4 = getelementptr inbounds %struct.big, %struct.big* %0, i32 0, i32 0
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [16384 x i32], [16384 x i32]* %4, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.big, align 8
  %3 = alloca %struct.big, align 8
  store i32 0, i32* %1, align 4
  %4 = bitcast %struct.big* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 4 bitcast (%struct.big* @gb to i8*), i64 65536, i1 false)
  %5 = call i32 @foo(%struct.big* noundef byval(%struct.big) align 8 %2, i32 noundef 0)
  %6 = bitcast %struct.big* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 4 bitcast (%struct.big* @gb to i8*), i64 65536, i1 false)
  %7 = call i32 @foo(%struct.big* noundef byval(%struct.big) align 8 %3, i32 noundef 1)
  %8 = add nsw i32 %5, %7
  ret i32 %8
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
