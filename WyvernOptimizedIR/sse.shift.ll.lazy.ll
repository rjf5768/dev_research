; ModuleID = './sse.shift.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/SSE/sse.shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IV = type { <2 x i64> }

@.str = private unnamed_addr constant [21 x i8] c"%08x %08x %08x %08x\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca <2 x i64>, align 16
  %2 = alloca <2 x i64>, align 16
  store <2 x i64> <i64 71777214294589695, i64 71777214294589695>, <2 x i64>* %1, align 16
  %3 = bitcast <2 x i64>* %1 to %union.IV*
  call void @printIV(%union.IV* noundef nonnull %3)
  store <2 x i64> <i64 -71777214294589696, i64 -71777214294589696>, <2 x i64>* %2, align 16
  %4 = bitcast <2 x i64>* %2 to %union.IV*
  call void @printIV(%union.IV* noundef nonnull %4)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @printIV(%union.IV* nocapture noundef readonly %0) #1 {
  %2 = bitcast %union.IV* %0 to i32*
  %3 = load i32, i32* %2, align 16
  %4 = bitcast %union.IV* %0 to [4 x i32]*
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %union.IV, %union.IV* %0, i64 0, i32 0, i64 1
  %8 = bitcast i64* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = bitcast %union.IV* %0 to [4 x i32]*
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %3, i32 noundef %6, i32 noundef %9, i32 noundef %12) #4
  ret void
}

; Function Attrs: nofree nosync nounwind readnone
declare <8 x i16> @llvm.x86.sse2.psrli.w(<8 x i16>, i32) #2

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: nofree nosync nounwind readnone
declare <8 x i16> @llvm.x86.sse2.pslli.w(<8 x i16>, i32) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
