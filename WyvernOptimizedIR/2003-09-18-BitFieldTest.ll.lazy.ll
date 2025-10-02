; ModuleID = './2003-09-18-BitFieldTest.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-09-18-BitFieldTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @i2(%struct.rtx_def* nocapture noundef %0) #0 {
  %2 = getelementptr %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0
  %3 = load i8, i8* %2, align 4
  %4 = and i8 %3, -2
  store i8 %4, i8* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.rtx_def, align 4
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0
  %3 = load i8, i8* %2, align 4
  %4 = or i8 %3, 2
  store i8 %4, i8* %2, align 4
  call void @i2(%struct.rtx_def* noundef nonnull %1)
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0
  %6 = load i8, i8* %5, align 4
  %7 = and i8 %6, 1
  %8 = zext i8 %7 to i32
  %9 = lshr i8 %6, 1
  %10 = and i8 %9, 1
  %11 = zext i8 %10 to i32
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef %8, i32 noundef %11) #3
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
