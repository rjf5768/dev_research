; ModuleID = './2005-07-15-Bitfield-ABI.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2005-07-15-Bitfield-ABI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i32 }
%union.anon = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @test(%struct.X* nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr %struct.X, %struct.X* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = shl i32 %1, 6
  %6 = and i32 %5, 960
  %7 = and i32 %4, -961
  %8 = or i32 %7, %6
  store i32 %8, i32* %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %union.anon, align 4
  %2 = getelementptr inbounds %union.anon, %union.anon* %1, i64 0, i32 0
  store i32 -1, i32* %2, align 4
  %3 = bitcast %union.anon* %1 to %struct.X*
  call void @test(%struct.X* noundef nonnull %3, i32 noundef 0)
  %4 = getelementptr inbounds %union.anon, %union.anon* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %5) #3
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
